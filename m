Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DA5211F2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 04:11:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VtXwC3s/50QFALyMNM7wdt7AUGLCqrqvyfkpkjhdv84=; b=IPxcwUUpejEqFc
	ZZzt06UFTutgvbFRvL0EOXfj6zjlhaWy+IsVtFJ1LJxv5Huqlm3jInePeAz7i3C0/A0wYkTSzc8iz
	qLskfXxT+Q+XqnueVoGTdsKxU69cmjlyDOpUtImN8I8T4m/IEAFeOAHJVEAku+EFpeSdbu1Zd+0nK
	13J/tv01TZrm4ptwGjMvCgfOQfWNL7rUYzLB1sCo9SzdevJ65UNu8S5fFqmkzI0SauM1J5rAd9Hgk
	C2qLmO3oAx/7bga3AGQ9Dzou/UHWT6OKVWnOEakwdh7axgS4AjdznnTtDdaVsyLmoe1ozsZRbM+Mf
	IGaoWGEODY8WfBnI65gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRSLT-0001PX-SI; Fri, 17 May 2019 02:11:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRSLM-0001PB-NG
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 02:11:33 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 068752082E;
 Fri, 17 May 2019 02:11:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558059092;
 bh=L9gJDk5SmlO1Bjp81hnl855ONnNEMGWCYhhypjgHXmQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fAz0fNHe5dnd4aoxP7ra/g7ObfoBZi3UgnTGjMsqpI0M0LkM+Xvra0hBSlbhPnmT1
 FcWJ/7iih/uZiogrwPeZOE2V0cr1ZYDgC1igYQ99sgmeG6hTJtmMb1rMjN7cts0lmm
 FE/4qhHUBZO/XJoqg4UfiOIaTb5BI+Vdmlc/1DQc=
Date: Fri, 17 May 2019 10:10:51 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Ran Wang <ran.wang_1@nxp.com>
Subject: Re: [PATCH v3] arm64: dts: ls1028a: Add USB dt nodes
Message-ID: <20190517021050.GW15856@dragon>
References: <20190508064814.14223-1-ran.wang_1@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190508064814.14223-1-ran.wang_1@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_191132_781722_B623164F 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Leo Li <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 08, 2019 at 06:46:37AM +0000, Ran Wang wrote:
> This patch adds USB dt nodes for LS1028A.
> 
> Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
> ---
> Changes in v3:
>   - Add space between label and node name.
>   - Add spcae with properties and '='.
>   - Add SoC specific compatible.
> 
> Changes in v2:
>   - Rename node from usb3@... to usb@... to meet DTSpec
> 
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi |   20 ++++++++++++++++++++
>  1 files changed, 20 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index 8dd3501..19519df 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -144,6 +144,26 @@
>  			clocks = <&sysclk>;
>  		};
>  
> +		usb0: usb@3100000 {

Please sort the nodes with unit-address in the address.  That said, it
should go after watchdog@23c0000.

> +			compatible = "fsl,ls1028a-dwc3", "snps,dwc3";
> +			reg = <0x0 0x3100000 0x0 0x10000>;
> +			interrupts = <0 80 0x4>;

interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;

Shawn

> +			dr_mode = "host";
> +			snps,dis_rxdet_inp3_quirk;
> +			snps,quirk-frame-length-adjustment = <0x20>;
> +			snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
> +		};
> +
> +		usb1: usb@3110000 {
> +			compatible = "fsl,ls1028a-dwc3", "snps,dwc3";
> +			reg = <0x0 0x3110000 0x0 0x10000>;
> +			interrupts = <0 81 0x4>;
> +			dr_mode = "host";
> +			snps,dis_rxdet_inp3_quirk;
> +			snps,quirk-frame-length-adjustment = <0x20>;
> +			snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
> +		};
> +
>  		i2c0: i2c@2000000 {
>  			compatible = "fsl,vf610-i2c";
>  			#address-cells = <1>;
> -- 
> 1.7.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
