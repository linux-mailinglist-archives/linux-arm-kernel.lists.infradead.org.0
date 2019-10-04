Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E15F2CB298
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 02:01:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kHRIEPBYbm2mONna5L87XPm6WdQKiC5WhoWyhKSveHg=; b=eN3Z38yobFoyUO4qXWP1peles
	Hu6ZN5teSXQHOYu8vQIX8MSJFE/jmbIAehl5cuvi2HD0Sd45av/RAkgC83T18aYc/RwWBiEgvjOkY
	lEe6kYdx1tgyNdeEtPyHOXSckQ7AJub3cN1Sp1uBQldLZGyqEWuzFY+TgIWQSvDVo1im8kPHXRNa+
	ZuF0CjXlnuYfcivz6YWuTqbRIHQ0yTn35RHKUVPEQ/yTMlxfDslMkanbtIblOdxWudb/iCjYK+cdp
	A8TPwqjyOAPbDrEEdPSr0OKkAFVGS9BuRbgtChQ5A5aTDuBfod8MjPZyAkhEogedMBbuA0k/wVpjq
	gjGW0p3uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGB2D-00006z-7U; Fri, 04 Oct 2019 00:01:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGB25-00006H-Mn; Fri, 04 Oct 2019 00:01:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 144A915A1;
 Thu,  3 Oct 2019 17:01:16 -0700 (PDT)
Received: from [192.168.1.124] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 49D153F534;
 Thu,  3 Oct 2019 17:01:15 -0700 (PDT)
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: fix RockPro64 sdmmc settings
To: Soeren Moch <smoch@web.de>, Heiko Stuebner <heiko@sntech.de>
References: <20191003215036.15023-1-smoch@web.de>
 <20191003215036.15023-3-smoch@web.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <31181f3c-20ec-e717-1f7e-8b35cd54d96d@arm.com>
Date: Fri, 4 Oct 2019 01:01:01 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191003215036.15023-3-smoch@web.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_170117_786488_455C39D0 
X-CRM114-Status: GOOD (  20.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-03 10:50 pm, Soeren Moch wrote:
> According to the RockPro64 schematic [1] the rk3399 sdmmc controller is
> connected to a microSD (TF card) slot, which cannot be switched to 1.8V.

Really? AFAICS the SDMMC0 wiring looks pretty much identical to the 
NanoPC-T4 schematic (it's the same reference design, after all), and I 
know that board can happily drive a UHS-I microSD card with 1.8v I/Os, 
because mine's doing so right now.

Robin.

> So also configure the vcc_sdio regulator, which drives the i/o voltage
> of the sdmmc controller, accordingly.
> 
> While at it, also remove the cap-mmc-highspeed property of the sdmmc
> controller, since no mmc card can be connected here.
> 
> [1] http://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf
> 
> Fixes: e4f3fb490967 ("arm64: dts: rockchip: add initial dts support for Rockpro64")
> Signed-off-by: Soeren Moch <smoch@web.de>
> ---
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>   arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> index 2e44dae4865a..084f1d994a50 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> @@ -353,7 +353,7 @@
>   				regulator-name = "vcc_sdio";
>   				regulator-always-on;
>   				regulator-boot-on;
> -				regulator-min-microvolt = <1800000>;
> +				regulator-min-microvolt = <3000000>;
>   				regulator-max-microvolt = <3000000>;
>   				regulator-state-mem {
>   					regulator-on-in-suspend;
> @@ -624,7 +624,6 @@
> 
>   &sdmmc {
>   	bus-width = <4>;
> -	cap-mmc-highspeed;
>   	cap-sd-highspeed;
>   	cd-gpios = <&gpio0 7 GPIO_ACTIVE_LOW>;
>   	disable-wp;
> --
> 2.17.1
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
