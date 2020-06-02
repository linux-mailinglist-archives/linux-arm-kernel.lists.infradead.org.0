Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A081C1EC5DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 01:45:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rm5P3EgR9/sDhPC6moE0vNwPUVq1ladV0dKVFkkS7NI=; b=HopOCOSlnE/kpI
	KEEfZB/HQCSEVrWzC66UTHj1GCZc61TVy8vXpQevrUO2dbmSdHQy0n+H1wTESYhoNBozqyjhz7Iv5
	KoqGaIRq0ND5ali3MBrqZ76ihwkDTwC+IcEFk6TabC9FHsZFrcQbBZkDqsYUwv3/v0NgZ+BewQpGY
	DMYK0G0nqiVi6Dc2uMmgcOqopH/npI5li3e7U41EJFFZH4G8BAlsUfbA6kTvSLmvEVDyiGAsw0g6k
	pCv89nU7NImRyaHbSYCJN6yGrcZP+RR42S6cnkn6SP0TraSUHfJTw/unqL6M/BYjuNdX8WA8NyYIU
	AJX5iaJRZP8095LMPEKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgGaa-00075B-1b; Tue, 02 Jun 2020 23:45:00 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgGaH-0006vy-1R; Tue, 02 Jun 2020 23:44:42 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id F35C52A4;
 Wed,  3 Jun 2020 01:44:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1591141478;
 bh=0ojJhQ+5X0tRs/HVp41pNWAYkm+b2XP6CmfpaRpOLFY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oB9Bh2UzB85GNEuF5w63S9wP8P5YAcCEe9txqwibAZuPp4H03fK/jnZJX2mby7zrq
 kPNfdyYlAWtwAmR282cd3qbaUIbNGgpDayWmngUgy9+GRvb/CFtL0lIDPFwpV5J09C
 xdNFBufSSNcU8AU0SCMeNDkNxPsIrvk1n4snIdyU=
Date: Wed, 3 Jun 2020 02:44:22 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: sandor.yu@nxp.com
Subject: Re: [PATCH 7/7] dt-bindings: display: Document Cadence MHDP HDMI/DP
 bindings
Message-ID: <20200602234422.GR6547@pendragon.ideasonboard.com>
References: <cover.1590982881.git.Sandor.yu@nxp.com>
 <9fa979f1099f7c02fd746f25002d8a652253d70f.1590982881.git.Sandor.yu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9fa979f1099f7c02fd746f25002d8a652253d70f.1590982881.git.Sandor.yu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_164441_239973_69141E1C 
X-CRM114-Status: GOOD (  20.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: jernej.skrabec@siol.net, heiko@sntech.de, jonas@kwiboo.se,
 narmstrong@baylibre.com, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, a.hajda@samsung.com, linux-imx@nxp.com,
 linux-rockchip@lists.infradead.org, dkos@cadence.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sandor,

Thank you for the patch.

On Mon, Jun 01, 2020 at 02:17:37PM +0800, sandor.yu@nxp.com wrote:
> From: Sandor Yu <Sandor.yu@nxp.com>
> 
> Document the bindings used for the Cadence MHDP HDMI/DP bridge.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
>  .../bindings/display/bridge/cdns,mhdp.yaml    | 46 +++++++++++++++
>  .../devicetree/bindings/display/imx/mhdp.yaml | 59 +++++++++++++++++++

Please split the patch in two.

>  2 files changed, 105 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/cdns,mhdp.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/imx/mhdp.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp.yaml
> new file mode 100644
> index 000000000000..aa23feba744a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp.yaml
> @@ -0,0 +1,46 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause))
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/cdns,mhdp.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cadence MHDP TX Encoder
> +
> +maintainers:
> +  - Sandor Yu <Sandoryu@nxp.com>
> +
> +description: |
> +  Cadence MHDP Controller supports one or more of the protocols,
> +  such as HDMI and DisplayPort.
> +  Each protocol requires a different FW binaries.
> +
> +  This document defines device tree properties for the Cadence MHDP Encoder
> +  (CDNS MHDP TX). It doesn't constitue a device tree binding
> +  specification by itself but is meant to be referenced by platform-specific
> +  device tree bindings.
> +
> +  When referenced from platform device tree bindings the properties defined in
> +  this document are defined as follows. The platform device tree bindings are
> +  responsible for defining whether each property is required or optional.
> +
> +properties:
> +  reg:
> +    maxItems: 1
> +    description: Memory mapped base address and length of the MHDP TX registers.
> +
> +  interrupts:
> +    maxItems: 2
> +
> +  interrupt-names:
> +    - const: plug_in
> +      description: Hotplug detect interrupter for cable plugin event.
> +    - const: plug_out
> +      description: Hotplug detect interrupter for cable plugout event.

