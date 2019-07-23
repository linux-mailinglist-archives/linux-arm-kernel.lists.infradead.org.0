Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AB370FAC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 05:11:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a5/AfdxjLx5qAmdiICLKNbxflF5nvFJe0/9PwqI4S2Y=; b=S2q3mwLt4pxXWV
	ty/VhBucmJ7tuaAz2Z1prx9JPXKPdauEWz4XpBV9fSycQPyjNdGM7lOizn1dx5kUXEn8ES131cWPa
	LOT07RhlSu4jDTMVOuxlwRAqNEdcN1Vdoas/kbd3LV6NTq2XfHERm004VcafsnvANwHAirg1JiVX5
	O0BqJwyzA/DLsLROlqIFRjkRowhUaGwrZ8xfN4BDnzKZBtURcA+G0b7OZoHSDxfvfJxl+zUHA5Z1f
	QWPSygGECO8GW2zxhSxj9N1Bdr0XNcc1dAO3znFtgluu139JpUb4b5G2KbKBnyJQEu8VEeKTM1tfQ
	zrYWT/HyBCfijQatNuhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hplDH-0004a2-P5; Tue, 23 Jul 2019 03:11:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hplCh-0004Za-B5
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 03:11:04 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 31D2722389;
 Tue, 23 Jul 2019 03:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563851462;
 bh=6ZLp1Ao516Xi5yX/o+F/v5VGsTLVx5pvjjiDbR7GZBA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OGGGiT8QOdJg9RdG+oxoEjE9bnK/WKrcOfeFVh30P0G3lR2DsILVJcTdfHpIvfNxZ
 i8/62lrK76t5JWOCEJyhHkozXiWpz5qiSnpS8YPdUB+YTIHfBUISWk/jb7qc6TYnnY
 BVpLmSBrnY6iapm0KGnxex/PixMNeiNz9U1stR1M=
Date: Tue, 23 Jul 2019 11:10:33 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Stefan Riedmueller <s.riedmueller@phytec.de>
Subject: Re: [PATCH 02/10] ARM: dts: imx6ul: segin: Add boot media to dts
 filename
Message-ID: <20190723031032.GM3738@dragon>
References: <1562656767-273566-1-git-send-email-s.riedmueller@phytec.de>
 <1562656767-273566-3-git-send-email-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562656767-273566-3-git-send-email-s.riedmueller@phytec.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_201103_395636_4C3B6A01 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 martyn.welch@collabora.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 09, 2019 at 09:19:19AM +0200, Stefan Riedmueller wrote:
> There is now a PHYTEC phyCORE-i.MX 6UL with eMMC instead of NAND flash
> available. The dts filename needs to reflect that to differentiate both.
> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> ---
>  arch/arm/boot/dts/Makefile                                           | 2 +-
>  ...l-phytec-segin-ff-rdk.dts => imx6ul-phytec-segin-ff-rdk-nand.dts} | 5 +++--
>  2 files changed, 4 insertions(+), 3 deletions(-)
>  rename arch/arm/boot/dts/{imx6ul-phytec-segin-ff-rdk.dts => imx6ul-phytec-segin-ff-rdk-nand.dts} (85%)
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index e1924b06f3cb..668b57c8cc57 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -573,7 +573,7 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
>  	imx6ul-opos6uldev.dtb \
>  	imx6ul-pico-hobbit.dtb \
>  	imx6ul-pico-pi.dtb \
> -	imx6ul-phytec-segin-ff-rdk.dtb \
> +	imx6ul-phytec-segin-ff-rdk-nand.dtb \
>  	imx6ul-tx6ul-0010.dtb \
>  	imx6ul-tx6ul-0011.dtb \
>  	imx6ul-tx6ul-mainboard.dtb \
> diff --git a/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk.dts b/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts
> similarity index 85%
> rename from arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk.dts
> rename to arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts
> index 1e59183a2f7c..dc06029c5701 100644
> --- a/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk.dts
> +++ b/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts
> @@ -10,8 +10,9 @@
>  #include "imx6ul-phytec-segin-peb-eval-01.dtsi"
>  
>  / {
> -	model = "PHYTEC phyBOARD-Segin i.MX6 UltraLite Full Featured";
> -	compatible = "phytec,imx6ul-pbacd10", "phytec,imx6ul-pcl063", "fsl,imx6ul";
> +	model = "PHYTEC phyBOARD-Segin i.MX6 UltraLite Full Featured with NAND";
> +	compatible = "phytec,imx6ul-pbacd10-nand", "phytec,imx6ul-pbacd10",

The board compatibles need to be documented.

Shawn

> +		     "phytec,imx6ul-pcl063", "fsl,imx6ul";
>  };
>  
>  &adc1 {
> -- 
> 2.7.4
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
