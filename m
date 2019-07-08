Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3D262C1F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 00:50:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+VKk/7T92k/NvYGrxbTh/qsjdsinYq1rHCkAGAUQG8=; b=p/lvLEtXADbmKI
	BuxxdnF0U5TCM9T1WjzLwUbwsK7DEg7aDRwX4OhS+0oUxbRB9210a+78u35rymGJ9fTtNbQ8GJFIH
	TxsJ6q5szwXnhOlK95sSqeX2hDmmmAKQvHxQOHsIj/kqbLS5Wg4iGR6hqw0FcTZb0vpqZdUE8Wfx0
	0s6kCLghrXa/khSkVjcgbpJx1t1U+5lbYtYQVZgO+dewtm5k9WZfFE6YC7tVn1KaiQF36iDUKeWM8
	N2wAbZAFffldKPtKy9zdvb8u885L0qiUAwdatqbpb0NjQeu4n2tQAsp3cT9bRWRLiCWIQbK0Sw+79
	tBDRogaMpI5f4KN8zlGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkcT3-0006Fr-4C; Mon, 08 Jul 2019 22:50:41 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkcSm-0006FC-Hg
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 22:50:26 +0000
Received: by mail-io1-f67.google.com with SMTP id o9so23423154iom.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 15:50:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=H/MyjdanrQ6K/py9dIxz3e56bfKj5atUb0fchKi3Mro=;
 b=pa1eI4T1gYYU6zET/Wk72iWYyE15vJ/xmtQJ5W67G/IdLlrA2/mcTBQaVyeMDwUBJ6
 totc046+URlv6pAXSg7lLpT4B7FzCbLo1F2nWYeKPd8Mu8GchSFMoD3sBPRnM3ld7pkd
 53Hg/KO2N55N38P7PwW7ZzJA1jba1wOy5rEOCXmTIFHgeCCmNCJluwDg9aFylfLKwb/7
 l8VBMTsLKCFDc4eN+blqfk2SktWjGKjgYaIjbzg3RPbzZ1LgkHxVjRakVOkaENi3UqLc
 dM5oJK4Xw4eFezCL5aTruekQKDjvYkGwZ1Z2Kv8EeqwGCGSKCv5iZ3ET2yhyr1gh9sdg
 8AFQ==
X-Gm-Message-State: APjAAAU+jXiFTuUTmhikb9asov9o7nqo9MQpHECC/uJfBCDalkrzkE4+
 AefYfZrQg8k7XpCiCnD+Kg==
X-Google-Smtp-Source: APXvYqzZFN9dAG5V65nMJvTNBFQoqUzrTk2W0/Fnk2oO/UP/uvEe0rRUTXgyk6ynGmU3h+IdLkXYAQ==
X-Received: by 2002:a5e:9701:: with SMTP id w1mr22230948ioj.294.1562626222486; 
 Mon, 08 Jul 2019 15:50:22 -0700 (PDT)
Received: from localhost ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id y20sm16723564iol.34.2019.07.08.15.50.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 15:50:21 -0700 (PDT)
Date: Mon, 8 Jul 2019 16:50:20 -0600
From: Rob Herring <robh@kernel.org>
To: Vishal Sagar <vishal.sagar@xilinx.com>
Subject: Re: [PATCH 1/2] media: dt-bindings: media: xilinx: Add Xilinx
 UHD-SDI Receiver Subsystem
Message-ID: <20190708225020.GA28126@bogus>
References: <1559656556-79174-1-git-send-email-vishal.sagar@xilinx.com>
 <1559656556-79174-2-git-send-email-vishal.sagar@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559656556-79174-2-git-send-email-vishal.sagar@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_155024_598020_E912E1E5 
X-CRM114-Status: GOOD (  22.96  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 Sandip Kothari <sandipk@xilinx.com>, linux-kernel@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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

Only one version?

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

I don't think a string is a good fit here. Using 3, 6, 12 with a defined 
unit as defined in property-units.txt is preferred. Register field values are 
okay for vendor specific stuff, too.

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
> +- xlnx,video-width: This is should be 10.

Don't we have standard properties for these?

I assume width here is really part of the pixel or bus interface format 
rather than physical signals? We typically only have a separate property 
for the latter case.

> +
> +Example:
> +		v_smpte_uhdsdi_rx_ss: v_smpte_uhdsdi_rx_ss@80000000 {

s/_/-/ in the node name. Node names are supposed to be generic when 
possible, but I don't have a suggestion here.

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
> -- 
> 1.8.3.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
