Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 246B3E63CE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 16:42:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IMUhvg9uK80bqfoRVOzlCiXTbyEWKYP9PeT0PwMMj8Y=; b=VGdqTOSlOjowWCKXYIZSLgfiu
	VoJI+S70WtJHSO4DXQQpjf5HQo48Ao7VqkneyVCJ9KL4ajY+fVT6OS1hcFkgTjn5Ic4S9j8ACs9R9
	ZqWZDjd6DivRPLf3pvdXzSNYRhnRMJp2BR+vZU0Nx3RZPT+5TKIVysNFKpRF7CeRbUCs52v42Neq2
	4cfu8hsodVW/dUSFmo6GUehWYSQWIeZgT1SKaSoifkWFJBdNzj5dOIfx9Zd34okj4qxUuxlhQMsxp
	ydb8Du+fBxgTgVuB7sdo4kTDJJ1cAE1sTCem7DrjiEtIS6oVDvwBiXtj12JofPXiaqob1gUVJRZnx
	iW/gdFltw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOkgE-0003Pk-6r; Sun, 27 Oct 2019 15:42:10 +0000
Received: from mout-p-201.mailbox.org ([80.241.56.171])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOkg0-0003OI-NT
 for linux-arm-kernel@lists.infradead.org; Sun, 27 Oct 2019 15:41:58 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-201.mailbox.org (Postfix) with ESMTPS id 471MXZ3cz5zQl8s;
 Sun, 27 Oct 2019 16:41:50 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id HKUBceS7i6hF; Sun, 27 Oct 2019 16:41:40 +0100 (CET)
Date: Mon, 28 Oct 2019 02:41:15 +1100
From: Aleksa Sarai <cyphar@cyphar.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH RESEND v14 2/6] namei: LOOKUP_IN_ROOT: chroot-like path
 resolution
Message-ID: <20191027154115.ex55njkysey4m6pu@yavin.dot.cyphar.com>
References: <20191026185700.10708-1-cyphar@cyphar.com>
 <20191026185700.10708-3-cyphar@cyphar.com>
 <CAHk-=wjPPWvm5_eR4uaHJaU1isTUk-4iXQV3Z2Px9A+w6j2nHg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHk-=wjPPWvm5_eR4uaHJaU1isTUk-4iXQV3Z2Px9A+w6j2nHg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_084157_077034_3341E81D 
X-CRM114-Status: GOOD (  19.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-ia64@vger.kernel.org, Linux-sh list <linux-sh@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Alexei Starovoitov <ast@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux@vger.kernel.org, Jiri Olsa <jolsa@redhat.com>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Tycho Andersen <tycho@tycho.ws>,
 Aleksa Sarai <asarai@suse.de>, Shuah Khan <shuah@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, Namhyung Kim <namhyung@kernel.org>,
 David Drysdale <drysdale@google.com>, Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>,
 GNU C Library <libc-alpha@sourceware.org>, linux-parisc@vger.kernel.org,
 Linux API <linux-api@vger.kernel.org>, Chanho Min <chanho.min@lge.com>,
 Jeff Layton <jlayton@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, alpha <linux-alpha@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Linux Containers <containers@lists.linux-foundation.org>
Content-Type: multipart/mixed; boundary="===============4405266392795284741=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4405266392795284741==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="x254sstnuxqz6cbi"
Content-Disposition: inline


--x254sstnuxqz6cbi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-10-27, Linus Torvalds <torvalds@linux-foundation.org> wrote:
> On Sat, Oct 26, 2019 at 2:58 PM Aleksa Sarai <cyphar@cyphar.com> wrote:
> >
> > +       /* LOOKUP_IN_ROOT treats absolute paths as being relative-to-di=
rfd. */
> > +       if (flags & LOOKUP_IN_ROOT)
> > +               while (*s =3D=3D '/')
> > +                       s++;
> > +
> >         /* Figure out the starting path and root (if needed). */
> >         if (*s =3D=3D '/') {
> >                 error =3D nd_jump_root(nd);
>=20
> So I'm still hung up on this.
>=20
> I guess I can't help it, but I look at the above, and it makes me go
> "whoever wrote those tests wasn't thinking".
>=20
> It just annoys me how it tests for '/' completely unnecessarily.
>=20
> If LOOKUP_IN_ROOT is true, we know the subsequent test for '/' is not
> going to match, because we just removed it. So I look at that code and
> go "that code is doing stupid things".

Okay, fair enough.

> That's why I suggested moving the LOOKUP_IN_ROOT check inside the '/' tes=
t.
>=20
> Alternatively, just make the logic be
>=20
>         if (flags & LOOKUP_IN_ROOT) {
>                .. remove '/'s ...
>         } else if (*s =3D=3D '/') {
>                 .. handl;e root ..
>=20
> and remove the next "else" clause

I've gone with the latter since I think it reads better.

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--x254sstnuxqz6cbi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXbW6lwAKCRCdlLljIbnQ
EoPNAP0TH7raCw5NCLFnqJEAJ2bl+pDz8oGtxQKGtoXC7HohOQEAqFv71cuFJjle
mvHPyKwhvNv8coIv55o8qUxny+XxIAg=
=0iVb
-----END PGP SIGNATURE-----

--x254sstnuxqz6cbi--


--===============4405266392795284741==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4405266392795284741==--

