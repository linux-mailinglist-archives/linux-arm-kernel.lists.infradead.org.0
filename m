Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A825160A1A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 06:35:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sPxCaLZUVdUkHrWh9WVZnRcpVMOPgrQtE7QU6HICNvA=; b=XJCcqOSJfmx1VP
	BpiVzVc+LEKieY4pe/j25NSESlLfi94m6WLhPMDkNfDb9hF9ekJKX+KLW7U+Wo7SV+M7HPBQ9dtsd
	Bdd1FPvwPlKut9mi1WThpJBd0qSufhF6Gg4mbLyu+qqQm9wPCs/g3cw5Ml0iId4UU4CfRO+gK4EQW
	oSx4TEWwtoZJ521PuPvQ02LANrhWQtdpFsfRY6+MJI30K1YtY/22+p+5G6bAugXU/l3Fn4ljGv6Kv
	160vNb20o5DpU8S/+ba6QnoDIJ21rMt47mjxgOqWf/nLqiVoccuTNlIDlm/wrFyruLTJZAsspBkLw
	3yKIGRBq6DI3Du6fJ60g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Z3M-0001ib-7P; Mon, 17 Feb 2020 05:34:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Z3B-0001hi-VR
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 05:34:35 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3125A20718;
 Mon, 17 Feb 2020 05:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581917673;
 bh=WgxWt0Xzjz1EgX03HNLnvJPTYT1f2Dma7HaptLd2cs0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wxYh4P8GdcAMVFWWB91/DnURPh8cCx+MN0CZbx4Is6YlnsiEElnU3CiSQhzaxaJYX
 eR6IfcL7NJJPhOiK47S4tkwLgk/nf/U6jZxQKAwOUldQAKh7okkEOZf0G9BswummdQ
 sDItXvrzwTNVQG1RsT+u2fNjnxIhf7BLWk0vKOHY=
Date: Mon, 17 Feb 2020 13:34:28 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Li Yang <leoyang.li@nxp.com>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>
Subject: Re: [PATCH 1/2] arm64: defconfig: run through savedefconfig for
 ordering
Message-ID: <20200217053427.GA6042@dragon>
References: <1581382559-18520-1-git-send-email-leoyang.li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581382559-18520-1-git-send-email-leoyang.li@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_213434_057093_28CC5A1D 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -4.4 (----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-4.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 06:55:58PM -0600, Li Yang wrote:
> Used "make defconfig savedefconfig" to regenerate defconfig file in the
> right order to prepare for additional defconfig changes.
> 
> Signed-off-by: Li Yang <leoyang.li@nxp.com>

Arnd, Olof,

How do we handle arm64 defconfig savedefconfig changes? I think it will
likely cause conflicts with changes from other platform maintainers.

Shawn

> ---
>  arch/arm64/configs/defconfig | 15 ++++++---------
>  1 file changed, 6 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 0f212889c931..618001ef5c81 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -471,9 +471,9 @@ CONFIG_DW_WATCHDOG=y
>  CONFIG_SUNXI_WATCHDOG=m
>  CONFIG_IMX2_WDT=y
>  CONFIG_IMX_SC_WDT=m
> +CONFIG_QCOM_WDT=m
>  CONFIG_MESON_GXBB_WATCHDOG=m
>  CONFIG_MESON_WATCHDOG=m
> -CONFIG_QCOM_WDT=m
>  CONFIG_RENESAS_WDT=y
>  CONFIG_UNIPHIER_WATCHDOG=y
>  CONFIG_BCM2835_WDT=y
> @@ -594,8 +594,8 @@ CONFIG_SND_SOC_TAS571X=m
>  CONFIG_SND_SIMPLE_CARD=m
>  CONFIG_SND_AUDIO_GRAPH_CARD=m
>  CONFIG_I2C_HID=m
> -CONFIG_USB=y
>  CONFIG_USB_CONN_GPIO=m
> +CONFIG_USB=y
>  CONFIG_USB_OTG=y
>  CONFIG_USB_XHCI_HCD=y
>  CONFIG_USB_XHCI_TEGRA=y
> @@ -617,7 +617,6 @@ CONFIG_USB_CHIPIDEA_HOST=y
>  CONFIG_USB_ISP1760=y
>  CONFIG_USB_HSIC_USB3503=y
>  CONFIG_NOP_USB_XCEIV=y
> -CONFIG_USB_ULPI=y
>  CONFIG_USB_GADGET=y
>  CONFIG_USB_RENESAS_USBHS_UDC=m
>  CONFIG_USB_RENESAS_USB3=m
> @@ -756,7 +755,6 @@ CONFIG_OWL_PM_DOMAINS=y
>  CONFIG_RASPBERRYPI_POWER=y
>  CONFIG_IMX_SCU_SOC=y
>  CONFIG_QCOM_AOSS_QMP=y
> -CONFIG_QCOM_COMMAND_DB=y
>  CONFIG_QCOM_GENI_SE=y
>  CONFIG_QCOM_GLINK_SSR=m
>  CONFIG_QCOM_RMTFS_MEM=m
> @@ -771,14 +769,12 @@ CONFIG_ARCH_R8A774A1=y
>  CONFIG_ARCH_R8A774B1=y
>  CONFIG_ARCH_R8A774C0=y
>  CONFIG_ARCH_R8A7795=y
> -CONFIG_ARCH_R8A7796=y
>  CONFIG_ARCH_R8A77961=y
>  CONFIG_ARCH_R8A77965=y
>  CONFIG_ARCH_R8A77970=y
>  CONFIG_ARCH_R8A77980=y
>  CONFIG_ARCH_R8A77990=y
>  CONFIG_ARCH_R8A77995=y
> -CONFIG_QCOM_PDC=y
>  CONFIG_ROCKCHIP_PM_DOMAINS=y
>  CONFIG_ARCH_TEGRA_132_SOC=y
>  CONFIG_ARCH_TEGRA_210_SOC=y
> @@ -809,6 +805,7 @@ CONFIG_PWM_ROCKCHIP=y
>  CONFIG_PWM_SAMSUNG=y
>  CONFIG_PWM_SUN4I=m
>  CONFIG_PWM_TEGRA=m
> +CONFIG_QCOM_PDC=y
>  CONFIG_RESET_QCOM_AOSS=y
>  CONFIG_RESET_QCOM_PDC=m
>  CONFIG_RESET_TI_SCI=y
> @@ -880,16 +877,16 @@ CONFIG_NLS_ISO8859_1=y
>  CONFIG_SECURITY=y
>  CONFIG_CRYPTO_ECHAINIV=y
>  CONFIG_CRYPTO_ANSI_CPRNG=y
> +CONFIG_CRYPTO_USER_API_RNG=m
>  CONFIG_CRYPTO_DEV_SUN8I_CE=m
>  CONFIG_CRYPTO_DEV_FSL_CAAM=m
> -CONFIG_CRYPTO_DEV_HISI_ZIP=m
> -CONFIG_CRYPTO_USER_API_RNG=m
>  CONFIG_CRYPTO_DEV_QCOM_RNG=m
> +CONFIG_CRYPTO_DEV_HISI_ZIP=m
>  CONFIG_CMA_SIZE_MBYTES=32
>  CONFIG_PRINTK_TIME=y
>  CONFIG_DEBUG_INFO=y
> -CONFIG_DEBUG_FS=y
>  CONFIG_MAGIC_SYSRQ=y
> +CONFIG_DEBUG_FS=y
>  CONFIG_DEBUG_KERNEL=y
>  # CONFIG_SCHED_DEBUG is not set
>  # CONFIG_DEBUG_PREEMPT is not set
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
