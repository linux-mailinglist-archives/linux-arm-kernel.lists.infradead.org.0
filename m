Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 707718A790
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 21:52:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4F9Xyw3D7pTryFyOp0G53q63sCOMuL6DjooLg1L5Pdk=; b=e0zItIHM8s8JXb
	yHlyxO9tqTxXXtAtcjigZ2pmJ8VeFYAX3Sq4ONfY9g+SzzVHN4S3Uc5rjtGTRtlT7Btf9JYyM85hX
	rmb4AhLktnzY5sAkJKE6LHAv/nzmvDgZ3VoQtam5hbjEHq2xzLjEM45b9ZJweQq/DiLMTLv4SDkSM
	TFRv/c08GvPCpUdtgmNsX3FCI5E/SLDG8AC/IVkA6dI9LTA+OgRCm+Ebo874oMqbjAQUlU3rgA2xD
	aygWu4XwuVAU3/t12rI39IVUl7KyNlQhSGiY1N8xxH5ONxT5y1MH8ZIQHxPWKY1K/31cA+CIOWLKT
	CXl1Yi1ud1nsWtbrmWqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxGMy-0002gC-Mt; Mon, 12 Aug 2019 19:52:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxGMU-0002fh-U6
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 19:52:12 +0000
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
 [209.85.222.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6D6CD2075B
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 19:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565639530;
 bh=9uCqcZ7pE/p3iqj1BkvfAc1CGK2aQmF1BjqLAbmYehU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=fI7mxdeUfP7enoyrkJfamrxaSYCetiUpXD/K6TL5jtbawK9oqvwBGKea29PJwcXdy
 mCMN+twO+4ip1BHBbmFpBxxGPT3dPJ83XltPbqS5WeAgvOqxY5KX35eOcay26pLFFQ
 CG0fKil0uRkV+tb9VnHR7Nme9fIZ6SoHAFLA3RQQ=
Received: by mail-qk1-f177.google.com with SMTP id 125so4870300qkl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 12:52:10 -0700 (PDT)
X-Gm-Message-State: APjAAAWOy1RZrNqiAScR6UlEoO2Zjt0D57Ydzsd9Tt74Uq5KEJ0I5nuw
 bXjTlCuQjFkP4Sx/ZJJ0PgV/OXz6sF+Ol3IUbw==
X-Google-Smtp-Source: APXvYqwwLQrQl/3qr9l9hCi32QT/QmiDSaWwPfSaBPzEWwjlgQK/Oh9Wo1UWaCQ3HzMu9T4YG8bY9Q3DTx5u+6Olp/Q=
X-Received: by 2002:a37:a44a:: with SMTP id n71mr30534758qke.393.1565639529456; 
 Mon, 12 Aug 2019 12:52:09 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1565633880.git.leonard.crestez@nxp.com>
 <4cbddd75652c63aab19866c93faa0b784b56d53f.1565633880.git.leonard.crestez@nxp.com>
In-Reply-To: <4cbddd75652c63aab19866c93faa0b784b56d53f.1565633880.git.leonard.crestez@nxp.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 12 Aug 2019 13:51:57 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+5zp1nW=sNtU_+wdUO9KJ4ABWjdX=R9DHjBsgygTxV6g@mail.gmail.com>
Message-ID: <CAL_Jsq+5zp1nW=sNtU_+wdUO9KJ4ABWjdX=R9DHjBsgygTxV6g@mail.gmail.com>
Subject: Re: [PATCH 4/7] dt-bindings: devfreq: Add bindings for imx ddr
 controller
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_125211_272320_B6938BE5 
X-CRM114-Status: GOOD (  18.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Alexandre Bailon <abailon@baylibre.com>, Will Deacon <will@kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, NXP Linux Team <linux-imx@nxp.com>,
 devicetree@vger.kernel.org, "open list:THERMAL" <linux-pm@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Dong Aisheng <aisheng.dong@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 12:50 PM Leonard Crestez
<leonard.crestez@nxp.com> wrote:
>
> Add devicetree bindings for the i.MX DDR Controller on imx8m series
> chips. It supports dynamic frequency switching between multiple data
> rates and this is exposed to Linux via the devfreq subsystem.
>
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  .../devicetree/bindings/devfreq/imx-ddrc.yaml | 53 +++++++++++++++++++
>  1 file changed, 53 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/devfreq/imx-ddrc.yaml
>
> diff --git a/Documentation/devicetree/bindings/devfreq/imx-ddrc.yaml b/Documentation/devicetree/bindings/devfreq/imx-ddrc.yaml
> new file mode 100644
> index 000000000000..fa20280a682f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/devfreq/imx-ddrc.yaml
> @@ -0,0 +1,53 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/devfreq/imx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: i.MX DDR Controller
> +
> +maintainers:
> +  - Leonard Crestez <leonard.crestez@nxp.com>
> +
> +properties:
> +  compatible:
> +    contains:

Don't use 'contains'.

> +      enum:
> +       - fsl,imx8m-ddrc
> +
> +  reg:
> +    maxItems: 1
> +    description: DDR Controller registers

Don't really need a description for a standard property with a single item.

> +
> +  clocks:
> +    minItems: 5

Just maxItems is sufficient unless there's a variable number of items.

> +    maxItems: 5
> +
> +  clock-names:
> +    items:
> +      - const: dram_core
> +      - const: dram_pll
> +      - const: dram_alt_root
> +      - const: dram_alt
> +      - const: dram_apb
> +
> +required:
> +  - reg
> +  - compatible
> +  - clocks
> +  - clock-names

You should add an 'additionalProperties: false' here.

> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mm-clock.h>
> +    ddrc: dram-controller@3d400000 {
> +        compatible = "fsl,imx8mm-ddrc", "fsl,imx8m-ddrc";
> +        reg = <0x3d400000 0x400000>;
> +        clock-names = "dram_core", "dram_pll", "dram_alt_root", "dram_alt", "dram_apb";
> +        clocks = <&clk IMX8MM_CLK_DRAM_CORE>,
> +                 <&clk IMX8MM_DRAM_PLL>,
> +                 <&clk IMX8MM_CLK_DRAM_ALT_ROOT>,
> +                 <&clk IMX8MM_CLK_DRAM_ALT>,
> +                 <&clk IMX8MM_CLK_DRAM_APB>;
> +        operating-points-v2 = <&ddrc_opp_table>;

Not documented. You can assume a common property has a type definition
already (this one doesn't yet), so just this is enough:

operating-points-v2: true

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
