Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9344F9CEA3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 13:54:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H8+RwLt9j7jT3wJ/p4B0GA3DcYTFWX1R3rOymg5U1hU=; b=DvMvTWxOP5Aeb6
	0TgM1E7y7SPaum+Vub8DJIlDNfAtmlY2HKN7R5fa6sr4FN1/XiOeZjYIDiUQR8itXoej6uUQqWxAv
	v0vzXW4Obj4ZjUST3yaltQq3qUhh6JeP1Z0k/aZm9dW3i/nO+GIetuUTR476ZEHA5NDnUei9cPXQW
	fYeLfc6uArxb5r5Hfd7qmDJGbq6OjW/THwr+dhaZUX43U49KdxEn+sjscHNnEIQ9PllJGRbXEGEz0
	pz/bkdU7mu4TY1EdiKvqtUI38b6jBBt5nFryvyfyNSwDi+gzPs7bGh8m3QpRWCzfLKuYRpWAEBZKU
	KHB2MOWdmpTSAveEOO9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2DZq-0008M5-Qt; Mon, 26 Aug 2019 11:54:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2DZj-0008La-MV
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 11:54:21 +0000
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2C44721872
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 11:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566820459;
 bh=6d8Pf2giZ8gFsCA6Mlwav/1B6nTN9Sah3mq5E5Nvjo4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=QvJBQ55ojSqqsTPUhO00j6OJJz5EaQoXkuS9MHOOzMa5fzOJNWIYViaNorEhp/Sut
 GoRpe9hoMwItkuwDeb0tTTdr5Ap5zStj9QwOOTRxEHy74nIkVG4gnYcqC4sAIs0t+p
 +8LglhXXFueLMBm+Hf7Fbae0bnj4hvQ9tRJJui9I=
Received: by mail-qk1-f173.google.com with SMTP id w18so13782722qki.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 04:54:19 -0700 (PDT)
X-Gm-Message-State: APjAAAUQJbTPgtr3dzbtKz92qgIF9zhF6dhRbXOYFYtstbwxzu1htB8+
 tzVr+AbezHKAQUWvGihUtQJa+vTns5DIs0XsJA==
X-Google-Smtp-Source: APXvYqwefTr2/bNUCQOk9axEdQjco6LCiAhg6K2odj3PCAzUTZW7osr4FjP132HUalSUByM7PTRXcJ6wplhPQhlnSiQ=
X-Received: by 2002:a37:a010:: with SMTP id j16mr16163354qke.152.1566820458257; 
 Mon, 26 Aug 2019 04:54:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190823145356.6341-1-krzk@kernel.org>
 <20190823145356.6341-5-krzk@kernel.org>
In-Reply-To: <20190823145356.6341-5-krzk@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 26 Aug 2019 06:54:02 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJybT41cEqiTriLMywUQj1BtAG_9muJ4=84OkF23y53CA@mail.gmail.com>
Message-ID: <CAL_JsqJybT41cEqiTriLMywUQj1BtAG_9muJ4=84OkF23y53CA@mail.gmail.com>
Subject: Re: [RFC 5/9] dt-bindings: arm: samsung: Convert Exynos PMU bindings
 to json-schema
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_045419_781444_52EFA8CA 
X-CRM114-Status: GOOD (  21.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Arnd Bergmann <arnd@arndb.de>,
 devicetree@vger.kernel.org,
 "open list:IIO SUBSYSTEM AND DRIVERS" <linux-iio@vger.kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tomasz.figa@gmail.com>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Olof Johansson <olof@lixom.net>,
 "open list:REAL TIME CLOCK \(RTC\) SUBSYSTEM" <linux-rtc@vger.kernel.org>,
 notify@kernel.org, Jonathan Cameron <jic23@kernel.org>,
 =?UTF-8?Q?Pawe=C5=82_Chmiel?= <pawel.mikolaj.chmiel@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 9:54 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> Convert Samsung Exynos Power Management Unit (PMU) bindings to DT schema
> format using json-schema.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  .../devicetree/bindings/arm/samsung/pmu.txt   | 72 --------------
>  .../devicetree/bindings/arm/samsung/pmu.yaml  | 93 +++++++++++++++++++
>  2 files changed, 93 insertions(+), 72 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/samsung/pmu.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/samsung/pmu.yaml


> diff --git a/Documentation/devicetree/bindings/arm/samsung/pmu.yaml b/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
> new file mode 100644
> index 000000000000..818c6f3488ef
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
> @@ -0,0 +1,93 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/samsung/pmu.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Samsung Exynos SoC series Power Management Unit (PMU)
> +
> +maintainers:
> +  - Krzysztof Kozlowski <krzk@kernel.org>
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - samsung,exynos3250-pmu
> +          - samsung,exynos4210-pmu
> +          - samsung,exynos4412-pmu
> +          - samsung,exynos5250-pmu
> +          - samsung,exynos5260-pmu
> +          - samsung,exynos5410-pmu
> +          - samsung,exynos5420-pmu
> +          - samsung,exynos5433-pmu
> +          - samsung,exynos7-pmu
> +      - const: syscon
> +
> +  reg:
> +    maxItems: 1
> +
> +  '#clock-cells':
> +    const: 1
> +
> +  clock-names:
> +    description:
> +      list of clock names for particular CLKOUT mux inputs
> +    # TODO: what is the maximum number of elements (mux inputs)?
> +    minItems: 1
> +    maxItems: 32
> +    items:
> +      - enum:

This isn't correct as you are only defining possible names for the
first item. Drop the '-' (making items a schema instead of a list) and
then it applies to all. However, doing that will cause a meta-schema
error which I need to fix to allow. Or if there's a small set of
possibilities of number of inputs, you can list them under a 'oneOf'
list.

> +          - clkout0
> +          - clkout1
> +          - clkout2
> +          - clkout3
> +          - clkout4
> +          - clkout5
> +          - clkout6
> +          - clkout7
> +          - clkout8
> +          - clkout9
> +          - clkout10
> +          - clkout11
> +          - clkout12
> +          - clkout13
> +          - clkout14
> +          - clkout15
> +          - clkout16
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 32
> +
> +  interrupt-controller:
> +    description:
> +      Some PMUs are capable of behaving as an interrupt controller (mostly
> +      to wake up a suspended PMU).
> +
> +  '#interrupt-cells':
> +    # TODO: must be identical to the that of the parent interrupt controller.

There's not really a way to express that. Just state that in the
description if you want.

> +    const: 3
> +
> +  # TODO: Mark interrupt-controller and #interrupt-cells as required, if one is present

No need, the core schemas handle that dependency. It would be good to
define for which compatibles the properties are required. You can do
this with if/then schema. There's several examples in the tree.

> +  # TODO: nodes defining the restart and poweroff syscon children
> +
> +required:
> +  - compatible
> +  - reg
> +  - '#clock-cells'
> +  - clock-names
> +  - clocks
> +
> +examples:
> +  - |
> +    pmu_system_controller: system-controller@10040000 {
> +      compatible = "samsung,exynos5250-pmu", "syscon";
> +      reg = <0x10040000 0x5000>;
> +      interrupt-controller;
> +      #interrupt-cells = <3>;
> +       interrupt-parent = <&gic>;
> +      #clock-cells = <1>;
> +      clock-names = "clkout16";
> +      clocks = <&clock 0>; // CLK_FIN_PLL
> +    };
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
