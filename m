Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A153AAFA7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 02:10:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WmK1X/veu3h5nFi8nmqwbWSqswV5xTITAuxDptCfXaw=; b=r/RKp0KiZWvmFeK7j+TjLQF7j
	e5YuudJUNg6MS69ijCL9l+DgmCeMqecJXsMFpdSQJ7/b+d9m1EUooRIt0M06IyiWCuNinOVbOMX81
	ZNyQ1vHu3n2of7EZ1+hnlmdydd26u8LBedfgR3t7MzyBdm9rzo8YUBbmPoDDUjRlXweGcWRsEcs6D
	o4AVINk+tCzt6BJxNc0j1mj5ccdPK+80mkPuPh0sk0wEZPWPCg5HVfKemjJMJOqtLtJZ2fVzS/MMg
	88qpCnRzw9ISyfRpBV/AIkD6E1IFgw8NSi7zCiVK1lsVrg73R1TnnpU7DY4+zZYZV6hfS4LbzrFlq
	ERAgoyy3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i61p7-0006ZD-MU; Fri, 06 Sep 2019 00:09:57 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i61oz-0006Xq-G3
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 00:09:51 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 11376A01CA;
 Fri,  6 Sep 2019 02:09:37 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id 0nqlTkvB1Jln; Fri,  6 Sep 2019 02:09:32 +0200 (CEST)
Date: Fri, 6 Sep 2019 10:09:08 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH v12 01/12] lib: introduce copy_struct_{to,from}_user
 helpers
Message-ID: <20190906000908.xpvkuhun7v6onp6w@yavin.dot.cyphar.com>
References: <20190904201933.10736-1-cyphar@cyphar.com>
 <20190904201933.10736-2-cyphar@cyphar.com>
 <20190905180750.GQ1131@ZenIV.linux.org.uk>
 <20190905230003.bek7vqdvruzi4ybx@yavin.dot.cyphar.com>
 <20190905234944.GT1131@ZenIV.linux.org.uk>
MIME-Version: 1.0
In-Reply-To: <20190905234944.GT1131@ZenIV.linux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_170949_844605_D8B8CF72 
X-CRM114-Status: GOOD (  25.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============7461790906303957017=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7461790906303957017==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="45flctx23d2mffx4"
Content-Disposition: inline


--45flctx23d2mffx4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-09-06, Al Viro <viro@zeniv.linux.org.uk> wrote:
> On Fri, Sep 06, 2019 at 09:00:03AM +1000, Aleksa Sarai wrote:
> > > > +			return -EFAULT;
> > > > +	}
> > > > +	/* Copy the interoperable parts of the struct. */
> > > > +	if (__copy_to_user(dst, src, size))
> > > > +		return -EFAULT;
> > >=20
> > > Why not simply clear_user() and copy_to_user()?
> >=20
> > I'm not sure I understand what you mean -- are you asking why we need to
> > do memchr_inv(src + size, 0, rest) earlier?
>=20
> I'm asking why bother with __ and separate access_ok().

Ah right, it was a dumb "optimisation" (since we need to do access_ok()
anyway since we should early -EFAULT in that case). I've dropped the __
usages in my working copy.

> > > 	if ((unsigned long)addr & 1) {
> > > 		u8 v;
> > > 		if (get_user(v, (__u8 __user *)addr))
> > > 			return -EFAULT;
> > > 		if (v)
> > > 			return -E2BIG;
> > > 		addr++;
> > > 	}
> > > 	if ((unsigned long)addr & 2) {
> > > 		u16 v;
> > > 		if (get_user(v, (__u16 __user *)addr))
> > > 			return -EFAULT;
> > > 		if (v)
> > > 			return -E2BIG;
> > > 		addr +=3D2;
> > > 	}
> > > 	if ((unsigned long)addr & 4) {
> > > 		u32 v;
> > > 		if (get_user(v, (__u32 __user *)addr))
> > > 			return -EFAULT;
> > > 		if (v)
> > > 			return -E2BIG;
> > > 	}
> > > 	<read the rest like you currently do>
>=20
> Actually, this is a dumb way to do it - page size on anything
> is going to be a multiple of 8, so you could just as well
> read 8 bytes from an address aligned down.  Then mask the
> bytes you don't want to check out and see if there's anything
> left.
>=20
> You can have readability boundaries inside a page - it's either
> the entire page (let alone a single word) being readable, or
> it's EFAULT for all parts.
>=20
> > > would be saner, and things like x86 could trivially add an
> > > asm variant - it's not hard.  Incidentally, memchr_inv() is
> > > an overkill in this case...
> >=20
> > Why is memchr_inv() overkill?
>=20
> Look at its implementation; you only care if there are
> non-zeroes, you don't give a damn where in the buffer
> the first one would be.  All you need is the same logics
> as in "from userland" case
> 	if (!count)
> 		return true;
> 	offset =3D (unsigned long)from & 7
> 	p =3D (u64 *)(from - offset);
> 	v =3D *p++;
> 	if (offset) {	// unaligned
> 		count +=3D offset;
> 		v &=3D ~aligned_byte_mask(offset); // see strnlen_user.c
> 	}
> 	while (count > 8) {
> 		if (v)
> 			return false;
> 		v =3D *p++;
> 		count -=3D 8;
> 	}
> 	if (count !=3D 8)
> 		v &=3D aligned_byte_mask(count);
> 	return v =3D=3D 0;
>=20
> All there is to it...

Alright, will do (for some reason I hadn't made the connection that
memchr_inv() is doing effectively the same word-by-word comparison but
also detecting where the first byte is).

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--45flctx23d2mffx4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXXGjoAAKCRCdlLljIbnQ
EpC9AP0R1Y7fvOkhCrlqhEeSXH2/w/eSafFO51uuSnY7m3dVegEAm16vVXT68ypo
Z7fWiISgwHeOk0U5O9VS4cZGMgtS3ws=
=nF2N
-----END PGP SIGNATURE-----

--45flctx23d2mffx4--


--===============7461790906303957017==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7461790906303957017==--

