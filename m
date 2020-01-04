Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFC91304E2
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 23:14:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QPAmM+fQnatUv1AExxSGHBmEaDCTY2PzgJRwKPLcJWA=; b=oc1omgZJmyyYp1
	+VeYi0kftoMqHgyoW9Mpvm0WZQWiBHTTMUkrnEW1e4EGaz1GySkie6egjusmbhng5sLapkCA0qKfZ
	hB4hEtCshA46Hk7qy20bIRocaRT8ZD7XvMFAUcKu+bI57KHnBxkKz+M5iBFha1nvCaFs1mdeHJ4aL
	xKgIBTdp06OtX2tux+rkRy9+YGPIL3nu6iAOiae9FNaTlxoLGD9sT/e0z8V989Kqev1dew/oBgGDp
	iIAMDL4ieUZ27dQGJLbJJSoWaK1SAZz6Hek6UZRq5tiNOTOOAiZAAeandnemgDFTwZwZEo9Nk/9X6
	nDZUGDPjhfZQx29gUz3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inrgp-0005sx-Qk; Sat, 04 Jan 2020 22:14:35 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inrfg-0004w8-QX
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 22:13:26 +0000
Received: by mail-io1-f65.google.com with SMTP id d15so1365432iog.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 Jan 2020 14:13:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=piCpHMpGOc3zZFTtDC6S/ozVwfI/lrfpfgNnjWzwyC8=;
 b=skT6OOgZIHozdV6P3LR6MS7Sdd0P4val1Z/XqCyl6+FkfrC68c49JbLltmMR+fSfi0
 h2PJLuRqLgz8BghCqp3amqzviYQF4Ewh7Tlkv4L+NqAOGgHu8K2uWE2mKBVXR1MpBGbZ
 kMFYSqKaaztapZyGly/D4+k9iBaO5XXk7BCl7vaN3JXA3WYt2KqtH0WRQTQrIt43OPSX
 nsJkVUSv4jzs8rgBv27hTy8x62p622CqALAEN6ccl+WVX8giXSasTfXDKV85i5Cq9CHi
 /ZlwRZkIe1EU21Zy5XcnPgZ5MJhFywk7A7on25O68zKasmqENgRPv5bZb6a0ZGu3hy+M
 nJKg==
X-Gm-Message-State: APjAAAXOgvfhAGPuaiBahAik0FpmG/7SwduHeLoLmkWr2PK76xkrFxeC
 8Usfmby/0/xKV3yCprgclS0z8aE=
X-Google-Smtp-Source: APXvYqxfhNfxjeEz1SlhXfnQys+KgIo0sg/lgVwBLVqN20ZABO0kRCrIeLH1qdJ7pwE+OlI/6jzU5Q==
X-Received: by 2002:a5e:8d14:: with SMTP id m20mr61083306ioj.282.1578176002965; 
 Sat, 04 Jan 2020 14:13:22 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id q6sm16036132ioj.49.2020.01.04.14.13.22
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jan 2020 14:13:22 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2219b7
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Sat, 04 Jan 2020 15:13:21 -0700
Date: Sat, 4 Jan 2020 15:13:21 -0700
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v2] dt-bindings: usb: Convert Allwinner A80 USB PHY
 controller to a schema
Message-ID: <20200104221321.GA11672@bogus>
References: <20200103152824.47383-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200103152824.47383-1-maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_141324_880195_310AA8D4 
X-CRM114-Status: GOOD (  18.68  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, kishon@ti.com,
 Chen-Yu Tsai <wens@csie.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 03, 2020 at 04:28:24PM +0100, Maxime Ripard wrote:
> The Allwinner A80 SoCs have a USB PHY controller that is used by Linux,
> with a matching Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Reviewed-by: Chen-Yu Tsai <wens@csie.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> 
> ---
> 
> Changes from v1:
>   - Added r-b tag from chen-yu
> ---
>  .../phy/allwinner,sun9i-a80-usb-phy.yaml      | 135 ++++++++++++++++++
>  .../devicetree/bindings/phy/sun9i-usb-phy.txt |  37 -----
>  2 files changed, 135 insertions(+), 37 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
>  delete mode 100644 Documentation/devicetree/bindings/phy/sun9i-usb-phy.txt
> 
> diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
> new file mode 100644
> index 000000000000..ded7d6f0a119
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
> @@ -0,0 +1,135 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/allwinner,sun9i-a80-usb-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A80 USB PHY Device Tree Bindings
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <mripard@kernel.org>
> +
> +properties:
> +  "#phy-cells":
> +    const: 0
> +
> +  compatible:
> +    const: allwinner,sun9i-a80-usb-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    anyOf:
> +      - description: Main PHY Clock
> +
> +      - items:
> +          - description: Main PHY clock
> +          - description: HSIC 12MHz clock
> +          - description: HSIC 480MHz clock

Rather than anyOf, just 'minItems: 1' would work here. Though I guess 
this disallows 2 items.

> +
> +  clock-names:
> +    oneOf:
> +      - const: phy
> +
> +      - items:
> +          - const: phy
> +          - const: hsic_12M
> +          - const: hsic_480M
> +
> +  resets:
> +    anyOf:
> +      - description: Normal USB PHY reset
> +
> +      - items:
> +          - description: Normal USB PHY reset
> +          - description: HSIC Reset
> +
> +  reset-names:
> +    oneOf:
> +      - const: phy
> +
> +      - items:
> +          - const: phy
> +          - const: hsic
> +
> +  phy_type:
> +    const: hsic
> +    description:
> +      When absent, the PHY type will be assumed to be normal USB.
> +
> +  phy-supply:
> +    description:
> +      Regulator that powers VBUS
> +
> +required:
> +  - "#phy-cells"
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +
> +additionalProperties: false
> +
> +if:
> +  properties:
> +    phy_type:
> +      const: hsic
> +
> +  required:
> +    - phy_type
> +
> +then:
> +  properties:
> +    clocks:
> +      maxItems: 3
> +
> +    clock-names:
> +      maxItems: 3
> +
> +    resets:
> +      maxItems: 2
> +
> +    reset-names:
> +      maxItems: 2

Do you intend that only a single item is allowed when not HSIC? If so, 
that's not what is happening.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
