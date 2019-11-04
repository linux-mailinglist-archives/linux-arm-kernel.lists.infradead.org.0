Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE80EEF77
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 23:21:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gW82ov2+OfV8w4NJw4V5hWFnRfSXaegSzIqx5Eo8xR0=; b=t4BHhwuWh5PgDH
	AzArw5K5ni/Sjt8ySpFQ3sWFGnnSfzHcL4ePmNzHUaccPDmjcbiiFwPSfQnxG2jYkGe7LbTDA0x16
	vN6JEpcIxEmHABRzmZOxFdd92a8rZa2gKPGJ3JXArkuu0CVjAO0QeN8d0eh2krDJBtxkSNvSuc2KO
	fysItRJCgFz4Q82sCBSw/sqQb8oLAAwPifCHm5oPwqsQfhl86oh+ubkHe764Iojj7QwxefSXDnXtb
	kXoKfCCJ8dZjSGLefaprG8ztUpXn5NIlinVwT20aZIQrsRqU9RXTgMQPE5FZXEnFgeTcvNLJP5o2q
	Z2YjtmXWkSPZFlvaVXKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRkjA-00039m-Kj; Mon, 04 Nov 2019 22:21:36 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRkj3-00039S-5Z
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 22:21:30 +0000
Received: by mail-oi1-f194.google.com with SMTP id k2so15639110oij.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 14:21:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=payHkh7CHBV8rLqS9vWrDjrgBgsMsbVwFLh/kgRZ9q0=;
 b=oTETC157DBU99ssvEUZ5K20zy+O+xCavKgoSTkrMbJzVfrv1Qsaj4FZiyj4MOyjVlR
 yNB39G1xt1nvKIveRItxAtcIerG0bbLnSVJE5hUNt8edUUEjaxyroOctTG9PpbbCucK9
 eoFKaNN1NDo8b0+NRlt+tHUIMTDZ5AEjOPmC/UhlNr1IYkHIWli0mT2DL1K8MN8LQI+K
 Zz1aN35vbSulnGY3oP9upit5USwd4ea0Ge7QpEgosMN4ImHWf2oaZiNt0SgaOwqgO/Px
 zwm697uQtsxwXt5BjUcXEiwtrv3d4iLjY+CR4bQdI+Y2jjohie7AJteILxVAARCUuGF6
 K2eQ==
X-Gm-Message-State: APjAAAVJXngEKTwHYQqlCHOiIVhrGcvOR9Fwx++e1IZroWVzuYlTHCwN
 NyA0BoAqoaJtJNi3/k6vjQ==
X-Google-Smtp-Source: APXvYqyG8gIUZ/z2lODppAZ1KjEbQKMvtcQ5xgWeI1/s36z27uzB90b7Q8IkrNuYd2lGq+4xgw7rxw==
X-Received: by 2002:aca:5691:: with SMTP id k139mr1169176oib.54.1572906087984; 
 Mon, 04 Nov 2019 14:21:27 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d6sm3494169oth.45.2019.11.04.14.21.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 14:21:27 -0800 (PST)
Date: Mon, 4 Nov 2019 16:21:26 -0600
From: Rob Herring <robh@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v3 3/6] dt-bindings: devfreq: Add bindings for imx ddr
 controller
Message-ID: <20191104222126.GB5218@bogus>
References: <cover.1572558427.git.leonard.crestez@nxp.com>
 <b9a87c69eb603622303add4f0c02dd4c1262462a.1572558427.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b9a87c69eb603622303add4f0c02dd4c1262462a.1572558427.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_142129_210511_A15F8ADA 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Artur =?utf-8?B?xZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-clk@vger.kernel.org,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 linux-imx@nxp.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>, linux-arm-kernel@lists.infradead.org,
 Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 11:50:24PM +0200, Leonard Crestez wrote:
> Add devicetree bindings for the i.MX DDR Controller on imx8m series
> chips. It supports dynamic frequency switching between multiple data
> rates and this is exposed to Linux via the devfreq subsystem.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  .../devicetree/bindings/devfreq/imx-ddrc.yaml | 60 +++++++++++++++++++

.../bindings/memory-controllers/

>  1 file changed, 60 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/devfreq/imx-ddrc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/devfreq/imx-ddrc.yaml b/Documentation/devicetree/bindings/devfreq/imx-ddrc.yaml
> new file mode 100644
> index 000000000000..31db204e6845
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/devfreq/imx-ddrc.yaml
> @@ -0,0 +1,60 @@
> +# SPDX-License-Identifier: GPL-2.0

For new bindings:

# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/devfreq/imx-devfreq.yaml#

Run 'make dt_binding_check'. This will fail as the filename doesn't 
match.

> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: i.MX DDR Controller

Perhaps i.MX8x as it's not all i.MX chips. And the filename too?

> +
> +maintainers:
> +  - Leonard Crestez <leonard.crestez@nxp.com>
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +        - fsl,imx8mn-ddrc
> +        - fsl,imx8mm-ddrc
> +        - fsl,imx8mq-ddrc
> +      - const: fsl,imx8m-ddrc
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 4
> +
> +  clock-names:
> +    items:
> +      - const: dram_core
> +      - const: dram_pll
> +      - const: dram_alt
> +      - const: dram_apb

Drop 'dram_'

> +
> +  operating-points-v2: true
> +
> +  devfreq-events:
> +    description: Phandle of PMU node
> +    $ref: "/schemas/types.yaml#/definitions/phandle"
> +
> +required:
> +  - reg
> +  - compatible
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mm-clock.h>
> +    ddrc: dram-controller@3d400000 {
> +        compatible = "fsl,imx8mm-ddrc", "fsl,imx8m-ddrc";
> +        reg = <0x3d400000 0x400000>;
> +        clock-names = "dram_core", "dram_pll", "dram_alt", "dram_apb";
> +        clocks = <&clk IMX8MM_CLK_DRAM_CORE>,
> +                 <&clk IMX8MM_DRAM_PLL>,
> +                 <&clk IMX8MM_CLK_DRAM_ALT>,
> +                 <&clk IMX8MM_CLK_DRAM_APB>;
> +        operating-points-v2 = <&ddrc_opp_table>;
> +    };
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
