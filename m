Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52129CE0E8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 13:52:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M/MoqteHOszu7BEpEf8VpqvpkHk9py+ET9b4MmtvDxY=; b=RsSDfEEOA01orK
	5VLClxGjRQ4HKrue7RdrGjQXqQMY8yDY9Lsr7ELX5DxVaEAA0QoMP7TorXkx0DPUJ7flemVEFaHaG
	fRpRCmIZF5hg19vLeHSYEvyoFLS0tbCNMQnzpHpzge34uYh8uYIc9VUf6RE8DlYi/dXY7KhhQDehS
	LQu+kWrRGfoFT2kAbM4OMXrHKcGbBaiYp/WuPXT7fejJEHFB498nyCj1hnuQ463IXYxR9l/P+roIw
	RTpZWpAnti5FchB+0FvH745+HK/HRACzP3t6LQPKP/DjWHKjNWSvVGTnh+kkmBMbee/0SaJYNr7NX
	hLKvB4MpHoW2rurEjIFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHRYi-0006JE-Bc; Mon, 07 Oct 2019 11:52:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHRYE-00068e-Fu
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 11:51:43 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 08F20206C2;
 Mon,  7 Oct 2019 11:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570449102;
 bh=rJkCYF9E8hJDyr+u7S20Ya90d4j7QifBLzL5U859QeA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=krAXa5J6WdSaSD7XsilsdxAYI6LjH2OnEJltMf52tq4LLeketI0lqfP0IxFX5BXG/
 mD6+IN98E9Banma/LLMJqN9mHsByFLZhPb5Gwoacnb7cNJReOkneZbuNdUV96xFBrn
 3T8AljcPirmnJHyjMA/eKxmHitdsR9kgD84ez17w=
Date: Mon, 7 Oct 2019 19:51:06 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Ran Wang <ran.wang_1@nxp.com>, Li Yang <leoyang.li@nxp.com>
Subject: Re: [PATCH] arm64: dts: lx2160a: Correct CPU core idle state name
Message-ID: <20191007115104.GF7150@dragon>
References: <20190917073357.5895-1-ran.wang_1@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917073357.5895-1-ran.wang_1@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_045142_566840_CD44B153 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 03:33:56PM +0800, Ran Wang wrote:
> lx2160a support PW15 but not PW20, correct name to avoid confusing.
> 
> Signed-off-by: Ran Wang <ran.wang_1@nxp.com>

Leo, agree?

Shawn

> ---
>  arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 36 +++++++++++++-------------
>  1 file changed, 18 insertions(+), 18 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> index 408e0ec..b032f38 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> @@ -33,7 +33,7 @@
>  			i-cache-line-size = <64>;
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster0_l2>;
> -			cpu-idle-states = <&cpu_pw20>;
> +			cpu-idle-states = <&cpu_pw15>;
>  		};
>  
>  		cpu@1 {
> @@ -49,7 +49,7 @@
>  			i-cache-line-size = <64>;
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster0_l2>;
> -			cpu-idle-states = <&cpu_pw20>;
> +			cpu-idle-states = <&cpu_pw15>;
>  		};
>  
>  		cpu@100 {
> @@ -65,7 +65,7 @@
>  			i-cache-line-size = <64>;
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster1_l2>;
> -			cpu-idle-states = <&cpu_pw20>;
> +			cpu-idle-states = <&cpu_pw15>;
>  		};
>  
>  		cpu@101 {
> @@ -81,7 +81,7 @@
>  			i-cache-line-size = <64>;
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster1_l2>;
> -			cpu-idle-states = <&cpu_pw20>;
> +			cpu-idle-states = <&cpu_pw15>;
>  		};
>  
>  		cpu@200 {
> @@ -97,7 +97,7 @@
>  			i-cache-line-size = <64>;
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster2_l2>;
> -			cpu-idle-states = <&cpu_pw20>;
> +			cpu-idle-states = <&cpu_pw15>;
>  		};
>  
>  		cpu@201 {
> @@ -113,7 +113,7 @@
>  			i-cache-line-size = <64>;
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster2_l2>;
> -			cpu-idle-states = <&cpu_pw20>;
> +			cpu-idle-states = <&cpu_pw15>;
>  		};
>  
>  		cpu@300 {
> @@ -129,7 +129,7 @@
>  			i-cache-line-size = <64>;
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster3_l2>;
> -			cpu-idle-states = <&cpu_pw20>;
> +			cpu-idle-states = <&cpu_pw15>;
>  		};
>  
>  		cpu@301 {
> @@ -145,7 +145,7 @@
>  			i-cache-line-size = <64>;
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster3_l2>;
> -			cpu-idle-states = <&cpu_pw20>;
> +			cpu-idle-states = <&cpu_pw15>;
>  		};
>  
>  		cpu@400 {
> @@ -161,7 +161,7 @@
>  			i-cache-line-size = <64>;
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster4_l2>;
> -			cpu-idle-states = <&cpu_pw20>;
> +			cpu-idle-states = <&cpu_pw15>;
>  		};
>  
>  		cpu@401 {
> @@ -177,7 +177,7 @@
>  			i-cache-line-size = <64>;
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster4_l2>;
> -			cpu-idle-states = <&cpu_pw20>;
> +			cpu-idle-states = <&cpu_pw15>;
>  		};
>  
>  		cpu@500 {
> @@ -193,7 +193,7 @@
>  			i-cache-line-size = <64>;
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster5_l2>;
> -			cpu-idle-states = <&cpu_pw20>;
> +			cpu-idle-states = <&cpu_pw15>;
>  		};
>  
>  		cpu@501 {
> @@ -209,7 +209,7 @@
>  			i-cache-line-size = <64>;
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster5_l2>;
> -			cpu-idle-states = <&cpu_pw20>;
> +			cpu-idle-states = <&cpu_pw15>;
>  		};
>  
>  		cpu@600 {
> @@ -225,7 +225,7 @@
>  			i-cache-line-size = <64>;
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster6_l2>;
> -			cpu-idle-states = <&cpu_pw20>;
> +			cpu-idle-states = <&cpu_pw15>;
>  		};
>  
>  		cpu@601 {
> @@ -241,7 +241,7 @@
>  			i-cache-line-size = <64>;
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster6_l2>;
> -			cpu-idle-states = <&cpu_pw20>;
> +			cpu-idle-states = <&cpu_pw15>;
>  		};
>  
>  		cpu@700 {
> @@ -257,7 +257,7 @@
>  			i-cache-line-size = <64>;
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster7_l2>;
> -			cpu-idle-states = <&cpu_pw20>;
> +			cpu-idle-states = <&cpu_pw15>;
>  		};
>  
>  		cpu@701 {
> @@ -273,7 +273,7 @@
>  			i-cache-line-size = <64>;
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster7_l2>;
> -			cpu-idle-states = <&cpu_pw20>;
> +			cpu-idle-states = <&cpu_pw15>;
>  		};
>  
>  		cluster0_l2: l2-cache0 {
> @@ -340,9 +340,9 @@
>  			cache-level = <2>;
>  		};
>  
> -		cpu_pw20: cpu-pw20 {
> +		cpu_pw15: cpu-pw15 {
>  			compatible = "arm,idle-state";
> -			idle-state-name = "PW20";
> +			idle-state-name = "PW15";
>  			arm,psci-suspend-param = <0x0>;
>  			entry-latency-us = <2000>;
>  			exit-latency-us = <2000>;
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
