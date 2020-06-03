Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8953D1EC67F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 03:14:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OL+hdhZZnnsBeeqeKsyPipeGnZVE9ZeBiPcDc7e2Nf0=; b=f2PM4rVHsKwP4w
	3XJYyRWdqzTEMrJ0tQQeLchEHC+6W7ERnykX8np28qiiqBefsTyKDSVox8asIj4+b7EZzuOgjomt5
	qkXqS/RLQB0VTgN0KYz9l8aVywp/2cTJS6HcsPZGHGdLIvzHa4dkY1fHKgD/qdrrorK5wBhdy/9r/
	MM4wwYjHfNMUxGDwOpjhIkyOdyTEaoDgD+KoWXJOBQygHkCvw1l4dE+TpvBF+n4pBnlwHAGZoJIve
	rDmxjVoobPKFCVBARCQ+U5z6hCwXaHuR5FKE6zC/jKP1ZCFHf3Q1ITqh2rON53sC02LGTF1fcxUbc
	NfymfYHyvdSGlOO0ivjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgHyp-0008HT-C3; Wed, 03 Jun 2020 01:14:07 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgHyh-0008GX-Ss
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 01:14:01 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0CF7529B;
 Wed,  3 Jun 2020 03:13:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1591146834;
 bh=jEFcv3/fEbD4RqcDaT0zdOELskl9FL4fg65FTzTDU4s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Bh46lcPuOnAGHf+e9HSbh0ab17YVaCxHDyG0b82L0x3i0WbyVVnhVz1ivcviVdfIR
 OGKcI1zP7xY2Psf8dSHrp+6tnPL2a8xtVDA4vyyeohQL9jCBA2iQx90Ua1SFg1VFP1
 wgrmY/bFdnj64a/o/Mwxt+LYTw51XRoLGie88Kak=
Date: Wed, 3 Jun 2020 04:13:38 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Vishal Sagar <vsagar@xilinx.com>
Subject: Re: [PATCH v2 1/2] media: dt-bindings: media: xilinx: Add Xilinx
 UHD-SDI Receiver Subsystem
Message-ID: <20200603011338.GX6547@pendragon.ideasonboard.com>
References: <20200429141705.18755-1-vishal.sagar@xilinx.com>
 <20200429141705.18755-2-vishal.sagar@xilinx.com>
 <20200506130225.GD5946@pendragon.ideasonboard.com>
 <DM6PR02MB6876116CECBA49741FF57E79A78A0@DM6PR02MB6876.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR02MB6876116CECBA49741FF57E79A78A0@DM6PR02MB6876.namprd02.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_181400_083145_81E421A1 
X-CRM114-Status: GOOD (  32.38  )
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Dinesh Kumar <dineshk@xilinx.com>, Hyun Kwon <hyunk@xilinx.com>,
 Sandip Kothari <sandipk@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Michal Simek <michals@xilinx.com>,
 Joe Perches <joe@perches.com>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vishal,

On Mon, Jun 01, 2020 at 03:14:52PM +0000, Vishal Sagar wrote:
> On Wednesday, May 6, 2020 6:32 PM, Laurent Pinchart wrote:
> > On Wed, Apr 29, 2020 at 07:47:03PM +0530, Vishal Sagar wrote:
> > > Add bindings documentation for Xilinx UHD-SDI Receiver Subsystem.
> > >
> > > The Xilinx UHD-SDI Receiver Subsystem consists of SMPTE UHD-SDI (RX) IP
> > > core, an SDI RX to Video Bridge IP core to convert SDI video to native
> > > video and a Video In to AXI4-Stream IP core to convert native video to
> > > AXI4-Stream.
> > >
> > > Signed-off-by: Vishal Sagar <vishal.sagar@xilinx.com>
> > > ---
> > > v2
> > > - Removed references to xlnx,video*
> > > - Fixed as per Sakari Ailus and Rob Herring's comments
> > > - Converted to yaml format
> > >
> > >  .../bindings/media/xilinx/xlnx,sdirxss.yaml   | 132 ++++++++++++++++++
> > >  1 file changed, 132 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/media/xilinx/xlnx,sdirxss.yaml
> > >
> > > diff --git
> > a/Documentation/devicetree/bindings/media/xilinx/xlnx,sdirxss.yaml
> > b/Documentation/devicetree/bindings/media/xilinx/xlnx,sdirxss.yaml
> > > new file mode 100644
> > > index 000000000000..9133ad19df55
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/media/xilinx/xlnx,sdirxss.yaml
> > > @@ -0,0 +1,132 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/media/xilinx/xlnx,sdirxss.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +
> > > +title: Xilinx SMPTE UHD-SDI Receiver Subsystem
> > > +
> > > +maintainers:
> > > +  - Vishal Sagar <vishal.sagar@xilinx.com>
> > > +
> > > +description: |
> > > +  The SMPTE UHD-SDI Receiver (RX) Subsystem allows you to quickly create systems
> > > +  based on SMPTE SDI protocols. It receives unaligned native SDI streams from
> > > +  the SDI GT PHY and outputs an AXI4-Stream video stream, native video, or
> > > +  native SDI using Xilinx transceivers as the physical layer.
> > > +
> > > +  The subsystem consists of
> > > +  1 - SMPTE UHD-SDI Rx
> > > +  2 - SDI Rx to Native Video Bridge
> > > +  3 - Video In to AXI4-Stream Bridge
> > > +
> > > +  The subsystem can capture SDI streams in upto 12G mode 8 data streams and output
> > 
> > s/upto/up to/
> 
> I will fix this in next version. 
> 
> > > +  a dual pixel per clock RGB/YUV444,422/420 10/12 bits per component AXI4-Stream.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    items:
> > > +      - enum:
> > > +        - xlnx,v-smpte-uhdsdi-rx-ss-2.0
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  interrupts:
> > > +    maxItems: 1
> > > +
> > > +  clocks:
> > > +    description: List of clock specifiers
> > > +    items:
> > > +      - description: AXI4-Lite clock
> > > +      - description: SMPTE UHD-SDI Rx core clock
> > > +      - description: Video clock
> > > +
> > > +  clock-names:
> > > +    items:
> > > +      - const: s_axi_aclk
> > > +      - const: sdi_rx_clk
> > > +      - const: video_out_clk
> > > +
> > > +  xlnx,bpp:
> > > +    description: Bits per pixel supported. Can be 10 or 12 bits per pixel only.
> > > +    allOf:
> > > +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> > > +      - enum: [10, 12]
> > 
> > I don't see this as a design parameter in the documentation (pg290,
> > v2.0). What does it correspond to ? All the BPC mentions in the
> > documentation always state that 10-bit is the only supported value.
> 
> The new version of IP being released will have 10 and 12 bit support. It is already in the Xilinx linux-xlnx repo.
> I will rename this to "xlnx,bpc" instead of "xlnx,bpp" to refer to bits per component.

