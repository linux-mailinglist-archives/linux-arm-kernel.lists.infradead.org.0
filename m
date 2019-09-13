Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D95C6B192E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 09:48:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=89ZejGk+Dw6n82q5+alf5qi+22ejYZf2FzJA+z1PB7o=; b=rjcFkEfYyg7ybR
	tUU6yFy8DesVF6/oglGvMr4C1TCKLoBqkdH2nzrtxsyNE1Gsx0pesWxKnCWirnp3vhfCLc1+YsQTN
	6Z1hA/ETkSGt7MoV4ZNRaPnSwso3LLbrHeapsZ5I1paZHA6gmnfZMa+N0tAB2VfIQeI+vICBkkP7v
	rz+bAr3+3UFdUz7qXbBb3Xr8BcD90EjonMzjka/lOeU1niRdLI4+7hNfSAxzSvpxqZbBXRBBGZjYx
	0VB+CBd2FTLmmuFqvXA0yanZfyGkO4/yu8NkqF5qS/Tii7wFfy5lxALq5c8s1GahPZaXszgnQsz0f
	/tLTSdwdbMj/nB4aQ1qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8gJj-0007gC-Db; Fri, 13 Sep 2019 07:48:31 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8gJ7-0007e0-Hx
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 07:47:55 +0000
Received: by mail-ua1-x943.google.com with SMTP id z8so8867426uaq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 00:47:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BY3Xdm/EuEh+5xQuU5r1eTj+ek/4Ndp2HWrdgEDsjzc=;
 b=WJkm19FFgfc2GD6vL1mFJQN6LlvObf/GmbYBDNtuIIzm2tqbA9cMbf4vr4LQorJO/Q
 EZiMU05SVRjKv3jYbT3b9WhN25IIYPTSxoS56bRuaTpAtWiEVtIc8Spxw+BM5TKvPPeU
 XppVfL9AmQttSDSycCqcd77+sVw9EdQ15SSXzrczsbZ5qZzO7AFNaZQEvPf1JBPFT8e4
 GTU3DlXxwGRmMsGsbLyQcyiYxxNaSE2cXKAKyuMoOF2GBTfsW1RiO+xBKkVKEQJUFvfk
 RwLopqoFtujhyyjh23scuKoskkK/GRlHujIsHBn4bsklMNzeE2Pg1ac6lzQLkVZXLVXG
 SoCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BY3Xdm/EuEh+5xQuU5r1eTj+ek/4Ndp2HWrdgEDsjzc=;
 b=pIitsDo9Dm//sAMdo4zLK9H/XZctRu2Kwc6wmT4Mi6qzRZc/AcJupfqhJWPC64zC3J
 QTYNjsMM8HVml+9KqAJgspa/U8PxexNBSAM6f9Yt/D0O4dFreW8sKrFSlN2K5as4OHcX
 MmjkcpHZHuVPeDlJiIvqW+MsD59StkXrP+3AhJNE4xVJ1y7vccA3Z1qe8STvyAyYg2ln
 Iv4hPWJgj2BUD9cqEDd5XGpFRCMYQhsPyiRK7Mvx+nf+k5hAraoFoB72hv6Tn9jiTXsk
 2f2rYegzLF9SbMgxpsOjcoyjVFOmxouRKfbYsZke89v+e4fEeE17k2RPDbXIBD7rS8Bw
 SG9A==
X-Gm-Message-State: APjAAAUAQ8+tvmnzI3L6r8lv83+HiK8Slvp+LQsgzn0SrdRtnY7LpFe5
 uccfUe6hQifXIVwpIr9r+R8X8Sa1VC+JxOPxJkmMHw==
X-Google-Smtp-Source: APXvYqw+RuXy2zCguY4C1QAkE27a8kK5UVarVaOFgDQP/kO/+YACn54gFQCdTxOviAuCW1sKD8pQvibhMSHWBtF6fqA=
X-Received: by 2002:ab0:2855:: with SMTP id c21mr23850232uaq.67.1568360870892; 
 Fri, 13 Sep 2019 00:47:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190821222421.30242-1-glaroque@baylibre.com>
 <20190821222421.30242-5-glaroque@baylibre.com>
 <7hsgpu5c7j.fsf@baylibre.com>
