Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50229130385
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 17:24:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l8WuXHtt1wjQ8ancU+ekoByP9TTAsSXOm1RKlbQRRMc=; b=SMWE4iwEi0mm/4
	lOhBOa5kDQmuFQJEl6P4O3KWeD/O61zpcl5hAuWwxdr47R75yljKbHXuZ7hY6AcLi9NDjGov9qB3o
	CNrxQtcCLld+VZAC4GuSYWu7sTcl/OlG0ujuylQ80/LNOHK3slEuyzSh5nTW/8pjUrtgo+k7SCFYQ
	6npoZcPRsssXmG0NqCRh0FHId0IZHJbvcH800PsRj5bDCFqr+fVJ0nwslW+zisgFQa2HpAgNmcc70
	6akNvVNXgiY/WYnndFVzS9MhgaiceIyVgmXITaDGkeNpnd6tqz+mCcAQ1A8KIUBzyNmLl9J84+x/0
	qSBt+bXrueycCKVCi5QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inmE9-0008FL-RL; Sat, 04 Jan 2020 16:24:37 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inmE1-0008ED-4A
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 16:24:31 +0000
Received: by mail-qv1-xf43.google.com with SMTP id dc14so17429792qvb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 Jan 2020 08:24:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uXako0AnT0RegInd6xVh0Iv1Ln66l+hGQ3lCKJKtXKo=;
 b=StP7poFBXzCTQ1bVkvrqLHj5lM4JPdP26Tm6/OrAw6mhMaIXMtBtku+TMZHagUQE43
 04EUb6k726jfy++5vPreYcFqTwpe/4hVqCIbOOpXbim9DFGrOYT2MC4/Qi62Z/a65aF7
 PQaoTTqICcdMOtAOM634184Ad9ms398XbBOKJRCNrpVJbYT2N1FQX8/siEbVIpiRY8ZE
 3CU7cfrnqSAg2k8PghjuaCsEDSWBP3E2Z7qHZJA1Lsx3t2bbKjYJ6z2ocE14NtkJNG4M
 KWq7omkXhGRltGUdfafx+1S587MCH+BaVXhzPSMwVi7T0OPUs56o1MEWQBR8N/fPREVG
 aXMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uXako0AnT0RegInd6xVh0Iv1Ln66l+hGQ3lCKJKtXKo=;
 b=b2MpS7rVY2Am3Xvl18guplw2EZv9Q5kiZxjgDVEX3yyedMhLRBwCFn4sI7t+13c5B1
 9pi6Zj0A3x2R5sxhmvb9ySxEHkX/TyAVIoEGQVSFvY+bV4wu/925F1jaZNw6j9tGQ4FC
 sI0sGp7FbAfYtwW8pSR39JMDP7Rt84g1N4Es51SpL5QNryx67L8MofcKsPI2hVPoOtmU
 xMo6DN/0/0zNA0+TQ1XJ/iKPrHu9yzb31+CG6EBAZ4CkS2mHuB0S2mKBpZ7pIEdwTNYn
 RiLnL35o4hmJn57naGWn9C1XIXU3XMyWM79MPux6+e/i6h69OC9H46cDQXCJ8bBzpeiX
 /GNg==
X-Gm-Message-State: APjAAAV+RTE8DacHcdNlX7NvNuQ3BrEdRXlAfeEzQcW3FfPpPUsbPpm5
 4ueDH8EH0ylCn8VVqI//q87hLbuLLKO6kFQJyTQ=
X-Google-Smtp-Source: APXvYqxVVs/nTtOtlPS+vDJ38ZXY5t9BlpKReMUDHf4R4YD3baOf1rx5WDqQkwj0xJKxxOhWb+2lJq5V6XrBtSKRwjc=
X-Received: by 2002:ad4:450a:: with SMTP id k10mr67981576qvu.136.1578155067642; 
 Sat, 04 Jan 2020 08:24:27 -0800 (PST)
MIME-Version: 1.0
References: <20200104063505.219030-1-anarsoul@gmail.com>
 <20200104063505.219030-4-anarsoul@gmail.com>
 <20200104083734.hmeapykk7gninukf@gilmour.lan>
