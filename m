Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED01AAED5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 01:00:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=u94xhroDzaAeB8+O0gtNon87RepVxEREpwd7HrdZF6o=; b=HKMadQtj38fW7Sk1ErVIP+0Kc
	g/5StwVlQoXRIy6h1ao1xrzmcIZl3EnWWzGacFP0F25f5aLpQASRUTuoEi0Uepj0df9WuZLOmKE41
	JqGVFrldeDTNQLuFAonhSmC5HjZQkoZkJ/kyHVSOyLHZh9Pk0S3oPrMrhqRzCSZZNVR0s4k8CfkU5
	u3sFs1jfOtzMuxARXexbuVIYJmsfDvfDjj9ro9BmFDdJibcfOvlwliXGpJSbS0krh3q3uw2j+0FlW
	VnzG2NH6H1DuDwbH8c/spfTTtvPblojqqkw0G6NA4bvM3jYu5U4DZYM3BHTEUgG365wqFN9kpZ5nj
	JMkojfJkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i60kL-0003im-DQ; Thu, 05 Sep 2019 23:00:57 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i60kA-0003e3-Tk
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 23:00:49 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id B3C5CA0128;
 Fri,  6 Sep 2019 01:00:38 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id wlUb_R4_fkS3; Fri,  6 Sep 2019 01:00:32 +0200 (CEST)
Date: Fri, 6 Sep 2019 09:00:03 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH v12 01/12] lib: introduce copy_struct_{to,from}_user
 helpers
Message-ID: <20190905230003.bek7vqdvruzi4ybx@yavin.dot.cyphar.com>
References: <20190904201933.10736-1-cyphar@cyphar.com>
 <20190904201933.10736-2-cyphar@cyphar.com>
 <20190905180750.GQ1131@ZenIV.linux.org.uk>
