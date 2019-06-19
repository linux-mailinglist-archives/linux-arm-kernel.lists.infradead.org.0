Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E20F64BB21
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 16:18:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JlzZFg7yviJ3F+kjV/JnK56XTYR0Z6SpnOfBd334Q1Q=; b=iCM/yrDZYbz2SF
	gjdQ8+SGhYS/3WotTMzD1cAvt5thPSqKMPXVggXE1dYCP8BU/GOnrEfgDSQf4mD+NTokGmZGJ3tsg
	oWAhvkXW+TixsnzRY6AL0cbrpf3dIcHQRKnXNiRc7HT8EpkBpy1S2Gx3LPb9xYcFJF6naH0ggPJuw
	ogGkvKVorgqcRtaQ9RlLC6NLedFeipHldg8hsvNzvr1iTU77PwNpTv6JZKgLd0OHc9+IHbll8chXm
	Cm8a4pS+87dn3hdflhk3KJ0CamYivZg9vluwqenSvq/TOssZoLyQsqOKRjFb7XeDhuCPNOax3oNP5
	NIKDklRt80UwhGYPRdkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdbQ7-00044y-0D; Wed, 19 Jun 2019 14:18:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdbPZ-0003lu-U0
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 14:18:08 +0000
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 514DA21882
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 14:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560953885;
 bh=cR/H6G5KIVj2Tl/rlffCQ7FS2/cGJNh3qbq5IZ8GGd4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=IBG26sgsHejava7dMMDKid2azDT1wXKb5y0e/Tb2WqRj/64CY4K3+VD8Cg3mJp3CH
 Jr8HP0mlnWjNb2LWK2jeYt7TL/mwbaqBQOWYLqqI3cbAjcnIrcSng4TXf/yAhJwaK9
 uGkmdqEDwjxszz8qp+wv2io8n85Hhiz8nrR+bWYY=
Received: by mail-qt1-f170.google.com with SMTP id p15so20082433qtl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 07:18:05 -0700 (PDT)
X-Gm-Message-State: APjAAAW15GuAvYSeUI4WKXVfwUE/odM0cl4RWN0qvz0UWMvYSiME/Nen
 F9Z6CE+knc3oCN1Xyk0sOZIzTqSYq0kJXa3xHw==
X-Google-Smtp-Source: APXvYqyhdR1ApTNT0vTQ+yPM+vLDBBgTJuYVuRc+czCo8t7Z44TCthCHxu3q6kJsso6WcEaPhLDuWuqve5Eszjay4Ug=
X-Received: by 2002:a0c:b627:: with SMTP id f39mr34384022qve.72.1560953884410; 
 Wed, 19 Jun 2019 07:18:04 -0700 (PDT)
MIME-Version: 1.0
References: <27aeb33cf5b896900d5d11bd6957eda268014f0c.1560937626.git-series.maxime.ripard@bootlin.com>
 <89b834af795fa6ad5ba1f04a5a61c54204bf4f96.1560937626.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <89b834af795fa6ad5ba1f04a5a61c54204bf4f96.1560937626.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 19 Jun 2019 08:17:52 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKeGrXEECmP8Gec5DdLTikyx0xS+kaopRXNQ7RUEJbx4g@mail.gmail.com>
