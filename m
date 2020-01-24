Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FDE148C06
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 17:29:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jfNxLxESTAMnzEgHAUXJzEMPdisDWq9jC5m5HD3ImZQ=; b=g+4TAqqlJypc5w
	hCmli3GjVRXtrzeQZpu7NwJG0sbSSP2ganQ46QShkjkjD2120xqNabV+TUlAtpPS3Jdw4s/3M1m3n
	jz9lD+z+e3JtxtX/BmeG1mhDbfN9wZ0KPqg3yytzZcWfB61DiRIJmv3we9yWZzLnLy/+CnWMepNG6
	EB1qK+GRJ1yuuGyyfEgv1zYtjxFNpUa97/CbMKicdqHRin+O8cmdshEpGXbf6ptIrIbKEotBpPAuA
	tOOL0w+btCeWZHKpedJb+sg1CXlRAtzMxgLzpkAWFrvO8A8PZlK+8o9NmS98IZb0qlkEVR6YQQxPN
	aTQ6tePp7J0HasUBrYeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv1pp-0000uS-LF; Fri, 24 Jan 2020 16:29:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv1pa-0000tH-4L
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 16:29:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F20621FB;
 Fri, 24 Jan 2020 08:29:10 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A13323F6C4;
 Fri, 24 Jan 2020 08:29:09 -0800 (PST)
Date: Fri, 24 Jan 2020 16:29:03 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 14/14] net: axienet: Update devicetree binding
 documentation
Message-ID: <20200124162903.722468f1@donnerap.cambridge.arm.com>
In-Reply-To: <20200121215109.GA26808@bogus>
References: <20200110115415.75683-1-andre.przywara@arm.com>
 <20200110115415.75683-15-andre.przywara@arm.com>
 <20200121215109.GA26808@bogus>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_082914_260727_57B463DA 
X-CRM114-Status: GOOD (  26.73  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Tue, 21 Jan 2020 15:51:09 -0600
Rob Herring <robh@kernel.org> wrote:

Hi Rob,

thanks for having a look!

> On Fri, Jan 10, 2020 at 11:54:15AM +0000, Andre Przywara wrote:
> > This adds documentation about the newly introduced, optional
> > "xlnx,addrwidth" property to the binding documentation.
> > 
> > While at it, clarify the wording on some properties, replace obsolete
> > .txt file references with their new .yaml counterparts, and add a more
> > modern example, using the axistream-connected property.
> > 
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: devicetree@vger.kernel.org
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > ---
> >  .../bindings/net/xilinx_axienet.txt           | 57 ++++++++++++++++---
> >  1 file changed, 50 insertions(+), 7 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/net/xilinx_axienet.txt b/Documentation/devicetree/bindings/net/xilinx_axienet.txt
> > index 7360617cdedb..78c278c5200f 100644
> > --- a/Documentation/devicetree/bindings/net/xilinx_axienet.txt
> > +++ b/Documentation/devicetree/bindings/net/xilinx_axienet.txt
> > @@ -12,7 +12,8 @@ sent and received through means of an AXI DMA controller. This driver
> >  includes the DMA driver code, so this driver is incompatible with AXI DMA
> >  driver.
> >  
> > -For more details about mdio please refer phy.txt file in the same directory.
> > +For more details about mdio please refer to the ethernet-phy.yaml file in
> > +the same directory.
> >  
> >  Required properties:
> >  - compatible	: Must be one of "xlnx,axi-ethernet-1.00.a",
> > @@ -27,14 +28,14 @@ Required properties:
> >  		  instead, and only the Ethernet core interrupt is optionally
> >  		  specified here.
> >  - phy-handle	: Should point to the external phy device.
> > -		  See ethernet.txt file in the same directory.
> > -- xlnx,rxmem	: Set to allocated memory buffer for Rx/Tx in the hardware
> > +		  See the ethernet-controller.yaml file in the same directory.
> > +- xlnx,rxmem	: Size of the RXMEM buffer in the hardware, in bytes.
> >  
> >  Optional properties:
> > -- phy-mode	: See ethernet.txt
> > +- phy-mode	: See ethernet-controller.yaml.
> >  - xlnx,phy-type	: Deprecated, do not use, but still accepted in preference
> >  		  to phy-mode.
> > -- xlnx,txcsum	: 0 or empty for disabling TX checksum offload,
> > +- xlnx,txcsum	: 0 for disabling TX checksum offload (default if omitted),
> >  		  1 to enable partial TX checksum offload,
> >  		  2 to enable full TX checksum offload
> >  - xlnx,rxcsum	: Same values as xlnx,txcsum but for RX checksum offload
> > @@ -48,10 +49,20 @@ Optional properties:
> >  		       If this is specified, the DMA-related resources from that
> >  		       device (DMA registers and DMA TX/RX interrupts) rather
> >  		       than this one will be used.
> > - - mdio		: Child node for MDIO bus. Must be defined if PHY access is
> > +- mdio		: Child node for MDIO bus. Must be defined if PHY access is
> >  		  required through the core's MDIO interface (i.e. always,
> >  		  unless the PHY is accessed through a different bus).
> >  
> > +Required properties for axistream-connected subnode:
> > +- reg		: Address and length of the AXI DMA controller MMIO space.
> > +- interrupts	: A list of 2 interrupts: TX DMA and RX DMA, in that order.
> > +
> > +Optional properties for axistream-connected subnode:
> > +- xlnx,addrwidth: Specifies the configured address width of the DMA. Newer
> > +		  versions of the IP allow setting this to a value between
> > +		  32 and 64. Defaults to 32 bits if not specified.  
> 
> I think this should be expressed using dma-ranges. This is exactly the 
> purpose of dma-ranges and we shouldn't need a device specific property 
> for this sort of thing.

OK, after talking to Robin about it, I think I will indeed drop the whole usage of xlnx,addrwidth altogether.
Some thoughts:
- An integrator would choose the addrwidth value in the IP to be big enough for the whole bus. In our case it's actually 40 bits, because this is the max address size the interconnect supports. So any possible physical address the kernel could come up with would be valid for the DMA IP.
- Because of this we set the DMA mask to either 64-bit or 32-bit, depending on the auto detection of the MSB registers.
- If some integrator screws this up anyway, they can always set dma-ranges in the parent to limit the address range. IIUC, no further code would be needed in the Ethernet driver, as this would be handled by some (DMA?) framework?

Does that make sense?

Cheers,
Andre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
