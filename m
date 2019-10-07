Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E47B6CE1C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 14:33:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nsDb+TjkYLkwF4p5APD8Uz7Kxv1MSvDBP6YpiBtWCIU=; b=dFSxJnlUCLueh+
	HQRVD8ycQWH/jebr02NdXgoEFczsAe7Jgfy6UUhpkgiiUxqKzBe48kxuJctleDBDL4ksz1he8v8sB
	VGrTslWe0AA2D9mB/Fr49kcY9pYilEnlXQsJb2lDK0Z1MxVEHCPuMNGesS5ZGF+WoGHsKhh0dSmEy
	Gw7ra4OveVGN57fNsmuLf9tIR+DalvEZMCFLalq0GM/7QcFTUT9WqkYguES1nI8QB9CpQK/s3CQlp
	+70N8in9HTkJLMOc8XYAwurekLQ+RPx6npHDFLv4wAfFFrstkTtngHuNcYyL8/XcVJd2V29IjwW/s
	3/9vkAKV+jE/+fCEMNuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHSCF-0007la-My; Mon, 07 Oct 2019 12:33:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHSC5-0007kr-EZ
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 12:32:54 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D674B206C0;
 Mon,  7 Oct 2019 12:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570451573;
 bh=jZekqvOAUQZzuKpPLk1i1wNMZcqRjgtUk7v5o7rc1iA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p7HRMnK6V9XLxevb5hS+UZA5RgX/8VHa2eMN6RRUtlIp2pVaQMb0xDk5uAY7NX3nN
 Y6hAKwMiMXCjYEng22jJZqiCYc64csm5HrAtXBC/7sMQI1EJlYQdKcEAnxT1VejGep
 5HcLq0DFIe9WUOClTBEnpH4/sSxrjD9FmEtnGHTQ=
Date: Mon, 7 Oct 2019 20:32:07 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Wen He <wen.he_1@nxp.com>
Subject: Re: [v2 1/2] arm64: dts: ls1028a: Update the clock providers for the
 Mali DP500
Message-ID: <20191007123203.GL7150@dragon>
References: <20190920083419.5092-1-wen.he_1@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920083419.5092-1-wen.he_1@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_053253_508248_96BA1A2E 
X-CRM114-Status: GOOD (  16.05  )
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
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 linux-devel@linux.nxdi.nxp.com, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 04:34:18PM +0800, Wen He wrote:
> In order to maximise performance of the LCD Controller's 64-bit AXI
> bus, for any give speed bin of the device, the AXI master interface
> clock(ACLK) clock can be up to CPU_frequency/2, which is already
> capable of optimal performance. In general, ACLK is always expected
> to be equal to CPU_frequency/2. APB slave interface clock(PCLK) and
> Main processing clock(PCLK) both are tied to the same clock as ACLK.
> 
> This change followed the LS1028A Architecture Specification Manual.
> 
> Signed-off-by: Wen He <wen.he_1@nxp.com>

@Leo, agree?

Shawn

> ---
> change in v2:
>         - add details commit description for this change. 
>         - v1: Link: https://lore.kernel.org/patchwork/patch/1119145/
> 
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 17 ++---------------
>  1 file changed, 2 insertions(+), 15 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index 72b9a75976a1..51fa8f57fdac 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -86,20 +86,6 @@
>  		clocks = <&osc_27m>;
>  	};
>  
> -	aclk: clock-axi {
> -		compatible = "fixed-clock";
> -		#clock-cells = <0>;
> -		clock-frequency = <650000000>;
> -		clock-output-names= "aclk";
> -	};
> -
> -	pclk: clock-apb {
> -		compatible = "fixed-clock";
> -		#clock-cells = <0>;
> -		clock-frequency = <650000000>;
> -		clock-output-names= "pclk";
> -	};
> -
>  	reboot {
>  		compatible ="syscon-reboot";
>  		regmap = <&dcfg>;
> @@ -679,7 +665,8 @@
>  		interrupts = <0 222 IRQ_TYPE_LEVEL_HIGH>,
>  			     <0 223 IRQ_TYPE_LEVEL_HIGH>;
>  		interrupt-names = "DE", "SE";
> -		clocks = <&dpclk 0>, <&aclk>, <&aclk>, <&pclk>;
> +		clocks = <&dpclk 0>, <&clockgen 2 2>, <&clockgen 2 2>,
> +			 <&clockgen 2 2>;
>  		clock-names = "pxlclk", "mclk", "aclk", "pclk";
>  		arm,malidp-output-port-lines = /bits/ 8 <8 8 8>;
>  		arm,malidp-arqos-value = <0xd000d000>;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
