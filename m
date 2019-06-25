Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D8C5528A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 16:52:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=77abBYAc4vBYil+E3pVfdEvHvd0rMuW1W7cglwPkQG8=; b=k3kHhpVZNHEBbhoHYMFq07xHX
	yZc0OHWhLtIoi3Ma+0T5ebY/I+EqoCQiNlxZsXlir4xNlxVmAYDlXrsaF8B2XBC9ZXu0CpRKb9Lk4
	k9Ck/TiLmgZrh8DOozUzkdTSKhg7eChc8Og4W68ALfmRaTaOkVKo9VT4fEO3gqrvv8C3/nLFQDxrk
	1VTMvlVr4c5GnQZSMSmBp/aTXfVnCMVtp4V8i0dAONJnLMZkurBH/udtpsSKP/TyMSGw3clLNxiEN
	lLhqrXH0BTW6Lkmi7JRVxH7dxbcz7U4chZnBuBHVwB0ghbTq4pag80umn4QFpPqA8hNR80gACgfRU
	VQEtAVYUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfmoG-0006VQ-86; Tue, 25 Jun 2019 14:52:36 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfmo6-0006Uv-Nm
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 14:52:28 +0000
Received: from localhost (aaubervilliers-681-1-41-156.w90-88.abo.wanadoo.fr
 [90.88.16.156]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 6756910000A;
 Tue, 25 Jun 2019 14:52:14 +0000 (UTC)
Date: Tue, 25 Jun 2019 16:52:13 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL] Allwinner arm64 defconfig Changes for 5.3
Message-ID: <20190625145213.f6jyyvp5lklg642z@flea>
References: <e4e2f9cf-d986-4648-a196-fba54f048edf.lettre@localhost>
 <20190625121552.gso5dc7n6a7dka2z@localhost>
MIME-Version: 1.0
In-Reply-To: <20190625121552.gso5dc7n6a7dka2z@localhost>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_075226_947638_209DC2B5 
X-CRM114-Status: GOOD (  17.61  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: Chen-Yu Tsai <wens@csie.org>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7292699920301669327=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7292699920301669327==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ppfvbz5jf6r6jy3k"
Content-Disposition: inline


--ppfvbz5jf6r6jy3k
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 25, 2019 at 05:15:52AM -0700, Olof Johansson wrote:
> Hi,
>
> On Fri, Jun 21, 2019 at 10:13:58AM +0200, Maxime Ripard wrote:
> > Hi,
> >
> > Please pull the following changes for the next release.
> >
> > Thanks!
> > Maxime
> >
> > The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0=
ebd9:
> >
> >   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> >
> > are available in the Git repository at:
> >
> >   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/=
tags/sunxi-config64-for-5.3-201906210813
> >
> > for you to fetch changes up to dae335bcae86cab8f5e1df32d9c0ec200585a92d:
> >
> >   arm64: defconfig: enable Allwinner DMA drivers (2019-06-11 10:28:18 +=
0200)
> >
> > ----------------------------------------------------------------
> > Our usual bunch of arm64 defconfig changes, this time mostly to enable
> > some missing drivers for the Allwinner A64.
> >
> > ----------------------------------------------------------------
> > Cl=E9ment P=E9ron (2):
> >       arm64: defconfig: enable sunxi watchdog
> >       arm64: defconfig: enable Allwinner DMA drivers
> >
> > Yangtao Li (1):
> >       arm64: defconfig: add allwinner sid support
>
> Is there a reason this isn't a module? I don't think it's needed to mount
> rootfs.
>
> (Not merged until clarified).

It's not needed to mount the rootfs, but this is needed on one of our
SoCs to store the bin, and thus the cpufreq settings to apply, and on
all our SoCs to store the calibration data for the thermal sensor,
which in turn is used for thermal throttling.

Both are important enough so that they don't depend on a module being
loaded to me, but I'm not really sure what the policy is here.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ppfvbz5jf6r6jy3k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXRI1HQAKCRDj7w1vZxhR
xTBnAP9/hSvvZzefHs5ZqB6/kJQQiZUelhUyMMJ37ovg087ShgEA7dnLzIaW1xVn
ce+H/KQVLdb3vRCb+eTetbRL+5UV6AA=
=eBKr
-----END PGP SIGNATURE-----

--ppfvbz5jf6r6jy3k--


--===============7292699920301669327==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7292699920301669327==--

