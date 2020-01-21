Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E87A1446AB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 22:51:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLOSc6TgVx4X0Z8IhHJh8xb/WkueB2QwTbFbI9B1Tpk=; b=aYbqs5JSCusODz
	V6+9ynKKQ+89R/SUzNQtxQoWI3F6fJcykO6+4NDP441giKu9p4RRNzG40Ax63jl43IddyqGIM5yA3
	6NBgcpBWkmZbHKWcoCzUKz7bP4dm2YjdqIOfncyjW3W0Bj3fGtYKVUA+ydgUIeCTS3nunpS8iJ7Wl
	sIuCTKvrtKLbR+SoNu4OSP2N2e3YDjYnVXp6YuH6yU+mrHMfhTESvQe2HHcfqYBcFSsavYc+KOf+s
	oxTMjEALVWuHn1kZeQHU5u3svTOlkXD2dqZKsmojWxalibYa04ZtQwEoG/9/GcNjlsLXhnc4wzRO6
	UbmJMdx3lABuLi+z/ygw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu1Qo-0001lc-Bq; Tue, 21 Jan 2020 21:51:30 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu1QX-0001kH-4p
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 21:51:17 +0000
Received: by mail-oi1-f195.google.com with SMTP id p125so4104339oif.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 13:51:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AEQJRf11+YL9JXYSw6iHmQvhDVGvtOeS/QzZTm+s+dQ=;
 b=SmskhdV5LBUkpKGmIwWDXGKhEyH2W3QGrzpoXF/kWF1Dlda0nnpNhvr5jagi+C755G
 XW+QN1gXgAKYFMy3vT594TtKAxIp5WUksXCjNSrjzyYYWaj/hlKY70il4AZqoLCDbtxq
 qT6erPJlFgsQO55Q1q6BsOVpNUJ4RHMoRSdqcZcmI0pIayQwfYZltKgZF933HzP7lPj5
 UuFlkjVUuQVUrnIDhaTeHkq+U5oz23gu646LbUZf8FDjYqPQQT1ACHG8IRrPdec629vF
 RVbQn56L5FcGjfQm1wJBhfxkkvqy6rzav/dYI0rjAV2vs4plEeEDvjY2d/sj6bhHLSta
 wuBg==
X-Gm-Message-State: APjAAAVQ1MsRGLXd2+actnbMnzKNJ4uUA5bOH9UmFVRG23GkcC788A+7
 IOVuz2aB0rMAxjTQpSiIBA==
X-Google-Smtp-Source: APXvYqxt+cM62E+IOf/zYUPLo7beaXVus7wbv8PxvBfk1MeN6W4PybVQtCjZ0vKTYkCKN5s+jFsOCg==
X-Received: by 2002:aca:59c2:: with SMTP id n185mr4708096oib.170.1579643471112; 
 Tue, 21 Jan 2020 13:51:11 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k17sm4031953otl.45.2020.01.21.13.51.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 13:51:10 -0800 (PST)
Received: (nullmailer pid 509 invoked by uid 1000);
 Tue, 21 Jan 2020 21:51:09 -0000
Date: Tue, 21 Jan 2020 15:51:09 -0600
From: Rob Herring <robh@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 14/14] net: axienet: Update devicetree binding
 documentation
Message-ID: <20200121215109.GA26808@bogus>
References: <20200110115415.75683-1-andre.przywara@arm.com>
 <20200110115415.75683-15-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110115415.75683-15-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_135113_187118_4A006FED 
X-CRM114-Status: GOOD (  22.08  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 netdev@vger.kernel.org, Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Robert Hancock <hancock@sedsystems.ca>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 11:54:15AM +0000, Andre Przywara wrote:
> This adds documentation about the newly introduced, optional
> "xlnx,addrwidth" property to the binding documentation.
> 
> While at it, clarify the wording on some properties, replace obsolete
> .txt file references with their new .yaml counterparts, and add a more
> modern example, using the axistream-connected property.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../bindings/net/xilinx_axienet.txt           | 57 ++++++++++++++++---
>  1 file changed, 50 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/net/xilinx_axienet.txt b/Documentation/devicetree/bindings/net/xilinx_axienet.txt
> index 7360617cdedb..78c278c5200f 100644
> --- a/Documentation/devicetree/bindings/net/xilinx_axienet.txt
> +++ b/Documentation/devicetree/bindings/net/xilinx_axienet.txt
> @@ -12,7 +12,8 @@ sent and received through means of an AXI DMA controller. This driver
>  includes the DMA driver code, so this driver is incompatible with AXI DMA
>  driver.
>  
> -For more details about mdio please refer phy.txt file in the same directory.
> +For more details about mdio please refer to the ethernet-phy.yaml file in
> +the same directory.
>  
>  Required properties:
>  - compatible	: Must be one of "xlnx,axi-ethernet-1.00.a",
> @@ -27,14 +28,14 @@ Required properties:
>  		  instead, and only the Ethernet core interrupt is optionally
>  		  specified here.
>  - phy-handle	: Should point to the external phy device.
> -		  See ethernet.txt file in the same directory.
> -- xlnx,rxmem	: Set to allocated memory buffer for Rx/Tx in the hardware
> +		  See the ethernet-controller.yaml file in the same directory.
> +- xlnx,rxmem	: Size of the RXMEM buffer in the hardware, in bytes.
>  
>  Optional properties:
> -- phy-mode	: See ethernet.txt
> +- phy-mode	: See ethernet-controller.yaml.
>  - xlnx,phy-type	: Deprecated, do not use, but still accepted in preference
>  		  to phy-mode.
> -- xlnx,txcsum	: 0 or empty for disabling TX checksum offload,
> +- xlnx,txcsum	: 0 for disabling TX checksum offload (default if omitted),
>  		  1 to enable partial TX checksum offload,
>  		  2 to enable full TX checksum offload
>  - xlnx,rxcsum	: Same values as xlnx,txcsum but for RX checksum offload
> @@ -48,10 +49,20 @@ Optional properties:
>  		       If this is specified, the DMA-related resources from that
>  		       device (DMA registers and DMA TX/RX interrupts) rather
>  		       than this one will be used.
> - - mdio		: Child node for MDIO bus. Must be defined if PHY access is
> +- mdio		: Child node for MDIO bus. Must be defined if PHY access is
>  		  required through the core's MDIO interface (i.e. always,
>  		  unless the PHY is accessed through a different bus).
>  
> +Required properties for axistream-connected subnode:
> +- reg		: Address and length of the AXI DMA controller MMIO space.
> +- interrupts	: A list of 2 interrupts: TX DMA and RX DMA, in that order.
> +
> +Optional properties for axistream-connected subnode:
> +- xlnx,addrwidth: Specifies the configured address width of the DMA. Newer
> +		  versions of the IP allow setting this to a value between
> +		  32 and 64. Defaults to 32 bits if not specified.

I think this should be expressed using dma-ranges. This is exactly the 
purpose of dma-ranges and we shouldn't need a device specific property 
for this sort of thing.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
