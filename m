Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC561C714C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 15:02:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lNtTB2xc5P595TkiEMIfD5QgKcDCbAsPld4FqJngM4M=; b=j4CTFnotZ84H6X
	vUj74W5ywLr9q4N0JUvaOhgJAzvx5hBRLaOp7d91fUMv3g2RFOghdZE96957Jldmy3so//fEiSctO
	4S04iQBu1VHJkGHsKSPxUmAtDFkdJkncbjjWFu9fEyKhlhTMFnL1SIhxiW1aNogHhqx6NaUxHTASr
	DH878be6y5FENFb2n0grR3149YE+yxN4YMDPyganaNgajrCYKHAUvM2gD/20cx8nCrb1tmqB2Xplm
	0q5FhEvLb26yezKH1Nld21+yo4KL7LTeEgun9gQwpEU6H3qgArhgzFpWKRlisvIjPUoQd0dJAk8tH
	fUcMJKzh2y7zJtg+laZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWJhI-0007E0-4D; Wed, 06 May 2020 13:02:48 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWJh9-0007Bp-U6
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 13:02:41 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 28F5A542;
 Wed,  6 May 2020 15:02:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1588770150;
 bh=pPBs9Lx7E3HOerlKlsFhTIFSxpXd4xPnpNsOogA3ass=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=F9PUcTl8+vkeemaZPSZeHkYs6rtKiaQrG7A2wpwP32X5b5+SEhkYHYoaeJfGm4CsG
 tUSi7z/c7DahSrKaDG8MhUQKSgo+Zh7eZ0OwAkEGuoIR5nj5X+/LchW1Q/aorhV0Ad
 3hv5O94CAf4YjlBiWT5j0/zZP2ZjbObN8HjYBpJY=
Date: Wed, 6 May 2020 16:02:25 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Vishal Sagar <vishal.sagar@xilinx.com>
Subject: Re: [PATCH v2 1/2] media: dt-bindings: media: xilinx: Add Xilinx
 UHD-SDI Receiver Subsystem
Message-ID: <20200506130225.GD5946@pendragon.ideasonboard.com>
References: <20200429141705.18755-1-vishal.sagar@xilinx.com>
 <20200429141705.18755-2-vishal.sagar@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429141705.18755-2-vishal.sagar@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_060240_117505_4633244D 
X-CRM114-Status: GOOD (  20.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Dinesh Kumar <dineshk@xilinx.com>, Hyun Kwon <hyunk@xilinx.com>,
 Sandip Kothari <sandipk@xilinx.com>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Michal Simek <michals@xilinx.com>,
 Joe Perches <joe@perches.com>, hans.verkuil@cisco.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vishal,

Thank you for the patch.

On Wed, Apr 29, 2020 at 07:47:03PM +0530, Vishal Sagar wrote:
> Add bindings documentation for Xilinx UHD-SDI Receiver Subsystem.
> 
> The Xilinx UHD-SDI Receiver Subsystem consists of SMPTE UHD-SDI (RX) IP
> core, an SDI RX to Video Bridge IP core to convert SDI video to native
> video and a Video In to AXI4-Stream IP core to convert native video to
> AXI4-Stream.
> 
> Signed-off-by: Vishal Sagar <vishal.sagar@xilinx.com>
> ---
> v2
> - Removed references to xlnx,video*
> - Fixed as per Sakari Ailus and Rob Herring's comments
> - Converted to yaml format
> 
>  .../bindings/media/xilinx/xlnx,sdirxss.yaml   | 132 ++++++++++++++++++
>  1 file changed, 132 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/xilinx/xlnx,sdirxss.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/xilinx/xlnx,sdirxss.yaml b/Documentation/devicetree/bindings/media/xilinx/xlnx,sdirxss.yaml
> new file mode 100644
> index 000000000000..9133ad19df55
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/xilinx/xlnx,sdirxss.yaml
> @@ -0,0 +1,132 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/xilinx/xlnx,sdirxss.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +
> +title: Xilinx SMPTE UHD-SDI Receiver Subsystem
> +
> +maintainers:
> +  - Vishal Sagar <vishal.sagar@xilinx.com>
> +
> +description: |
> +  The SMPTE UHD-SDI Receiver (RX) Subsystem allows you to quickly create systems
> +  based on SMPTE SDI protocols. It receives unaligned native SDI streams from
> +  the SDI GT PHY and outputs an AXI4-Stream video stream, native video, or
> +  native SDI using Xilinx transceivers as the physical layer.
> +
> +  The subsystem consists of
> +  1 - SMPTE UHD-SDI Rx
> +  2 - SDI Rx to Native Video Bridge
> +  3 - Video In to AXI4-Stream Bridge
> +
> +  The subsystem can capture SDI streams in upto 12G mode 8 data streams and output

s/upto/up to/

> +  a dual pixel per clock RGB/YUV444,422/420 10/12 bits per component AXI4-Stream.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +        - xlnx,v-smpte-uhdsdi-rx-ss-2.0
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    description: List of clock specifiers
> +    items:
> +      - description: AXI4-Lite clock
> +      - description: SMPTE UHD-SDI Rx core clock
> +      - description: Video clock
> +
> +  clock-names:
> +    items:
> +      - const: s_axi_aclk
> +      - const: sdi_rx_clk
> +      - const: video_out_clk
> +
> +  xlnx,bpp:
> +    description: Bits per pixel supported. Can be 10 or 12 bits per pixel only.
> +    allOf:
> +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> +      - enum: [10, 12]

I don't see this as a design parameter in the documentation (pg290,
v2.0). What does it correspond to ? All the BPC mentions in the
documentation always state that 10-bit is the only supported value.

