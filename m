Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDA9181231
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 08:42:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JgSR29gNB0AzgHWfyv2NDfvR+/VddzKG8bSlxHQoD6s=; b=IRUJWbjZWqX56T
	grmn7p0X71rLHCu+TFMBEp1JAr0CLvOf8DkXzvbUiK7Rfo4dCNHXddkPR5IbdhHOrD87FCYtbGJzn
	DFAMPIWc1hPsSPtrjQV/1s54cbg1C2EKQ/KvXnRTUduc/UV2Vsluh0m72H2LjYMMMdKsBvX3C1cQW
	gw3sbdHh6nSpsFtmfF42NZNeqAaLycNvRroLdQ7seR8y2EAXa9LwLzr7JCyf3POiQAH6D1uN7Soaf
	drOlP7pMo3kFM7jQqmxMGaPtf+O6i3dHQjRQPvn7aI3FBNIXLSHepCvUNEdfuyMLeGr8lrC/bCRSh
	GpvoB7LmCnREEWTrwOSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBw0q-0004Dk-2p; Wed, 11 Mar 2020 07:42:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBw0A-0003rb-Tv
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 07:42:05 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E45AA20873;
 Wed, 11 Mar 2020 07:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583912521;
 bh=COqoozSsvLM0upCkboyNtzrP69ZdYJhevzth35nWfQM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OoozWDfShz0FRSf3tuymOxLp49w7woDT1zRZG0VOKt08WA6r8mO+78gCGudLNOHNn
 oQGD43dfdJ+nhSKSLzoqN0ANgz8ib2Has3ZS2oBvuoI5L2eJ/Gnqmqb9OSTvKTUdw1
 f3zfzTbyGfr109QyCPCeWunYDxj0/jOe75CqSne4=
Date: Wed, 11 Mar 2020 15:41:55 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH 2/2] ARM: dts: imx6: phycore-som: add da9062 gpio support
Message-ID: <20200311074154.GR29269@dragon>
References: <20200227110605.22144-1-m.felsch@pengutronix.de>
 <20200227110605.22144-2-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227110605.22144-2-m.felsch@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_004203_046363_27432D58 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: s.riedmueller@phytec.de, chf.fritz@googlemail.com, robh+dt@kernel.org,
 kernel@pengutronix.de, c.hemp@phytec.de, contact@stefanchrist.eu,
 s.christ@phytec.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 12:06:05PM +0100, Marco Felsch wrote:
> The pmic is a mfd device and supports gpios. Those gpios are not routed
> to the SoM baseboard pin header but they are connected to the i.MX6. We
> need the GPIO's to configure the pmic to select between the
> suspend/resume arm and soc voltages
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> 
>  arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Not sure why this is here.  I removed it and applied the patch.

Shawn

> 
> diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> index 8b71bf33ba30..41ebe4599e43 100644
> --- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> @@ -88,7 +88,7 @@
>  		reg = <0x50>;
>  	};
>  
> -	pmic@58 {
> +	pmic: pmic@58 {
>  		compatible = "dlg,da9062";
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pinctrl_pmic>;
> @@ -96,6 +96,8 @@
>  		interrupt-parent = <&gpio1>;
>  		interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
>  		interrupt-controller;
> +		gpio-controller;
> +		#gpio-cells = <2>;
>  
>  		da9062_rtc: rtc {
>  			compatible = "dlg,da9062-rtc";
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
