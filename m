Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86868807BC
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 20:29:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wKZYk9i6NhA2uPUh8JbdqT0YUzYP8y4QMF+fG5pw9CI=; b=aKf8cy1zi6hZdF
	SJO54aI1XXuub/tuNY1fht/RukxZ0oMhNUBnv6VA/mKcxWvH5BhELmA/SpsZLJavS7QGdbqsO03w7
	iuybXPkLqIVf3HUmg/Zsz3K/+4+SGbAYdIsBdRQIveyvz9ItrVhuPzM55G/sb/i5lEbXoeqcJGWH2
	4gA52iUrkw6FOcNGsy65MgySDv0w6G6mJn3BbZ5HAb4SFFJiKOujNQXphPiCQ2od5FGa2RZhCzdlr
	ZV6Lehf4bIavANvawJCduNlXZLN0MwM1q+RZOICYEuCYvZIvT5Dhiy3RRclIB7v/b4yGsCfAne+d3
	RBxUeHxAE+PT2OpeCm/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htymf-0004Ix-Jh; Sat, 03 Aug 2019 18:29:37 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htymQ-0004HV-PP; Sat, 03 Aug 2019 18:29:24 +0000
Received: by mail-oi1-x243.google.com with SMTP id c15so3874038oic.3;
 Sat, 03 Aug 2019 11:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZmwQzZFWN1VH43yyrewfQCrNQzkLp/L4+LR2NbHJc20=;
 b=PvBvg4hunsTs0giKyiL15cDxqpUWZJJxBgAjtmY8q1EH6FPxs1nx8kirnGu9sEPZUN
 75hgG7VfyjDLpXEvGHkxVqQs9zoZRNlMRUykM50jFIEucPSSSZ4q3V0USvdDbIwc3LWc
 HLSRMU/zaU4p8RdS39kddAqUBXtmsqp3r+XHRijt2RiABnuM3hcZF85C//2UY9Xv6swM
 Ga2ItWR4PddVdwlcCACr358tayUXsZDUT/Z07QWU2Uk3McQt8TcDYBUy627Wm9Rhj/+6
 zd5pPteLyTRm8jvU0qHe4W5qPUsOht+JJQtwKBLq5F0PTSSGYbl/hX1cNsTWMPfZKsWF
 rNFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZmwQzZFWN1VH43yyrewfQCrNQzkLp/L4+LR2NbHJc20=;
 b=VvP2cCyDizoSupA150Fpl9B/4uFlUmyNjTIw2NOMXxsAn5kX1rytB6oGkA71kKkCTP
 wviuJW6nNf8i79drzsBCEiVcc6AiDBTKhlcoCBluTTr3YqeovA3nEjVugdXoXCi2nz1P
 nRKcUqNQvCCZ9fLDl9gWV5EfZ6sLoQJ/PwFdPZqEkH+4UnYWYzy8tDJdeRD7EgdQi61T
 vJT9WU7cATRQRTIPwdTLq0Cv4fgjqBhQHrO7lr5NZldy2ALhIsbpUnIT4iwwA9EsOA4K
 XziM9XJOjf6tEgghhooGho20aLDCb6OLJgKnTk8B3k+dNNv7INmDveQcQGPk+XtL/09R
 EkqQ==
X-Gm-Message-State: APjAAAVNugfRJR6x6oB2Nx2LfI8ntn59y2dvLLKMFvk/BP6i+1tmel07
 JIbCxnynqNPbwWJAb4sx8oAPddMVA6wPHX8pWYo=
X-Google-Smtp-Source: APXvYqwJbx+70CCBTietpO39u7K1TgLKPTpN4Bi1Ow630XW6U1gtXiCVC87cK74QbovUvi45FqC4+cT21hLCfvd82L4=
X-Received: by 2002:a05:6808:3d6:: with SMTP id
 o22mr6459987oie.140.1564856961731; 
 Sat, 03 Aug 2019 11:29:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190731153529.30159-1-glaroque@baylibre.com>
 <20190731153529.30159-5-glaroque@baylibre.com>
