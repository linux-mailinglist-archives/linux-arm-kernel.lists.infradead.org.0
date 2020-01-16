Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8B813FAD8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 21:48:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JPXmBzy6BcLNnhSqr6ZYAL8KtN4BPkJ6DkcBx/Qmj8U=; b=MVN56CGWJnvR2j
	vWEpeGW0zj1nxvOfp9wVUYPKI8gMAdkCpV9iwsNJd7xQ8j5ttMF/oWrtNso//ShL0BWSFOp5zXPtT
	1UExlcfvn6Ccdp5bivZNejBAJAWaI+lrQnLCYk2dCGwDLaLB+V3+fM1NIe3TXo+lahCOACyanL/gN
	kMhD473U7Bo9bhiaELy9G6VKPKMNTZntSm+g3hPGqLmtaRUhFpTHbAZyzDdtRNfC4qFvJBmSw+ohI
	j3uDf69aIl4M/G/ywYpndjRtpWWGgmuTgOlm+kGpY0iefILPgotEDtEmohJMdz6V1qvUgWZhc6d6l
	NE12K5eSwnGj2NZBeOyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isC4D-00059j-1c; Thu, 16 Jan 2020 20:48:37 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isC3w-00056M-EH; Thu, 16 Jan 2020 20:48:24 +0000
Received: by mail-ot1-f68.google.com with SMTP id r9so20660568otp.13;
 Thu, 16 Jan 2020 12:48:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BKpDxkPQvhaYwq0BM0j0+4RX+8L/FqW/tD6hcJ/WZ8Y=;
 b=EvKO92ttRNE5WGDDoRBPKlk1u1wqKfEEsKLqAQ9n4iiUR9B3717+YxfDcJZnsPTsQv
 BpRxUBA+kkPmiTgg4U8NgPH3Wja8p7W6iJUYu+PzZyMdkWRGtUxq75RyOSYk4fVY8LZ2
 2+V0jUhwfaj53wj/LSyokolo2IyDmAlTEWCL+V6AAeaAxL/DG5MvQb4K6yAXvY85kq7h
 iDpGQCfPOsHIf2sXH41CZQO7MtrzweINH9YIB5w1FVFt+mqp2OY8GVipzppZskX8bmid
 Gqn+YskYWXWjuni6y1YICoEvHZu/KQbhn80P91qbhWbxgZ74vww+oqu7piwmsekO3rGZ
 6ZPQ==
X-Gm-Message-State: APjAAAVUrf0bfuDXq+UK6195EoKAStlzGuMtGPOhxt0yfDWZjKGvNq6F
 K6crfQ7hhZZ04qsl1fJj6g==
X-Google-Smtp-Source: APXvYqwElUK+YujhdGIIl9hNxkKGMyK9dGJUHl9hNmGbi/q+K5ZFvapHlfm9AC50/8wXvJNavkLnjQ==
X-Received: by 2002:a9d:6e03:: with SMTP id e3mr3614892otr.46.1579207699487;
 Thu, 16 Jan 2020 12:48:19 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a17sm8039507otp.66.2020.01.16.12.48.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 12:48:18 -0800 (PST)
Received: (nullmailer pid 14099 invoked by uid 1000);
 Thu, 16 Jan 2020 20:48:17 -0000
Date: Thu, 16 Jan 2020 14:48:17 -0600
From: Rob Herring <robh@kernel.org>
To: Jian Hu <jian.hu@amlogic.com>
Subject: Re: [PATCH v6 1/5] dt-bindings: clock: meson: add A1 PLL clock
 controller bindings
Message-ID: <20200116204817.GA9529@bogus>
References: <20200116080440.118679-1-jian.hu@amlogic.com>
 <20200116080440.118679-2-jian.hu@amlogic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200116080440.118679-2-jian.hu@amlogic.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_124820_477706_AD394E72 
X-CRM114-Status: GOOD (  15.78  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Chandle Zou <chandle.zou@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 04:04:36PM +0800, Jian Hu wrote:
> Add the documentation to support Amlogic A1 PLL clock driver,
> and add A1 PLL clock controller bindings.
> 
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
> ---
>  .../bindings/clock/amlogic,a1-pll-clkc.yaml   | 54 +++++++++++++++++++
>  include/dt-bindings/clock/a1-pll-clkc.h       | 16 ++++++
>  2 files changed, 70 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/amlogic,a1-pll-clkc.yaml
>  create mode 100644 include/dt-bindings/clock/a1-pll-clkc.h
> 
> diff --git a/Documentation/devicetree/bindings/clock/amlogic,a1-pll-clkc.yaml b/Documentation/devicetree/bindings/clock/amlogic,a1-pll-clkc.yaml
> new file mode 100644
> index 000000000000..071240b65e70
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/amlogic,a1-pll-clkc.yaml
> @@ -0,0 +1,54 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/amlogic,a1-pll-clkc.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Amlogic Meson A/C serials PLL Clock Control Unit Device Tree Bindings
> +
> +maintainers:
> +  - Neil Armstrong <narmstrong@baylibre.com>
> +  - Jerome Brunet <jbrunet@baylibre.com>
> +  - Jian Hu <jian.hu@jian.hu.com>
> +
> +properties:
> +  compatible:
> +    const: amlogic,a1-pll-clkc
> +
> +  "#clock-cells":
> +    const: 1
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 2

Not necessary, so drop. Implied by the length of 'items'.

> +    items:
> +     - description: input xtal_fixpll
> +     - description: input xtal_hifipll
> +
> +  clock-names:
> +    maxItems: 2

Same here.

> +    items:
> +      - const: xtal_fixpll
> +      - const: xtal_hifipll
> +
> +required:
> +  - compatible
> +  - "#clock-cells"
> +  - reg
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    clkc_pll: pll-clock-controller@7c80 {
> +                compatible = "amlogic,a1-pll-clkc";
> +                reg = <0 0x7c80 0 0x18c>;
> +                #clock-cells = <1>;
> +                clocks = <&clkc_periphs CLKID_XTAL_FIXPLL>,
> +                         <&clkc_periphs CLKID_XTAL_HIFIPLL>;

The example will fail to build because these aren't defined.

Run 'make dt_binding_check'.

> +                clock-names = "xtal_fixpll", "xtal_hifipll";
> +    };
> diff --git a/include/dt-bindings/clock/a1-pll-clkc.h b/include/dt-bindings/clock/a1-pll-clkc.h
> new file mode 100644
> index 000000000000..58eae237e503
> --- /dev/null
> +++ b/include/dt-bindings/clock/a1-pll-clkc.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
> +/*
> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
> + */
> +
> +#ifndef __A1_PLL_CLKC_H
> +#define __A1_PLL_CLKC_H
> +
> +#define CLKID_FIXED_PLL				1
> +#define CLKID_FCLK_DIV2				6
> +#define CLKID_FCLK_DIV3				7
> +#define CLKID_FCLK_DIV5				8
> +#define CLKID_FCLK_DIV7				9
> +#define CLKID_HIFI_PLL				10
> +
> +#endif /* __A1_PLL_CLKC_H */
> -- 
> 2.24.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