MIME-Version: 1.0
In-Reply-To: <20190905180750.GQ1131@ZenIV.linux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_160047_264127_59485552 
X-CRM114-Status: GOOD (  23.84  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-kselftest@vger.kernel.org,
 sparclinux@vger.kernel.org, Jiri Olsa <jolsa@redhat.com>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Tycho Andersen <tycho@tycho.ws>, Aleksa Sarai <asarai@suse.de>,
 Shuah Khan <shuah@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, linuxppc-dev@lists.ozlabs.org,
 linux-m68k@lists.linux-m68k.org, Andy Lutomirski <luto@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, Namhyung Kim <namhyung@kernel.org>,
 David Drysdale <drysdale@google.com>, Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, linux-parisc@vger.kernel.org,
 linux-api@vger.kernel.org, Chanho Min <chanho.min@lge.com>,
 Jeff Layton <jlayton@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: multipart/mixed; boundary="===============8557359231209043863=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8557359231209043863==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="p5c7e3ucgw67wkfa"
Content-Disposition: inline


--p5c7e3ucgw67wkfa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-09-05, Al Viro <viro@zeniv.linux.org.uk> wrote:
> On Thu, Sep 05, 2019 at 06:19:22AM +1000, Aleksa Sarai wrote:
> > +/*
> > + * "memset(p, 0, size)" but for user space buffers. Caller must have a=
lready
> > + * checked access_ok(p, size).
> > + */
> > +static int __memzero_user(void __user *p, size_t s)
> > +{
> > +	const char zeros[BUFFER_SIZE] =3D {};
> > +	while (s > 0) {
> > +		size_t n =3D min(s, sizeof(zeros));
> > +
> > +		if (__copy_to_user(p, zeros, n))
> > +			return -EFAULT;
> > +
> > +		p +=3D n;
> > +		s -=3D n;
> > +	}
> > +	return 0;
> > +}
>=20
> That's called clear_user().

Already switched, I didn't know about clear_user() -- I assumed it
would've been called bzero_user() or memzero_user() and didn't find it
when looking.

> > +int copy_struct_to_user(void __user *dst, size_t usize,
> > +			const void *src, size_t ksize)
> > +{
> > +	size_t size =3D min(ksize, usize);
> > +	size_t rest =3D abs(ksize - usize);
> > +
> > +	if (unlikely(usize > PAGE_SIZE))
> > +		return -EFAULT;
>=20
> Why?
>=20
> > +	} else if (usize > ksize) {
> > +		if (__memzero_user(dst + size, rest))
> > +			return -EFAULT;
> > +	}
> > +	/* Copy the interoperable parts of the struct. */
> > +	if (__copy_to_user(dst, src, size))
> > +		return -EFAULT;
>=20
> Why not simply clear_user() and copy_to_user()?

I'm not sure I understand what you mean -- are you asking why we need to
do memchr_inv(src + size, 0, rest) earlier?

>=20
> > +int copy_struct_from_user(void *dst, size_t ksize,
> > +			  const void __user *src, size_t usize)
> > +{
> > +	size_t size =3D min(ksize, usize);
> > +	size_t rest =3D abs(ksize - usize);
>=20
> Cute, but... you would be just as well without that 'rest' thing.

I would argue it's harder to mess up using "rest" compared to getting
"ksize - usize" and "usize - ksize" mixed up (and it's a bit more
readable).

> > +
> > +	if (unlikely(usize > PAGE_SIZE))
> > +		return -EFAULT;
>=20
> Again, why?

As discussed in a sister thread, I will leave this in the callers
(though I would argue callers should always do some kind of sanity check
like this).

>=20
> > +	if (unlikely(!access_ok(src, usize)))
> > +		return -EFAULT;
>=20
> Why not simply copy_from_user() here?
>=20
> > +	/* Deal with trailing bytes. */
> > +	if (usize < ksize)
> > +		memset(dst + size, 0, rest);
> > +	else if (usize > ksize) {
> > +		const void __user *addr =3D src + size;
> > +		char buffer[BUFFER_SIZE] =3D {};
> > +
> > +		while (rest > 0) {
> > +			size_t bufsize =3D min(rest, sizeof(buffer));
> > +
> > +			if (__copy_from_user(buffer, addr, bufsize))
> > +				return -EFAULT;
> > +			if (memchr_inv(buffer, 0, bufsize))
> > +				return -E2BIG;
>=20
> Frankly, that looks like a candidate for is_all_zeroes_user().
> With the loop like above serving as a dumb default.  And on
> badly alighed address it _will_ be dumb.  Probably too much
> so - something like
> 	if ((unsigned long)addr & 1) {
> 		u8 v;
> 		if (get_user(v, (__u8 __user *)addr))
> 			return -EFAULT;
> 		if (v)
> 			return -E2BIG;
> 		addr++;
> 	}
> 	if ((unsigned long)addr & 2) {
> 		u16 v;
> 		if (get_user(v, (__u16 __user *)addr))
> 			return -EFAULT;
> 		if (v)
> 			return -E2BIG;
> 		addr +=3D2;
> 	}
> 	if ((unsigned long)addr & 4) {
> 		u32 v;
> 		if (get_user(v, (__u32 __user *)addr))
> 			return -EFAULT;
> 		if (v)
> 			return -E2BIG;
> 	}
> 	<read the rest like you currently do>
> would be saner, and things like x86 could trivially add an
> asm variant - it's not hard.  Incidentally, memchr_inv() is
> an overkill in this case...

Why is memchr_inv() overkill?

But yes, breaking this out to an asm-generic is_all_zeroes_user()
wouldn't hurt -- and I'll put a cleaned-up version of the alignment
handling there too. Should I drop it in asm-generic/uaccess.h, or
somewhere else?

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--p5c7e3ucgw67wkfa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXXGTcAAKCRCdlLljIbnQ
ErrcAP4jP69XXagvV6A6fZ62FZE+PxzGL1xMstNZGHLRdqnO0wD9FZDD6+QiCq2T
ReQjcKXuuyo3tBJtN7kYSwVg0ZE4dw8=
=qRhr
-----END PGP SIGNATURE-----

--p5c7e3ucgw67wkfa--


--===============8557359231209043863==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8557359231209043863==--

