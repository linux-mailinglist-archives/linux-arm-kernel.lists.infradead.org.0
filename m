Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C3311D88C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 22:29:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=z3yWOXDNj3G/zgs/B3aWUf+RnR9mHlkijCAJP+GSRwY=; b=MIHZxhwlAsp6Rr
	Nhu9N/Nfpp/vL2aN9tGj2QBFDsaiSyS5X7zoVminxT1bXP7rFBNpQM6A+HdoMCZLP7bV+IkazlZBe
	Mhs5RRcneMR2JglnCaW4cf8rWWMUt1XXgTRtGWK/o/eCRgPRr8YgVzK0I3zPE4O78Dzd1ULnO+GhM
	waUUKu/uihJM4uG9L0LN+P0FXPBgH0z/62pL57snMmeDbIUqzygK+xzQriH/YSqG7kFBiz7DTvbKE
	F92OtBpWyJGmIe1f+zCl/fcfbvDMTwmeUDxMBzkaW6rnts2/Wf/PnBq88+2oZ1DManrkX3rl3uTgt
	0mFGo2cebDKDNQZkXtmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifW1t-0003wB-MB; Thu, 12 Dec 2019 21:29:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifW1m-0003vG-91; Thu, 12 Dec 2019 21:29:43 +0000
Received: from localhost (mobile-166-170-223-177.mycingular.net
 [166.170.223.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD8402054F;
 Thu, 12 Dec 2019 21:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576186178;
 bh=8Wowg5V6SXmd4dQi9NTO8PQLQmoKCLNZs2KZBgwQU2A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=V5RKeHQ9a9KdRLvZdxd5Dc72m6H6D2KCCRw5jUO301Obli6gN9ibNNCTHU1FFH3zh
 y7q0Vm0PH4DR3hp2kJekphvHEyAnkMTyP3f+dDUWCcE9ZLEDrKQYfcKPfJI8l00nIa
 behpVtbVmbo1KZBwtFHSA4x52JxbjIhqAlf3WEAs=
Date: Thu, 12 Dec 2019 15:29:36 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH] PCI: rockchip: Fix register number offset to program IO
 outbound ATU
Message-ID: <20191212212936.GA13645@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211093450.7481-1-enric.balletbo@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_132942_358470_F9730F4A 
X-CRM114-Status: GOOD (  19.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FAKE_REPLY_C           No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-pci@vger.kernel.org, groeck@chromium.org,
 Andrew Murray <andrew.murray@arm.com>,
 Collabora Kernel ML <kernel@collabora.com>, bleung@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+cc Vicente]

On Wed, Dec 11, 2019 at 10:34:50AM +0100, Enric Balletbo i Serra wrote:
> Since commit '62240a88004b ("PCI: rockchip: Drop storing driver private
> outbound resource data)' the offset calculation is wrong to access the
> register number to program the IO outbound ATU. The offset should be
> based on the IORESOURCE_MEM resource size instead of the IORESOURCE_IO
> size.
>
> ...

> Fixes: 62240a88004b ("PCI: rockchip: Drop storing driver private outbound resource data)
> Reported-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> Suggested-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

Thanks, I applied this with Vicente's reported-by and tested-by and
Andrew's ack to for-linus for v5.5.

I'm confused about "msg_bus_addr".  It is computed as
"entry->res->start - entry->offset + <other stuff>".  A struct
resource contains a CPU physical address, and adding entry->offset
gets you a PCI bus address.  But later rockchip_pcie_probe() calls
devm_ioremap(rockchip->msg_bus_addr), which expects a CPU physical
address.  So it looks like we're passing a PCI bus address when we
should be passing a CPU physical address.  What am I missing?

For the future, I do think we should consider:

  - Renaming rockchip_pcie_prog_ob_atu() and
    rockchip_pcie_prog_ib_atu() so they match
    dw_pcie_prog_outbound_atu() and dw_pcie_prog_inbound_atu().

  - Changing the rockchip_pcie_prog_ob_atu() and
    rockchip_pcie_prog_ib_atu() interfaces so they take a 64-bit
    pci_addr/cpu_addr instead of 32-bit lower_addr and upper_addr,
    also to follow the dw examples.

  - Renaming the rockchip_pcie_cfg_atu() local "offset" to "index" or
    similar since it's a register number, not a memory or I/O space
    offset.

  - Reworking the rockchip_pcie_cfg_atu() loops.  Currently there are
    three different ways to compute the register number.  The
    msg_bus_addr computation is split between the top and bottom of
    the function and uses "reg_no" left over from the IO loop and
    "offset" left from the memory loop.  Maybe something like this:

      rockchip_pcie_prog_inbound_atu(rockchip, 2, 32 - 1, 0);

      atu_idx = 1;

      mem = resource_list_first_type(&bridge->windows, IORESOURCE_MEM);
      mem_entries = resource_size(mem->res) >> 20;
      mem_pci_addr = mem->res->start - mem->offset;
      for (i = 0; i < mem_entries; i++, atu_idx++)
        rockchip_pcie_prog_outbound_atu(rockchip, atu_idx,
                                        AXI_WRAPPER_MEM_WRITE, 20 - 1,
                                        mem_pci_addr + (i << 20));

      io = resource_list_first_type(&bridge->windows, IORESOURCE_IO);
      io_entries = resource_size(entry->res) >> 20;
      io_pci_addr = io->res->start - io->offset;
      for (i = 0; i < io_entries; i++, atu_idx++)
        rockchip_pcie_prog_outbound_atu(rockchip, atu_idx,
                                        AXI_WRAPPER_IO_WRITE, 20 - 1,
                                        io_pci_addr + (i << 20));

      rockchip_pcie_prog_outbound_atu(rockchip, atu_idx,
                                      AXI_WRAPPER_NOR_MSG, 20 - 1, 0);
      rockchip->msg_bus_addr = mem_pci_addr +
        (mem_entries + io_entries) << 20);

> ---
> 
>  drivers/pci/controller/pcie-rockchip-host.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> index d9b63bfa5dd7..94af6f5828a3 100644
> --- a/drivers/pci/controller/pcie-rockchip-host.c
> +++ b/drivers/pci/controller/pcie-rockchip-host.c
> @@ -834,10 +834,12 @@ static int rockchip_pcie_cfg_atu(struct rockchip_pcie *rockchip)
>  	if (!entry)
>  		return -ENODEV;
>  
> +	/* store the register number offset to program RC io outbound ATU */
> +	offset = size >> 20;
> +
>  	size = resource_size(entry->res);
>  	pci_addr = entry->res->start - entry->offset;
>  
> -	offset = size >> 20;
>  	for (reg_no = 0; reg_no < (size >> 20); reg_no++) {
>  		err = rockchip_pcie_prog_ob_atu(rockchip,
>  						reg_no + 1 + offset,
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
