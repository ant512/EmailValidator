#import <Foundation/Foundation.h>
#import "SZEmailValidator.h"

NSString *validateAddress (NSString *address) {
	return [NSString stringWithFormat:@"%@: %@", [SZEmailValidator isValid:address] ? @"Yes" : @"No", address];
}

int main(int argc, const char * argv[])
{
	@autoreleasepool {
		NSLog(@"%@", validateAddress(@""));
		NSLog(@"%@", validateAddress(@"test"));
		NSLog(@"%@", validateAddress(@"@"));
		NSLog(@"%@", validateAddress(@"test@"));
		NSLog(@"%@", validateAddress(@"test@io"));
		NSLog(@"%@", validateAddress(@"@io"));
		NSLog(@"%@", validateAddress(@"@iana.org"));
		NSLog(@"%@", validateAddress(@"test@iana.org"));
		NSLog(@"%@", validateAddress(@"test@nominet.org.uk"));
		NSLog(@"%@", validateAddress(@"test@about.museum"));
		NSLog(@"%@", validateAddress(@"a@iana.org"));
		NSLog(@"%@", validateAddress(@"test@e.com"));
		NSLog(@"%@", validateAddress(@"test@iana.a"));
		NSLog(@"%@", validateAddress(@"test.test@iana.org"));
		NSLog(@"%@", validateAddress(@".test@iana.org"));
		NSLog(@"%@", validateAddress(@"test.@iana.org"));
		NSLog(@"%@", validateAddress(@"test..iana.org"));
		NSLog(@"%@", validateAddress(@"test_exa-mple.com"));
		NSLog(@"%@", validateAddress(@"!#$%&`*+/=?^`{|}~@iana.org"));
		NSLog(@"%@", validateAddress(@"test\\@test@iana.org"));
		NSLog(@"%@", validateAddress(@"123@iana.org"));
		NSLog(@"%@", validateAddress(@"test@123.com"));
		NSLog(@"%@", validateAddress(@"test@iana.123"));
		NSLog(@"%@", validateAddress(@"test@255.255.255.255"));
		NSLog(@"%@", validateAddress(@"abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghiklm@iana.org"));
		NSLog(@"%@", validateAddress(@"abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghiklmn@iana.org"));
		NSLog(@"%@", validateAddress(@"test@abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghikl.com"));
		NSLog(@"%@", validateAddress(@"test@abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghiklm.com"));
		NSLog(@"%@", validateAddress(@"test@mason-dixon.com"));
		NSLog(@"%@", validateAddress(@"test@-iana.org"));
		NSLog(@"%@", validateAddress(@"test@iana-.com"));
		NSLog(@"%@", validateAddress(@"test@c--n.com"));
		NSLog(@"%@", validateAddress(@"test@iana.co-uk"));
		NSLog(@"%@", validateAddress(@"test@.iana.org"));
		NSLog(@"%@", validateAddress(@"test@iana.org."));
		NSLog(@"%@", validateAddress(@"test@iana..com"));
		NSLog(@"%@", validateAddress(@"a@a.b.c.d.e.f.g.h.i.j.k.l.m.n.o.p.q.r.s.t.u.v.w.x.y.z.a.b.c.d.e.f.g.h.i.j.k.l.m.n.o.p.q.r.s.t.u.v.w.x.y.z.a.b.c.d.e.f.g.h.i.j.k.l.m.n.o.p.q.r.s.t.u.v.w.x.y.z.a.b.c.d.e.f.g.h.i.j.k.l.m.n.o.p.q.r.s.t.u.v.w.x.y.z.a.b.c.d.e.f.g.h.i.j.k.l.m.n.o.p.q.r.s.t.u.v"));
		NSLog(@"%@", validateAddress(@"abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghiklm@abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghikl.abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghikl.abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghi"));
		NSLog(@"%@", validateAddress(@"abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghiklm@abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghikl.abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghikl.abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghij"));
		NSLog(@"%@", validateAddress(@"a@abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghikl.abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghikl.abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghikl.abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefg.hij"));
		NSLog(@"%@", validateAddress(@"a@abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghikl.abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghikl.abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghikl.abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefg.hijk"));
		NSLog(@"%@", validateAddress(@"\"test\"@iana.or"));
		NSLog(@"%@", validateAddress(@"\"\"@iana.org"));
		NSLog(@"%@", validateAddress(@"\"\"\"@iana.org"));
		NSLog(@"%@", validateAddress(@"\"\\a\"@iana.org"));
		NSLog(@"%@", validateAddress(@"\"\\\"\"@iana.org"));
		NSLog(@"%@", validateAddress(@"\"\\\"@iana.org"));
		NSLog(@"%@", validateAddress(@"\"\\\\\"@iana.org"));
		NSLog(@"%@", validateAddress(@"test\"@iana.org"));
		NSLog(@"%@", validateAddress(@"\"test@iana.org"));
		NSLog(@"%@", validateAddress(@"\"test\"test@iana.org"));
		NSLog(@"%@", validateAddress(@"test\"text\"@iana.org"));
		NSLog(@"%@", validateAddress(@"\"test\"\"test\"@iana.org"));
		NSLog(@"%@", validateAddress(@"\"test\".\"test\"@iana.org"));
		NSLog(@"%@", validateAddress(@"\"test\\ test\"@iana.org"));
		NSLog(@"%@", validateAddress(@"\"test\".test@iana.org"));
		NSLog(@"%@", validateAddress(@"\"abcdefghijklmnopqrstuvwxyz␠abcdefghijklmnopqrstuvwxyz abcdefghj\"@iana.org"));
		NSLog(@"%@", validateAddress(@"\"abcdefghijklmnopqrstuvwxyz abcdefghijklmnopqrstuvwxyz abcdefg\\h\"@iana.org"));
		
		NSLog(@"%@", validateAddress(@" test @iana.org"));
		NSLog(@"%@", validateAddress(@"test@ iana .com"));
		NSLog(@"%@", validateAddress(@"test . test@iana.org"));
		
		NSLog(@"%@", validateAddress(@"test@xn--hxajbheg2az3al.xn--jxalpdlp"));
		NSLog(@"%@", validateAddress(@"xn--test@iana.org"));
		NSLog(@"%@", validateAddress(@"test@iana.org-"));
		NSLog(@"%@", validateAddress(@"\"test@iana.org"));
		NSLog(@"%@", validateAddress(@"(test@iana.org"));
		NSLog(@"%@", validateAddress(@"test@(iana.org"));
		NSLog(@"%@", validateAddress(@"\"test\\\"@iana.org"));
		NSLog(@"%@", validateAddress(@"(comment\\)test@iana.org"));
		NSLog(@"%@", validateAddress(@"test@iana.org(comment\\)"));
		NSLog(@"%@", validateAddress(@"test@iana.org(comment\\"));
		NSLog(@"%@", validateAddress(@"@iana.org"));
		NSLog(@"%@", validateAddress(@"test@.org"));
		NSLog(@"%@", validateAddress(@"\"\"@iana.org"));
		NSLog(@"%@", validateAddress(@"\"\\\"@iana.org"));
		NSLog(@"%@", validateAddress(@"()test@iana.org"));
		NSLog(@"%@", validateAddress(@"\"test\\©\"@iana.org"));
		NSLog(@"%@", validateAddress(@"test@iana/icann.org"));
		NSLog(@"%@", validateAddress(@"test.(comment)test@iana.org"));
		NSLog(@"%@", validateAddress(@"test@org"));
		NSLog(@"%@", validateAddress(@"test@test.com"));
		NSLog(@"%@", validateAddress(@"test@nic.no"));
	}
	
    return 0;
}