In-Reply-To: <20190731153529.30159-5-glaroque@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 3 Aug 2019 20:29:10 +0200
Message-ID: <CAFBinCD-DUEjPgfUEJmHpPjw1ShZy7nemaFBKANmM5M42XBG4Q@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] arm64: dts: meson: sei510: Add minimal thermal zone
To: Guillaume La Roque <glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_112922_830138_0324B644 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org, khilman@baylibre.com,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Guillaume,

On Wed, Jul 31, 2019 at 5:36 PM Guillaume La Roque
<glaroque@baylibre.com> wrote:
>
> Add minimal thermal zone for DDR and CPU sensor
so high DDR (controller?) temperatures will throttle Mali and high PLL
temperatures will throttle the CPU?
to get things started I'm fine with this, but I think it should be
mentioned here

> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
> ---
>  .../boot/dts/amlogic/meson-g12a-sei510.dts    | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
> index 979449968a5f..2c16a2cba0a3 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
> @@ -10,6 +10,7 @@
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/gpio/meson-g12a-gpio.h>
>  #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
> +#include <dt-bindings/thermal/thermal.h>
>
>  / {
>         compatible = "seirobotics,sei510", "amlogic,g12a";
> @@ -33,6 +34,53 @@
>                 ethernet0 = &ethmac;
>         };
>
> +       thermal-zones {
> +               cpu-thermal {
> +                       polling-delay = <1000>;
> +                       polling-delay-passive = <100>;
> +                       thermal-sensors = <&cpu_temp>;
> +
> +                       trips {
> +                               cpu_critical: cpu-critical {
> +                                       temperature = <110000>; /* millicelsius */
> +                                       hysteresis = <2000>; /* millicelsius */
> +                                       type = "critical";
> +                               };
> +                       };
> +
> +                       cooling-maps {
> +                               map {
> +                                       trip = <&cpu_critical>;
> +                                       cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +                                                        <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +                                                        <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +                                                        <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +                               };
> +                       };
> +               };
> +
> +               ddr-thermal {
> +                       polling-delay = <1000>;
> +                       polling-delay-passive = <100>;
> +                       thermal-sensors = <&ddr_temp>;
> +
> +                       trips {
> +                               ddr_critical: ddr-critical {
> +                                       temperature = <110000>; /* millicelsius */
> +                                       hysteresis = <2000>; /* millicelsius */
> +                                       type = "critical";
> +                               };
> +                       };
> +
> +                       cooling-maps {
> +                               map {
> +                                       trip = <&ddr_critical>;
> +                                       cooling-device = <&mali THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +                               };
> +                       };
> +               };
> +       };
> +
>         mono_dac: audio-codec-0 {
>                 compatible = "maxim,max98357a";
>                 #sound-dai-cells = <0>;
> @@ -321,6 +369,7 @@
>         operating-points-v2 = <&cpu_opp_table>;
>         clocks = <&clkc CLKID_CPU_CLK>;
>         clock-latency = <50000>;
> +       #cooling-cells = <2>;
>  };
>
>  &cpu1 {
> @@ -328,6 +377,7 @@
>         operating-points-v2 = <&cpu_opp_table>;
>         clocks = <&clkc CLKID_CPU_CLK>;
>         clock-latency = <50000>;
> +       #cooling-cells = <2>;
>  };
>
>  &cpu2 {
> @@ -335,6 +385,7 @@
>         operating-points-v2 = <&cpu_opp_table>;
>         clocks = <&clkc CLKID_CPU_CLK>;
>         clock-latency = <50000>;
> +       #cooling-cells = <2>;
>  };
>
>  &cpu3 {
> @@ -342,6 +393,7 @@
>         operating-points-v2 = <&cpu_opp_table>;
>         clocks = <&clkc CLKID_CPU_CLK>;
>         clock-latency = <50000>;
> +       #cooling-cells = <2>;
>  };
>
>  &cvbs_vdac_port {
> @@ -368,6 +420,10 @@
>         status = "okay";
>  };
>
> +&mali {
> +       #cooling-cells = <2>;
> +};
is there something device-specific in this patch? I'm wondering
whether we can move all of this go g12a.dtsi to simplify maintenance
in the future


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
