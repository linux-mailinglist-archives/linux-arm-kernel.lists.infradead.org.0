Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C0A66B3D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 12:58:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IKEYS+rvWcxSJJqMYAx6SBjPNHmu/u9vO8FmILEIi8k=; b=P4JQ/owuVt2SNaPyCVhtcGuy2
	XlIijqZxHd2tgxJZVdA1SJpgg6sc2FSi1LAia0ZRkhtS/78ahdoAYQ1+oO1oowBjnUpN09nGJF/65
	dGsgRHpsLc6ew546L0GLwmr83ctASIWmE4EA9S0WIBBBc9gUyU2THC0rnx+OMfE80pgHzFT0mfrSt
	NJbfc9ldQDzWbk5oXYv5F52D/bWvLKgDPQHn5DK8PxIANX5+LA5EbPNNeSf+RUQeKtkO5KH5ny6X6
	2r6P2ModURZbmHEY9ThGHM336+UkuiZqzUOCMbPWq8n4OaJdEFT16ENLqq1I/T9D9cYeJ54qIKAmY
	rkZGl6hnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hltG0-0006mk-Gn; Fri, 12 Jul 2019 10:58:28 +0000
Received: from mx1.mailbox.org ([2001:67c:2050:104:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hltFm-0006g8-BQ
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 10:58:16 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 648AF5427E;
 Fri, 12 Jul 2019 12:58:07 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id la_RnxBryad0; Fri, 12 Jul 2019 12:57:56 +0200 (CEST)
Date: Fri, 12 Jul 2019 20:57:45 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH v9 05/10] namei: O_BENEATH-style path resolution flags
Message-ID: <20190712105745.nruaftgeat6irhzr@yavin>
References: <20190706145737.5299-1-cyphar@cyphar.com>
 <20190706145737.5299-6-cyphar@cyphar.com>
 <20190712043341.GI17978@ZenIV.linux.org.uk>
MIME-Version: 1.0
In-Reply-To: <20190712043341.GI17978@ZenIV.linux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_035814_705589_B4AC36A5 
X-CRM114-Status: GOOD (  20.86  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:1:25:1 listed in]
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
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-kselftest@vger.kernel.org,
 sparclinux@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Tycho Andersen <tycho@tycho.ws>, Aleksa Sarai <asarai@suse.de>,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 linuxppc-dev@lists.ozlabs.org, linux-m68k@lists.linux-m68k.org,
 Andy Lutomirski <luto@kernel.org>, Shuah Khan <skhan@linuxfoundation.org>,
 David Drysdale <drysdale@google.com>, Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, linux-parisc@vger.kernel.org,
 linux-api@vger.kernel.org, Chanho Min <chanho.min@lge.com>,
 Jeff Layton <jlayton@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: multipart/mixed; boundary="===============5359083911089031712=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5359083911089031712==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="f3oogwkmh2sysq6o"
Content-Disposition: inline


--f3oogwkmh2sysq6o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-07-12, Al Viro <viro@zeniv.linux.org.uk> wrote:
> On Sun, Jul 07, 2019 at 12:57:32AM +1000, Aleksa Sarai wrote:
> > @@ -1442,8 +1464,11 @@ static int follow_dotdot_rcu(struct nameidata *n=
d)
> >  	struct inode *inode =3D nd->inode;
> > =20
> >  	while (1) {
> > -		if (path_equal(&nd->path, &nd->root))
> > +		if (path_equal(&nd->path, &nd->root)) {
> > +			if (unlikely(nd->flags & LOOKUP_BENEATH))
> > +				return -EXDEV;
>=20
> > @@ -1468,6 +1493,8 @@ static int follow_dotdot_rcu(struct nameidata *nd)
> >  				return -ECHILD;
> >  			if (&mparent->mnt =3D=3D nd->path.mnt)
> >  				break;
> > +			if (unlikely(nd->flags & LOOKUP_XDEV))
> > +				return -EXDEV;
> >  			/* we know that mountpoint was pinned */
> >  			nd->path.dentry =3D mountpoint;
> >  			nd->path.mnt =3D &mparent->mnt;
> > @@ -1482,6 +1509,8 @@ static int follow_dotdot_rcu(struct nameidata *nd)
> >  			return -ECHILD;
> >  		if (!mounted)
> >  			break;
> > +		if (unlikely(nd->flags & LOOKUP_XDEV))
> > +			return -EXDEV;
>=20
> Are you sure these failure exits in follow_dotdot_rcu() won't give
> suprious hard errors?

I could switch to -ECHILD for the *_rcu() checks if you'd prefer that.
Though, I'd have (probably naively) thought that you'd have already
gotten -ECHILD from the seqlock checks if there was a race during ".."
handling.

> > +	if (unlikely(nd->flags & LOOKUP_BENEATH)) {
> > +		error =3D dirfd_path_init(nd);
> > +		if (unlikely(error))
> > +			return ERR_PTR(error);
> > +		nd->root =3D nd->path;
> > +		if (!(nd->flags & LOOKUP_RCU))
> > +			path_get(&nd->root);
> > +	}
> >  	if (*s =3D=3D '/') {
> >  		if (likely(!nd->root.mnt))
> >  			set_root(nd);
> > @@ -2350,9 +2400,11 @@ static const char *path_init(struct nameidata *n=
d, unsigned flags)
> >  			s =3D ERR_PTR(error);
> >  		return s;
> >  	}
> > -	error =3D dirfd_path_init(nd);
> > -	if (unlikely(error))
> > -		return ERR_PTR(error);
> > +	if (likely(!nd->path.mnt)) {
>=20
> Is that a weird way of saying "if we hadn't already called dirfd_path_ini=
t()"?

Yes. I did it to be more consistent with the other "have we got the
root" checks elsewhere. Is there another way you'd prefer I do it?

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--f3oogwkmh2sysq6o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXShnpgAKCRCdlLljIbnQ
EgLTAP4nuVmi0292tyCAkB4Di0UUtazb2EsZPgKq9s2vRoyuFAD/UKONDBSK3VN9
06Id1xrmV0JIYJSqOIdF2oJIncJ8ZwI=
=5hbR
-----END PGP SIGNATURE-----

--f3oogwkmh2sysq6o--


--===============5359083911089031712==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5359083911089031712==--

