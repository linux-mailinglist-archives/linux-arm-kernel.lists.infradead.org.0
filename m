Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E3B1A793B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 13:16:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EJVOpFV4MrxE6EospxFX5HBjC4+r7uxrzVZ2wY/QW6s=; b=K5VVmR18vqzddd
	L3+Ckxlx3njUwr7WHnimyKYnlHZIjMWEBa8luQZF47t8a0HfC4L7EJbnjex+2UZl/FqGTszw3abrM
	7+8O+mfwKvZ/2j03ulHT/vSzoyI0gtYtnZQCrvEhQXJDMK+sLabdRQOytG+wSijQV8vHPTzL/W+2N
	sJkdnl5tbjFZGu2ZgGp1AP8cSgvfiJgoncwYlioX3dUQwDuajyb9l5swWM83hJgoIHKJ1B80hL6FZ
	LPKYV99J2IQ5xkh87iwrDAmn3IoVvvIORldOFwogfdxqE4e1OAAURe2CsyliSplbshZrRvspOvms1
	s9GnhtEbC38Qf50ag8BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOJYH-0008CP-K9; Tue, 14 Apr 2020 11:16:25 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOJYA-00089w-Fx
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 11:16:20 +0000
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id E9207240008;
 Tue, 14 Apr 2020 11:16:00 +0000 (UTC)
Date: Tue, 14 Apr 2020 13:16:00 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu.Beznea@microchip.com
Subject: Re: [PATCH 4/5] ARM: dts: sam9x60: add rtt
Message-ID: <20200414111600.GE34509@piout.net>
References: <1586536019-12348-1-git-send-email-claudiu.beznea@microchip.com>
 <1586536019-12348-5-git-send-email-claudiu.beznea@microchip.com>
 <20200410222658.GB3628@piout.net>
 <c4d46198-488b-c5d6-2a66-865a16840dc4@microchip.com>
 <20200413104652.GE3628@piout.net>
 <3116d1fc-af96-1e0c-aa07-3b34cbd58209@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3116d1fc-af96-1e0c-aa07-3b34cbd58209@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_041618_804126_E4CD5479 
X-CRM114-Status: GOOD (  26.54  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, jason@lakedaemon.net,
 devicetree@vger.kernel.org, maz@kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/04/2020 08:42:08+0000, Claudiu.Beznea@microchip.com wrote:
> > Why would one use the RTT while the RTC is far superior?
> 
> I didn't enabled this for a particular use case, but: couldn't this be used
> by some user that wants to generate multiple alarms? from multiple RTCs?
> 

I very much doubt that as Linux is able to properly multiplex alarms and
basically, the only one we are interested in is actually wakeup.

> Moreover, this IP's counter has the possibility of being clocked at 1Hz.
> Couldn't this minimize the power consumption while being in a power saving
> mode?
> 

And that 1Hz clock is coming from the RTC so using the RTC is
definitively consuming less power.

> > 
> >>>
> >>> In any case, this diff should be merge with the other at91-sam9x60ek.dts
> >>> change instead of being with the dtsi change.
> >>
> >> The changes in this patch are related to enabling the RTT. The other dts
> >> change is related to enabling gpbr. The RTT uses that enabled gpbr -> one
> >> change per patch.
> >>
> >> If you still want to merge then, I'll do it, but then it becomes mixed.
> >>
> > 
> > This patch is already mixing add the gpbr in sam9x60ek and add the node
> > in sam9x60.dtsi which is worse.
> 
> This patch is like this:
> 
> diff --git a/arch/arm/boot/dts/at91-sam9x60ek.dts
> b/arch/arm/boot/dts/at91-sam9x60ek.dts
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
> 
> It doesn't adds the GPBR in sam9x60ek, it adds rtt in sam9x60ek which uses
> GPBR.
> 
> > 
> > Just have one patch adding the rtt node to the sam9x60.dtsi and then a
> > patch adding the RTT to sam9x60ek.
> 
> Ok, I understand this.
> 
> > Because the RTT uses the gpbr, it is
> > a good time to add enable the gpbr, this is a single functionnal change.
> > 
> > Let's say that for some reason, the RTT patch on sam9x60ek has to be
> > reverted, then the RTT node is still defined which is good for all the
> > other eventual users.
> 
> RTT node would still be defined but GPBR node will not be enabled.
> 
> If RTT patch contains this change that I understand you want me to merge here:
> 
> +&gpbr {
> +	status = "okay";
> +};
> +
> 
> then, theoretically, some other IPs using the GPBR (RTC have the
> possibility of doing this), may be broken by reverting the RTT patch that
> includes the GPBR enabling patch.
> 

But this is very unlikely to happen because this would be limited to a
single board device tree instead of impact every sam9x60 based boards.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
