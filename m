Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6B7123E8D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 05:33:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yNhXzJiE3PQyMbYncfw/chRtRfigXbxXFxDE8RnHT4c=; b=CyLgV27CadcUYJ
	wDFbc0CFeFSrbu13EFOZxBhb713LfCPrX0edUeO/DfEnPTjaQG35Gmgm3fyzoChcbiwiCNvnGLTKD
	i+lil46f/NO0D7s/Edk5Y9iMChnDjNo41NcGQOQ9owgN6t8J1jz15ifpfohEFiM2U3HiJOxwEmmBx
	zorPDph2Iz+IndD2kQRsLiFOpLkAPpsg0p1ZvZMM5G1dGWu53CmOPNxna3ns36cE0bGBQ0hxsTA1E
	CPNwEnXTcXbZFXOyEH4Hl92uctb/HTJA79xbcCDellkRoAW0fXBP4nnNykcgVBCxaoxkTCamUL/8m
	we+I9j8j+N04qL9V3qQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihR16-0005mm-UG; Wed, 18 Dec 2019 04:32:56 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihR0x-0005lm-2M
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 04:32:49 +0000
Received: by mail-ed1-f65.google.com with SMTP id j17so536936edp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 20:32:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GxXoTov4PUhak7sIA8LFPrnn1qIL741x3U+CG+v//Qw=;
 b=A3T2ZUp4glk7XQab/XqElNB0e7bFs8bi6TFKM6INtYY0MXom/hLq+q26NUX1kp++cc
 9fwr1fzy22Rl+HaUwW8VI2URnpy+dtJNG/g3j5sC9pQE6E1huuP5qsZpVmU3j9edO085
 TDgwBYLaijXvW4urjcGbN8yWeg1NsBv/T6dxiqux75wcQbG6fG+LyG7YijURjepVxd3W
 tSKuWjcjID+W5DCI048oWhfjiRdYT4V1WFHnW00B/Q4WGi+GDutb0p4ZAyq6gm/omtTB
 vnPlOYtlKSGgcLsEPIHJfZ+FzXiUqlsvdfu+z3EFaYhV1GuTJoMLsHQJELlMoHDV3idq
 sqQA==
X-Gm-Message-State: APjAAAUL752NBq3HFHDkExhai71VpPQMgvdfRalYc0cIX326OdVD4yj+
 hjQHv045QEM1zF0DP27AuZWTlDj3ObPbnQ==
X-Google-Smtp-Source: APXvYqxfPbKeChPkCu1CA/LMnLbt0IGLT8fyQfzrrIqZnslEZZ/5L5nR3G0vxvnrtbRKNPhA2lzi1A==
X-Received: by 2002:a50:d5c9:: with SMTP id g9mr48709edj.131.1576643563840;
 Tue, 17 Dec 2019 20:32:43 -0800 (PST)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com.
 [209.85.128.54])
 by smtp.gmail.com with ESMTPSA id s12sm45859eja.79.2019.12.17.20.32.43
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Dec 2019 20:32:43 -0800 (PST)
Received: by mail-wm1-f54.google.com with SMTP id q9so358086wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 20:32:43 -0800 (PST)
X-Received: by 2002:a05:600c:2046:: with SMTP id
 p6mr573630wmg.110.1576643562884; 
 Tue, 17 Dec 2019 20:32:42 -0800 (PST)
MIME-Version: 1.0
References: <20191218042121.1471954-1-anarsoul@gmail.com>
 <20191218042121.1471954-7-anarsoul@gmail.com>
In-Reply-To: <20191218042121.1471954-7-anarsoul@gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 18 Dec 2019 12:32:31 +0800
X-Gmail-Original-Message-ID: <CAGb2v65Qv6_KQ_MPg0u37P+o5gnnQWhbifOrY6g5FiWvnadmiw@mail.gmail.com>
Message-ID: <CAGb2v65Qv6_KQ_MPg0u37P+o5gnnQWhbifOrY6g5FiWvnadmiw@mail.gmail.com>
Subject: Re: [PATCH v7 6/7] arm64: dts: allwinner: h6: Add thermal sensor and
 thermal zones
To: Vasily Khoruzhick <anarsoul@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_203247_114005_57D840C7 
X-CRM114-Status: GOOD (  17.21  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>,
 =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>,
 "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 12:22 PM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
>
> From: Ondrej Jirman <megous@megous.com>
>
> There are two sensors, one for CPU, one for GPU.
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 33 ++++++++++++++++++++
>  1 file changed, 33 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> index 29824081b43b..cdcb1a36301a 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> @@ -11,6 +11,7 @@
>  #include <dt-bindings/reset/sun50i-h6-ccu.h>
>  #include <dt-bindings/reset/sun50i-h6-r-ccu.h>
>  #include <dt-bindings/reset/sun8i-de2.h>
> +#include <dt-bindings/thermal/thermal.h>
>
>  / {
>         interrupt-parent = <&gic>;
> @@ -233,6 +234,12 @@ dma: dma-controller@3002000 {
>                 sid: efuse@3006000 {
>                         compatible = "allwinner,sun50i-h6-sid";
>                         reg = <0x03006000 0x400>;
> +                       #address-cells = <1>;
> +                       #size-cells = <1>;
> +
> +                       ths_calibration: thermal-sensor-calibration@14 {
> +                               reg = <0x14 0x6>;

Nit: my preference is to use words as the smallest increment, so this
would have a size of 8 instead of 6. Same goes for the A64 dts.

AFAICT this doesn't impact the driver in any way.

ChenYu


> +                       };
>                 };
>
>                 watchdog: watchdog@30090a0 {
> @@ -856,5 +863,31 @@ r_i2c: i2c@7081400 {
>                         #address-cells = <1>;
>                         #size-cells = <0>;
>                 };
> +
> +               ths: thermal-sensor@5070400 {
> +                       compatible = "allwinner,sun50i-h6-ths";
> +                       reg = <0x05070400 0x100>;
> +                       interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
> +                       clocks = <&ccu CLK_BUS_THS>;
> +                       clock-names = "bus";
> +                       resets = <&ccu RST_BUS_THS>;
> +                       nvmem-cells = <&ths_calibration>;
> +                       nvmem-cell-names = "calibration";
> +                       #thermal-sensor-cells = <1>;
> +               };
> +       };
> +
> +       thermal-zones {
> +               cpu-thermal {
> +                       polling-delay-passive = <0>;
> +                       polling-delay = <0>;
> +                       thermal-sensors = <&ths 0>;
> +               };
> +
> +               gpu-thermal {
> +                       polling-delay-passive = <0>;
> +                       polling-delay = <0>;
> +                       thermal-sensors = <&ths 1>;
> +               };
>         };
>  };
> --
> 2.24.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
