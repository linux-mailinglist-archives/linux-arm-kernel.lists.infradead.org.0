Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 326A1EF0C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 23:50:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J8RcvCZxYMBbNiXhgtfy5inF8j8ePYiKDRQXk6zOz88=; b=iw0V4cfS2z1LSl
	ydkO1JPPg+Gtjc8lseRvBPC/OeEyN0ldBNmtKBNycIsL65VoXTkh3XDL6My+JCPnkX+hOFsnTdwA+
	Etn9+uJWSV0TGbVX/QC5axb6yCOjEF4NFHpY70K8vMiW6/fhHXNbIfDYoiUenM0PetgtPW0rofx9L
	zbI4nb08FyAIey4lvP1Aymj5iIxNEKVtPZaJ2p7nnUFtPawJaLjrIvLcV23JCpckX34WGpuUzCR1c
	dYi39tYZr7YLvI/jXbw2lZXSJ75wbBR9qcB+w+hHoJ6dnU3gXMXzs/ZtW8l4m8CH3yW3c0fCnaM+h
	j+9JvRU5C5y/Gz6R6FCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRlAb-00049W-MJ; Mon, 04 Nov 2019 22:49:57 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRlAU-000493-Co
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 22:49:52 +0000
Received: by mail-oi1-f196.google.com with SMTP id j7so15751716oib.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 14:49:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1s5GDpJ2vznfw9Ye+nOltlxe2jd1EibRhiWFAsltDOo=;
 b=ighYNGvcZOYm99Win3QjhnyVZ3s1dt1bksOKpKdcgN3AjPfr05VPRLAtgLtr7PPSjS
 U+hERZ6Mv2QRpJo5rH8CQweIxjNoyX6o9ULibem5dfKsF/c9JkJd212yHPV5skQa/OzJ
 so4Tr2G1wfS2ChE3monHsOoDemYK1TN5VDEmiNh1zc3ZlJ5x9P7jdrk64QZktDSE5iHn
 WxXHq3PDZl/Y1tRNVfWexLz7mjprCA9S92v8/jZCkdTxl7y8qNjqjWKWi7yySyUAGhzE
 sajNqYsjii+wcSKy+sKHXP5GBAIaj40K22bNnmC3bYFihOINllvWU7x44JiB0V1wCYfp
 NqbQ==
X-Gm-Message-State: APjAAAWN+BDZFBk4hR1vYBlNjUnJWo3ojeDdNHoqR5F8pfHGYSd1tY+a
 IEPBK/9/i8XpKZHmArkXDg==
X-Google-Smtp-Source: APXvYqwG00PUvlv7RmfQfRiqNp9ITUkLiJAd1yqfHFQBbyuGVd95+23AWlzongxB/8/UtaXQTn3VGA==
X-Received: by 2002:aca:da06:: with SMTP id r6mr1204237oig.82.1572907788770;
 Mon, 04 Nov 2019 14:49:48 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k24sm5033064oic.29.2019.11.04.14.49.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 14:49:47 -0800 (PST)
Date: Mon, 4 Nov 2019 16:49:46 -0600
From: Rob Herring <robh@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH RFC v5 01/10] dt-bindings: devfreq: Add bindings for
 generic imx buses
Message-ID: <20191104224946.GB17515@bogus>
References: <cover.1572562150.git.leonard.crestez@nxp.com>
 <0e4118456f8eb67e1ba8a7c23127fc3def58547b.1572562150.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0e4118456f8eb67e1ba8a7c23127fc3def58547b.1572562150.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_144950_435687_72113EEE 
X-CRM114-Status: GOOD (  23.58  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
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
 Jacky Bai <ping.bai@nxp.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Matthias Kaehlcke <mka@chromium.org>,
 linux-imx@nxp.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>, linux-arm-kernel@lists.infradead.org,
 Dong Aisheng <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>,
 Alexandre Bailon <abailon@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 12:52:00AM +0200, Leonard Crestez wrote:
> Add initial dt bindings for the interconnects inside i.MX chips.
> Multiple external IPs are involved but SOC integration means the
> software controllable interfaces are very similar.
> 
> Single node also acts as interconnect provider if #interconnect-cells is
> present.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Acked-by: MyungJoo Ham <myungjoo.ham@samsung.com>
> ---
>  .../devicetree/bindings/devfreq/imx.yaml      | 83 +++++++++++++++++++

bindings/interconnect/

>  1 file changed, 83 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/devfreq/imx.yaml
> 
> diff --git a/Documentation/devicetree/bindings/devfreq/imx.yaml b/Documentation/devicetree/bindings/devfreq/imx.yaml
> new file mode 100644
> index 000000000000..bfc825407764
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/devfreq/imx.yaml
> @@ -0,0 +1,83 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/devfreq/imx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Generic i.MX bus frequency device

i.MX8 specific?

> +
> +maintainers:
> +  - Leonard Crestez <leonard.crestez@nxp.com>
> +
> +description: |
> +  The i.MX SoC family has multiple buses for which clock frequency (and
> +  sometimes voltage) can be adjusted.
> +
> +  Some of those buses expose register areas mentioned in the memory maps as GPV
> +  ("Global Programmers View") but not all. Access to this area might be denied
> +  for normal (non-secure) world.
> +
> +  The buses are based on externally licensed IPs such as ARM NIC-301 and
> +  Arteris FlexNOC but DT bindings are specific to the integration of these bus
> +  interconnect IPs into imx SOCs.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +        - enum:
> +          - fsl,imx8mn-nic
> +          - fsl,imx8mm-nic
> +          - fsl,imx8mq-nic
> +        - const: fsl,imx8m-nic
> +      - items:
> +        - enum:
> +          - fsl,imx8mn-noc
> +          - fsl,imx8mm-noc
> +          - fsl,imx8mq-noc
> +        - const: fsl,imx8m-noc
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  operating-points-v2: true
> +
> +  devfreq:
> +    description: |
> +      Phandle to another devfreq device to match OPPs with by using the
> +      passive governor.
> +    $ref: "/schemas/types.yaml#/definitions/phandle"
> +
> +  '#interconnect-cells':
> +    description: |
> +      If specified then also act as an interconnect provider. Should only be
> +      set once per soc on main noc.
> +    const: 1
> +
> +  interconnect-node-id:

Looks like common property, but it's not...

Generally, we don't do indexes or instance ids. So it needs a better 
explanation or drop this. The driver side looks like an odd marriage 
between interconnect and devfreq drivers that needs better integration, 
but I'm not all that familar with either.

> +    description: |
> +      i.MX chips have multiple scalable buses based on the same IP, this is
> +      used to distinguish between. Uses same identifier namespace as consumer

It's not names, so number space? Just guessing because there's no type 
nor example.

> +      "interconnects" property, for example one of the values in
> +      "include/dt-bindings/interconnect/imx8mm.h"
> +
> +    const: 1
> +
> +required:
> +  - compatible
> +  - clocks
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mm-clock.h>
> +    noc: noc@32700000 {
> +            compatible = "fsl,imx8mm-noc", "fsl,imx8m-noc";
> +            reg = <0x32700000 0x100000>;
> +            clocks = <&clk IMX8MM_CLK_NOC>;
> +            operating-points-v2 = <&noc_opp_table>;
> +    };
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