In-Reply-To: <20200104083734.hmeapykk7gninukf@gilmour.lan>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Sat, 4 Jan 2020 08:24:01 -0800
Message-ID: <CA+E=qVdZGktgAwEUeUkqYaU=pWe-Ogjnf90=z7YcyrXn74h+9w@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: allwinner: a64: enable DVFS
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_082429_174553_A65A6E59 
X-CRM114-Status: GOOD (  25.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 devicetree <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jan 4, 2020 at 12:37 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> Hi!
>
> On Fri, Jan 03, 2020 at 10:35:05PM -0800, Vasily Khoruzhick wrote:
> > Add CPU regulator, CPU clock, operation points and thermal trip points
> > to enable DVFS on A64
> >
> > Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> > ---
> >  .../allwinner/sun50i-a64-amarula-relic.dts    |   4 +
> >  .../dts/allwinner/sun50i-a64-bananapi-m64.dts |   4 +
> >  .../dts/allwinner/sun50i-a64-nanopi-a64.dts   |   4 +
> >  .../dts/allwinner/sun50i-a64-olinuxino.dts    |   4 +
> >  .../dts/allwinner/sun50i-a64-orangepi-win.dts |   4 +
> >  .../boot/dts/allwinner/sun50i-a64-pine64.dts  |   4 +
> >  .../dts/allwinner/sun50i-a64-pinebook.dts     |   4 +
> >  .../allwinner/sun50i-a64-sopine-baseboard.dts |   4 +
> >  .../boot/dts/allwinner/sun50i-a64-sopine.dtsi |   4 +
> >  .../boot/dts/allwinner/sun50i-a64-teres-i.dts |   4 +
> >  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 102 ++++++++++++++++++
> >  11 files changed, 142 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts
> > index 5634245d11db..43f6ac0beed6 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts
> > @@ -65,6 +65,10 @@ wifi_pwrseq: wifi-pwrseq {
> >       };
> >  };
> >
> > +&cpu0 {
> > +     cpu-supply = <&reg_dcdc2>;
> > +};
> > +
> >  &csi {
> >       status = "okay";
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
> > index 208373efee49..cbcab80de8c5 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
> > @@ -108,6 +108,10 @@ &codec_analog {
> >       status = "okay";
> >  };
> >
> > +&cpu0 {
> > +     cpu-supply = <&reg_dcdc2>;
> > +};
> > +
> >  &dai {
> >       status = "okay";
> >  };
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-nanopi-a64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-nanopi-a64.dts
> > index 9b9d9157128c..6708acf94d01 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-nanopi-a64.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-nanopi-a64.dts
> > @@ -87,6 +87,10 @@ wifi_pwrseq: wifi_pwrseq {
> >       };
> >  };
> >
> > +&cpu0 {
> > +     cpu-supply = <&reg_dcdc2>;
> > +};
> > +
> >  &de {
> >       status = "okay";
> >  };
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
> > index 01a9a52edae4..f94e60eb4ec2 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
> > @@ -87,6 +87,10 @@ wifi_pwrseq: wifi_pwrseq {
> >       };
> >  };
> >
> > +&cpu0 {
> > +     cpu-supply = <&reg_dcdc2>;
> > +};
> > +
> >  &de {
> >       status = "okay";
> >  };
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts
> > index f54a415f2e3b..2793afba4884 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts
> > @@ -123,6 +123,10 @@ &codec_analog {
> >       status = "okay";
> >  };
> >
> > +&cpu0 {
> > +     cpu-supply = <&reg_dcdc2>;
> > +};
> > +
> >  &dai {
> >       status = "okay";
> >  };
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
> > index 409523cb0950..04aa452d4400 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
> > @@ -84,6 +84,10 @@ &codec_analog {
> >       status = "okay";
> >  };
> >
> > +&cpu0 {
> > +     cpu-supply = <&reg_dcdc2>;
> > +};
> > +
> >  &dai {
> >       status = "okay";
> >  };
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
> > index 78c82a665c84..365d85c16deb 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
> > @@ -98,6 +98,10 @@ &codec_analog {
> >       status = "okay";
> >  };
> >
> > +&cpu0 {
> > +     cpu-supply = <&reg_dcdc2>;
> > +};
> > +
> >  &dai {
> >       status = "okay";
> >  };
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > index 920103ec0046..e760e8efdf3e 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> > @@ -100,6 +100,10 @@ &codec_analog {
> >       status = "okay";
> >  };
> >
> > +&cpu0 {
> > +     cpu-supply = <&reg_dcdc2>;
> > +};
> > +
> >  &dai {
> >       status = "okay";
> >  };
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine.dtsi
> > index 9d20e13f0c02..3d8e2d452ce1 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine.dtsi
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine.dtsi
> > @@ -51,6 +51,10 @@ &codec_analog {
> >       cpvdd-supply = <&reg_eldo1>;
> >  };
> >
> > +&cpu0 {
> > +     cpu-supply = <&reg_dcdc2>;
> > +};
> > +
> >  &mmc0 {
> >       pinctrl-names = "default";
> >       pinctrl-0 = <&mmc0_pins>;
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> > index 970415106dcf..28edcef8bed1 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> > @@ -104,6 +104,10 @@ &de {
> >       status = "okay";
> >  };
> >
> > +&cpu0 {
> > +     cpu-supply = <&reg_dcdc2>;
> > +};
> > +
> >  &ehci1 {
> >       status = "okay";
> >  };
>
> Did you test it on all those boards (and if so, how were the OPP
> tested), or was it done simply by looking at the schematics?

I tested it only on Pine64-LTS and Pinebook. But all these boards use
AXP803 which always uses DCDC2 as CPU regulator.

> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > index 5e3f16c3b706..7f37c8cd1b6e 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > @@ -80,6 +80,52 @@ simplefb_hdmi: framebuffer-hdmi {
> >               };
> >       };
> >
> > +     cpu0_opp_table: opp_table0 {
> > +             compatible = "operating-points-v2";
> > +             opp-shared;
> > +
> > +             opp-648000000 {
> > +                     opp-hz = /bits/ 64 <648000000>;
> > +                     opp-microvolt = <1040000>;
> > +                     clock-latency-ns = <244144>; /* 8 32k periods */
> > +             };
> > +             opp-816000000 {
> > +                     opp-hz = /bits/ 64 <816000000>;
> > +                     opp-microvolt = <1100000>;
> > +                     clock-latency-ns = <244144>; /* 8 32k periods */
> > +             };
>
> Nit: having new lines between the nodes would be great

Will do.

> > +             opp-912000000 {
> > +                     opp-hz = /bits/ 64 <912000000>;
> > +                     opp-microvolt = <1120000>;
> > +                     clock-latency-ns = <244144>; /* 8 32k periods */
> > +             };
> > +             opp-960000000 {
> > +                     opp-hz = /bits/ 64 <960000000>;
> > +                     opp-microvolt = <1160000>;
> > +                     clock-latency-ns = <244144>; /* 8 32k periods */
> > +             };
> > +             opp-1008000000 {
> > +                     opp-hz = /bits/ 64 <1008000000>;
> > +                     opp-microvolt = <1200000>;
> > +                     clock-latency-ns = <244144>; /* 8 32k periods */
> > +             };
> > +             opp-1056000000 {
> > +                     opp-hz = /bits/ 64 <1056000000>;
> > +                     opp-microvolt = <1240000>;
> > +                     clock-latency-ns = <244144>; /* 8 32k periods */
> > +             };
> > +             opp-1104000000 {
> > +                     opp-hz = /bits/ 64 <1104000000>;
> > +                     opp-microvolt = <1260000>;
> > +                     clock-latency-ns = <244144>; /* 8 32k periods */
> > +             };
> > +             opp-1152000000 {
> > +                     opp-hz = /bits/ 64 <1152000000>;
> > +                     opp-microvolt = <1300000>;
> > +                     clock-latency-ns = <244144>; /* 8 32k periods */
> > +             };
> > +     };
> > +
>
> What frequency is setup by U-Boot?

