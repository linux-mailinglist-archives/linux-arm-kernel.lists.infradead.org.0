Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6023111D93C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 23:18:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q4UYfp3zrZVTThYO+Wz6odmAGNV1coADvNrer0prb5g=; b=MmIuhL12BOcs7J
	+abNWrNg6tB8jlJ9JAfTMgeKtIuOIDZ/Wk5YS1Bv+FPUzRR6m8VoCjZ0bnJZhWzKBAisn843eb9vA
	eiC1ZqM8l6fgMxas/qY9T6buLxNaSznnaI8BTOd1inRKc1PH/NbGaOM6do/FohG5OzoTmqlekkLnt
	8cCoA0ivJLHDfBeuGJXPs0wi49RiU5bKcTdIUTVAgzHIhKBBwt7VmlzJC0hT58CH9OtRrNZIMp6qv
	VQgC/buVYBu/2JEcB2OQmCgdD//blOIu7/V0Iu1TbJZQiRDh4msDBnclFgwRH02sxzGvp2D4vzVQv
	dxaEDqOxEwjBwpbxuBJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifWnK-0005Cx-1f; Thu, 12 Dec 2019 22:18:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifWmz-00053V-HE; Thu, 12 Dec 2019 22:18:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DB618328;
 Thu, 12 Dec 2019 14:18:27 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 539803F52E;
 Thu, 12 Dec 2019 14:18:27 -0800 (PST)
Date: Thu, 12 Dec 2019 22:18:25 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH] PCI: rockchip: Fix register number offset to program IO
 outbound ATU
Message-ID: <20191212221824.GK24359@e119886-lin.cambridge.arm.com>
References: <20191211093450.7481-1-enric.balletbo@collabora.com>
 <20191212212936.GA13645@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212212936.GA13645@google.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_141829_693437_E753B392 
X-CRM114-Status: GOOD (  26.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Rob Herring <robh@kernel.org>, gwendal@chromium.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, dtor@chromium.org,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-kernel@vger.kernel.org,
 Vicente Bergas <vicencb@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-pci@vger.kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>, groeck@chromium.org,
 Collabora Kernel ML <kernel@collabora.com>, bleung@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 03:29:36PM -0600, Bjorn Helgaas wrote:
> [+cc Vicente]
> 
> On Wed, Dec 11, 2019 at 10:34:50AM +0100, Enric Balletbo i Serra wrote:
> > Since commit '62240a88004b ("PCI: rockchip: Drop storing driver private
> > outbound resource data)' the offset calculation is wrong to access the
> > register number to program the IO outbound ATU. The offset should be
> > based on the IORESOURCE_MEM resource size instead of the IORESOURCE_IO
> > size.
> >
> > ...
> 
> > Fixes: 62240a88004b ("PCI: rockchip: Drop storing driver private outbound resource data)
> > Reported-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> > Suggested-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> 
> Thanks, I applied this with Vicente's reported-by and tested-by and
> Andrew's ack to for-linus for v5.5.
> 
> I'm confused about "msg_bus_addr".  It is computed as
> "entry->res->start - entry->offset + <other stuff>".  A struct
> resource contains a CPU physical address, and adding entry->offset
> gets you a PCI bus address.  But later rockchip_pcie_probe() calls
> devm_ioremap(rockchip->msg_bus_addr), which expects a CPU physical
> address.  So it looks like we're passing a PCI bus address when we
> should be passing a CPU physical address.  What am I missing?

With a quick glance it does look like that is incorrect.

It's likely to have never been a problem because the only DT user
has an identity map as its MEM range:

ranges = <0x83000000 0x0 0xfa000000 0x0 0xfa000000 0x0 0x1e00000...

It doesn't help that it is called msg_bus_addr and not msg_cpu_addr.

Thanks,

Andrew Murray

> 
> For the future, I do think we should consider:
> 
>   - Renaming rockchip_pcie_prog_ob_atu() and
>     rockchip_pcie_prog_ib_atu() so they match
>     dw_pcie_prog_outbound_atu() and dw_pcie_prog_inbound_atu().
> 
>   - Changing the rockchip_pcie_prog_ob_atu() and
>     rockchip_pcie_prog_ib_atu() interfaces so they take a 64-bit
>     pci_addr/cpu_addr instead of 32-bit lower_addr and upper_addr,
>     also to follow the dw examples.
> 
>   - Renaming the rockchip_pcie_cfg_atu() local "offset" to "index" or
>     similar since it's a register number, not a memory or I/O space
>     offset.
> 
>   - Reworking the rockchip_pcie_cfg_atu() loops.  Currently there are
>     three different ways to compute the register number.  The
>     msg_bus_addr computation is split between the top and bottom of
>     the function and uses "reg_no" left over from the IO loop and
>     "offset" left from the memory loop.  Maybe something like this:
> 
>       rockchip_pcie_prog_inbound_atu(rockchip, 2, 32 - 1, 0);
> 
>       atu_idx = 1;
> 
>       mem = resource_list_first_type(&bridge->windows, IORESOURCE_MEM);
>       mem_entries = resource_size(mem->res) >> 20;
>       mem_pci_addr = mem->res->start - mem->offset;
>       for (i = 0; i < mem_entries; i++, atu_idx++)
>         rockchip_pcie_prog_outbound_atu(rockchip, atu_idx,
>                                         AXI_WRAPPER_MEM_WRITE, 20 - 1,
>                                         mem_pci_addr + (i << 20));
> 
>       io = resource_list_first_type(&bridge->windows, IORESOURCE_IO);
>       io_entries = resource_size(entry->res) >> 20;
>       io_pci_addr = io->res->start - io->offset;
>       for (i = 0; i < io_entries; i++, atu_idx++)
>         rockchip_pcie_prog_outbound_atu(rockchip, atu_idx,
>                                         AXI_WRAPPER_IO_WRITE, 20 - 1,
>                                         io_pci_addr + (i << 20));
> 
>       rockchip_pcie_prog_outbound_atu(rockchip, atu_idx,
>                                       AXI_WRAPPER_NOR_MSG, 20 - 1, 0);
>       rockchip->msg_bus_addr = mem_pci_addr +
>         (mem_entries + io_entries) << 20);
> 
> > ---
> > 
> >  drivers/pci/controller/pcie-rockchip-host.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> > index d9b63bfa5dd7..94af6f5828a3 100644
> > --- a/drivers/pci/controller/pcie-rockchip-host.c
> > +++ b/drivers/pci/controller/pcie-rockchip-host.c
> > @@ -834,10 +834,12 @@ static int rockchip_pcie_cfg_atu(struct rockchip_pcie *rockchip)
> >  	if (!entry)
> >  		return -ENODEV;
> >  
> > +	/* store the register number offset to program RC io outbound ATU */
> > +	offset = size >> 20;
> > +
> >  	size = resource_size(entry->res);
> >  	pci_addr = entry->res->start - entry->offset;
> >  
> > -	offset = size >> 20;
> >  	for (reg_no = 0; reg_no < (size >> 20); reg_no++) {
> >  		err = rockchip_pcie_prog_ob_atu(rockchip,
> >  						reg_no + 1 + offset,
> > -- 
> > 2.20.1
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
