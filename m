Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 880FD1C2699
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 17:39:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R6r41NMy5AHznPQiqI+GjL0u1znqh8TpSHTDDMG1lZk=; b=sTvUJ3sdq4NlJV
	XscvhrlOyo0QEQOVcyPE/Oq04qXhQL39KUR+uUiUDOIKoAMwczsL6/YbcZ665S1XFxJROYcryMexo
	IMiLHEeN3KL5dcfDWDzITJpV0AmYXa2rHbsNwO5kw2qyzTGdP6Hlma+nsrD6Q5jThRFYmMbRt2e+y
	0cvGQvsD9LFhm0OTRzeju+Ve8E4uGqfK+MubzUt6ADJEY21NSWmyuo/2W1Pdg12CNZFlcoqi8gaKR
	dWDD1skTZUWF8kWLn+AYuH4Rs4jw/rYAyF0j2BTXNfNft4GGA+NczQGzeX7HcjhUuPiBOS+XYQD2a
	oeXh4mihh+DPdMchBMnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUuEC-00060Q-7W; Sat, 02 May 2020 15:38:56 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUuE3-0005zb-Ol
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 15:38:50 +0000
Received: by mail-io1-xd42.google.com with SMTP id f3so7761060ioj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 May 2020 08:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=K33IZXSJWswi8Ds/yD6+rsycl91MHbpswBRBz+U2Io0=;
 b=vMfGTWVakGonubzG51584RZk9klh2RfB0NyV/0y7seVhQ2cSPJdo2g4cHCv5MBU40I
 XhxxSzEIrSOy8fz07CXR4aRbVT1lNZcjrf9ZSgsgGZYUYg/bOCOEqsvVEho4kM+HElEm
 G28Y5pANZxE+RsWFKyhYQu6CVfJwNbsRmHzGEi2+yKfR5XUhEa8Ys1SW+Tg1GsnpEZ4I
 h8pLMxSvKwwPZh6facSImuc1Vns1RMjhOQtrZAIymAInecVd8q0wPQ6uH+Ls9a0ziiIb
 bRFBi9blqVWv4AYkQlVSNpzZtSnBlHPRXFTbunKkTVz6Wy7hAjec6bJ3KMHgrervti89
 6hDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K33IZXSJWswi8Ds/yD6+rsycl91MHbpswBRBz+U2Io0=;
 b=s2CzjmmdFN/D6YSGORh6LaW019f9LN26X0ERieZZ//lAR8yohC2m1T1xogtn0i3FgD
 zgAJOpsOXyRjqwFF1Qc3PrJcoPRq3WyNJh3Sxd6Fl/AXWBqxdV/bTuCQTy7ertQ6uK9K
 Sa6JjFZjggMTL2/aR38htIQ6TAys+ZTotwEd+PMqcl3gNOyz/A6acAiI1T9aER0/8NHT
 kY/ZNmrnJtSrO5xbxR5SSz2z4jhqtGHKJ+LvaU8KOW7YVfG/6jDQLS4j/RUpHbb6/8ph
 0STaBkRnwyBDGU+/9j/z6SB0rsVfgTfyFtAA1zzi+6YqNbxtqfqwp/ynHg/UYPoRmoEk
 EHUQ==
X-Gm-Message-State: AGi0PuYxjHAGXCRQ0fLOlamwcyQY6fBrniR0acBcAx+7lSE9JV6txlhL
 PvbJCCNLL3plVZvoMnvVHEswH0HtUTpcQFqJoSs=
X-Google-Smtp-Source: APiQypJX/eV7kJ+cJd9BMGToUWat2Jr7juiA0cI3LusNucxqRxA1D+4j+xMbYiCeAweKAx2PUfZo4cEXhVS7Y2LO0+o=
X-Received: by 2002:a02:6243:: with SMTP id d64mr7653133jac.135.1588433925217; 
 Sat, 02 May 2020 08:38:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200429215402.18125-1-tony@atomide.com>
 <20200429215402.18125-12-tony@atomide.com>