> +
> +  xlnx,line-rate:
> +    description: |
> +      The maximum mode supported by the design. Possible values are as below
> +      12G_SDI_8DS - 12G mode with 8 data streams
> +      6G_SDI      -  6G mode
> +      3G_SDI      -  3G mode
> +    enum:
> +      - 12G_SDI_8DS
> +      - 6G_SDI
> +      - 3G_SDI

How about making this an integer property, with #define in
include/dt-bindings/media/xilinx-sdi.h ? As far as I understand, the SDI
TX subsystem has the same parameter, so the #define could be shared
between the two.

> +
> +  xlnx,include-edh:
> +    type: boolean
> +    description: |
> +      This is present when the Error Detection and Handling processor is
> +      enabled in design.
> +
> +  ports:
> +    type: object
> +    description: |
> +      Generally the SDI port is connected to a device like SDI Broadcast camera
> +      which is independently controlled. Hence port@0 is a source port which can be
> +      connected to downstream IP which can work with AXI4 Stream data.

We should still have an input port. It can be connected to a DT node for
a physical SDI connector, or any other component in the platform (I
expect the former to be the common case). There are DT bindings for
connectors in Documentation/devicetree/bindings/display/connector/, we
should add one for SDI.

> +    properties:
> +      port@0:
> +        type: object
> +        description: Source port
> +        properties:
> +          reg:
> +            const: 0
> +          endpoint:
> +            type: object
> +            properties:
> +              remote-endpoint: true
> +            required:
> +              - remote-endpoint
> +            additionalProperties: false
> +        additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - xlnx,line-rate
> +  - xlnx,bpp
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    uhdsdirxss: v-smpte-uhdsdi-rxss@80000000 {
> +      compatible = "xlnx,v-smpte-uhdsdi-rx-ss-2.0";
> +      interrupt-parent = <&gic>;
> +      interrupts = <0 89 4>;
> +      reg = <0x0 0x80000000 0x0 0x10000>;
> +      xlnx,include-edh;
> +      xlnx,line-rate = "12G_SDI_8DS";
> +      clocks = <&clk_1>, <&si570_1>, <&clk_2>;
> +      clock-names = "s_axi_aclk", "sdi_rx_clk", "video_out_clk";
> +      xlnx,bpp = <10>;
> +
> +      ports {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        port@0 {
> +          reg = <0>;
> +          sdirx_out: endpoint {
> +            remote-endpoint = <&vcap_sdirx_in>;
> +          };
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
