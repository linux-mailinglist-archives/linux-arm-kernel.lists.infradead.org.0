Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC9FFBEC1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 05:50:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KU7CcSxqEBmm8X/Esxuo+/2kuNkygd1bjAF4TPSbfgA=; b=dpQR6OV1JgDvXJ/CT1+jR4pNy
	/Ug9XMxHP+L96GUuBHO79C/MSeohOY9JdgIhgMWOkOrNFe0Z9EyMRt0kLblcnIHcvQ9m7tW2sJHmK
	6bF+RQfxT4BpVPXDbw0kA2ZWjnKCaRUXK2gG+/WJd94twQk2kVLLJm3Onm9KS/r13kP4M9QKABGtr
	1STOaLB2b3O6QdmwHogwDcCjCCPYM7DmXb0eM7b3l9mMDORaVJX4VvSjgExDPd4lEy1CJGx7boZsa
	344Vms0qkc0/8dJx4eFN7C0MkMdoWlUFMPJDysG5nTW/IynRFnfz2ptqhuRS05EE2jW8Qrb1N75yV
	ZW1XJKfXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV75X-0006lQ-CQ; Thu, 14 Nov 2019 04:50:35 +0000
Received: from mout-p-101.mailbox.org ([80.241.56.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV75P-0006jH-4P
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 04:50:29 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-101.mailbox.org (Postfix) with ESMTPS id 47D8DS2831zKmdH;
 Thu, 14 Nov 2019 05:50:16 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id GmtrxB8tgNO0; Thu, 14 Nov 2019 05:50:10 +0100 (CET)
Date: Thu, 14 Nov 2019 15:49:45 +1100
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH v15 3/9] namei: LOOKUP_NO_XDEV: block mountpoint crossing
Message-ID: <20191114044945.ldedzjrb4s7i7irr@yavin.dot.cyphar.com>
References: <20191105090553.6350-1-cyphar@cyphar.com>
 <20191105090553.6350-4-cyphar@cyphar.com>
 <20191113013630.GZ26530@ZenIV.linux.org.uk>
MIME-Version: 1.0
In-Reply-To: <20191113013630.GZ26530@ZenIV.linux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_205027_478679_55495E46 
X-CRM114-Status: GOOD (  19.91  )
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
 Shuah Khan <shuah@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Tycho Andersen <tycho@tycho.ws>,
 Aleksa Sarai <asarai@suse.de>, Jiri Olsa <jolsa@redhat.com>,
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
Content-Type: multipart/mixed; boundary="===============8653677927513283422=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8653677927513283422==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rwq4fftbhkszxm4g"
Content-Disposition: inline


--rwq4fftbhkszxm4g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-11-13, Al Viro <viro@zeniv.linux.org.uk> wrote:
> On Tue, Nov 05, 2019 at 08:05:47PM +1100, Aleksa Sarai wrote:
>=20
> > @@ -862,6 +870,8 @@ static int nd_jump_root(struct nameidata *nd)
> >  void nd_jump_link(struct path *path)
> >  {
> >  	struct nameidata *nd =3D current->nameidata;
> > +
> > +	nd->last_magiclink.same_mnt =3D (nd->path.mnt =3D=3D path->mnt);
> >  	path_put(&nd->path);
> > =20
> >  	nd->path =3D *path;
> > @@ -1082,6 +1092,10 @@ const char *get_link(struct nameidata *nd)
> >  		if (nd->flags & LOOKUP_MAGICLINK_JUMPED) {
> >  			if (unlikely(nd->flags & LOOKUP_NO_MAGICLINKS))
> >  				return ERR_PTR(-ELOOP);
> > +			if (unlikely(nd->flags & LOOKUP_NO_XDEV)) {
> > +				if (!nd->last_magiclink.same_mnt)
> > +					return ERR_PTR(-EXDEV);
> > +			}
> >  		}
>=20
> Ugh...  Wouldn't it be better to take that logics (some equivalent thereo=
f)
> into nd_jump_link()?  Or just have nd_jump_link() return an error...

This could be done, but the reason for stashing it away in
last_magiclink is because of the future magic-link re-opening patches
which can't be implemented like that without putting the open_flags
inside nameidata (which was decided to be too ugly a while ago).

My point being that I could implement it this way for this series, but
I'd have to implement something like last_magiclink when I end up
re-posting the magic-link stuff in a few weeks.

Looking at all the nd_jump_link() users, the other option is to just
disallow magic-link crossings entirely for LOOKUP_NO_XDEV. The only
thing allowing them permits is to resolve file descriptors that are
pointing to the same procfs mount -- and it's unclear to me how useful
that really is (apparmorfs and nsfs will always give -EXDEV because
aafs_mnt and nsfs_mnt are internal kernel vfsmounts).

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--rwq4fftbhkszxm4g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXczc5gAKCRCdlLljIbnQ
EspyAQDQkDnU2/CfvkXyKRLh2e7ycT5D4iHdCmBXbx8LlO8DlwD/S5O/FNHgyDdy
RVaJ7aj0OZAzg7DMx3VZRiI+He4MXw0=
=71Jv
-----END PGP SIGNATURE-----

--rwq4fftbhkszxm4g--


--===============8653677927513283422==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8653677927513283422==--

