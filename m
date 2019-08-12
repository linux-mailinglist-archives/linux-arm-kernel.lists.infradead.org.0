Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BEF68A77A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 21:47:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qGT4crlnsEy59rR0C/vBhYAIPXpVwV05G5VUXVtnjSI=; b=gXWrCvt6VI+IvU
	fupoSHi1w4ZRwcH5LRqAiOXySKDeQN6H11aFHZyUatoNxJYwJ1T9EF1sYwSKZp6bEYLBo6v8u2yfP
	CZw9vjddtVc/BHlpv55B2O7Xf/JXamnoewmb2pLb4KORhOgGNTBhPxIm71dQQ9sckiYtxyW/yoWE1
	ml5DJjNnWX5UbXHOUe91X7jJ9Nf5mN19cqFMr4ERmCnkBare7mJ6P6nB8nvToOFR3iy/e8FhE6N5N
	UTWn8zTKQMbA9CDmtXFSOWNNaLawsGw8L6aZj7TyA3cA8Qq1KCFD4awKp2TZeRDpwWb9E2t+GzlNg
	2N52mRGQrhR/hX8gJ0gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxGHk-00010q-9L; Mon, 12 Aug 2019 19:47:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxGHY-00010I-Bw
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 19:47:05 +0000
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C29E2085A
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 19:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565639223;
 bh=gbsmrMPddSxxadzx4LbWD73OWFywYXXRX4TrDQhuD34=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=qeaq8oDKtFymRNc+PylRKzYspbegh+5NF8+13536zkBIQX00uF/TGUGv7ERys+Wgx
 OZaZEocFaDzwcR3N/3q6nhsrkdHhWU6CoYRQC1D7ws8QhEd6H0ONmK9pnLGfMsQMD3
 u48aCx7G7GSfaaZ1DCbDuxjMk2OzzQg4t2Jd5HrM=
Received: by mail-qt1-f170.google.com with SMTP id q4so6900703qtp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 12:47:03 -0700 (PDT)
X-Gm-Message-State: APjAAAU+pDfiv6/6/zB88xXFrtqjSbnJlvxj6mJ0ZiiNqv5g+JtDQp8O
 gOqOVgd+NE5pJ2NOQrGfY5epCEcn4bOBK5ClZQ==
X-Google-Smtp-Source: APXvYqx9uWEvSTWXRvuMQbtv/sqVk/coICqllSDh3WmkM5dZr4ZJb/kPYXz6IcU9nLuN6tc97SrlM/c6aW08otez3Hc=
X-Received: by 2002:ad4:4050:: with SMTP id r16mr6580061qvp.200.1565639222506; 
 Mon, 12 Aug 2019 12:47:02 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1565633880.git.leonard.crestez@nxp.com>
 <97b0bff95ddb85b06ef3d2f8079faa36562a956d.1565633880.git.leonard.crestez@nxp.com>
In-Reply-To: <97b0bff95ddb85b06ef3d2f8079faa36562a956d.1565633880.git.leonard.crestez@nxp.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 12 Aug 2019 13:46:50 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJWpQN2oTm8Q2_Gzd0GJ+YZoc9j-zh-U1s4eGhMxDEmEA@mail.gmail.com>
Message-ID: <CAL_JsqJWpQN2oTm8Q2_Gzd0GJ+YZoc9j-zh-U1s4eGhMxDEmEA@mail.gmail.com>
Subject: Re: [PATCH 2/7] dt-bindings: devfreq: Add bindings for generic imx
 buses
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_124704_455322_64DE422E 
X-CRM114-Status: GOOD (  21.45  )
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

On Mon, Aug 12, 2019 at 12:49 PM Leonard Crestez
<leonard.crestez@nxp.com> wrote:
>
> Add initial dt bindings for the interconnects inside i.MX chips.
> Multiple external IPs are involved but SOC integration means the
> software controllable interfaces are very similar.
>
> This is initially only for imx8mm but add an "fsl,imx8m-nic" fallback
> similar to exynos-bus.
>
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  .../devicetree/bindings/devfreq/imx.yaml      | 50 +++++++++++++++++++
>  1 file changed, 50 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/devfreq/imx.yaml
>
> diff --git a/Documentation/devicetree/bindings/devfreq/imx.yaml b/Documentation/devicetree/bindings/devfreq/imx.yaml
> new file mode 100644
> index 000000000000..0e2ee3a5205e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/devfreq/imx.yaml
> @@ -0,0 +1,50 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/devfreq/imx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Generic i.MX bus frequency device
> +
> +maintainers:
> +  - Leonard Crestez <leonard.crestez@nxp.com>
> +
> +description: |
> +  The i.MX SoC family has multiple buses for which clock frequency (and sometimes
> +  voltage) can be adjusted.
> +
> +  Some of those buses expose register areas mentioned in the memory maps as GPV
> +  ("Global Programmers View") but not all. Access to this area might be denied for
> +  normal world.
> +
> +  The buses are based on externally licensed IPs such as ARM NIC-301 and Arteris
> +  FlexNOC but DT bindings are specific to the integration of these bus
> +  interconnect IPs into imx SOCs.

No need to use the interconnect binding?

> +
> +properties:
> +  compatible:
> +    contains:
> +      enum:
> +       - fsl,imx8m-noc
> +       - fsl,imx8m-nic

This means any combination of these 2 strings is valid. I suspect you
want a given node to have only one of them, so drop 'contains'

> +
> +  reg:
> +    maxItems: 1
> +    description: GPV area
> +
> +  clocks:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - clocks

reg?

> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mm-clock.h>
> +    noc: noc@32700000 {
> +            compatible = "fsl,imx8mm-noc", "fsl,imx8m-noc";

Doesn't match the schema. (Well, it does with 'contains', but
fsl,imx8mm-noc is not documented.)

> +            reg = <0x32700000 0x100000>;
> +            clocks = <&clk IMX8MM_CLK_NOC>;
> +            operating-points-v2 = <&noc_opp_table>;

Not documented.

> +    };
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