In-Reply-To: <7hsgpu5c7j.fsf@baylibre.com>
From: Amit Kucheria <amit.kucheria@linaro.org>
Date: Fri, 13 Sep 2019 13:17:39 +0530
Message-ID: <CAHLCerPtDH2VLGBgETJkqkLQZ=8T5C=8VY-=SLKAAEpx5nZf5A@mail.gmail.com>
Subject: Re: [PATCH v4 4/6] arm64: dts: meson: sei510: Add minimal thermal zone
To: Kevin Hilman <khilman@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_004753_631498_419DE35B 
X-CRM114-Status: GOOD (  19.45  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 Guillaume La Roque <glaroque@baylibre.com>, linux-amlogic@lists.infradead.org,
 Zhang Rui <rui.zhang@intel.com>, lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 4:59 AM Kevin Hilman <khilman@baylibre.com> wrote:
>
> Guillaume La Roque <glaroque@baylibre.com> writes:
>
> > Add minimal thermal zone for two temperature sensor
> > One is located close to the DDR and the other one is
> > located close to the PLLs (between the CPU and GPU)
> >
> > Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
> > Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> > ---
> >  .../boot/dts/amlogic/meson-g12a-sei510.dts    | 70 +++++++++++++++++++
> >  1 file changed, 70 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
> > index c9fa23a56562..35d2ebbd6d4e 100644
> > --- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
> > +++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
> > @@ -10,6 +10,7 @@
> >  #include <dt-bindings/input/input.h>
> >  #include <dt-bindings/gpio/meson-g12a-gpio.h>
> >  #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
> > +#include <dt-bindings/thermal/thermal.h>
> >
> >  / {
> >       compatible = "seirobotics,sei510", "amlogic,g12a";
> > @@ -33,6 +34,67 @@
> >               ethernet0 = &ethmac;
> >       };
> >
> > +     thermal-zones {
> > +             cpu-thermal {
> > +                     polling-delay = <1000>;
> > +                     polling-delay-passive = <100>;
> > +                     thermal-sensors = <&cpu_temp>;
> > +
> > +                     trips {
> > +                             cpu_hot: cpu-hot {
> > +                                     temperature = <85000>; /* millicelsius */
> > +                                     hysteresis = <2000>; /* millicelsius */
> > +                                     type = "hot";
> > +                             };

No passive trip point? That is where the cooling-maps are really useful.

> > +
> > +                             cpu_critical: cpu-critical {
> > +                                     temperature = <110000>; /* millicelsius */
> > +                                     hysteresis = <2000>; /* millicelsius */
> > +                                     type = "critical";
> > +                             };
> > +                     };
> > +

I think, what you really want is to change your hot trip point above
to passive. And if you need another trip before that (to send
notification to userspace, for example), just add another hot trip
point at a lower temperature.

> > +                     cooling-maps {
> > +                             map0 {
> > +                                     trip = <&cpu_hot>;
> > +                                     cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > +                                                      <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > +                                                      <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > +                                                      <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> > +                             };
> > +
> > +                             map1 {
> > +                                     trip = <&cpu_critical>;
> > +                                     cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > +                                                      <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > +                                                      <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > +                                                      <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> > +                             };

The cooling-map associated with a critical trip point is of no use in
my experience because the device is already on its way to shutting
down then.

> > +                     };
> > +             };
> > +
> > +             ddr-thermal {
> > +                     polling-delay = <1000>;
> > +                     polling-delay-passive = <100>;
> > +                     thermal-sensors = <&ddr_temp>;
> > +
> > +                     trips {
> > +                             ddr_critical: ddr-critical {
> > +                                     temperature = <110000>; /* millicelsius */
> > +                                     hysteresis = <2000>; /* millicelsius */
> > +                                     type = "critical";
> > +                             };
> > +                     };
> > +
> > +                     cooling-maps {
> > +                             map {
> > +                                     trip = <&ddr_critical>;
> > +                                     cooling-device = <&mali THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;

Same here. The cooling-map makes more sense against a passive trip type.

> > +                             };
> > +                     };
> > +             };
> > +     };
> > +
> >       mono_dac: audio-codec-0 {
> >               compatible = "maxim,max98357a";
> >               #sound-dai-cells = <0>;
> > @@ -321,6 +383,7 @@
> >       operating-points-v2 = <&cpu_opp_table>;
> >       clocks = <&clkc CLKID_CPU_CLK>;
> >       clock-latency = <50000>;
> > +     #cooling-cells = <2>;
> >  };
> >
> >  &cpu1 {
> > @@ -328,6 +391,7 @@
> >       operating-points-v2 = <&cpu_opp_table>;
> >       clocks = <&clkc CLKID_CPU_CLK>;
> >       clock-latency = <50000>;
> > +     #cooling-cells = <2>;
> >  };
> >
> >  &cpu2 {
> > @@ -335,6 +399,7 @@
> >       operating-points-v2 = <&cpu_opp_table>;
> >       clocks = <&clkc CLKID_CPU_CLK>;
> >       clock-latency = <50000>;
> > +     #cooling-cells = <2>;
> >  };
> >
> >  &cpu3 {
> > @@ -342,6 +407,7 @@
> >       operating-points-v2 = <&cpu_opp_table>;
> >       clocks = <&clkc CLKID_CPU_CLK>;
> >       clock-latency = <50000>;
> > +     #cooling-cells = <2>;
> >  };
> >
> >  &cvbs_vdac_port {
> > @@ -368,6 +434,10 @@
> >       status = "okay";
> >  };
> >
> > +&mali {
> > +     #cooling-cells = <2>;
> > +};
> > +
>
> Is there a reason these #cooling-cells properties belong in the SoC
> .dtsi and not the board .dts.  Seems like you'll have to repeat this in
> every board .dts which doesn't seem necessary.
>
> Same comment for patch 5/6

Agreed. Even the thermal zones belong in the SoC .dtsi. You can always
override the trip-points in a board .dts if required if you have a
board designed in a different form-factor or with active cooling.

/Amit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
