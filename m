Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F57C486D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 09:24:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3GNaHZyJHBoI5kQ0bpAv+QrdSY/urkqt+v7O6jx9104=; b=uPeEnbkRu9J7N3
	NSNbH3Z4bZXNPAkuPXj3jWJ8nYFWNolrCAgbc/HFeBt9DUMoeuCb5+vGCMHxUj2MQMvKxsJn3eP2C
	UfI/D3HTcK354QB7jsu7OFFO8TqzdpWC15niSUv7yy3omZwT35eGJhft9kbD8DU/zh+JBIxTNS3vo
	DRTgiWpJQPEpn+2iLbOTsn3KQtRTqedUWNO/lXBRJoADr5TEPwe2qO/3It+va3ZxsxQqSFKwa1Cv0
	MPooWipN1PLThkjHxRlguTOuqyZ4xv1MUZHd7Mp3xY5sDfwJTxyF5BJr1U3rn7mBIBTmXMLJ72aXl
	Dmt7WcL0fF6NBUMNm4zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFZ0D-0007Ru-8x; Wed, 02 Oct 2019 07:24:49 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFZ05-0007R1-Nv
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 07:24:43 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id CBA8E634C87;
 Wed,  2 Oct 2019 10:22:02 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1iFYxV-000281-8y; Wed, 02 Oct 2019 10:22:01 +0300
Date: Wed, 2 Oct 2019 10:22:01 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Vishal Sagar <vishal.sagar@xilinx.com>
Subject: Re: [PATCH 1/2] media: dt-bindings: media: xilinx: Add Xilinx
 UHD-SDI Receiver Subsystem
Message-ID: <20191002072201.GL896@valkosipuli.retiisi.org.uk>
References: <1559656556-79174-1-git-send-email-vishal.sagar@xilinx.com>
 <1559656556-79174-2-git-send-email-vishal.sagar@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559656556-79174-2-git-send-email-vishal.sagar@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_002442_139567_E8CC0C2F 
X-CRM114-Status: GOOD (  21.94  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Dinesh Kumar <dineshk@xilinx.com>, Hyun Kwon <hyun.kwon@xilinx.com>,
 Sandip Kothari <sandipk@xilinx.com>, Michal Simek <michal.simek@xilinx.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vishal,

On Tue, Jun 04, 2019 at 07:25:55PM +0530, Vishal Sagar wrote:
> Add bindings documentation for Xilinx UHD-SDI Receiver Subsystem.
> 
> The Xilinx UHD-SDI Receiver Subsystem consists of SMPTE UHD-SDI (RX) IP
> core, an SDI RX to Video Bridge IP core to convert SDI video to native
> video and a Video In to AXI4-Stream IP core to convert native video to
> AXI4-Stream.
> 
> Signed-off-by: Vishal Sagar <vishal.sagar@xilinx.com>
> ---
>  .../bindings/media/xilinx/xlnx,sdirxss.txt         | 80 ++++++++++++++++++++++
>  1 file changed, 80 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/xilinx/xlnx,sdirxss.txt
> 
> diff --git a/Documentation/devicetree/bindings/media/xilinx/xlnx,sdirxss.txt b/Documentation/devicetree/bindings/media/xilinx/xlnx,sdirxss.txt
> new file mode 100644
> index 0000000..8445bee
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/xilinx/xlnx,sdirxss.txt
> @@ -0,0 +1,80 @@
> +
> +Xilinx SMPTE UHD-SDI Receiver Subsystem Device Tree Bindings
> +------------------------------------------------------------
> +
> +The SMPTE UHD-SDI Receiver (RX) Subsystem allows you to quickly create systems
> +based on SMPTE SDI protocols. It receives unaligned native SDI streams from
> +the SDI GT PHY and outputs an AXI4-Stream video stream, native video, or
> +native SDI using Xilinx transceivers as the physical layer.
> +
> +The subsystem consists of
> +1 - SMPTE UHD-SDI Rx
> +2 - SDI Rx to Native Video Bridge
> +3 - Video In to AXI4-Stream Bridge
> +
> +The subsystem can capture SDI streams in utpo 12G mode and output a dual pixel
> +per clock YUV 422 or 420 10 bits per component AXI4-Stream.
> +
> +Required properties:
> +--------------------
> +- compatible: Must contain "xlnx,v-smpte-uhdsdi-rx-ss"
> +- reg: Physical base address and length of the registers set for the device.
> +- interrupts: Contains the interrupt line number.
> +- clocks: List of phandles to AXI4-Lite clock, core clock to SMPTE UHD-SDI Rx
> +  and Video clocks.
> +- clock-names: Must contain "s_axi_aclk", "sdi_rx_clk" and "video_out_clk" in
> +  the same order as clocks listed in clocks property.
> +- xlnx,line-rate: The maximum mode supported by the design. Possible values are
> +  are as below -
> +  12G_SDI_8DS	- 12G mode
> +  6G_SDI	-  6G mode
> +  3G_SDI	-  3G mode

Is this specific to a port?

I was wondering whether we should include this to video-interfaces.txt bus
type list, and V4L2 MBUS types. This way it could be also parsed by the
v4l2-fwnode framework.

Looking at the Wikipedia article, there are preceding standards, too, that
are referred to by a pair of letters:

<URL:https://en.wikipedia.org/wiki/Serial_digital_interface#Standards>

What does "DS" stand for?

> +
> +Optional properties:
> +--------------------
> +- xlnx,include-edh: This is present when the Error Detection and Handling
> +  processor is enabled in design.
> +
> +Ports
> +-----
> +The device node shall contain one 'port' child node as defined in
> +Documentation/devicetree/bindings/media/video-interfaces.txt.
> +
> +Generally the SDI port is connected to a device like SDI Broadcast camera which
> +is independently controlled. Hence port@0 is a source port which can be
> +connected to downstream IP which can work with AXI4 Stream data.
> +
> +Required port properties:
> +-------------------------
> +- reg: 0 - for source port.
> +
> +- xlnx,video-format: This can be XVIP_VF_YUV_422 or XVIP_VF_YUV_420.

Is this a property of the hardware?

> +- xlnx,video-width: This is should be 10.

This, too. If there's just one choice, is there a need for the property?

> +
> +Example:
> +		v_smpte_uhdsdi_rx_ss: v_smpte_uhdsdi_rx_ss@80000000 {
> +			compatible = "xlnx,v-smpte-uhdsdi-rx-ss";
> +			interrupt-parent = <&gic>;
> +			interrupts = <0 89 4>;
> +			reg = <0x0 0x80000000 0x0 0x10000>;
> +			xlnx,include-edh;
> +			xlnx,line-rate = "12G_SDI_8DS";
> +			clocks = <&clk_1>, <&si570_1>, <&clk_2>;
> +			clock-names = "s_axi_aclk", "sdi_rx_clk", "video_out_clk";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +
> +					xlnx,video-format = <XVIP_VF_YUV_422>;
> +					xlnx,video-width = <10>;
> +
> +					sdirx_out: endpoint {
> +						remote-endpoint = <&vcap_sdirx_in>;
> +					};
> +				};
> +			};
> +		};

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