Message-ID: <CAL_JsqKeGrXEECmP8Gec5DdLTikyx0xS+kaopRXNQ7RUEJbx4g@mail.gmail.com>
Subject: Re: [PATCH v3 03/16] dt-bindings: net: Add a YAML schemas for the
 generic MDIO options
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_071806_016837_BB05AE87 
X-CRM114-Status: GOOD (  23.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Andrew Lunn <andrew@lunn.ch>,
 =?UTF-8?Q?Antoine_T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 3:47 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The MDIO buses have a number of available device tree properties that can
> be used in their device tree node. Add a YAML schemas for those.
>
> Suggested-by: Andrew Lunn <andrew@lunn.ch>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v2:
>   - New patch
> ---
>  Documentation/devicetree/bindings/net/mdio.txt  | 38 +-------------
>  Documentation/devicetree/bindings/net/mdio.yaml | 51 ++++++++++++++++++-
>  2 files changed, 52 insertions(+), 37 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/mdio.yaml
>
> diff --git a/Documentation/devicetree/bindings/net/mdio.txt b/Documentation/devicetree/bindings/net/mdio.txt
> index e3e1603f256c..cf8a0105488e 100644
> --- a/Documentation/devicetree/bindings/net/mdio.txt
> +++ b/Documentation/devicetree/bindings/net/mdio.txt
> @@ -1,37 +1 @@
> -Common MDIO bus properties.
> -
> -These are generic properties that can apply to any MDIO bus.
> -
> -Optional properties:
> -- reset-gpios: One GPIO that control the RESET lines of all PHYs on that MDIO
> -  bus.
> -- reset-delay-us: RESET pulse width in microseconds.
> -
> -A list of child nodes, one per device on the bus is expected. These
> -should follow the generic phy.txt, or a device specific binding document.
> -
> -The 'reset-delay-us' indicates the RESET signal pulse width in microseconds and
> -applies to all PHY devices. It must therefore be appropriately determined based
> -on all PHY requirements (maximum value of all per-PHY RESET pulse widths).
> -
> -Example :
> -This example shows these optional properties, plus other properties
> -required for the TI Davinci MDIO driver.
> -
> -       davinci_mdio: ethernet@5c030000 {
> -               compatible = "ti,davinci_mdio";
> -               reg = <0x5c030000 0x1000>;
> -               #address-cells = <1>;
> -               #size-cells = <0>;
> -
> -               reset-gpios = <&gpio2 5 GPIO_ACTIVE_LOW>;
> -               reset-delay-us = <2>;
> -
> -               ethphy0: ethernet-phy@1 {
> -                       reg = <1>;
> -               };
> -
> -               ethphy1: ethernet-phy@3 {
> -                       reg = <3>;
> -               };
> -       };
> +This file has moved to mdio.yaml.
> diff --git a/Documentation/devicetree/bindings/net/mdio.yaml b/Documentation/devicetree/bindings/net/mdio.yaml
> new file mode 100644
> index 000000000000..8f4f9d0a2882
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/mdio.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/mdio.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MDIO Bus Generic Binding
> +
> +maintainers:
> +  - Andrew Lunn <andrew@lunn.ch>
> +  - Florian Fainelli <f.fainelli@gmail.com>
> +  - Heiner Kallweit <hkallweit1@gmail.com>
> +
> +description:
> +  These are generic properties that can apply to any MDIO bus. Any
> +  MDIO bus must have a list of child nodes, one per device on the
> +  bus. These should follow the generic ethernet-phy.yaml document, or
> +  a device specific binding document.
> +
> +properties:
> +  reset-gpios:
> +    maxItems: 1
> +    description:
> +      The phandle and specifier for the GPIO that controls the RESET
> +      lines of all PHYs on that MDIO bus.
> +
> +  reset-delay-us:
> +    description:
> +      RESET pulse width in microseconds. It applies to all PHY devices
> +      and must therefore be appropriately determined based on all PHY
> +      requirements (maximum value of all per-PHY RESET pulse widths).
> +
> +examples:
> +  - |
> +    davinci_mdio: ethernet@5c030000 {

Shouldn't this be mdio@... ?

> +        compatible = "ti,davinci_mdio";
> +        reg = <0x5c030000 0x1000>;
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        reset-gpios = <&gpio2 5 1>;
> +        reset-delay-us = <2>;
> +
> +        ethphy0: ethernet-phy@1 {

Would be good to have some unit-address checks. Could be a follow-up though.

> +            reg = <1>;
> +        };
> +
> +        ethphy1: ethernet-phy@3 {
> +            reg = <3>;
> +        };
> +    };
> --
> git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
