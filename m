Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0D41FD764
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 23:35:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r3MdVZuoHrWC+nGrw/wEaDJ7kGV83qd6Fq33qMsYTL8=; b=IzNhsRX8WdFgbx
	Pzy1MySCeW5m68O5kEMZ+whIHq5SgbLoEckNpHHqdgXvM7Bk7IwnuzeRlRDUSUUUGPr7OMMr2mJGI
	8MlxHHRTPRg53+UGuPy6f/0NBPbBXBcqpQO+JXNcQkRCWS02Y8tIioHoWLRfCEb+fEdgPEVKkhh23
	jeZqZUBh5/YaobiOKkONEki9U9xmX54I1+ItoZJnijXpaaAwuFYOQOzfKy0dPTZXLCFegjlLr4zry
	pfrYeS492u9RvqPZPQQDgk3HRpX4fd8V9PmBYTxNoUzOIhLBjJE+r/eBTwQ3+9ZskuncNMA4Aqhvl
	MuW2tyobssjpEuwG3bog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlfiC-0008K2-A4; Wed, 17 Jun 2020 21:35:12 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlfht-0008JA-DB
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 21:34:55 +0000
X-Originating-IP: 86.202.110.81
Received: from localhost (lfbn-lyo-1-15-81.w86-202.abo.wanadoo.fr
 [86.202.110.81])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 90FF2C0003;
 Wed, 17 Jun 2020 21:34:38 +0000 (UTC)
Date: Wed, 17 Jun 2020 23:34:38 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Subject: Re: [PATCH 3/3] Revert "ARM: at91/dt: sama5d2 Xplained: add pdmic
 node"
Message-ID: <20200617213438.GF3675@piout.net>
References: <20200615095525.43414-1-codrin.ciubotariu@microchip.com>
 <20200615095525.43414-3-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615095525.43414-3-codrin.ciubotariu@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_143453_582684_E1215A22 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [217.70.183.198 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, robh+dt@kernel.org,
 claudiu.beznea@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

The correct subject line prefix is "ARM: dts: at91:"

On 15/06/2020 12:55:25+0300, Codrin Ciubotariu wrote:
> There are no PDM microphones on SAMA5D2 Xplained, to exercize the
> PDMIC.
> 
> This reverts commit ca6349a8c51f2e3d6f2acdb36431e7d7328261f7.
> 
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> ---
>  arch/arm/boot/dts/at91-sama5d2_xplained.dts | 16 ----------------
>  1 file changed, 16 deletions(-)
> 

This patch doesn't apply and I think you'll have to motivate the removal
a bit more because this seems like a change of policy to me.

> diff --git a/arch/arm/boot/dts/at91-sama5d2_xplained.dts b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
> index 54d96649da77..c0a255bda477 100644
> --- a/arch/arm/boot/dts/at91-sama5d2_xplained.dts
> +++ b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
> @@ -109,16 +109,6 @@ timer1: timer@1 {
>  				};
>  			};
>  
> -			pdmic@f8018000 {
> -				pinctrl-names = "default";
> -				pinctrl-0 = <&pinctrl_pdmic_default>;
> -				atmel,model = "PDMIC @ sama5d2_xplained";
> -				atmel,mic-min-freq = <1000000>;
> -				atmel,mic-max-freq = <3246000>;
> -				atmel,mic-offset = <0x0>;
> -				status = "okay";
> -			};
> -
>  			uart1: serial@f8020000 {
>  				pinctrl-names = "default";
>  				pinctrl-0 = <&pinctrl_uart1_default>;
> @@ -533,12 +523,6 @@ pinctrl_macb0_phy_irq: macb0_phy_irq {
>  					bias-disable;
>  				};
>  
> -				pinctrl_pdmic_default: pdmic_default {
> -					pinmux = <PIN_PB26__PDMIC_DAT>,
> -						<PIN_PB27__PDMIC_CLK>;
> -					bias-disable;
> -				};
> -
>  				pinctrl_sdmmc0_default: sdmmc0_default {
>  					cmd_data {
>  						pinmux = <PIN_PA1__SDMMC0_CMD>,
> -- 
> 2.25.1
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
