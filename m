Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4666D1A7804
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 12:03:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GJzTtyAVXrazrol+R7HLsqrI366B3U8OE/bzQP5DeaE=; b=rWM/WaLdoOaL45/dsSd0mqD7W
	1u86eMs5joo2s1wPnnxGL9reie33C9UTnsROONsTtwasw2luMiaOimVZJ0sQVP+iOXGWtUDOxqIMo
	yLrkruAhcGJzAWamxTl4JTndZofQNK5czBXQui4sawQK3uVxgxr9Fnf/YC6wuRnUyEzj81CXN8D+u
	FS6dDTigMDUpA/HAaqSWEOVtLrF99C9k/umK3zooM4UielVCNs7ojAwdEUTq1bnP7kp02xeLqR2cS
	/o3xMvCi9ymquybV2hz8/DV3sdTG6qrSoG9ruHPCUbDpPQGJp453ZYx+7rD4wb8c35y+KoJMgkJO/
	ezI0HJNsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOIPO-0005bF-0M; Tue, 14 Apr 2020 10:03:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOIPG-0005aA-M1; Tue, 14 Apr 2020 10:03:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3CE641FB;
 Tue, 14 Apr 2020 03:02:59 -0700 (PDT)
Received: from [10.57.33.145] (unknown [10.57.33.145])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1E4E63F6C4;
 Tue, 14 Apr 2020 03:02:57 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: remove bus-width from mmc nodes in
 rk3308.dtsi
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
References: <20200413193652.1952-1-jbx6244@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <20c81edc-247c-8db0-2b3c-a6c2fcad6b4e@arm.com>
Date: Tue, 14 Apr 2020 11:02:46 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200413193652.1952-1-jbx6244@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_030302_761070_09A0337C 
X-CRM114-Status: GOOD (  17.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-13 8:36 pm, Johan Jonker wrote:
> The 'bus-width' property for mmc nodes is defined both in
> 'rk3308.dtsi' and 'rk3308-roc-cc.dts'.
> In line with the other Rockchip SoCs define that in a user dts only,
> so remove all entries from mmc nodes in 'rk3308.dtsi'.

Judging by the pinctrl entries, these represent the number of pins 
provided by the SoC itself. Obviously boards need to override that if 
for some reason they don't wire up all the available data lines, but it 
seems backwards to have every board restate the SoC's default value.

In fact, having brought it up, for this particular case the pinctrl 
setting is inherently related to the bus width, so having one without 
the other in either place doesn't smell right.

Robin.

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3308.dtsi | 3 ---
>   1 file changed, 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> index a9b98555d..130771ede 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> @@ -587,7 +587,6 @@
>   		compatible = "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc";
>   		reg = <0x0 0xff480000 0x0 0x4000>;
>   		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
> -		bus-width = <4>;
>   		clocks = <&cru HCLK_SDMMC>, <&cru SCLK_SDMMC>,
>   			 <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
>   		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> @@ -602,7 +601,6 @@
>   		compatible = "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc";
>   		reg = <0x0 0xff490000 0x0 0x4000>;
>   		interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
> -		bus-width = <8>;
>   		clocks = <&cru HCLK_EMMC>, <&cru SCLK_EMMC>,
>   			 <&cru SCLK_EMMC_DRV>, <&cru SCLK_EMMC_SAMPLE>;
>   		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> @@ -615,7 +613,6 @@
>   		compatible = "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc";
>   		reg = <0x0 0xff4a0000 0x0 0x4000>;
>   		interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
> -		bus-width = <4>;
>   		clocks = <&cru HCLK_SDIO>, <&cru SCLK_SDIO>,
>   			 <&cru SCLK_SDIO_DRV>, <&cru SCLK_SDIO_SAMPLE>;
>   		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
