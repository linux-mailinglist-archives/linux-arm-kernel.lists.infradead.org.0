Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6909B34273
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:58:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iodW0E/q4kNHyisP7xOLnJAJcWeiP5SoC32mEglcgGA=; b=bRJiY6DgXiUam8
	IJqUdTxG9+ADvEa3xWw6ol/xwmixeS3OiUQ/YdRFtMDOhb4MQK3x75B9x02U/tifKVCXtg7FNruBb
	VOACu5uZ2tfemwyOvipLNMZwhijiCi9E+lW3bBTlL+LB5EKxJ7dsTFrw9ntcSLu1zLatAyj1eBdmb
	4BQjz7sTXexJ3fxFSqBJ/ZjZdNfI9QI7JYbCFIVCbrXQXEUENKF8u7tlazo2l/nD9EaZldRsQJPx5
	y3EuTG2SwCBUt90mlbaHU7n6C4UYrW8CYq9BLJkS9sFyrBZGI1TK1naRzWeVydGGZucGREPL3S/iP
	5SoqWtIhUh614P2rmS1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY5Gs-0007PO-CX; Tue, 04 Jun 2019 08:58:18 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY5Gl-0007P0-QO
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 08:58:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7C9D0A78;
 Tue,  4 Jun 2019 01:58:11 -0700 (PDT)
Received: from e107533-lin.cambridge.arm.com (unknown [10.37.9.40])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F02903F246;
 Tue,  4 Jun 2019 01:58:05 -0700 (PDT)
Date: Tue, 4 Jun 2019 09:58:02 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2] ARM: config: Remove left-over BACKLIGHT_LCD_SUPPORT
Message-ID: <20190604085802.GB23250@e107533-lin.cambridge.arm.com>
References: <1559633061-28003-1-git-send-email-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559633061-28003-1-git-send-email-krzk@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_015811_858728_B7B150E0 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Tony Lindgren <tony@atomide.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Fabio Estevam <festevam@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Alexander Shiyan <shc_work@mail.ru>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Lee Jones <lee.jones@linaro.org>, Russell King <linux@armlinux.org.uk>,
 arm@kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Vladimir Zapolskiy <vz@mleia.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 09:24:21AM +0200, Krzysztof Kozlowski wrote:
> The CONFIG_BACKLIGHT_LCD_SUPPORT was removed in commit 8c5dc8d9f19c
> ("video: backlight: Remove useless BACKLIGHT_LCD_SUPPORT kernel
> symbol"). Options protected by CONFIG_BACKLIGHT_LCD_SUPPORT are now
> available directly.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v1:
> 1. Change also mini2440_defconfig.
> ---
> diff --git a/arch/arm/configs/vexpress_defconfig b/arch/arm/configs/vexpress_defconfig
> index 484d77a7f589..d170da388389 100644
> --- a/arch/arm/configs/vexpress_defconfig
> +++ b/arch/arm/configs/vexpress_defconfig
> @@ -86,7 +86,6 @@ CONFIG_DRM_PANEL_SIMPLE=y
>  CONFIG_DRM_SII902X=y
>  CONFIG_DRM_PL111=y
>  CONFIG_FB_MODE_HELPERS=y
> -CONFIG_BACKLIGHT_LCD_SUPPORT=y
>  CONFIG_BACKLIGHT_CLASS_DEVICE=y
>  CONFIG_LOGO=y
>  # CONFIG_LOGO_LINUX_MONO is not set

For vexpress,

Acked-by: Sudeep Holla <sudeep.holla@arm.com>

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
