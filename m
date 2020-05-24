Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0861DFC58
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 04:02:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9kbExKMPP094o/wLluyT6xY9QUYKDe3n5GLQe+psFgk=; b=nrEXAJmDbhjxg4
	oM5FFGGWlqhW7ljyX/XcO0quwYZFZHBEAI5v7ImyfN5WnWI0jo+RbrLCkmtLU3uXDjaO+5xjSR++F
	E7xgyNXlh6W+4KDETDZqjNXlbriw6pnYnJKpsto9wOw2ToaDIcDumNxr/6YRJQoXbHLhsxU7gfCD9
	/xad8DgZOzP0AS7CgtWOzrVxn1tBGX+dZL7bjByRSQxciifyvjSDY149864c1JSkI387VkeGlaNX4
	Ce7tD1V5hhRHjq6atgyZMKm2DDqyFElHRfRPpwtXP3qYQxH2Qnjhop2hdqTM1o4o8HpVfBRr9nJ3G
	rF8fiq/penbtCzmPMVng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcfyG-00083f-VD; Sun, 24 May 2020 02:02:36 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcfy8-00083C-Mn
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 02:02:30 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0C16424D;
 Sun, 24 May 2020 04:02:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1590285747;
 bh=0up19u9tm13zJLOJzGxB1I6aEaPqgsHa2bsPf5YdchI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gkly61Ahte2sMLQ7Tyo53rsjaQdh2yJ3Q0vVZUfKO4Tf8pWOOT8I8wTYW4IGmB56W
 I19Pt6HfiTYH1sUZOYyJT30AfmREK1UrUPLurwXzc4svhizcUaKyfNQmfC0arzrbdz
 WjeEulboEhITTro7EpwyVe2QaQqdFK+5qTlPSc1M=
Date: Sun, 24 May 2020 05:02:14 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Vishal Sagar <vishal.sagar@xilinx.com>
Subject: Re: [PATCH v13 1/2] media: dt-bindings: media: xilinx: Add Xilinx
 MIPI CSI-2 Rx Subsystem
Message-ID: <20200524020214.GB6026@pendragon.ideasonboard.com>
References: <20200512151947.120348-1-vishal.sagar@xilinx.com>
 <20200512151947.120348-2-vishal.sagar@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512151947.120348-2-vishal.sagar@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_190228_900820_05048003 
