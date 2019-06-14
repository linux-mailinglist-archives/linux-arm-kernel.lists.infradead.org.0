Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B75264673D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 20:15:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OqbWYKyrlkdWAOBe5cS1JNDm8NUN2r7pCk6dzhNkgkY=; b=s3lut/kE/3yOHLPXqBoT0JmPt
	v6DhaMxYyd8CLOJuoxpJaZcU8s/UM4z28JE4gAs5AVvivqLlbpwYihaqOSXKhZUnwbbn7F7GaFP6F
	HNlzwt6Hb7m/zVqTIViPvt4bnakHJcMGeKQliKbL12Aa/LAma9Md4DOwgWiEsAB9jk/H4M8j6WA9W
	3xDtAiTN3z2fBZwL0gs2tec6xkdr9jfNXWGX1y+Jw6XhrWoB6Qi8T8/NKNETnnWNZj8mLfNrJkJfD
	lCaeoZL+cbbXYToV10ALdovjiu1EmaHRxGaZAVYM6aTYFojRx9TwxRmJpmLXI7MvWzS2kVvef1Laz
	kz5rGK4FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbqjL-0002VJ-JJ; Fri, 14 Jun 2019 18:15:15 +0000
Received: from cyberdimension.org ([2001:910:1314:ffff::1]
 helo=gnutoo.cyberdimension.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbqjC-0001Sm-0V
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 18:15:07 +0000
Received: from gnutoo.cyberdimension.org (localhost [127.0.0.1])
 by cyberdimension.org (OpenSMTPD) with ESMTP id 44d51290;
 Fri, 14 Jun 2019 18:12:46 +0000 (UTC)
Received: from primarylaptop.localdomain (localhost.localdomain [IPv6:::1])
 by gnutoo.cyberdimension.org (OpenSMTPD) with ESMTP id 33591298;
 Fri, 14 Jun 2019 18:12:39 +0000 (UTC)
Date: Fri, 14 Jun 2019 20:14:34 +0200
From: Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] security: do not enable CONFIG_GCC_PLUGINS by default
Message-ID: <20190614201434.3fa4bb6d@primarylaptop.localdomain>
In-Reply-To: <20190614162811.o33yeq65ythjumrh@shell.armlinux.org.uk>
References: <20190614145755.10926-1-GNUtoo@cyberdimension.org>
 <CAG48ez30+VOj78rCiWMKtm0tHdVR67CcrHVCV-FFCfK-nRQTOw@mail.gmail.com>
 <20190614162811.o33yeq65ythjumrh@shell.armlinux.org.uk>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; i686-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_111506_395797_5FCC5152 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Kees Cook <keescook@chromium.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Jann Horn <jannh@google.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Emese Revfy <re.emese@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7360392564366231592=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============7360392564366231592==
Content-Type: multipart/signed; boundary="Sig_/voOOXX9XV5OPRkIfDNCClwK";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/voOOXX9XV5OPRkIfDNCClwK
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Fri, 14 Jun 2019 17:28:11 +0100
Russell King - ARM Linux admin <linux@armlinux.org.uk> wrote:
> I'm wondering whether this is sloppy wording or whether the author is
> really implying that they call the kernel decompressor with the MMU
> enabled, against the express instructions in
> Documentation/arm/Booting.
According to [1]
> If they are going against the express instructions, all bets are off.

More background on the decompressor patch:
- The "ANDROID: arm: decompressor: Flush tlb before swiching domain 0 to
  client mode" patch is needed anyway since 3.4 in any case, and
  according to the thread about it [1], the MMU is on at boot.
- There is a downstream u-boot port for the Galaxy SIII and other very
  similar devices, which doesn't setup the MMU at boot, but I'm not
  confident enough to test in on the devices I have. To test with
  u-boot I'd need to find a new device.
- If I don't manage to find a new device to test on, since there is
  already some setup code like arch/arm/boot/compressed/head-sa1100.S
  that deal with MMU that are enabled with the bootloader, are patches
  to add a new file like that still accepted? The big downside is that
  using something like that is probably incompatible with
  ARCH_MULTIPLATFORM.

References:
-----------
[1]http://lkml.iu.edu/hypermail/linux/kernel/1212.1/02099.html
[2]https://blog.forkwhiletrue.me/posts/an-almost-fully-libre-galaxy-s3/

Denis.

--Sig_/voOOXX9XV5OPRkIfDNCClwK
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEeC+d2+Nrp/PU3kkGX138wUF34mMFAl0D5AoACgkQX138wUF3
4mPGRg//XSxQro0dtk4EQYdV0C1YPG1fXjbs8d+Mq3FkDDXuzQd22ph1a0tHxWwX
sojh58OJZHrdcnL/CC4V85qxTEW5gK7V3zklM3gZEaktbU7/7P1BHMAvI9RNrU+A
A64fKneSHJu2o9dRpKQLCuuMOgBPWNX5wAeBdF1Wnrvt+XTtdNF7Skt52mOWlOU9
hWHtU1Qfg6NKd7F/j5IhXlfghz/E6MtdGXTl3w23nZkYe4D250ZTzlrJMfxEUkqd
7Wn4a4aiuXfXzN173/8aA7xZZFRC1Km2LOvmv2qPyXvYKZplAy6Zu7TNwgKZfqDg
hmDFNAR4oMZH05mPnPwk2jAhvf10Rq74Nn+Xfi5DMbIwS43pCpCmepF0NqCu+QRQ
esd/EWz5KcNFJxMnSi4OWa9+eH8vXERBJTNERLTLtuf3hN5+GTKgp0+Qpaax/lcr
8hrQ0Tij7aZMEzaOYP/fYF02xESxWUPxWWm2XQdIW1MJEFSWgwIDjgSp/06j0g0Y
NOh5LIrH9cPwGB86dppI8ctW/Ca1ifkn3FxYMLyBnraWXehgZqX13Col0oViSLHn
coKhAQ31tAzCkIlJ5+gwlspGc6vBMthHh4gc2RjqxC9ji3f+XY1/aKy3HhBs+Nj3
BJ/yjZ7dGkpzJNY70DQ1z2a2A8L3Ct6+TVyFpDixm/sq4NUYZ6A=
=Ws9W
-----END PGP SIGNATURE-----

--Sig_/voOOXX9XV5OPRkIfDNCClwK--


--===============7360392564366231592==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7360392564366231592==--

