Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7A31AFBC6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 17:46:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nP5x26K7UoB89Qw6szuTGLJgO8W4s2GoqXwo266Q8eM=; b=LWCnj5u00PkAAM
	Exp0OYvl6Q5ua879dT59flE60CCszoylG1xV7+7eiFUHKmgFWZTIXfbgqr+tu296rpGJWQsh1l35o
	uGsOBGW2jPbXFkUqb3t44zYWDF6IOIjx5i+6IBG3vWcnZauUNQtVhKxlMV5arwfGuE5BEx6p4Izbh
	qPeHtouANjTVqlqsGbukHww2Qb2QwsOI5FIhhjdsK4GW+MIqCueqiaFjIHWtdlEBWPsYjPWUwTmVE
	NRXgEekPiZ0PiZ07k75O7r4wc5LzgTJRAIanxaZvm4UC+9e54+6HvDmbcbGS9WbKKp49VhD4WAHdF
	1oGyC9FqHyNHa6oySpfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQC8n-0001PP-91; Sun, 19 Apr 2020 15:45:53 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQC8b-0001O5-8a
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 15:45:43 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 22F2B9C7;
 Sun, 19 Apr 2020 17:45:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1587311132;
 bh=HuQErHwGhO1kJiBT/qX8DgI6To1loNUIuofzPkXRHuk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c01HKouMFlyNWiB9MrwXi3dakOrL/izJKJN8BPGZ3UbSL3fY5v930Lga8unlnFSZ0
 sZMLHeanamdXcQLtUbnA9XRpuAuqLPDt33v56hPf75uW1/zUlwJpNWW0sS0io4emyR
 WlK2EVt8gqfztYedI+8euCMGGFZyUKShgXHC6kE0=
Date: Sun, 19 Apr 2020 18:45:19 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Vishal Sagar <vishal.sagar@xilinx.com>
Subject: Re: [PATCH v11 1/2] media: dt-bindings: media: xilinx: Add Xilinx
 MIPI CSI-2 Rx Subsystem
Message-ID: <20200419154519.GA11361@pendragon.ideasonboard.com>
References: <20200409194424.45555-1-vishal.sagar@xilinx.com>
 <20200409194424.45555-2-vishal.sagar@xilinx.com>
 <20200419154305.GA8117@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419154305.GA8117@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_084541_452235_35916332 
