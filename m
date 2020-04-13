Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E341A651A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 12:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UBDr05k4UIPG4VgB9I4PE35GoJf9Typ2dM5mdx38g2M=; b=RV8FJI5Zd86BOH
	KprdTnoZP/Pvf0DtHqkK62wzN1exXc4Kbza6xY7kZCzurh03v/4AKBe7+wpDbJjBz/6P24Vu9d8lW
	PR/cV02N8a3YP1JuqvKgSgNW+UxH9kuljNtiJS7bR81NQufB6ELEnbNHSQKRhVb1+qZ1yeArYsw1A
	Yv89AkSBuoOsPn+SBtuNkf5Tyt+JA9XvBomqhEJG3+EoRaUSul0bFWhIn0lbWhNFd0JDn2IWiLr42
	WpoHQ4xoHRgTmBTvyweUbZKpbQmPDwSiot/+QlZzo8sCkgv0BeZdVVW1bG2BWAJg22S0O+ywI20xf
	GpP2CzV2l27KpsGEO0eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNwCN-0005wM-39; Mon, 13 Apr 2020 10:20:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNwCC-0004gP-0w
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 10:20:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1jNwC6-0001Dz-1g; Mon, 13 Apr 2020 12:19:58 +0200
Received: from rhi by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1jNwC4-0003AX-KM; Mon, 13 Apr 2020 12:19:56 +0200
Date: Mon, 13 Apr 2020 12:19:56 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: Re: [PATCH] ARM: imx: provide v7_cpu_resume() only on
 ARM_CPU_SUSPEND=y
Message-ID: <20200413101956.47ggeq4q2hei76yz@pengutronix.de>
References: <20200323081933.31497-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323081933.31497-1-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: rhi@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_032004_079919_E2E38D34 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Clemens Gruber <clemens.gruber@pqgruber.com>,
 Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Russell King <linux@armlinux.org.uk>, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 23, 2020 at 09:19:33AM +0100, Ahmad Fatoum wrote:
> 512a928affd5 ("ARM: imx: build v7_cpu_resume() unconditionally")
> introduced an unintended linker error for i.MX6 configurations that have
> ARM_CPU_SUSPEND=n which can happen if neither CONFIG_PM, CONFIG_CPU_IDLE,
> nor ARM_PSCI_FW are selected.
> 
> Fix this by having v7_cpu_resume() compiled only when cpu_resume() it
> calls is available as well.
> 
> The C declaration for the function remains unguarded to avoid future code
> inadvertently using a stub and introducing a regression to the bug the
> original commit fixed.
> 
> Cc: <stable@vger.kernel.org>
> Fixes: 512a928affd5 ("ARM: imx: build v7_cpu_resume() unconditionally")
> Reported-by: Clemens Gruber <clemens.gruber@pqgruber.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Tested-by: Roland Hieber <rhi@pengutronix.de>

What's the status here? master is still broken on most of my builds, and
there were no other comments at all :-(

 - Roland

> ---
>  arch/arm/mach-imx/Makefile | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
> index 03506ce46149..e7364e6c8c6b 100644
> --- a/arch/arm/mach-imx/Makefile
> +++ b/arch/arm/mach-imx/Makefile
> @@ -91,8 +91,10 @@ AFLAGS_suspend-imx6.o :=-Wa,-march=armv7-a
>  obj-$(CONFIG_SOC_IMX6) += suspend-imx6.o
>  obj-$(CONFIG_SOC_IMX53) += suspend-imx53.o
>  endif
> +ifeq ($(CONFIG_ARM_CPU_SUSPEND),y)
>  AFLAGS_resume-imx6.o :=-Wa,-march=armv7-a
>  obj-$(CONFIG_SOC_IMX6) += resume-imx6.o
> +endif
>  obj-$(CONFIG_SOC_IMX6) += pm-imx6.o
>  
>  obj-$(CONFIG_SOC_IMX1) += mach-imx1.o
> -- 
> 2.25.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- 
Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
