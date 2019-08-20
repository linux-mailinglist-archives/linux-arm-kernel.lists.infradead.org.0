Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6324495DC1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 13:49:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YOtxcYTWcqJZjeMnAqarkV8aF1cnuA7jpEgvNaV29/k=; b=pGny/Ydrtj2kD6
	c27q11O8/wpejpYeQq9u8yJCn/SrtjoiFidG2AsfNXi1yVtXCqS7PJxm/RIIt60sZWcvaCq/mnWg+
	SmUvnxclatWJaZpvFokpnbyClvqEf8yawF1N3PIw7kjYZOyCsSsAJvHiPU7cYzPEqDCpcMAIi4ah+
	RRayOukW63ekGe4ivwrkh5Lp3mUtfLokzO1Ee98NJcEoagWgiJEEA9IidQI9Iq7BUeQOgLgbwA56Y
	898bYsMg3UypnFCrpuOzIkbkKRpJ1TEimCaoPNiH68nMUvS24abo21UvT5+5WLVjJKax2NjmKGSJY
	FWN4+6rcdmVLNypFG47g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i02dc-0003L1-Qj; Tue, 20 Aug 2019 11:49:21 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i02dE-0003KH-F9
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 11:48:58 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 04:48:55 -0700
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="189841322"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 04:48:51 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 6A86820928; Tue, 20 Aug 2019 14:48:49 +0300 (EEST)
Date: Tue, 20 Aug 2019 14:48:49 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v7 1/5] dt-bindings: media: Add Allwinner A10 CSI binding
Message-ID: <20190820114849.GD5123@paasikivi.fi.intel.com>
References: <cover.b695c63cf668192aff5574a3005d483c601e77f6.1566300265.git-series.maxime.ripard@bootlin.com>
 <f490b35e62c5fd15174b5241ce1653e991c8fc9e.1566300265.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f490b35e62c5fd15174b5241ce1653e991c8fc9e.1566300265.git-series.maxime.ripard@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_044856_693699_90E78C56 
X-CRM114-Status: GOOD (  20.57  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Rob Herring <robh@kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

On Tue, Aug 20, 2019 at 01:24:32PM +0200, Maxime Ripard wrote:
> From: Maxime Ripard <maxime.ripard@bootlin.com>
> 
> The Allwinner A10 CMOS Sensor Interface is a camera capture interface also
> used in later (A10s, A13, A20, R8 and GR8) SoCs.
> 
> On some SoCs, like the A10, there's multiple instances of that controller,
> with one instance supporting more channels and having an ISP.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml | 107 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 107 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
> new file mode 100644
> index 000000000000..9000bca344f9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
> @@ -0,0 +1,107 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/allwinner,sun4i-a10-csi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A10 CMOS Sensor Interface (CSI) Device Tree Bindings
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <maxime.ripard@bootlin.com>
> +
> +description: |-
> +  The Allwinner A10 and later has a CMOS Sensor Interface to retrieve
> +  frames from a parallel or BT656 sensor.
> +
> +properties:
> +  compatible:
> +    const: allwinner,sun7i-a20-csi0
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: The CSI interface clock
> +      - description: The CSI module clock
> +      - description: The CSI ISP clock
> +      - description: The CSI DRAM clock
> +
> +  clock-names:
> +    items:
> +      - const: bus
> +      - const: mod
> +      - const: isp
> +      - const: ram
> +
> +  resets:
> +    maxItems: 1
> +
> +  port:
> +    type: object
> +    additionalProperties: false
> +
> +    properties:
> +      endpoint:
> +        properties:
> +          bus-width:
> +            const: 8
> +            description: Number of data lines actively used.

Are other values supported? If not, you could omit this.

> +
> +          data-active: true
> +          hsync-active: true
> +          pclk-sample: true
> +          remote-endpoint: true
> +          vsync-active: true
> +
> +        required:
> +          - bus-width
> +          - data-active
> +          - hsync-active
> +          - pclk-sample
> +          - remote-endpoint
> +          - vsync-active

Some of these are not allowed in the Bt.656 mode (vsync-active and
hsync-active) while they're required in Bt.601 mode. Is there a way to tell
that in YAML-based bindings?

Similarly, video-interfaces.txt should be referenced from here, shouldn't
it?

> +
> +    required:
> +      - endpoint
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/sun7i-a20-ccu.h>
> +    #include <dt-bindings/reset/sun4i-a10-ccu.h>
> +
> +    csi0: csi@1c09000 {
> +        compatible = "allwinner,sun7i-a20-csi0";
> +        reg = <0x01c09000 0x1000>;
> +        interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&ccu CLK_AHB_CSI0>, <&ccu CLK_CSI0>,
> +                 <&ccu CLK_CSI_SCLK>, <&ccu CLK_DRAM_CSI0>;
> +        clock-names = "bus", "mod", "isp", "ram";
> +        resets = <&ccu RST_CSI0>;
> +
> +        port {
> +            csi_from_ov5640: endpoint {
> +                remote-endpoint = <&ov5640_to_csi>;
> +                bus-width = <8>;
> +                hsync-active = <1>; /* Active high */
> +                vsync-active = <0>; /* Active low */
> +                data-active = <1>;  /* Active high */
> +                pclk-sample = <1>;  /* Rising */
> +            };
> +        };
> +    };
> +
> +...

-- 
Kind regards,

Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