It's 816 MHz

> If it's 1008 MHz as usual, then having the OPP above that frequency by
> default means that a board that doesn't set cpu-supply (or doesn't set
> it up properly) will be unstable, since it will increase the
> frequency, but not the voltage, and the voltage isn't enough for that
> new frequency.
>
> The way we've done it so far on the SoCs in a similar situation (A33,
> A83t) is only to list the OPP below the frequency set up by U-Boot in
> the DTSI, and list the frequencies above that in the boards that add
> cpu-supply.
>
> Given that it seems that we need to have them listed on number of
> boards, I guess we could add a separate DTSI that would be included
> only by the boards setting cpu-supply?

Currently all the A64 boards that we support use AXP803, so I'm not
sure whether we actually need that. We can just define CPU regulator
for them and use default OPP and that's exactly what I did.

> >       cpus {
> >               #address-cells = <1>;
> >               #size-cells = <0>;
> > @@ -90,6 +136,10 @@ cpu0: cpu@0 {
> >                       reg = <0>;
> >                       enable-method = "psci";
> >                       next-level-cache = <&L2>;
> > +                     clocks = <&ccu CLK_CPUX>;
> > +                     clock-names = "cpu";
> > +                     operating-points-v2 = <&cpu0_opp_table>;
> > +                     #cooling-cells = <2>;
> >               };
> >
> >               cpu1: cpu@1 {
> > @@ -98,6 +148,10 @@ cpu1: cpu@1 {
> >                       reg = <1>;
> >                       enable-method = "psci";
> >                       next-level-cache = <&L2>;
> > +                     clocks = <&ccu CLK_CPUX>;
> > +                     clock-names = "cpu";
> > +                     operating-points-v2 = <&cpu0_opp_table>;
> > +                     #cooling-cells = <2>;
> >               };
> >
> >               cpu2: cpu@2 {
> > @@ -106,6 +160,10 @@ cpu2: cpu@2 {
> >                       reg = <2>;
> >                       enable-method = "psci";
> >                       next-level-cache = <&L2>;
> > +                     clocks = <&ccu CLK_CPUX>;
> > +                     clock-names = "cpu";
> > +                     operating-points-v2 = <&cpu0_opp_table>;
> > +                     #cooling-cells = <2>;
> >               };
> >
> >               cpu3: cpu@3 {
> > @@ -114,6 +172,10 @@ cpu3: cpu@3 {
> >                       reg = <3>;
> >                       enable-method = "psci";
> >                       next-level-cache = <&L2>;
> > +                     clocks = <&ccu CLK_CPUX>;
> > +                     clock-names = "cpu";
> > +                     operating-points-v2 = <&cpu0_opp_table>;
> > +                     #cooling-cells = <2>;
> >               };
> >
> >               L2: l2-cache {
> > @@ -218,6 +280,46 @@ cpu_thermal: cpu0-thermal {
> >                       polling-delay-passive = <0>;
> >                       polling-delay = <0>;
> >                       thermal-sensors = <&ths 0>;
> > +
> > +                     cooling-maps {
> > +                             map0 {
> > +                                     trip = <&cpu_alert0>;
> > +                                     cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > +                                                      <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > +                                                      <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > +                                                      <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> > +                             };
> > +                             map1 {
> > +                                     trip = <&cpu_alert1>;
> > +                                     cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > +                                                      <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > +                                                      <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > +                                                      <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> > +                             };
> > +                     };
> > +
> > +                     trips {
> > +                             cpu_alert0: cpu_alert0 {
> > +                                     /* milliCelsius */
> > +                                     temperature = <75000>;
> > +                                     hysteresis = <2000>;
> > +                                     type = "passive";
> > +                             };
> > +
> > +                             cpu_alert1: cpu_alert1 {
> > +                                     /* milliCelsius */
> > +                                     temperature = <90000>;
> > +                                     hysteresis = <2000>;
> > +                                     type = "hot";
> > +                             };
> > +
> > +                             cpu_crit: cpu_crit {
> > +                                     /* milliCelsius */
> > +                                     temperature = <110000>;
> > +                                     hysteresis = <2000>;
> > +                                     type = "critical";
> > +                             };
> > +                     };
> >               };
>
> Where are those tripping points coming from?

These are taken from A33 dtsi. I couldn't find any recommended
throttling and critical temp in A64 user manual [1].

[1] http://linux-sunxi.org/images/b/b4/Allwinner_A64_User_Manual_V1.1.pdf

> Thanks!
> Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
