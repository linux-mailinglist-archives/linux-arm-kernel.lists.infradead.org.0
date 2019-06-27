Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE625863F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 17:48:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3cO75QpUXYv809cwPFEma0Ftho5Xs4Eec0UzNObrSD0=; b=HxnxUom1RYkm0u
	oHeAnZoky//r/r2YWk+2x+8h7B00WPAjjg0Psn1TFSj5/s+nGFWcWDYfZMzCPhFe/I6chV5VSZLEh
	6pJgzo9Fsmt5M9pyAvwyS+Jcyy6y1G0fNi+oBfyLkozvtkVNFzn3U/CMRC+/gM3/4rlvBpEtocdUe
	Pg15EpYUQmSBQMcPv3iUGjUntK6OcEjL9QliU6CpAIyTSUfVMula23+roh1ZgwXSupZfT3I+NKAGb
	P+l3FII4kF6b1K8vOgO4c2BH0TSBc9O46Xc6CVEY/wrc+tWMyHpIohE1g49KEhGwAt5LanwOmwKRU
	W6dsxyHbFEb5+S+8Wq6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgWdW-0003mc-Po; Thu, 27 Jun 2019 15:48:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgWdI-0003mF-75
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 15:48:21 +0000
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
 [209.85.222.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1A5372080C
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 15:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561650499;
 bh=NiKkBsPkU8ySHa5i7qPVoos2/21Gu7h8H836M60q3+A=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=08zmfy12ENaw8IM1mumi3EXuGixZnZtApShAyvvbzMV0mXR3xPo+Pc4UxtH6SETLR
 gWuLh3RIYyUIInfcb0NrwnMLbjfXBONCjVZ7xkLXUOcPto2YNneNZLPJXQMQA/kiwW
 m8r1paVGtg2LNTJsALKYexwI0NjryxExVDng8GE4=
Received: by mail-qk1-f175.google.com with SMTP id l128so2135347qke.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 08:48:19 -0700 (PDT)
X-Gm-Message-State: APjAAAUN89A3bcOphBEc4al3+aQwnj3dcihXGWepUBlNnNWiFzJjagFG
 xI/Ms3GLXoqd3y7Gb6013m/kWjQ8amPmtGd8IA==
X-Google-Smtp-Source: APXvYqzSctMl0sFYTcc5iBfqsfNhwo5ukePe2J2++dqGrWfWoGRlZjV1/SE14jaEiAVY78nwOKPNLsKv0I5vru/rtzk=
X-Received: by 2002:a37:6357:: with SMTP id x84mr3954847qkb.393.1561650498374; 
 Thu, 27 Jun 2019 08:48:18 -0700 (PDT)
MIME-Version: 1.0
References: <cover.e80da8845680a45c2e07d5f17280fdba84555b8a.1561649505.git-series.maxime.ripard@bootlin.com>
 <e99ff7377a0d3d140cf62200fd9d62c108dac24e.1561649505.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <e99ff7377a0d3d140cf62200fd9d62c108dac24e.1561649505.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 27 Jun 2019 09:48:06 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKQoj6x-8cMxp2PFQLcu93aitGO2wALDYaH2h72cPSyfg@mail.gmail.com>
Message-ID: <CAL_JsqKQoj6x-8cMxp2PFQLcu93aitGO2wALDYaH2h72cPSyfg@mail.gmail.com>
Subject: Re: [PATCH v4 03/13] dt-bindings: net: Add a YAML schemas for the
 generic MDIO options
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_084820_293408_2A03E09F 
X-CRM114-Status: GOOD (  19.86  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Thu, Jun 27, 2019 at 9:32 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The MDIO buses have a number of available device tree properties that can
> be used in their device tree node. Add a YAML schemas for those.
>
> Suggested-by: Andrew Lunn <andrew@lunn.ch>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/net/mdio.txt  | 38 +-------------
>  Documentation/devicetree/bindings/net/mdio.yaml | 51 ++++++++++++++++++-
>  2 files changed, 52 insertions(+), 37 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/mdio.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

However, some comments for a follow-up...

> diff --git a/Documentation/devicetree/bindings/net/mdio.yaml b/Documentation/devicetree/bindings/net/mdio.yaml
> new file mode 100644
> index 000000000000..b8fa8251c4bc
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
> +    davinci_mdio: mdio@5c030000 {

Can we enforce nodename to be mdio? That may not work for muxes.
You'll probably have to implement it and see.

> +        compatible = "ti,davinci_mdio";
> +        reg = <0x5c030000 0x1000>;
> +        #address-cells = <1>;
> +        #size-cells = <0>;

These 2 should have a schema.

> +
> +        reset-gpios = <&gpio2 5 1>;
> +        reset-delay-us = <2>;
> +
> +        ethphy0: ethernet-phy@1 {
> +            reg = <1>;

Need a child node schema to validate the unit-address and reg property.

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
