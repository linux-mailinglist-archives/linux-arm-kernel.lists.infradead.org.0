Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9E613A2C4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 09:18:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QFs7b27PNkth1mRk45w7n1laCPLO1XAlkaAss2POVuA=; b=sseEDzuv29Bg0+
	6aanwDAlzoWMfc/n0yD3ji2zwtJkL+HnM2tP6nSQx915M0ab3N7xxHkbXnuyxlSlLRTcO0SPb866R
	Yo8G6IUXICw+AOH+itXFpPXqJQDbiO9qI1bErR+YUIicTlYdlZTTrfSx4A4OoLti/9Km2uposzNRY
	ZFjS5EDIHRPkeBxfK+r3nL7MYaKUMGHgP0HwlRwhlNoTlJ5RbX/BOfFnJ5rvBuzCZeFR+/9TAoXZD
	BoBxHTizWmtnrluW6Mjn+nrzw8aLXeXPj75l8kOUITX87xB+VliR0JWfgaOm0VbF/1YHHSJNNX2Ta
	viUUfX64aouRpFW4uLbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irHOw-0007B2-Ac; Tue, 14 Jan 2020 08:18:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irHOl-0007AB-4j
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 08:18:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1irHOa-0004pd-Eb; Tue, 14 Jan 2020 09:17:52 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1irHOZ-0000Yt-Q1; Tue, 14 Jan 2020 09:17:51 +0100
Date: Tue, 14 Jan 2020 09:17:51 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] soc: imx: Makefile: only build soc-imx8 when CONFIG_ARM64
Message-ID: <20200114081751.3wjbbnaem7lbnn3v@pengutronix.de>
References: <1578989048-10162-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578989048-10162-1-git-send-email-peng.fan@nxp.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_001803_185313_77C39741 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 08:08:45AM +0000, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> =

> Only need to build soc-imx8.c when CONFIG_ARM64 defined,
> no need to build it for CONFIG_ARM32 currently.
> =

> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/soc/imx/Makefile | 2 ++
>  1 file changed, 2 insertions(+)
> =

> diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile
> index cf9ca42ff739..cfcbc62b11d7 100644
> --- a/drivers/soc/imx/Makefile
> +++ b/drivers/soc/imx/Makefile
> @@ -1,5 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  obj-$(CONFIG_HAVE_IMX_GPC) +=3D gpc.o
>  obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) +=3D gpcv2.o
> +ifdef CONFIG_ARM64
>  obj-$(CONFIG_ARCH_MXC) +=3D soc-imx8.o
> +endif

For earlier SoCs we had kconfig symbols like SOC_IMX25. Actually
SOC_IMX8 would be the right one to decide about soc-imx8.c to be
compiled, it would be easier to read and verify than the suggested
"ARM64 && ARCH_MXC" and it would stay right once NXP presents it's next
64-bit SoC i.MX9.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
