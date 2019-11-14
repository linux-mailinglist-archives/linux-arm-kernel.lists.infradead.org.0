Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F063FBED9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 05:58:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LbjyHi9mwxLPrPnDrcDlEgC7sshFZWcfA3+l9mcYIhQ=; b=C8jrliHMKjdmjwmIAPdlS+8yn
	Qb3KMooI+qbDxsABCh1VZs98UYbDLYLlP5j64MPdq5jO29CMImzR25FRhIVaVzMimYLNU0b8AOx43
	J+c1+WAaRqStO9pnodVl7Upi2xTNw6nlFuD+JX5RwTTt+rVi+8gD1sUx6T6gRwUtrdcWZwr/FByoC
	XuZv6E7JBEym9LRmI4PgNZbXOQDIjvmG6ah0Ak9njY7JvEfduD5mR2A6cAgRRQPY9GXNNJbYDEPcq
	HsGpYvXW4AskCbrVDkO0ElGs6J503FGzad1bGcKGDqUZIDwLO8E5JpQVEG9ZsuXESJsCpGE7fzYRY
	VXWZRGkzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV7DG-0000he-IJ; Thu, 14 Nov 2019 04:58:34 +0000
Received: from mout-p-102.mailbox.org ([2001:67c:2050::465:102])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV7D0-0000gO-39
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 04:58:20 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-102.mailbox.org (Postfix) with ESMTPS id 47D8Pf2Sf9zKmdL;
 Thu, 14 Nov 2019 05:58:14 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id QpQxpch70Axr; Thu, 14 Nov 2019 05:58:06 +0100 (CET)
Date: Thu, 14 Nov 2019 15:57:44 +1100
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH v15 4/9] namei: LOOKUP_BENEATH: O_BENEATH-like scoped
 resolution
Message-ID: <20191114045744.d3e7mp3zrupfe2wr@yavin.dot.cyphar.com>
References: <20191105090553.6350-1-cyphar@cyphar.com>
 <20191105090553.6350-5-cyphar@cyphar.com>
 <20191113015534.GA26530@ZenIV.linux.org.uk>
 <20191113074757.5b4u5vlyx2u6pbn6@yavin.dot.cyphar.com>
MIME-Version: 1.0
In-Reply-To: <20191113074757.5b4u5vlyx2u6pbn6@yavin.dot.cyphar.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_205818_447697_F321F8C0 
X-CRM114-Status: GOOD (  17.62  )
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Alexei Starovoitov <ast@kernel.org>, linux-mips@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-kselftest@vger.kernel.org,
 sparclinux@vger.kernel.org, Christian Brauner <christian.brauner@ubuntu.com>,
 Jiri Olsa <jolsa@redhat.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Ingo Molnar <mingo@redhat.com>,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Oleg Nesterov <oleg@redhat.com>, linux-m68k@lists.linux-m68k.org,
 Andy Lutomirski <luto@kernel.org>, Shuah Khan <skhan@linuxfoundation.org>,
 Namhyung Kim <namhyung@kernel.org>, David Drysdale <drysdale@google.com>,
 linux-arm-kernel@lists.infradead.org, "J. Bruce Fields" <bfields@fieldses.org>,
 libc-alpha@sourceware.org, linux-parisc@vger.kernel.org,
 linux-api@vger.kernel.org, Chanho Min <chanho.min@lge.com>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Biederman <ebiederm@xmission.com>, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, containers@lists.linux-foundation.org
Content-Type: multipart/mixed; boundary="===============4078972067570135548=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4078972067570135548==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6gz2i7fpwlz4mefu"
Content-Disposition: inline


--6gz2i7fpwlz4mefu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-11-13, Aleksa Sarai <cyphar@cyphar.com> wrote:
> On 2019-11-13, Al Viro <viro@zeniv.linux.org.uk> wrote:
> > Minor nit here - I'd split "move the conditional call of set_root()
> > into nd_jump_root()" into a separate patch before that one.  Makes
> > for fewer distractions in this one.  I'd probably fold "and be
> > ready for errors other than -ECHILD" into the same preliminary
> > patch.
>=20
> Will do.
>=20
> > > +			/* Not currently safe for scoped-lookups. */
> > > +			if (unlikely(nd->flags & LOOKUP_IS_SCOPED))
> > > +				return ERR_PTR(-EXDEV);
> >=20
> > Also a candidate for doing in nd_jump_link()...
> >=20
> > > @@ -1373,8 +1403,11 @@ static int follow_dotdot_rcu(struct nameidata =
*nd)
> > >  	struct inode *inode =3D nd->inode;
> > > =20
> > >  	while (1) {
> > > -		if (path_equal(&nd->path, &nd->root))
> > > +		if (path_equal(&nd->path, &nd->root)) {
> > > +			if (unlikely(nd->flags & LOOKUP_BENEATH))
> > > +				return -EXDEV;
> >=20
> > Umm...  Are you sure it's not -ECHILD?
>=20
> It wouldn't hurt to be -ECHILD -- though it's not clear to me how likely
> a success would be in REF-walk if the parent components didn't already
> trigger an unlazy_walk() in RCU-walk.
>=20
> I guess that also means LOOKUP_NO_XDEV should trigger -ECHILD in
> follow_dotdot_rcu()?

Scratch the last question -- AFAICS we don't need to do that for
LOOKUP_NO_XDEV because we check against mount_lock so it's very unlikely
that -ECHILD will have any benefit.

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--6gz2i7fpwlz4mefu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXczexQAKCRCdlLljIbnQ
Em3mAQDOIg6+v9zFmJZ9+uYnLQ8tGd3ay8OeAsu6/xVlfCimMwD/cMP8o+o1KTbo
+rDSfA6D7b6Zhy7K3Vlf0k0OTebeSwI=
=kHIA
-----END PGP SIGNATURE-----

--6gz2i7fpwlz4mefu--


--===============4078972067570135548==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4078972067570135548==--