X-CRM114-Status: GOOD (  24.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Jacopo Mondi <jacopo@jmondi.org>, Dinesh Kumar <dineshk@xilinx.com>,
 Hyun Kwon <hyun.kwon@xilinx.com>, Hyun Kwon <hyunk@xilinx.com>,
 Sandip Kothari <sandipk@xilinx.com>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Michal Simek <michals@xilinx.com>,
 Luca Ceresoli <luca@lucaceresoli.net>, hans.verkuil@cisco.com,
 mchehab@kernel.org, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vishal,

Thank you for the patch.

On Tue, May 12, 2020 at 08:49:46PM +0530, Vishal Sagar wrote:
> Add bindings documentation for Xilinx MIPI CSI-2 Rx Subsystem.
> 
> The Xilinx MIPI CSI-2 Rx Subsystem consists of a CSI-2 Rx controller, a
> D-PHY in Rx mode and a Video Format Bridge.
> 
> Signed-off-by: Vishal Sagar <vishal.sagar@xilinx.com>
> Reviewed-by: Hyun Kwon <hyun.kwon@xilinx.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Luca Ceresoli <luca@lucaceresoli.net>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
> v13
> - Based on Laurent's suggestions
> - Fixed the datatypes values as minimum and maximum
> - condition added for en-vcx property
> 
> v12
> - Moved to yaml format
> - Update CSI-2 and D-PHY
> - Mention that bindings for D-PHY not here
> - reset -> video-reset
> 
> v11
> - Modify compatible string from 4.0 to 5.0
> 
> v10
> - No changes
> 
> v9
> - Fix xlnx,vfb description.
> - s/Optional/Required endpoint property.
> - Move data-lanes description from Ports to endpoint property section.
> 
> v8
> - Added reset-gpios optional property to assert video_aresetn
> 
> v7
> - Removed the control name from dt bindings
> - Updated the example dt node name to csi2rx
> 
> v6
> - Added "control" after V4L2_CID_XILINX_MIPICSISS_ACT_LANES as suggested by Luca
> - Added reviewed by Rob Herring
> 
> v5
> - Incorporated comments by Luca Cersoli
> - Removed DPHY clock from description and example
> - Removed bayer pattern from device tree MIPI CSI IP
>   doesn't deal with bayer pattern.
> 
> v4
> - Added reviewed by Hyun Kwon
> 
> v3
> - removed interrupt parent as suggested by Rob
> - removed dphy clock
> - moved vfb to optional properties
> - Added required and optional port properties section
> - Added endpoint property section
> 
> v2
> - updated the compatible string to latest version supported
> - removed DPHY related parameters
> - added CSI v2.0 related property (including VCX for supporting upto 16
>   virtual channels).
> - modified csi-pxl-format from string to unsigned int type where the value
>   is as per the CSI specification
> - Defined port 0 and port 1 as sink and source ports.
> - Removed max-lanes property as suggested by Rob and Sakari
>  .../bindings/media/xilinx/xlnx,csi2rxss.yaml  | 226 ++++++++++++++++++
>  1 file changed, 226 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yaml b/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yaml
> new file mode 100644
> index 000000000000..b0885f461785
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yaml
> @@ -0,0 +1,226 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/xilinx/xlnx,csi2rxss.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Xilinx MIPI CSI-2 Receiver Subsystem
> +
> +maintainers:
> +  - Vishal Sagar <vishal.sagar@xilinx.com>
> +
> +description: |
> +  The Xilinx MIPI CSI-2 Receiver Subsystem is used to capture MIPI CSI-2
> +  traffic from compliant camera sensors and send the output as AXI4 Stream
> +  video data for image processing.
> +  The subsystem consists of a MIPI D-PHY in slave mode which captures the
> +  data packets. This is passed along the MIPI CSI-2 Rx IP which extracts the
> +  packet data. The optional Video Format Bridge (VFB) converts this data to
> +  AXI4 Stream video data.
> +  For more details, please refer to PG232 Xilinx MIPI CSI-2 Receiver Subsystem.
> +  Please note that this bindings includes only the MIPI CSI-2 Rx controller
> +  and Video Format Bridge and not D-PHY.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +        - xlnx,mipi-csi2-rx-subsystem-5.0
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
> +      - description: AXI Lite clock
> +      - description: Video clock
> +
> +  clock-names:
> +    items:
> +      - const: lite_aclk
> +      - const: video_aclk
> +
> +  xlnx,csi-pxl-format:
> +    description: |
> +      This denotes the CSI Data type selected in hw design.
> +      Packets other than this data type (except for RAW8 and
> +      User defined data types) will be filtered out.
> +      Possible values are as below -
> +      0x1e - YUV4228B
> +      0x1f - YUV42210B
> +      0x20 - RGB444
> +      0x21 - RGB555
> +      0x22 - RGB565
> +      0x23 - RGB666
> +      0x24 - RGB888
> +      0x28 - RAW6
> +      0x29 - RAW7
> +      0x2a - RAW8
> +      0x2b - RAW10
> +      0x2c - RAW12
> +      0x2d - RAW14
> +      0x2e - RAW16
> +      0x2f - RAW20
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - anyOf:
> +        - minimum: 0x1e
> +        - maximum: 0x24
> +        - minimum: 0x28
> +        - maximum: 0x2f
> +
> +  xlnx,vfb:
> +    type: boolean
> +    description: Present when Video Format Bridge is enabled in IP configuration
> +
> +  xlnx,en-csi-v2-0:
> +    type: boolean
> +    description: Present if CSI v2 is enabled in IP configuration.
> +
> +  xlnx,en-vcx:
> +    type: boolean
> +    description: |
> +      When present, there are maximum 16 virtual channels, else only 4.
> +
> +  xlnx,en-active-lanes:
> +    type: boolean
> +    description: |
> +      Present if the number of active lanes can be re-configured at
> +      runtime in the Protocol Configuration Register. Otherwise all lanes,
> +      as set in IP configuration, are always active.
> +
> +  video-reset-gpios:
> +    description: Optional specifier for a GPIO that asserts video_aresetn.
> +    maxItems: 1
> +
> +  ports:
> +    type: object
> +
> +    properties:
> +      port@0:
> +        type: object
> +        description: |
> +          Input / sink port node, single endpoint describing the
> +          CSI-2 transmitter.
> +
> +        properties:
> +          reg:
> +            const: 0
> +
> +          endpoint:
> +            type: object
> +
> +            properties:
> +
> +              data-lanes:
> +                description: |
> +                  This is required only in the sink port 0 endpoint which
> +                  connects to MIPI CSI-2 source like sensor.
> +                  The possible values are -
> +                  1       - For 1 lane enabled in IP.
> +                  1 2     - For 2 lanes enabled in IP.
> +                  1 2 3   - For 3 lanes enabled in IP.
> +                  1 2 3 4 - For 4 lanes enabled in IP.
> +                items:
> +                  - const: 1
> +                  - const: 2
> +                  - const: 3
> +                  - const: 4
> +
> +              remote-endpoint: true
> +
> +            required:
> +              - data-lanes
> +              - remote-endpoint
> +
> +            additionalProperties: false
> +
> +        additionalProperties: false
> +
> +      port@1:
> +        type: object
> +        description: |
> +          Output / source port node, endpoint describing modules
> +          connected the CSI-2 receiver.
> +
> +        properties:
> +
> +          reg:
> +            const: 1
> +
> +          endpoint:
> +            type: object
> +
> +            properties:
> +
> +              remote-endpoint: true
> +
> +            required:
> +              - remote-endpoint
> +
> +            additionalProperties: false
> +
> +        additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - xlnx,csi-pxl-format
> +  - ports
> +
> +if:
> +  not:
> +    required:
> +      - xlnx,en-csi-v2-0
> +then:
> +  properties:
> +    xlnx,en-vcx: false

As I've just commented on v12, I think we should condition the
xlnx,csi-pxl-format property to xlnx,vfb being set. xlnx,csi-pxl-format
should be removed from the required properties above, and the following
conditions added:

allOf:
  - if:
      required:
        - xlnx,vfb
    then:
      required:
        - xlnx,csi-pxl-format
    else:
      properties:
        xlnx,csi-pxl-format: false

  - if:
      not:
        required:
          - xlnx,en-csi-v2-0
    then:
      properties:
        xlnx,en-vcx: false

The 'allOf' is needed as you can't have two 'if' constructs at the top
level.

Please however let me know if my understanding is wrong and
xlnx,csi-pxl-format is needed even when xlnx,vfb is not set. In that
case please ignore this change (but please add the ... below).

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    xcsi2rxss_1: csi2rx@a0020000 {
> +        compatible = "xlnx,mipi-csi2-rx-subsystem-5.0";
> +        reg = <0x0 0xa0020000 0x0 0x10000>;
> +        interrupt-parent = <&gic>;
> +        interrupts = <0 95 4>;
> +        xlnx,csi-pxl-format = <0x2a>;
> +        xlnx,vfb;
> +        xlnx,en-active-lanes;
> +        xlnx,en-csi-v2-0;
> +        xlnx,en-vcx;
> +        clock-names = "lite_aclk", "video_aclk";
> +        clocks = <&misc_clk_0>, <&misc_clk_1>;
> +        video-reset-gpios = <&gpio 86 GPIO_ACTIVE_LOW>;
> +
> +        ports {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            port@0 {
> +                /* Sink port */
> +                reg = <0>;
> +                csiss_in: endpoint {
> +                    data-lanes = <1 2 3 4>;
> +                    /* MIPI CSI-2 Camera handle */
> +                    remote-endpoint = <&camera_out>;
> +                };
> +            };
> +            port@1 {
> +                /* Source port */
> +                reg = <1>;
> +                csiss_out: endpoint {
> +                    remote-endpoint = <&vproc_in>;
> +                };
> +            };
> +        };
> +    };

YAML files usually end with

...

on the last line to mark the end of file. 

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