In-Reply-To: <20200429215402.18125-12-tony@atomide.com>
From: Adam Ford <aford173@gmail.com>
Date: Sat, 2 May 2020 10:38:33 -0500
Message-ID: <CAHCN7x+GU+X7UsWqz53sBjMUxH8XEFkymdLdD-2EJ5RRyR7EJQ@mail.gmail.com>
Subject: Re: [PATCH 11/15] ARM: dts: Configure system timers for omap3
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_083847_838632_264A7059 
X-CRM114-Status: GOOD (  21.30  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Lokesh Vutla <lokeshvutla@ti.com>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Graeme Smecher <gsmecher@threespeedlogic.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, Tero Kristo <t-kristo@ti.com>,
 Stephen Boyd <sboyd@kernel.org>, Andreas Kemnade <andreas@kemnade.info>,
 Keerthy <j-keerthy@ti.com>, Thomas Gleixner <tglx@linutronix.de>,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 Brian Hutchinson <b.hutchman@gmail.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 4:54 PM Tony Lindgren <tony@atomide.com> wrote:
>
> We can now init system timers using the dmtimer and 32k counter
> based on only devicetree data and drivers/clocksource timers.
> Let's configure the clocksource and clockevent, and drop the old
> unused platform data.
>
> As we're just dropping platform data, and the early platform data
> init is based on the custom ti,hwmods property, we want to drop
> both the platform data and ti,hwmods property in a single patch.
>
> Since the dmtimer can use both 32k clock and system clock as the
> source, let's also configure the SoC specific default values. The
> board specific dts files can reconfigure these with assigned-clocks
> and assigned-clock-parents as needed.
>
> Let's also update the dts file to use #include while at it.
>
> Cc: devicetree@vger.kernel.org
> Cc: Adam Ford <aford173@gmail.com>
> Cc: Andreas Kemnade <andreas@kemnade.info>
> Cc: "H. Nikolaus Schaller" <hns@goldelico.com>
> Cc: Keerthy <j-keerthy@ti.com>
> Cc: Lokesh Vutla <lokeshvutla@ti.com>
> Cc: Tero Kristo <t-kristo@ti.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>  arch/arm/boot/dts/am3517.dtsi              |  28 +++-

For the series on the am3517-evm,

Tested-by: Adam Ford <aford173@gmail.com>

>  arch/arm/boot/dts/omap3-beagle.dts         |  33 +++++
>  arch/arm/boot/dts/omap3-devkit8000.dts     |  33 +++++
>  arch/arm/boot/dts/omap3.dtsi               | 135 +++++++++++++++----
>  arch/arm/mach-omap2/board-generic.c        |  10 +-
>  arch/arm/mach-omap2/omap_hwmod_3xxx_data.c | 146 +--------------------
>  6 files changed, 210 insertions(+), 175 deletions(-)
>
> diff --git a/arch/arm/boot/dts/am3517.dtsi b/arch/arm/boot/dts/am3517.dtsi
> --- a/arch/arm/boot/dts/am3517.dtsi
> +++ b/arch/arm/boot/dts/am3517.dtsi
> @@ -169,5 +169,29 @@ &mmu_isp {
>         status = "disabled";
>  };
>
> -/include/ "am35xx-clocks.dtsi"
> -/include/ "omap36xx-am35xx-omap3430es2plus-clocks.dtsi"
> +#include "am35xx-clocks.dtsi"
> +#include "omap36xx-am35xx-omap3430es2plus-clocks.dtsi"
> +
> +/* Timer for clocksource, configured without interrupts */
> +&timer1_target {
> +       ti,no-reset-on-init;
> +       ti,no-idle;
> +       timer@0 {
> +               compatible = "ti,dmtimer";
> +               /delete-property/interrupts;
> +               /delete-property/interrupts-extended;
> +               assigned-clocks = <&gpt1_fck>;
> +               assigned-clock-parents = <&sys_ck>;
> +       };
> +};
> +
> +/* Timer for clockevent */
> +&timer2_target {
> +       ti,no-reset-on-init;
> +       ti,no-idle;
> +       timer@0 {
> +               compatible = "ti,dmtimer";
> +               assigned-clocks = <&gpt2_fck>;
> +               assigned-clock-parents = <&sys_ck>;
> +       };
> +};
> diff --git a/arch/arm/boot/dts/omap3-beagle.dts b/arch/arm/boot/dts/omap3-beagle.dts
> --- a/arch/arm/boot/dts/omap3-beagle.dts
> +++ b/arch/arm/boot/dts/omap3-beagle.dts
> @@ -304,6 +304,39 @@ &usbhsehci {
>         phys = <0 &hsusb2_phy>;
>  };
>
> +/* Unusable as clockevent, allow to idle */
> +&timer1_target {
> +       /delete-property/ti,no-reset-on-init;
> +       /delete-property/ti,no-idle;
> +       timer@0 {
> +               compatible = "ti,omap3430-timer";
> +               interrupts = <37>;
> +       };
> +};
> +
> +/* Timer for clocksource, configured without interrupts */
> +&timer12_target {
> +       ti,no-reset-on-init;
> +       ti,no-idle;
> +       timer@0 {
> +               compatible = "ti,dmtimer";
> +               /delete-property/interrupts;
> +               /delete-property/interrupts-extended;
> +               /* Always clocked by secure_32k_fck */
> +       };
> +};
> +
> +/* Timer for clockevent */
> +&timer2_target {
> +       ti,no-reset-on-init;
> +       ti,no-idle;
> +       timer@0 {
> +               compatible = "ti,dmtimer";
> +               assigned-clocks = <&gpt2_fck>;
> +               assigned-clock-parents = <&sys_ck>;
> +       };
> +};
> +
>  &twl_gpio {
>         ti,use-leds;
>         /* pullups: BIT(1) */
> diff --git a/arch/arm/boot/dts/omap3-devkit8000.dts b/arch/arm/boot/dts/omap3-devkit8000.dts
> --- a/arch/arm/boot/dts/omap3-devkit8000.dts
> +++ b/arch/arm/boot/dts/omap3-devkit8000.dts
> @@ -14,3 +14,36 @@ aliases {
>                 display2 = &tv0;
>         };
>  };
> +
> +/* Unusable as clockevent, allow to idle */
> +&timer1_target {
> +       /delete-property/ti,no-reset-on-init;
> +       /delete-property/ti,no-idle;
> +       timer@0 {
> +               compatible = "ti,omap3430-timer";
> +               interrupts = <37>;
> +       };
> +};
> +
> +/* Timer for clocksource, configured without interrupts */
> +&timer12_target {
> +       ti,no-reset-on-init;
> +       ti,no-idle;
> +       timer@0 {
> +               compatible = "ti,dmtimer";
> +               /delete-property/interrupts;
> +               /delete-property/interrupts-extended;
> +               /* Always clocked by secure_32k_fck */
> +       };
> +};
> +
> +/* Timer for clockevent */
> +&timer2_target {
> +       ti,no-reset-on-init;
> +       ti,no-idle;
> +       timer@0 {
> +               compatible = "ti,dmtimer";
> +               assigned-clocks = <&gpt2_fck>;
> +               assigned-clock-parents = <&sys_ck>;
> +       };
> +};
> diff --git a/arch/arm/boot/dts/omap3.dtsi b/arch/arm/boot/dts/omap3.dtsi
> --- a/arch/arm/boot/dts/omap3.dtsi
> +++ b/arch/arm/boot/dts/omap3.dtsi
> @@ -193,10 +193,23 @@ cm_clockdomains: clockdomains {
>                         };
>                 };
>
> -               counter32k: counter@48320000 {
> -                       compatible = "ti,omap-counter32k";
> -                       reg = <0x48320000 0x20>;
> -                       ti,hwmods = "counter_32k";
> +               target-module@48320000 {
> +                       compatible = "ti,sysc-omap2", "ti,sysc";
> +                       reg = <0x48320000 0x4>,
> +                             <0x48320004 0x4>;
> +                       reg-names = "rev", "sysc";
> +                       ti,sysc-sidle = <SYSC_IDLE_FORCE>,
> +                                       <SYSC_IDLE_NO>;
> +                       clocks = <&wkup_32k_fck>, <&omap_32ksync_ick>;
> +                       clock-names = "fck", "ick";
> +                       #address-cells = <1>;
> +                       #size-cells = <1>;
> +                       ranges = <0x0 0x48320000 0x1000>;
> +
> +                       counter32k: counter@0 {
> +                               compatible = "ti,omap-counter32k";
> +                               reg = <0x0 0x20>;
> +                       };
>                 };
>
>                 intc: interrupt-controller@48200000 {
> @@ -637,19 +650,63 @@ sham: sham@480c3000 {
>                         dma-names = "rx";
>                 };
>
> -               timer1: timer@48318000 {
> -                       compatible = "ti,omap3430-timer";
> -                       reg = <0x48318000 0x400>;
> -                       interrupts = <37>;
> -                       ti,hwmods = "timer1";
> -                       ti,timer-alwon;
> +               timer1_target: target-module@48318000 {
> +                       compatible = "ti,sysc-omap2-timer", "ti,sysc";
> +                       reg = <0x48318000 0x4>,
> +                             <0x48318010 0x4>,
> +                             <0x48318014 0x4>;
> +                       reg-names = "rev", "sysc", "syss";
> +                       ti,sysc-mask = <(SYSC_OMAP2_CLOCKACTIVITY |
> +                                        SYSC_OMAP2_EMUFREE |
> +                                        SYSC_OMAP2_ENAWAKEUP |
> +                                        SYSC_OMAP2_SOFTRESET |
> +                                        SYSC_OMAP2_AUTOIDLE)>;
> +                       ti,sysc-sidle = <SYSC_IDLE_FORCE>,
> +                                       <SYSC_IDLE_NO>,
> +                                       <SYSC_IDLE_SMART>;
> +                       ti,syss-mask = <1>;
> +                       clocks = <&gpt1_fck>, <&gpt1_ick>;
> +                       clock-names = "fck", "ick";
> +                       #address-cells = <1>;
> +                       #size-cells = <1>;
> +                       ranges = <0x0 0x48318000 0x1000>;
> +
> +                       timer1: timer@0 {
> +                               compatible = "ti,omap3430-timer";
> +                               reg = <0x0 0x80>;
> +                               clocks = <&gpt1_fck>;
> +                               clock-names = "fck";
> +                               interrupts = <37>;
> +                               ti,timer-alwon;
> +                       };
>                 };
>
> -               timer2: timer@49032000 {
> -                       compatible = "ti,omap3430-timer";
> -                       reg = <0x49032000 0x400>;
> -                       interrupts = <38>;
> -                       ti,hwmods = "timer2";
> +               timer2_target: target-module@49032000 {
> +                       compatible = "ti,sysc-omap2-timer", "ti,sysc";
> +                       reg = <0x49032000 0x4>,
> +                             <0x49032010 0x4>,
> +                             <0x49032014 0x4>;
> +                       reg-names = "rev", "sysc", "syss";
> +                       ti,sysc-mask = <(SYSC_OMAP2_CLOCKACTIVITY |
> +                                        SYSC_OMAP2_EMUFREE |
> +                                        SYSC_OMAP2_ENAWAKEUP |
> +                                        SYSC_OMAP2_SOFTRESET |
> +                                        SYSC_OMAP2_AUTOIDLE)>;
> +                       ti,sysc-sidle = <SYSC_IDLE_FORCE>,
> +                                       <SYSC_IDLE_NO>,
> +                                       <SYSC_IDLE_SMART>;
> +                       ti,syss-mask = <1>;
> +                       clocks = <&gpt2_fck>, <&gpt2_ick>;
> +                       clock-names = "fck", "ick";
> +                       #address-cells = <1>;
> +                       #size-cells = <1>;
> +                       ranges = <0x0 0x49032000 0x1000>;
> +
> +                       timer2: timer@0 {
> +                               compatible = "ti,omap3430-timer";
> +                               reg = <0 0x400>;
> +                               interrupts = <38>;
> +                       };
>                 };
>
>                 timer3: timer@49034000 {
> @@ -723,13 +780,34 @@ timer11: timer@48088000 {
>                         ti,timer-pwm;
>                 };
>
> -               timer12: timer@48304000 {
> -                       compatible = "ti,omap3430-timer";
> -                       reg = <0x48304000 0x400>;
> -                       interrupts = <95>;
> -                       ti,hwmods = "timer12";
> -                       ti,timer-alwon;
> -                       ti,timer-secure;
> +               timer12_target: target-module@48304000 {
> +                       compatible = "ti,sysc-omap2-timer", "ti,sysc";
> +                       reg = <0x48304000 0x4>,
> +                             <0x48304010 0x4>,
> +                             <0x48304014 0x4>;
> +                       reg-names = "rev", "sysc", "syss";
> +                       ti,sysc-mask = <(SYSC_OMAP2_CLOCKACTIVITY |
> +                                        SYSC_OMAP2_EMUFREE |
> +                                        SYSC_OMAP2_ENAWAKEUP |
> +                                        SYSC_OMAP2_SOFTRESET |
> +                                        SYSC_OMAP2_AUTOIDLE)>;
> +                       ti,sysc-sidle = <SYSC_IDLE_FORCE>,
> +                                       <SYSC_IDLE_NO>,
> +                                       <SYSC_IDLE_SMART>;
> +                       ti,syss-mask = <1>;
> +                       clocks = <&gpt12_fck>, <&gpt12_ick>;
> +                       clock-names = "fck", "ick";
> +                       #address-cells = <1>;
> +                       #size-cells = <1>;
> +                       ranges = <0x0 0x48304000 0x1000>;
> +
> +                       timer12: timer@0 {
> +                               compatible = "ti,omap3430-timer";
> +                               reg = <0 0x400>;
> +                               interrupts = <95>;
> +                               ti,timer-alwon;
> +                               ti,timer-secure;
> +                       };
>                 };
>
>                 usbhstll: usbhstll@48062000 {
> @@ -886,4 +964,15 @@ ssi_port2: ssi-port@4805b000 {
>         };
>  };
>
> -/include/ "omap3xxx-clocks.dtsi"
> +#include "omap3xxx-clocks.dtsi"
> +
> +/* Timer for clockevent */
> +&timer1_target {
> +       ti,no-reset-on-init;
> +       ti,no-idle;
> +       timer@0 {
> +               compatible = "ti,dmtimer";
> +               assigned-clocks = <&gpt1_fck>;
> +               assigned-clock-parents = <&omap_32k_fck>;
> +       };
> +};
> diff --git a/arch/arm/mach-omap2/board-generic.c b/arch/arm/mach-omap2/board-generic.c
> --- a/arch/arm/mach-omap2/board-generic.c
> +++ b/arch/arm/mach-omap2/board-generic.c
> @@ -114,7 +114,7 @@ DT_MACHINE_START(OMAP3_N900_DT, "Nokia RX-51 board")
>         .init_early     = omap3430_init_early,
>         .init_machine   = omap_generic_init,
>         .init_late      = omap3_init_late,
> -       .init_time      = omap_init_time,
> +       .init_time      = omap_init_time_of,
>         .dt_compat      = n900_boards_compat,
>         .restart        = omap3xxx_restart,
>  MACHINE_END
> @@ -132,7 +132,7 @@ DT_MACHINE_START(OMAP3_DT, "Generic OMAP3 (Flattened Device Tree)")
>         .init_early     = omap3430_init_early,
>         .init_machine   = omap_generic_init,
>         .init_late      = omap3_init_late,
> -       .init_time      = omap_init_time,
> +       .init_time      = omap_init_time_of,
>         .dt_compat      = omap3_boards_compat,
>         .restart        = omap3xxx_restart,
>  MACHINE_END
> @@ -149,7 +149,7 @@ DT_MACHINE_START(OMAP36XX_DT, "Generic OMAP36xx (Flattened Device Tree)")
>         .init_early     = omap3630_init_early,
>         .init_machine   = omap_generic_init,
>         .init_late      = omap3_init_late,
> -       .init_time      = omap_init_time,
> +       .init_time      = omap_init_time_of,
>         .dt_compat      = omap36xx_boards_compat,
>         .restart        = omap3xxx_restart,
>  MACHINE_END
> @@ -166,7 +166,7 @@ DT_MACHINE_START(OMAP3_GP_DT, "Generic OMAP3-GP (Flattened Device Tree)")
>         .init_early     = omap3430_init_early,
>         .init_machine   = omap_generic_init,
>         .init_late      = omap3_init_late,
> -       .init_time      = omap3_secure_sync32k_timer_init,
> +       .init_time      = omap_init_time_of,
>         .dt_compat      = omap3_gp_boards_compat,
>         .restart        = omap3xxx_restart,
>  MACHINE_END
> @@ -182,7 +182,7 @@ DT_MACHINE_START(AM3517_DT, "Generic AM3517 (Flattened Device Tree)")
>         .init_early     = am35xx_init_early,
>         .init_machine   = omap_generic_init,
>         .init_late      = omap3_init_late,
> -       .init_time      = omap3_gptimer_timer_init,
> +       .init_time      = omap_init_time_of,
>         .dt_compat      = am3517_boards_compat,
>         .restart        = omap3xxx_restart,
>  MACHINE_END
> diff --git a/arch/arm/mach-omap2/omap_hwmod_3xxx_data.c b/arch/arm/mach-omap2/omap_hwmod_3xxx_data.c
> --- a/arch/arm/mach-omap2/omap_hwmod_3xxx_data.c
> +++ b/arch/arm/mach-omap2/omap_hwmod_3xxx_data.c
> @@ -147,36 +147,6 @@ static struct omap_hwmod_class omap3xxx_timer_hwmod_class = {
>         .sysc = &omap3xxx_timer_sysc,
>  };
>
> -/* timer1 */
> -static struct omap_hwmod omap3xxx_timer1_hwmod = {
> -       .name           = "timer1",
> -       .main_clk       = "gpt1_fck",
> -       .prcm           = {
> -               .omap2 = {
> -                       .module_offs = WKUP_MOD,
> -                       .idlest_reg_id = 1,
> -                       .idlest_idle_bit = OMAP3430_ST_GPT1_SHIFT,
> -               },
> -       },
> -       .class          = &omap3xxx_timer_hwmod_class,
> -       .flags          = HWMOD_SET_DEFAULT_CLOCKACT,
> -};
> -
> -/* timer2 */
> -static struct omap_hwmod omap3xxx_timer2_hwmod = {
> -       .name           = "timer2",
> -       .main_clk       = "gpt2_fck",
> -       .prcm           = {
> -               .omap2 = {
> -                       .module_offs = OMAP3430_PER_MOD,
> -                       .idlest_reg_id = 1,
> -                       .idlest_idle_bit = OMAP3430_ST_GPT2_SHIFT,
> -               },
> -       },
> -       .class          = &omap3xxx_timer_hwmod_class,
> -       .flags          = HWMOD_SET_DEFAULT_CLOCKACT,
> -};
> -
>  /* timer3 */
>  static struct omap_hwmod omap3xxx_timer3_hwmod = {
>         .name           = "timer3",
> @@ -312,21 +282,6 @@ static struct omap_hwmod omap3xxx_timer11_hwmod = {
>         .flags          = HWMOD_SET_DEFAULT_CLOCKACT,
>  };
>
> -/* timer12 */
> -static struct omap_hwmod omap3xxx_timer12_hwmod = {
> -       .name           = "timer12",
> -       .main_clk       = "gpt12_fck",
> -       .prcm           = {
> -               .omap2 = {
> -                       .module_offs = WKUP_MOD,
> -                       .idlest_reg_id = 1,
> -                       .idlest_idle_bit = OMAP3430_ST_GPT12_SHIFT,
> -               },
> -       },
> -       .class          = &omap3xxx_timer_hwmod_class,
> -       .flags          = HWMOD_SET_DEFAULT_CLOCKACT,
> -};
> -
>  /*
>   * 'wd_timer' class
>   * 32-bit watchdog upward counter that generates a pulse on the reset pin on
> @@ -1524,38 +1479,6 @@ static struct omap_hwmod omap3xxx_sad2d_hwmod = {
>         .class          = &omap3xxx_sad2d_class,
>  };
>
> -/*
> - * '32K sync counter' class
> - * 32-bit ordinary counter, clocked by the falling edge of the 32 khz clock
> - */
> -static struct omap_hwmod_class_sysconfig omap3xxx_counter_sysc = {
> -       .rev_offs       = 0x0000,
> -       .sysc_offs      = 0x0004,
> -       .sysc_flags     = SYSC_HAS_SIDLEMODE,
> -       .idlemodes      = (SIDLE_FORCE | SIDLE_NO),
> -       .sysc_fields    = &omap_hwmod_sysc_type1,
> -};
> -
> -static struct omap_hwmod_class omap3xxx_counter_hwmod_class = {
> -       .name   = "counter",
> -       .sysc   = &omap3xxx_counter_sysc,
> -};
> -
> -static struct omap_hwmod omap3xxx_counter_32k_hwmod = {
> -       .name           = "counter_32k",
> -       .class          = &omap3xxx_counter_hwmod_class,
> -       .clkdm_name     = "wkup_clkdm",
> -       .flags          = HWMOD_SWSUP_SIDLE,
> -       .main_clk       = "wkup_32k_fck",
> -       .prcm           = {
> -               .omap2  = {
> -                       .module_offs = WKUP_MOD,
> -                       .idlest_reg_id = 1,
> -                       .idlest_idle_bit = OMAP3430_ST_32KSYNC_SHIFT,
> -               },
> -       },
> -};
> -
>  /*
>   * 'gpmc' class
>   * general purpose memory controller
> @@ -1868,25 +1791,6 @@ static struct omap_hwmod_ocp_if omap3xxx_l3__iva = {
>         .user           = OCP_USER_MPU | OCP_USER_SDMA,
>  };
>
> -
> -/* l4_wkup -> timer1 */
> -static struct omap_hwmod_ocp_if omap3xxx_l4_wkup__timer1 = {
> -       .master         = &omap3xxx_l4_wkup_hwmod,
> -       .slave          = &omap3xxx_timer1_hwmod,
> -       .clk            = "gpt1_ick",
> -       .user           = OCP_USER_MPU | OCP_USER_SDMA,
> -};
> -
> -
> -/* l4_per -> timer2 */
> -static struct omap_hwmod_ocp_if omap3xxx_l4_per__timer2 = {
> -       .master         = &omap3xxx_l4_per_hwmod,
> -       .slave          = &omap3xxx_timer2_hwmod,
> -       .clk            = "gpt2_ick",
> -       .user           = OCP_USER_MPU | OCP_USER_SDMA,
> -};
> -
> -
>  /* l4_per -> timer3 */
>  static struct omap_hwmod_ocp_if omap3xxx_l4_per__timer3 = {
>         .master         = &omap3xxx_l4_per_hwmod,
> @@ -1965,15 +1869,6 @@ static struct omap_hwmod_ocp_if omap3xxx_l4_core__timer11 = {
>         .user           = OCP_USER_MPU | OCP_USER_SDMA,
>  };
>
> -
> -/* l4_core -> timer12 */
> -static struct omap_hwmod_ocp_if omap3xxx_l4_sec__timer12 = {
> -       .master         = &omap3xxx_l4_sec_hwmod,
> -       .slave          = &omap3xxx_timer12_hwmod,
> -       .clk            = "gpt12_ick",
> -       .user           = OCP_USER_MPU | OCP_USER_SDMA,
> -};
> -
>  /* l4_wkup -> wd_timer2 */
>
>  static struct omap_hwmod_ocp_if omap3xxx_l4_wkup__wd_timer2 = {
> @@ -2325,16 +2220,6 @@ static struct omap_hwmod_ocp_if omap3xxx_l4_core__hdq1w = {
>         .flags          = OMAP_FIREWALL_L4 | OCPIF_SWSUP_IDLE,
>  };
>
> -/* l4_wkup -> 32ksync_counter */
> -
> -
> -static struct omap_hwmod_ocp_if omap3xxx_l4_wkup__counter_32k = {
> -       .master         = &omap3xxx_l4_wkup_hwmod,
> -       .slave          = &omap3xxx_counter_32k_hwmod,
> -       .clk            = "omap_32ksync_ick",
> -       .user           = OCP_USER_MPU | OCP_USER_SDMA,
> -};
> -
>  /* am35xx has Davinci MDIO & EMAC */
>  static struct omap_hwmod_class am35xx_mdio_class = {
>         .name = "davinci_mdio",
> @@ -2551,8 +2436,6 @@ static struct omap_hwmod_ocp_if *omap3xxx_hwmod_ocp_ifs[] __initdata = {
>         &omap3_l4_core__i2c2,
>         &omap3_l4_core__i2c3,
>         &omap3xxx_l4_wkup__l4_sec,
> -       &omap3xxx_l4_wkup__timer1,
> -       &omap3xxx_l4_per__timer2,
>         &omap3xxx_l4_per__timer3,
>         &omap3xxx_l4_per__timer4,
>         &omap3xxx_l4_per__timer5,
> @@ -2580,27 +2463,10 @@ static struct omap_hwmod_ocp_if *omap3xxx_hwmod_ocp_ifs[] __initdata = {
>         &omap34xx_l4_core__mcspi2,
>         &omap34xx_l4_core__mcspi3,
>         &omap34xx_l4_core__mcspi4,
> -       &omap3xxx_l4_wkup__counter_32k,
>         &omap3xxx_l3_main__gpmc,
>         NULL,
>  };
>
> -/* GP-only hwmod links */
> -static struct omap_hwmod_ocp_if *omap34xx_gp_hwmod_ocp_ifs[] __initdata = {
> -       &omap3xxx_l4_sec__timer12,
> -       NULL,
> -};
> -
> -static struct omap_hwmod_ocp_if *omap36xx_gp_hwmod_ocp_ifs[] __initdata = {
> -       &omap3xxx_l4_sec__timer12,
> -       NULL,
> -};
> -
> -static struct omap_hwmod_ocp_if *am35xx_gp_hwmod_ocp_ifs[] __initdata = {
> -       &omap3xxx_l4_sec__timer12,
> -       NULL,
> -};
> -
>  /* crypto hwmod links */
>  static struct omap_hwmod_ocp_if *omap34xx_sham_hwmod_ocp_ifs[] __initdata = {
>         &omap3xxx_l4_core__sham,
> @@ -2774,7 +2640,7 @@ static bool __init omap3xxx_hwmod_is_hs_ip_block_usable(struct device_node *bus,
>  int __init omap3xxx_hwmod_init(void)
>  {
>         int r;
> -       struct omap_hwmod_ocp_if **h = NULL, **h_gp = NULL, **h_sham = NULL;
> +       struct omap_hwmod_ocp_if **h = NULL, **h_sham = NULL;
>         struct omap_hwmod_ocp_if **h_aes = NULL;
>         struct device_node *bus;
>         unsigned int rev;
> @@ -2797,18 +2663,15 @@ int __init omap3xxx_hwmod_init(void)
>             rev == OMAP3430_REV_ES2_1 || rev == OMAP3430_REV_ES3_0 ||
>             rev == OMAP3430_REV_ES3_1 || rev == OMAP3430_REV_ES3_1_2) {
>                 h = omap34xx_hwmod_ocp_ifs;
> -               h_gp = omap34xx_gp_hwmod_ocp_ifs;
>                 h_sham = omap34xx_sham_hwmod_ocp_ifs;
>                 h_aes = omap34xx_aes_hwmod_ocp_ifs;
>         } else if (rev == AM35XX_REV_ES1_0 || rev == AM35XX_REV_ES1_1) {
>                 h = am35xx_hwmod_ocp_ifs;
> -               h_gp = am35xx_gp_hwmod_ocp_ifs;
>                 h_sham = am35xx_sham_hwmod_ocp_ifs;
>                 h_aes = am35xx_aes_hwmod_ocp_ifs;
>         } else if (rev == OMAP3630_REV_ES1_0 || rev == OMAP3630_REV_ES1_1 ||
>                    rev == OMAP3630_REV_ES1_2) {
>                 h = omap36xx_hwmod_ocp_ifs;
> -               h_gp = omap36xx_gp_hwmod_ocp_ifs;
>                 h_sham = omap36xx_sham_hwmod_ocp_ifs;
>                 h_aes = omap36xx_aes_hwmod_ocp_ifs;
>         } else {
> @@ -2820,13 +2683,6 @@ int __init omap3xxx_hwmod_init(void)
>         if (r < 0)
>                 return r;
>
> -       /* Register GP-only hwmod links. */
> -       if (h_gp && omap_type() == OMAP2_DEVICE_TYPE_GP) {
> -               r = omap_hwmod_register_links(h_gp);
> -               if (r < 0)
> -                       return r;
> -       }
> -
>         /*
>          * Register crypto hwmod links only if they are not disabled in DT.
>          * If DT information is missing, enable them only for GP devices.
> --
> 2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