X-CRM114-Status: GOOD (  36.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Sun, Apr 19, 2020 at 06:43:07PM +0300, Laurent Pinchart wrote:
> On Fri, Apr 10, 2020 at 01:14:23AM +0530, Vishal Sagar wrote:
> > Add bindings documentation for Xilinx MIPI CSI-2 Rx Subsystem.
> > 
> > The Xilinx MIPI CSI-2 Rx Subsystem consists of a CSI-2 Rx controller, a
> > DPHY in Rx mode, an optional I2C controller and a Video Format Bridge.
> 
> The AXI IIC was removed from the subsystem in v4.1, you could drop it
> from the commit message too.
> 
> > Signed-off-by: Vishal Sagar <vishal.sagar@xilinx.com>
> > Reviewed-by: Hyun Kwon <hyun.kwon@xilinx.com>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Reviewed-by: Luca Ceresoli <luca@lucaceresoli.net>
> > ---
> > v11
> > - Modify compatible string from 4.0 to 5.0
> > 
> > v10
> > - No changes
> > 
> > v9
> > - Fix xlnx,vfb description.
> > - s/Optional/Required endpoint property.
> > - Move data-lanes description from Ports to endpoint property section.
> > 
> > v8
> > - Added reset-gpios optional property to assert video_aresetn
> > 
> > v7
> > - Removed the control name from dt bindings
> > - Updated the example dt node name to csi2rx
> > 
> > v6
> > - Added "control" after V4L2_CID_XILINX_MIPICSISS_ACT_LANES as suggested by Luca
> > - Added reviewed by Rob Herring
> > 
> > v5
> > - Incorporated comments by Luca Cersoli
> > - Removed DPHY clock from description and example
> > - Removed bayer pattern from device tree MIPI CSI IP
> >   doesn't deal with bayer pattern.
> > 
> > v4
> > - Added reviewed by Hyun Kwon
> > 
> > v3
> > - removed interrupt parent as suggested by Rob
> > - removed dphy clock
> > - moved vfb to optional properties
> > - Added required and optional port properties section
> > - Added endpoint property section
> > 
> > v2
> > - updated the compatible string to latest version supported
> > - removed DPHY related parameters
> > - added CSI v2.0 related property (including VCX for supporting upto 16
> >   virtual channels).
> > - modified csi-pxl-format from string to unsigned int type where the value
> >   is as per the CSI specification
> > - Defined port 0 and port 1 as sink and source ports.
> > - Removed max-lanes property as suggested by Rob and Sakari
> >  .../bindings/media/xilinx/xlnx,csi2rxss.txt   | 116 ++++++++++++++++++
> >  1 file changed, 116 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.txt b/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.txt
> > new file mode 100644
> > index 000000000000..9269a5c880aa
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.txt
> 
> YAML is the recommended form for new DT bindings. This wasn't a
> requirement when the first version of this series was submitted, and I
> understand it can be frustrating to chase a moving target, so I can help
> with the YAML conversion once we sort out the questions below.
> 
> > @@ -0,0 +1,116 @@
> > +Xilinx MIPI CSI2 Receiver Subsystem Device Tree Bindings
> 
> Nitpicking, it's CSI-2, not CSI2.
> 
> > +--------------------------------------------------------
> > +
> > +The Xilinx MIPI CSI2 Receiver Subsystem is used to capture MIPI CSI2 traffic
> > +from compliant camera sensors and send the output as AXI4 Stream video data
> > +for image processing.
> > +
> > +The subsystem consists of a MIPI DPHY in slave mode which captures the
> 
> And D-PHY, not DPHY :-)
> 
> > +data packets. This is passed along the MIPI CSI2 Rx IP which extracts the
> > +packet data. The optional Video Format Bridge (VFB) converts this data to
> > +AXI4 Stream video data.
> > +
> > +For more details, please refer to PG232 Xilinx MIPI CSI-2 Receiver Subsystem.
> 
> If I understand correctly, this DT binding covers the CSI-2 RX
> Controller and the optional Video Format Bridge, but leaves the D-PHY
> out, right ? I think this should be clarified, as the "CSI-2 receiver
> subsystem" includes the D-PHY.

I forgot to mention that if the PHY isn't included in the bindings, then
it should be referenced through a "phys" property.

