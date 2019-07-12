Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 436DF66C7C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 14:20:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GX1DGM4Cmka9SbZhSGxIfHa1kdGyod0JYDWo8QlnQs4=; b=MfDNRCVOUcz8wTTNaeadOPPOu
	4oecOA3xIWeybcSGaE3FVdMWtztO/nMWrZuww9Xo3QUMi9uBxB8M28F5z7vRKV39OC65H/oRJ/bp9
	TJYlAvll6LtsVMX7tJaJ1IZgxBVFZEmKvB0SRxqIfTdZo7Gdc0r4JH2VIG+HAC0NHw+yrrKIOmgCi
	F3sf95ZkjzYMrH1c6xtobiogWrd1pdRXNHEKdniCrOIBIEmaicfiIB1JYa7etXpZFofSstXhG3XFr
	q8LBVb08uIAoQWrXazvMff+6O9yP7yqnrrZc/nO5wogNNasQKT39u2pBXcHni/V+KtICMms8cdzwZ
	bryPG3BSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hluXg-0003F9-N9; Fri, 12 Jul 2019 12:20:48 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hluXX-0003EC-Hl
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 12:20:41 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 2AA0EA217D;
 Fri, 12 Jul 2019 14:20:36 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id Fg_RUaFCSZVH; Fri, 12 Jul 2019 14:20:26 +0200 (CEST)
Date: Fri, 12 Jul 2019 22:20:17 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH v9 01/10] namei: obey trailing magic-link DAC permissions
Message-ID: <20190712122017.xkowq2cjreylpotm@yavin>
References: <20190706145737.5299-1-cyphar@cyphar.com>
 <20190706145737.5299-2-cyphar@cyphar.com>
 <20190712041454.GG17978@ZenIV.linux.org.uk>
MIME-Version: 1.0
In-Reply-To: <20190712041454.GG17978@ZenIV.linux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_052039_887714_B265CE80 
X-CRM114-Status: GOOD (  19.27  )
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
Content-Type: multipart/mixed; boundary="===============7491196064534468651=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7491196064534468651==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zhpexfjxcruxolbk"
Content-Disposition: inline


--zhpexfjxcruxolbk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-07-12, Al Viro <viro@zeniv.linux.org.uk> wrote:
> On Sun, Jul 07, 2019 at 12:57:28AM +1000, Aleksa Sarai wrote:
> > @@ -514,7 +516,14 @@ static void set_nameidata(struct nameidata *p, int=
 dfd, struct filename *name)
> >  	p->stack =3D p->internal;
> >  	p->dfd =3D dfd;
> >  	p->name =3D name;
> > -	p->total_link_count =3D old ? old->total_link_count : 0;
> > +	p->total_link_count =3D 0;
> > +	p->acc_mode =3D 0;
> > +	p->opath_mask =3D FMODE_PATH_READ | FMODE_PATH_WRITE;
> > +	if (old) {
> > +		p->total_link_count =3D old->total_link_count;
> > +		p->acc_mode =3D old->acc_mode;
> > +		p->opath_mask =3D old->opath_mask;
> > +	}
>=20
> Huh?  Could somebody explain why traversals of NFS4 referrals should inhe=
rit
> ->acc_mode and ->opath_mask?

I'll be honest -- I don't understand what set_nameidata() did so I just
did what I thought would be an obvious change (to just copy the
contents). I thought it was related to some aspect of the symlink stack
handling.

In that case, should they both be set to 0 on set_nameidata()? This will
mean that fd re-opening (or magic-link opening) through a
set_nameidata() would always fail.

> >  static __always_inline
> > -const char *get_link(struct nameidata *nd)
> > +const char *get_link(struct nameidata *nd, bool trailing)
> >  {
> >  	struct saved *last =3D nd->stack + nd->depth - 1;
> >  	struct dentry *dentry =3D last->link.dentry;
> > @@ -1081,6 +1134,44 @@ const char *get_link(struct nameidata *nd)
> >  		} else {
> >  			res =3D get(dentry, inode, &last->done);
> >  		}
> > +		/* If we just jumped it was because of a magic-link. */
> > +		if (unlikely(nd->flags & LOOKUP_JUMPED)) {
> [...]
> In any case, this "bool trailing" is completely wrong; whether that
> check belongs in trailing_symlink() or (some of) its callers, putting
> it into get_link() is a mistake, forced by kludgy check for procfs-style
> symlinks.

The error path for LOOKUP_JUMPED comes from the old O_BENEATH patchset,
but all of the "bool trailing" logic is definitely my gaff (I was
quietly hoping you'd have a much better solution than the whole
get_link() thing -- it definitely felt very kludgey to write).

I will work on the suggestion in your follow-up email. Thanks!

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--zhpexfjxcruxolbk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXSh6/QAKCRCdlLljIbnQ
EjDMAQCLRtfrI0y8gA2T7fw18G0cU799E+TMMczEIjU79f+8jQD/UcfSgUsZT0h6
7dVpliYNzOl4Uou0Y4Kln5It6iq5aAc=
=74oH
-----END PGP SIGNATURE-----

--zhpexfjxcruxolbk--


--===============7491196064534468651==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7491196064534468651==--