Is the documentation for the new IP core version available ? Should this
property only be allowed for the new version, given that in v2.0 the BPC
is fixed to 10 ?

> > > +
> > > +  xlnx,line-rate:
> > > +    description: |
> > > +      The maximum mode supported by the design. Possible values are as below
> > > +      12G_SDI_8DS - 12G mode with 8 data streams
> > > +      6G_SDI      -  6G mode
> > > +      3G_SDI      -  3G mode
> > > +    enum:
> > > +      - 12G_SDI_8DS
> > > +      - 6G_SDI
> > > +      - 3G_SDI
> > 
> > How about making this an integer property, with #define in
> > include/dt-bindings/media/xilinx-sdi.h ? As far as I understand, the SDI
> > TX subsystem has the same parameter, so the #define could be shared
> > between the two.
> 
> Yes that is ok with me. I will add this in the next version.
> 
> > > +
> > > +  xlnx,include-edh:
> > > +    type: boolean
> > > +    description: |
> > > +      This is present when the Error Detection and Handling processor is
> > > +      enabled in design.
> > > +
> > > +  ports:
> > > +    type: object
> > > +    description: |
> > > +      Generally the SDI port is connected to a device like SDI Broadcast camera
> > > +      which is independently controlled. Hence port@0 is a source port which can be
> > > +      connected to downstream IP which can work with AXI4 Stream data.
> > 
> > We should still have an input port. It can be connected to a DT node for
> > a physical SDI connector, or any other component in the platform (I
> > expect the former to be the common case). There are DT bindings for
> > connectors in Documentation/devicetree/bindings/display/connector/, we
> > should add one for SDI.
> 
> Yes the input port is a physical SDI connector connected to an equipment like broadcast camera.
> But the camera/equipment can't be controlled by the V4L2 pipeline and SDI protocol is unidirectional.
> 
> If we add another dt node, then I think another dummy v4l subdev driver will need to implemented and loaded
> to complete the pipe as Xilinx Video driver will need it.

We don't necessarily need a driver for the connector (although it may be
a good idea to do so, but that's a separate question). The sdi-rx driver
could handle the SDI connector DT node by parsing its properties
manually (assuming it would contain properties that need to be parsed).

> Could you please share the reason to have this input port in the SDI Rx driver?

We try to make sure the whole pipeline is modelled in DT. This applies
to both V4L2 and DRM/KMS. While the connector doesn't need to be
controlled by software (it's just a connector), it may still have
properties that matter from a software point of view. For instance the
label property can be used to specify how the connector is labeled on
the board or on the device's case, allowing applications to display the
correct labels to the users. Another use case related to the 4-pin
mini-DIN connectors typically used for S-Video. On some devices, they
are also used for composite video, with multiple video sources connected
to the same mini-DIN connector with a special cable. Kernel drivers need
to know how signals are routed, and DT nodes help there.

> > > +    properties:
> > > +      port@0:
> > > +        type: object
> > > +        description: Source port
> > > +        properties:
> > > +          reg:
> > > +            const: 0
> > > +          endpoint:
> > > +            type: object
> > > +            properties:
> > > +              remote-endpoint: true
> > > +            required:
> > > +              - remote-endpoint
> > > +            additionalProperties: false
> > > +        additionalProperties: false
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - interrupts
> > > +  - clocks
> > > +  - clock-names
> > > +  - xlnx,line-rate
> > > +  - xlnx,bpp
> > > +  - ports
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    uhdsdirxss: v-smpte-uhdsdi-rxss@80000000 {

I forgot to mention, you can drop the label as it's not used.

> > > +      compatible = "xlnx,v-smpte-uhdsdi-rx-ss-2.0";
> > > +      interrupt-parent = <&gic>;
> > > +      interrupts = <0 89 4>;
> > > +      reg = <0x0 0x80000000 0x0 0x10000>;
> > > +      xlnx,include-edh;
> > > +      xlnx,line-rate = "12G_SDI_8DS";
> > > +      clocks = <&clk_1>, <&si570_1>, <&clk_2>;
> > > +      clock-names = "s_axi_aclk", "sdi_rx_clk", "video_out_clk";
> > > +      xlnx,bpp = <10>;

And I would group the xlnx,* properties after the standard properties.

> > > +
> > > +      ports {
> > > +        #address-cells = <1>;
> > > +        #size-cells = <0>;
> > > +        port@0 {
> > > +          reg = <0>;
> > > +          sdirx_out: endpoint {
> > > +            remote-endpoint = <&vcap_sdirx_in>;
> > > +          };
> > > +        };
> > > +      };
> > > +    };

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
