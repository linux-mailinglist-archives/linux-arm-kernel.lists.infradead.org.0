Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B396E1BC502
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 18:21:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WOOpVWSL1bJGsLHBA9rx/KfdU4HOm8ilNQ1sd6t/iGQ=; b=EMQ3nMVk7/iJ1P
	1gEv96yUxCw/HCsZwWsjHzS9s2b6SAnhPjGTdSwwBSAn8MU3YW+73s/9woeo4psXP8Qpz9AAiVZS7
	2NJYLwVbmXwbHOxpUQzUDULIvVLzjwzZyKxRlw3sEYg+9o55Z0tgI6tPIVPBZdQKYyQe15QStoQyV
	1HTVQWYF/L7IEDnj1CSJ6Co63wIFKmv+96aPxg9QSYe3WXVOHFrnFgswTJF0s5156p60cjLDumDfx
	pzmQN+WjKlD6O0q4B3AOXW1pG+gNNAZzGFE9hSBbBuDjoOZn9QfA55nx/2cSszvFNxJsQXgOI7pdC
	m2mOziEel/Mr1pTwKc3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTSyp-0005I6-EO; Tue, 28 Apr 2020 16:21:07 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTSyg-0005Gw-Dp
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 16:20:59 +0000
Received: by mail-ot1-f65.google.com with SMTP id g14so33555402otg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 09:20:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JMWn8pXLk5/8kiVuu/q953brTdcIK/PY1BQH6BDELfQ=;
 b=d7RpKSztxK5tzns5pc2Le2qxUVAz0t6tp42aYS09hY7J5m07D5rA9Fh6vGIiYOshhv
 ccvG8/s2LW4fL8YFHgOuHdJL/T0/XMjvenpqdUvrjYp8Zafs04VPoxkDs8MgxpMaHeqr
 8kmBQvfq3SWpZ5tgT/Veg+4362I9zBBhioWGrm3Cq1iSIr75P2e7t/sCIG3X74kubcpG
 uXksl1NEX6Vg6eEb0hUCoL5ndEeSRbh8sl9bEn7+UiteVtLrqNsiB4h184Ov10OrxN1E
 TwAwxZy5LD88qR2lVIwYE/KdwU6as+Mkm+83xvlvFL4hjx6PdgW3THAfqjsI4Aw9gYcA
 niQw==
X-Gm-Message-State: AGi0PuYgPsW8pNEB1e6E9ugE/jHbgiYk3Hlz8y5wa0kRYAq2p9rArSWw
 weFjdoUvrQylY5oHAqcXEg==
X-Google-Smtp-Source: APiQypJy0uIwGwXRPYx/W8t8j3YChbO+ZkOIvCk2Wk0UGCLxk4GNBBlbC22NGmfDdkMnCXWLDnPaYw==
X-Received: by 2002:aca:f482:: with SMTP id s124mr3552378oih.128.1588090857546; 
 Tue, 28 Apr 2020 09:20:57 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l19sm4939433otp.16.2020.04.28.09.20.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 09:20:56 -0700 (PDT)
Received: (nullmailer pid 337 invoked by uid 1000);
 Tue, 28 Apr 2020 16:20:55 -0000
Date: Tue, 28 Apr 2020 11:20:55 -0500
From: Rob Herring <robh@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH] dt-bindings: thermal: Convert UniPhier thermal monitor
 to json-schema
Message-ID: <20200428162055.GA27628@bogus>
References: <1587013935-21760-1-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587013935-21760-1-git-send-email-hayashi.kunihiko@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_092058_465439_43EE0F1C 
X-CRM114-Status: GOOD (  16.03  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Amit Kucheria <amit.kucheria@verdurent.com>,
 linux-pm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Zhang Rui <rui.zhang@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 02:12:15PM +0900, Kunihiko Hayashi wrote:
> Convert the UniPhier thermal monitor binding to DT schema format.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../thermal/socionext,uniphier-thermal.yaml        | 57 +++++++++++++++++++
>  .../bindings/thermal/uniphier-thermal.txt          | 65 ----------------------
>  2 files changed, 57 insertions(+), 65 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/thermal/socionext,uniphier-thermal.yaml
>  delete mode 100644 Documentation/devicetree/bindings/thermal/uniphier-thermal.txt
> 
> diff --git a/Documentation/devicetree/bindings/thermal/socionext,uniphier-thermal.yaml b/Documentation/devicetree/bindings/thermal/socionext,uniphier-thermal.yaml
> new file mode 100644
> index 0000000..bdddc5b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/socionext,uniphier-thermal.yaml
> @@ -0,0 +1,57 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/thermal/socionext,uniphier-thermal.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Socionext UniPhier thermal monitor
> +
> +description: |
> +  This describes the devicetree bindings for thermal monitor supported by
> +  PVT(Process, Voltage and Temperature) monitoring unit implemented on
> +  Socionext UniPhier SoCs.
> +
> +maintainers:
> +  - Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - socionext,uniphier-pxs2-thermal
> +      - socionext,uniphier-ld20-thermal
> +      - socionext,uniphier-pxs3-thermal
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  "#thermal-sensor-cells":
> +    const: 0
> +
> +  socionext,tmod-calibration:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    description:
> +      A pair of calibrated values referred from PVT, in case that the values
> +      aren't set on SoC, like a reference board.

So?:

maxItems: 2

> +
> +required:
> +  - compatible
> +  - interrupts
> +  - "#thermal-sensor-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    // The UniPhier thermal should be a subnode of a "syscon" compatible node.
> +
> +    sysctrl@61840000 {
> +        compatible = "socionext,uniphier-ld20-sysctrl",
> +                     "simple-mfd", "syscon";
> +        reg = <0x61840000 0x10000>;
> +
> +        pvtctl: thermal {
> +                compatible = "socionext,uniphier-ld20-thermal";
> +                interrupts = <0 3 1>;
> +                #thermal-sensor-cells = <0>;
> +        };
> +    };

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
