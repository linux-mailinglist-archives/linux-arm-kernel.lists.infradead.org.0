Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F4AFA6CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 03:45:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R/Cx/lo1vosaNIyYjooNqTpPIWkdIeAFpOQGmohkL/0=; b=Mo6ilafwHTl3vdjOT5EWGTVGa
	m1yH0r1YDwix3mtOSAoBNyXCXxuvZAiffZvoqhkNbjhaHrCUX6TYN6th+AiK61ehj3jPpjKsCX1A5
	V/2QQa4377NXl6CZiEKpmQaZ5w/WCfYLs48CcJiWOIcMu1FPmHVmOXyNyCMwBfiY1NAZ3PHB3F0O7
	EMS3LViHBONNmbJDbqgeEWlJ6SqqOTGSgvRo+W1G7LISVNA+FM8GVJj0qKFFQrhar74/MB1RL/FNT
	u1ejF2qgcmykXiG17cBrVdAv0FFdonNH38ci8jM6K2jB2/ZoQFmyZf2x4cmnPxUQSU+IDJBZc/cOF
	XNtolUdfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUieR-0006s0-UR; Wed, 13 Nov 2019 02:44:59 +0000
Received: from mout-p-202.mailbox.org ([2001:67c:2050::465:202])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUieE-0006rB-AP
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 02:44:48 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-202.mailbox.org (Postfix) with ESMTPS id 47CTV33Jc9zQlBx;
 Wed, 13 Nov 2019 03:44:43 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id LsOzyR1eKTKd; Wed, 13 Nov 2019 03:44:38 +0100 (CET)
Date: Wed, 13 Nov 2019 13:44:14 +1100
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH v15 5/9] namei: LOOKUP_IN_ROOT: chroot-like scoped
 resolution
Message-ID: <20191113024414.wlmvtjstpnkxa36n@yavin.dot.cyphar.com>
References: <20191105090553.6350-1-cyphar@cyphar.com>
 <20191105090553.6350-6-cyphar@cyphar.com>
 <20191113020307.GB26530@ZenIV.linux.org.uk>
MIME-Version: 1.0
In-Reply-To: <20191113020307.GB26530@ZenIV.linux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_184446_670013_3D077E83 
X-CRM114-Status: GOOD (  15.88  )
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
 Peter Zijlstra <peterz@infradead.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-kselftest@vger.kernel.org,
 sparclinux@vger.kernel.org, Christian Brauner <christian.brauner@ubuntu.com>,
 Jiri Olsa <jolsa@redhat.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Tycho Andersen <tycho@tycho.ws>,
 Aleksa Sarai <asarai@suse.de>, Shuah Khan <shuah@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, linuxppc-dev@lists.ozlabs.org,
 linux-m68k@lists.linux-m68k.org, Andy Lutomirski <luto@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, Namhyung Kim <namhyung@kernel.org>,
 David Drysdale <drysdale@google.com>, Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, libc-alpha@sourceware.org,
 linux-parisc@vger.kernel.org, linux-api@vger.kernel.org,
 Chanho Min <chanho.min@lge.com>, Jeff Layton <jlayton@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Eric Biederman <ebiederm@xmission.com>,
 linux-alpha@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: multipart/mixed; boundary="===============4282848282247016207=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4282848282247016207==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zcwix2zvi4el6ukc"
Content-Disposition: inline


--zcwix2zvi4el6ukc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-11-13, Al Viro <viro@zeniv.linux.org.uk> wrote:
> On Tue, Nov 05, 2019 at 08:05:49PM +1100, Aleksa Sarai wrote:
>=20
> > @@ -2277,12 +2277,20 @@ static const char *path_init(struct nameidata *=
nd, unsigned flags)
> > =20
> >  	nd->m_seq =3D read_seqbegin(&mount_lock);
> > =20
> > -	/* Figure out the starting path and root (if needed). */
> > -	if (*s =3D=3D '/') {
> > +	/* Absolute pathname -- fetch the root. */
> > +	if (flags & LOOKUP_IN_ROOT) {
> > +		/* With LOOKUP_IN_ROOT, act as a relative path. */
> > +		while (*s =3D=3D '/')
> > +			s++;
>=20
> Er...  Why bother skipping slashes?  I mean, not only link_path_walk()
> will skip them just fine, you are actually risking breakage in this:
>                 if (*s && unlikely(!d_can_lookup(dentry))) {
>                         fdput(f);
>                         return ERR_PTR(-ENOTDIR);
>                 }
> which is downstream from there with you patch, AFAICS.

I switched to stripping the slashes at your suggestion a few revisions
ago[1], and had (wrongly) assumed we needed to handle "/" somehow in
path_init(). But you're quite right about link_path_walk() -- and I'd be
more than happy to drop it.

[1]: https://lore.kernel.org/lkml/20190712125552.GL17978@ZenIV.linux.org.uk/

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--zcwix2zvi4el6ukc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXctt+gAKCRCdlLljIbnQ
EtaOAP4wZ6FONr+jCigAii+B0S1x/aNqVoCXGa0s32/c+X1spQEAiLcI0bIEdqjF
tuAr6TYPTrpe63nhzokAO32LJ1rVrQM=
=G6qn
-----END PGP SIGNATURE-----

--zcwix2zvi4el6ukc--


--===============4282848282247016207==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4282848282247016207==--