Does the IP core really have two different interrupt lines, one for
hot-plug and one for hot-unplug ? That's a very unusual design.

> +
> +  port:
> +    type: object
> +    description: |
> +      The connectivity of the MHDP TX with the rest of the system is
> +      expressed in using ports as specified in the device graph bindings defined
> +      in Documentation/devicetree/bindings/graph.txt. The numbering of the ports
> +      is platform-specific.
> diff --git a/Documentation/devicetree/bindings/display/imx/mhdp.yaml b/Documentation/devicetree/bindings/display/imx/mhdp.yaml
> new file mode 100644
> index 000000000000..17850cfd1cb1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/imx/mhdp.yaml
> @@ -0,0 +1,59 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/mhdp.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cadence MHDP Encoder
> +
> +maintainers:
> +  - Sandor Yu <Sandoryu@nxp.com>
> +
> +description: |
> +  The MHDP transmitter is a Cadence HD Display TX controller IP
> +  with a companion PHY IP.
> +  The MHDP supports one or more of the protocols,
> +  such as HDMI(1.4 & 2.0), DisplayPort(1.2).
> +  switching between the two modes (HDMI and DisplayPort)
> +  requires reloading the appropriate FW

Does the IP core integrated in the imx8mp SoCs (as that is what this
binding targets) support both HDMI and DP ? If not this should be
reworded to be more specific to the SoC.

> +
> +  These DT bindings follow the Cadence MHDP TX bindings defined in
> +  Documentation/devicetree/bindings/display/bridge/cdns,mhdp.yaml with the
> +  following device-specific properties.
> +
> +Properties:

Have you tried validating this with make dt_binding_check ? See
Documentation/devicetree/writing-schema.rst for more information.

> +  compatible:
> +    enum:
> +      - nxp,imx8mq-cdns-hdmi
> +      - nxp,imx8mq-cdns-dp
> +
> +  reg: See cdns,mhdp.yaml.

This isn't how bindings are referenced. You need to reference the parent
binding with $ref, either globally, or on an individual property basis.

> +
> +  interrupts: See cdns,mhdp.yaml.
> +
> +  interrupt-names: See cdns,mhdp.yaml.

That's it ? No clocks, no power domains, no resets, no PHYs (especially
given that you mention a PHY companion IP above) ?

> +
> +  ports: See cdns,mhdp.yaml.

This isn't correct. Please soo of-graph.txt. If can have either one port
node, or one ports node that contains one of more port subnodes. In this
case you need at least two ports, one for the input to the HDMI encoder,
and one for the HDMI output. The latter should be connected to a DT node
representing the HDMI connector. Yuo can search for "hdmi-connector" in
the .dts files in the kernel for plenty of examples.

> +
> +Required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - interrupt-names
> +  - ports
> +
> +Example:
> +  - |
> +    mhdp: mhdp@32c00000 {
> +      compatible = "nxp,imx8mq-cdns-hdmi";
> +      reg = <0x32c00000 0x100000>;
> +      interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
> +                   <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
> +      interrupt-names = "plug_in", "plug_out";
> +
> +      ports {
> +        mhdp_in: endpoint {
> +          remote-endpoint = <&dcss_out>;
> +        };
> +      };
> +    };

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
