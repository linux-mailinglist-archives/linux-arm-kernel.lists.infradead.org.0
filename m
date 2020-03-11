Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ACAA181091
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 07:21:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W+FQvwipLSbSrqfWdGJfPEGVQYkZrCVjN26cAoVD5ZA=; b=jZ9soSzWQw1Ffr
	rfV4S+huAK29aWfg+LV7U/7qNLK0O/81spkVwEEyawc6qttURRv6JwnszfoEkAbl564yytcXRJ4vG
	FYCyvnuQ6tQd8b+E8PEjtUIOkelAIze2nhMnBMiSbgr1WlpPbM8Wn44jxEk0BeXvMx3LDmUb23v4A
	LVAvvbuqTlyE4GV32DK025tOMmqpGBqXRGW9R9sjFXcon1fAx36hn/NTGIKtEYF6+WiBjS9m9oCHl
	CYeWfDgPxL3xmneSa2Hzgxx9K7GT28DEH7e2+bB2FcjevsxTll9v8sdkdwPrVfqnrpj8lWH32xBOH
	lNx4/AC4fEV+wDso0UwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBuka-0001Cz-7J; Wed, 11 Mar 2020 06:21:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBukS-0001Cf-KG
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 06:21:46 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AB053208E4;
 Wed, 11 Mar 2020 06:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583907704;
 bh=bxHbcWq3Q5XazUANfBEywJc2ZDNiPxRoRkmScQum/gM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KtC9c4umeXVYs3RkeQddsCzb5NHjtl182YykeKhuz95KjItwjyPJWsbYl6g1UcCTt
 eQFG9GNzzXicUGy5alBx6ORZTBcr8L60hTuEhWIYGznCmTVJYAcSsjwDaCsNvt9+Bm
 iXsI5Biw92smgp2SKMVUqX2uC4Ua9FuNU4YaZgyw=
Date: Wed, 11 Mar 2020 14:21:35 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH] ARM64: dts: imx8m: fix aips dts node
Message-ID: <20200311062135.GD29269@dragon>
References: <1582602242-28577-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582602242-28577-1-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_232144_709060_3DF83790 
X-CRM114-Status: GOOD (  14.22  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, Anson.Huang@nxp.com,
 daniel.baluta@nxp.com, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 11:44:02AM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Per binding doc fsl,aips-bus.yaml, compatible and reg is

Where can I find this binding doc?

> required. And for reg, the AIPS configuration space should be
> used, not all the AIPS bus space.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Prefix 'arm64: ...' for arch/arm64 patches.

Shawn

> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 12 ++++++++----
>  arch/arm64/boot/dts/freescale/imx8mn.dtsi | 16 ++++++++--------
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 12 ++++++------
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 12 ++++++++----
>  4 files changed, 30 insertions(+), 22 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index b3d0b29d7007..a4356d2047cd 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -227,7 +227,8 @@
>  		ranges = <0x0 0x0 0x0 0x3e000000>;
>  
>  		aips1: bus@30000000 {
> -			compatible = "simple-bus";
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x301f0000 0x10000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges = <0x30000000 0x30000000 0x400000>;
> @@ -496,7 +497,8 @@
>  		};
>  
>  		aips2: bus@30400000 {
> -			compatible = "simple-bus";
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x305f0000 0x10000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges = <0x30400000 0x30400000 0x400000>;
> @@ -555,7 +557,8 @@
>  		};
>  
>  		aips3: bus@30800000 {
> -			compatible = "simple-bus";
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x309f0000 0x10000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges = <0x30800000 0x30800000 0x400000>;
> @@ -800,7 +803,8 @@
>  		};
>  
>  		aips4: bus@32c00000 {
> -			compatible = "simple-bus";
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x32df0000 0x10000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges = <0x32c00000 0x32c00000 0x400000>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> index f2775724377f..4848ce82f083 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> @@ -203,8 +203,8 @@
>  		ranges = <0x0 0x0 0x0 0x3e000000>;
>  
>  		aips1: bus@30000000 {
> -			compatible = "simple-bus";
> -			reg = <0x30000000 0x400000>;
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x301f0000 0x10000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges;
> @@ -401,8 +401,8 @@
>  		};
>  
>  		aips2: bus@30400000 {
> -			compatible = "simple-bus";
> -			reg = <0x30400000 0x400000>;
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x305f0000 0x10000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges;
> @@ -461,8 +461,8 @@
>  		};
>  
>  		aips3: bus@30800000 {
> -			compatible = "simple-bus";
> -			reg = <0x30800000 0x400000>;
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x309f0000 0x10000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges;
> @@ -707,8 +707,8 @@
>  		};
>  
>  		aips4: bus@32c00000 {
> -			compatible = "simple-bus";
> -			reg = <0x32c00000 0x400000>;
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x32df0000 0x10000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> index 71b0c8f23693..eb67f56cdfe2 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -144,8 +144,8 @@
>  		ranges = <0x0 0x0 0x0 0x3e000000>;
>  
>  		aips1: bus@30000000 {
> -			compatible = "simple-bus";
> -			reg = <0x30000000 0x400000>;
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x301f0000 0x10000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges;
> @@ -309,8 +309,8 @@
>  		};
>  
>  		aips2: bus@30400000 {
> -			compatible = "simple-bus";
> -			reg = <0x30400000 0x400000>;
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x305f0000 0x400000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges;
> @@ -369,8 +369,8 @@
>  		};
>  
>  		aips3: bus@30800000 {
> -			compatible = "simple-bus";
> -			reg = <0x30800000 0x400000>;
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x309f0000 0x400000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index 6a1e83922c71..07070464063d 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -290,7 +290,8 @@
>  		dma-ranges = <0x40000000 0x0 0x40000000 0xc0000000>;
>  
>  		bus@30000000 { /* AIPS1 */
> -			compatible = "simple-bus";
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x301f0000 0x10000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges = <0x30000000 0x30000000 0x400000>;
> @@ -692,7 +693,8 @@
>  		};
>  
>  		bus@30400000 { /* AIPS2 */
> -			compatible = "simple-bus";
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x305f0000 0x10000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges = <0x30400000 0x30400000 0x400000>;
> @@ -751,7 +753,8 @@
>  		};
>  
>  		bus@30800000 { /* AIPS3 */
> -			compatible = "simple-bus";
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x309f0000 0x10000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges = <0x30800000 0x30800000 0x400000>,
> @@ -1023,7 +1026,8 @@
>  		};
>  
>  		bus@32c00000 { /* AIPS4 */
> -			compatible = "simple-bus";
> +			compatible = "fsl,aips", "simple-bus";
> +			reg = <0x32df0000 0x10000>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges = <0x32c00000 0x32c00000 0x400000>;
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
