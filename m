Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E59966C24
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 14:08:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sLcMKKkzKivqio/XEDKo43QwyPjTGKsLAUkLYwqVbWM=; b=q6eBKSNTfdiC09pix7oyqVofO
	YEOEVo/nFcqt9g9dikz0x2BBHK1mNI47ieX6GPAleYqomnJ6eIJN5rzCjEmC8+LGva12DCienyAAH
	Uu5Gm3ZDYlyS4vyyqGyZIRHpA36jgCa6AfGibjtmMAtC0/INCmVgKZWITbDfQ/oaDf95z/WU7U21u
	CRQkzE7pZI6EcfKbyoscJGVFT48MdIFlxrNrhgKJnpdSq0w/Ykrug5tTfQrx2TJkTbxrFnhKx5uxv
	jv+8ZcxTzgwgPRqivXfpITOSF0/dTqw8xBG1D8TFDCxVH/tQNFBgrFpnaeKdzNxVh4mLqWp7OP1Q4
	yAY4Wsnlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hluLb-0005V9-Lm; Fri, 12 Jul 2019 12:08:19 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hluLQ-0005Ud-6P
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 12:08:10 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 9E9DDA1FD8;
 Fri, 12 Jul 2019 14:08:02 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id vunrqErDeJEg; Fri, 12 Jul 2019 14:07:58 +0200 (CEST)
Date: Fri, 12 Jul 2019 22:07:43 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH v9 04/10] namei: split out nd->dfd handling to
 dirfd_path_init
Message-ID: <20190712120743.mka3vl5t4zndc5wj@yavin>
References: <20190706145737.5299-1-cyphar@cyphar.com>
 <20190706145737.5299-5-cyphar@cyphar.com>
 <20190712042050.GH17978@ZenIV.linux.org.uk>
MIME-Version: 1.0
In-Reply-To: <20190712042050.GH17978@ZenIV.linux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_050808_388940_7C73C215 
X-CRM114-Status: GOOD (  15.29  )
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
Content-Type: multipart/mixed; boundary="===============3938524389870418195=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3938524389870418195==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="d4v7lkh6hn3fnrr5"
Content-Disposition: inline


--d4v7lkh6hn3fnrr5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-07-12, Al Viro <viro@zeniv.linux.org.uk> wrote:
> On Sun, Jul 07, 2019 at 12:57:31AM +1000, Aleksa Sarai wrote:
> > Previously, path_init's handling of *at(dfd, ...) was only done once,
> > but with LOOKUP_BENEATH (and LOOKUP_IN_ROOT) we have to parse the
> > initial nd->path at different times (before or after absolute path
> > handling) depending on whether we have been asked to scope resolution
> > within a root.
>=20
> >  	if (*s =3D=3D '/') {
> > -		set_root(nd);
> > -		if (likely(!nd_jump_root(nd)))
> > -			return s;
> > -		return ERR_PTR(-ECHILD);
>=20
> > +		if (likely(!nd->root.mnt))
> > +			set_root(nd);
>=20
> How can we get there with non-NULL nd->root.mnt, when LOOKUP_ROOT case
> has been already handled by that point?

Yup, you're completely right. I will remove the
  if (!nd->root.mnt)
in the next version.


--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--d4v7lkh6hn3fnrr5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXSh4CgAKCRCdlLljIbnQ
EmXbAP9tX+q7bWxunLL4KxbGY/ld+vFqPXrdHyJAsnYXD1QLXwEAosmgLN7YU35t
LUn9+NWS+cu0VbO4qtSioBcFwh5cpwA=
=zvz5
-----END PGP SIGNATURE-----

--d4v7lkh6hn3fnrr5--


--===============3938524389870418195==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3938524389870418195==--

