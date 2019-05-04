Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8868E13A61
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 15:28:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5P7GEfg21Qb12tuqDbkmqQoI+q4iwZYpjv7d5HHF/Mo=; b=DABEi+IPVypsr7
	tqYnK0i/gUD3W+JviRnQ2p292P7hidxpMPLPdYtprdDw7vDCXCWNCbfxlJxh4CJ4lIYUU3WULg99Z
	lPSgx3gp3BlTd59UdIkd4fin+v4kvv9t5+P5FAed70U9pmy4xZBZw8w0767rG8C1ziPUhGBmh7mDQ
	1VRUECKwUc9+bWM3Oq0+SdhchTRbAoe4A/SjjpGeZ5NVLyYJKJTzPlDD/djDOBednV49/eQugUyFG
	RbHM8MeFgs0nUE7dZ/q+tQTVB8tyWSo1OOFF9tTRfIDf/zVemJwmqSCKHem3cJNqs3LRkzlZ0F1k3
	gzHhYcZRXsWamHOlXptw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMuiI-0000vX-KI; Sat, 04 May 2019 13:28:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMuiB-0000vD-6m
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 13:28:20 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 348A0206BB;
 Sat,  4 May 2019 13:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556976497;
 bh=IVHRdCkN0mPnr6kXZ1C1w1iy3DoX4q1ST2+mKFJzkHk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UP/IyQpZHOO9w7G3rc7Q+2oP79K5aNeZavR7nLtLhQpZs+benG7OtRSbP4C/gSAhf
 /qtbJLJkRMR5vyBODaQM6Kf11XE2duB2Vsz5gfkXRJDo/ANqifn6qlO3iEciWWxKMD
 aqnv2dkAZpUQFGMwrWwfh6RXeteTlpnH6u+p2ORA=
Date: Sat, 4 May 2019 21:28:00 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL 6/6] i.MX defconfig update for 5.2
Message-ID: <20190504132758.GA22736@dragon>
References: <20190422082836.3734-1-shawnguo@kernel.org>
 <20190422082836.3734-6-shawnguo@kernel.org>
 <20190429162910.l27ewbfvvestb474@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190429162910.l27ewbfvvestb474@localhost>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_062819_294203_A208158B 
X-CRM114-Status: GOOD (  17.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Abel Vesa <abel.vesa@nxp.com>, Stefan Agner <stefan@agner.ch>,
 Li Yang <leoyang.li@nxp.com>, arm@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, Leonard Crestez <leonard.crestez@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof,

On Mon, Apr 29, 2019 at 09:29:10AM -0700, Olof Johansson wrote:
> On Mon, Apr 22, 2019 at 04:28:36PM +0800, Shawn Guo wrote:
> > The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa=
231b:
> > =

> >   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> > =

> > are available in the Git repository at:
> > =

> >   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags=
/imx-defconfig-5.2
> > =

> > for you to fetch changes up to a3f12aac21848796f5b5c6e9ce2f04e411ec2129:
> > =

> >   arm64: defconfig: NVMEM_IMX_OCOTP=3Dy for imx8m (2019-04-22 10:33:53 =
+0800)
> > =

> > ----------------------------------------------------------------
> > i.MX defconfig update for 5.2:
> >  - Enable PCF857X GPIO expander and SIOX bus driver support for
> >    imx_v6_v7_defconfig.
> >  - Enable more drivers for i.MX8 platform support in arm64 defconfig:
> >    SNVS RTC, SCU Watchdog, SPI, i.MX8MM pinctrl and clock, LPI2C,
> >    ROHM_BD718XX PMIC and OCOTP NVMEM.
> =

> All of these are enabled as =3Dy. I don't think all of them are critical =
for
> booting the system up to a rootfs. Can you please switch over any non-cri=
tical
> drivers to =3Dm?
> =

> (Not merged)

I updated the tag with CONFIG_SPI_IMX and CONFIG_RTC_DRV_SNVS being
changed to 'm'.  Please consider to pull, thanks.

Shawn


The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:

  Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx=
-defconfig-5.2

for you to fetch changes up to 4aaa1c7a05db51e0f1b6ac41ce6e76f6b0125389:

  arm64: defconfig: NVMEM_IMX_OCOTP=3Dy for imx8m (2019-05-04 21:17:57 +080=
0)

----------------------------------------------------------------
i.MX defconfig update for 5.2:
 - Enable PCF857X GPIO expander and SIOX bus driver support for
   imx_v6_v7_defconfig.
 - Enable more drivers for i.MX8 platform support in arm64 defconfig:
   SNVS RTC, SCU Watchdog, SPI, i.MX8MM pinctrl and clock, LPI2C,
   ROHM_BD718XX PMIC and OCOTP NVMEM.

----------------------------------------------------------------
Abel Vesa (1):
      arm64: defconfig: Enable RTC_DRV_SNVS

Adam Ford (1):
      ARM: imx_v6_v7_defconfig: Add GPIO_PCF857X

Anson Huang (1):
      arm64: defconfig: add support for i.MX system controller watchdog

Fabio Estevam (1):
      arm64: defconfig: Enable CONFIG_SPI_IMX

Leonard Crestez (4):
      arm64: defconfig: Enable imx8mm clk/pinctrl
      arm64: defconfig: Enable lpi2c for imx8qxp and sensors
      arm64: defconfig: Enable ROHM_BD718XX PMIC for imx8mm-evk
      arm64: defconfig: NVMEM_IMX_OCOTP=3Dy for imx8m

Uwe Kleine-K=F6nig (1):
      ARM: imx_v6_v7_defconfig: Enable SIOX bus

 arch/arm/configs/imx_v6_v7_defconfig |  4 ++++
 arch/arm64/configs/defconfig         | 12 ++++++++++++
 2 files changed, 16 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