> > +
> > +Required properties:
> > +--------------------
> > +- compatible: Must contain "xlnx,mipi-csi2-rx-subsystem-5.0".
> 
> Is PG232 v5.0 available ? The most recent version I've found was PG232
> v4.1.
> 
> > +- reg: Physical base address and length of the registers set for the device.
> > +- interrupts: Property with a value describing the interrupt number.
> > +- clocks: List of phandles to AXI Lite and Video clocks.
> > +- clock-names: Must contain "lite_aclk" and "video_aclk" in the same order
> > +  as clocks listed in clocks property.
> 
> The subsystem documentation also mentions a dphy_clk_200M. Is that
> routed to the D-PHY only, or is it also needed for the CSI-2 RX ?
> 
> > +- xlnx,csi-pxl-format: This denotes the CSI Data type selected in hw design.
> > +  Packets other than this data type (except for RAW8 and User defined data
> > +  types) will be filtered out. Possible values are as below -
> > +  0x1E - YUV4228B
> > +  0x1F - YUV42210B
> > +  0x20 - RGB444
> > +  0x21 - RGB555
> > +  0x22 - RGB565
> > +  0x23 - RGB666
> > +  0x24 - RGB888
> > +  0x28 - RAW6
> > +  0x29 - RAW7
> > +  0x2A - RAW8
> > +  0x2B - RAW10
> > +  0x2C - RAW12
> > +  0x2D - RAW14
> > +  0x2E - RAW16
> > +  0x2F - RAW20
> 
> Isn't this property required only when the VFB is present ?
> 
> > +
> > +
> > +Optional properties:
> > +--------------------
> > +- xlnx,vfb: Present when Video Format Bridge is enabled in IP configuration
> > +- xlnx,en-csi-v2-0: Present if CSI v2 is enabled in IP configuration.
> 
> Unless I'm mistaken, this feature is available starting at v4 of the IP
> core.
> 
> > +- xlnx,en-vcx: When present, there are maximum 16 virtual channels, else
> > +  only 4. This is present only if xlnx,en-csi-v2-0 is present.
> > +- xlnx,en-active-lanes: present if the number of active lanes can be
> > +  re-configured at runtime in the Protocol Configuration Register.
> > +  Otherwise all lanes, as set in IP configuration, are always active.
> > +- reset-gpios: Optional specifier for a GPIO that asserts video_aresetn.
> 
> Should lite_aresetn also be supported ? We can add a lite-reset-gpios
> property later, but maybe we should name this video-reset-gpios ? As the
> video_aresetn signal is the main reset I don't mind keeping the name
> reset-gpios either. It's up to you.
> 
> > +
> > +Ports
> > +-----
> > +The device node shall contain two 'port' child nodes as defined in
> > +Documentation/devicetree/bindings/media/video-interfaces.txt.
> > +
> > +The port@0 is a sink port and shall connect to CSI2 source like camera.
> > +
> > +The port@1 is a source port and can be connected to any video processing IP
> > +which can work with AXI4 Stream data.
> > +
> > +Required port properties:
> > +--------------------
> > +- reg: 0 - for sink port.
> > +       1 - for source port.
> 
> Don't you need a second source port for embedded non-image data ? If my
> understanding is correct that port can be enabled or disabled through
> the CSI_EMB_NON_IMG parameter, so it should be optional in DT too. We
> can possibly leave it out for now, it can be added later in a
> backward-compatible way.
> 
> > +
> > +Required endpoint property:
> > +---------------------------
> > +- data-lanes: specifies MIPI CSI-2 data lanes as covered in video-interfaces.txt.
> > +  This is required only in the sink port 0 endpoint which connects to MIPI CSI2
> > +  source like sensor. The possible values are:
> > +  1       - For 1 lane enabled in IP.
> > +  1 2     - For 2 lanes enabled in IP.
> > +  1 2 3   - For 3 lanes enabled in IP.
> > +  1 2 3 4 - For 4 lanes enabled in IP.
> > +
> > +Example:
> > +
> > +	xcsi2rxss_1: csi2rx@a0020000 {
> > +		compatible = "xlnx,mipi-csi2-rx-subsystem-5.0";
> > +		reg = <0x0 0xa0020000 0x0 0x10000>;
> > +		interrupt-parent = <&gic>;
> > +		interrupts = <0 95 4>;
> > +		xlnx,csi-pxl-format = <0x2a>;
> > +		xlnx,vfb;
> > +		xlnx,en-active-lanes;
> > +		xlnx,en-csi-v2-0;
> > +		xlnx,en-vcx;
> > +		clock-names = "lite_aclk", "video_aclk";
> > +		clocks = <&misc_clk_0>, <&misc_clk_1>;
> > +		reset-gpios = <&gpio 86 GPIO_ACTIVE_LOW>;
> > +
> > +		ports {
> > +			#address-cells = <1>;
> > +			#size-cells = <0>;
> > +
> > +			port@0 {
> > +				/* Sink port */
> > +				reg = <0>;
> > +				csiss_in: endpoint {
> > +					data-lanes = <1 2 3 4>;
> > +					/* MIPI CSI2 Camera handle */
> > +					remote-endpoint = <&camera_out>;
> > +				};
> > +			};
> > +			port@1 {
> > +				/* Source port */
> > +				reg = <1>;
> > +				csiss_out: endpoint {
> > +					remote-endpoint = <&vproc_in>;
> > +				};
> > +			};
> > +		};
> > +	};

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
