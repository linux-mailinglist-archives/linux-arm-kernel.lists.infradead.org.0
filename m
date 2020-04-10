Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F45A1A4C14
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 00:27:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VdlZZR/OHE6WmEJTNQFuFLLApg1yEGidNTTFVNZ+9sM=; b=SywU7Ne/ktLv2R
	vfxR8iqPj3Umfc769phFWC1KS5hZNie8f4n5g96Yz6Or1uy6w0Z8320+Bb7k1FBwEqCJeu3OvKo5T
	K0U2qeeXO5DEDwKpChvECW5nvjh68qNl97RHt+vw7VD2GJJkTuZSu8L86Yg4nJJLN+VAwcP3O684v
	ORp2w0NBEBz/2CMzaj7HwWqXabHuudICqh1QydvC4+CLiszMqa2KYpNqKasgW6aYRcci269K2BQUi
	2FW8NN/7gsyX63LgLKsiQKwW/8bxwDKm4mUhD6s9rktvs+isBwqyo2n3K2oqewYTu/WYK6S17NFMY
	9itPqWeNKGfL1dschbzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jN27E-0005gv-Fv; Fri, 10 Apr 2020 22:27:12 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jN275-0005gF-T7
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 22:27:05 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 56E6F240006;
 Fri, 10 Apr 2020 22:26:59 +0000 (UTC)
Date: Sat, 11 Apr 2020 00:26:58 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH 4/5] ARM: dts: sam9x60: add rtt
Message-ID: <20200410222658.GB3628@piout.net>
References: <1586536019-12348-1-git-send-email-claudiu.beznea@microchip.com>
 <1586536019-12348-5-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586536019-12348-5-git-send-email-claudiu.beznea@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_152704_076391_FBDDDE50 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, jason@lakedaemon.net,
 devicetree@vger.kernel.org, maz@kernel.org, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, robh+dt@kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/04/2020 19:26:58+0300, Claudiu Beznea wrote:
> Add RTT.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  arch/arm/boot/dts/at91-sam9x60ek.dts | 5 +++++
>  arch/arm/boot/dts/sam9x60.dtsi       | 7 +++++++
>  2 files changed, 12 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/at91-sam9x60ek.dts b/arch/arm/boot/dts/at91-sam9x60ek.dts
> index ab3d2d9a420a..4020e79a958e 100644
> --- a/arch/arm/boot/dts/at91-sam9x60ek.dts
> +++ b/arch/arm/boot/dts/at91-sam9x60ek.dts
> @@ -617,6 +617,11 @@
>  	};
>  };
>  
> +&rtt {
> +	atmel,rtt-rtc-time-reg = <&gpbr 0x0>;
> +	status = "okay";

Is there any point using a gpbr register while there is already a much
better RTC in the system?

In any case, this diff should be merge with the other at91-sam9x60ek.dts
change instead of being with the dtsi change.

> +};
> +
>  &shutdown_controller {
>  	atmel,shdwc-debouncer = <976>;
>  	status = "okay";
> diff --git a/arch/arm/boot/dts/sam9x60.dtsi b/arch/arm/boot/dts/sam9x60.dtsi
> index 326b39328b58..e1d8e3a4cb0b 100644
> --- a/arch/arm/boot/dts/sam9x60.dtsi
> +++ b/arch/arm/boot/dts/sam9x60.dtsi
> @@ -661,6 +661,13 @@
>  				status = "disabled";
>  			};
>  
> +			rtt: rtt@fffffe20 {
> +				compatible = "microchip,sam9x60-rtt";
> +				reg = <0xfffffe20 0x20>;
> +				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
> +				clocks = <&clk32k 0>;
> +			};
> +
>  			pit: timer@fffffe40 {
>  				compatible = "atmel,at91sam9260-pit";
>  				reg = <0xfffffe40 0x10>;
> -- 
> 2.7.4
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
