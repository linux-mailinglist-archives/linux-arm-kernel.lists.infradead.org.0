Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 547681055EC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 16:44:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=413kyS6eFNuVCpvg68gt5IyNwS1GX3KMJkmUz0f1hZA=; b=a7UaS5FWbwA2Cl
	XC4pgCxw+7vkWUL0YiAW8ddoM4ocq8YPym+yOJG8c1s3rE9vVlmUQAYm52JkwNlfo9h/AXnRUWMMB
	ZIA1Aq+AbmbIuTMQHPpMnXHA/0BPP42JBA8vsCkQhRyrgMLsjpj2op3ZGg3UZxhd0NghT0nyqPwgu
	K5NZFR6kfWKHEmxiJFd+ntVAUmRPLIvWMnNLRn6eVAqSzhYx0Vfk2epLCcVUcvYTg27YASEeUkut+
	MWB6gqULBac/TtCdH6VzhqfJEM13YKkdnUK2ynPUyFhvgvXGOwQJrtPs3pV/mGRJPdCb1xRvpGyvT
	2TmAHCGs7k2yCwSYW/hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXod4-0004BK-AB; Thu, 21 Nov 2019 15:44:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXocu-0004A5-2o; Thu, 21 Nov 2019 15:44:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C342BDA7;
 Thu, 21 Nov 2019 07:44:10 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3A7783F703;
 Thu, 21 Nov 2019 07:44:10 -0800 (PST)
Date: Thu, 21 Nov 2019 15:44:08 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v2 4/6] PCI: brcmstb: add Broadcom STB PCIe host
 controller driver
Message-ID: <20191121154408.GA43905@e119886-lin.cambridge.arm.com>
References: <20191112155926.16476-1-nsaenzjulienne@suse.de>
 <20191112155926.16476-5-nsaenzjulienne@suse.de>
 <20191119162502.GS43905@e119886-lin.cambridge.arm.com>
 <7e1be0bdcf303224a3fe225654a3c2391207f9eb.camel@suse.de>
 <20191121120319.GW43905@e119886-lin.cambridge.arm.com>
 <276d4160bbe6a4e8225bbd836f43d40da41d25f1.camel@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <276d4160bbe6a4e8225bbd836f43d40da41d25f1.camel@suse.de>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_074412_215521_21183C0D 
X-CRM114-Status: GOOD (  43.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, maz@kernel.org,
 phil@raspberrypi.org, linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 Eric Anholt <eric@anholt.net>, mbrugger@suse.com,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 james.quinlan@broadcom.com, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 01:59:40PM +0100, Nicolas Saenz Julienne wrote:
> Hi Andrew,
> 
> On Thu, 2019-11-21 at 12:03 +0000, Andrew Murray wrote:
> > > > > +static void brcm_pcie_set_outbound_win(struct brcm_pcie *pcie,
> > > > > +				       unsigned int win, phys_addr_t
> > > > > cpu_addr,
> > > > > +				       dma_addr_t  pcie_addr, dma_addr_t
> > > > > size)
> > > > > +{
> > > > > +	phys_addr_t cpu_addr_mb, limit_addr_mb;
> > > > > +	void __iomem *base = pcie->base;
> > > > > +	u32 tmp;
> > > > > +
> > > > > +	/* Set the base of the pcie_addr window */
> > > > > +	bcm_writel(lower_32_bits(pcie_addr) + MMIO_ENDIAN,
> > > > > +		   base + PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LO + (win * 8));
> > > > > +	bcm_writel(upper_32_bits(pcie_addr),
> > > > > +		   base + PCIE_MISC_CPU_2_PCIE_MEM_WIN0_HI + (win * 8));
> > > > > +
> > > > > +	cpu_addr_mb = cpu_addr >> 20;
> > > > > +	limit_addr_mb = (cpu_addr + size - 1) >> 20;
> > > > > +
> > > > > +	/* Write the addr base low register */
> > > > > +	WR_FLD_WITH_OFFSET(base, (win * 4),
> > > > > +			   PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT,
> > > > > +			   BASE, cpu_addr_mb);
> > > > > +	/* Write the addr limit low register */
> > > > > +	WR_FLD_WITH_OFFSET(base, (win * 4),
> > > > > +			   PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT,
> > > > > +			   LIMIT, limit_addr_mb);
> > > > > +
> > > > > +	/* Write the cpu addr high register */
> > > > > +	tmp = (u32)(cpu_addr_mb >>
> > > > > +		PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_NUM_MASK_BITS);
> > > > 
> > > > Despite the name _MASK_BITS, this isn't being used as a mask. Is this
> > > > making
> > > > some assumption about the value of cpu_addr from the DT?
> > > 
> > > It should be read _NUM_MASK_BITS. It contains the number of set bits on that
> > > specific mask. I agree it's not ideal. I think I'll be able to do away with
> > > it
> > > using the bitfield.h macros.
> > 
> > Also why do you have a define for
> > PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_NUM_MASK_BITS but not the '20' shift
> > used for the low registers?
> 
> Good point, I'm changing it to something more explicit:
> 
> 	cpu_addr_mb = cpu_addr / SZ_1M;
> 
> As for [...]_NUM_MASK_BITS I'm looking for a smart/generic way to calculate it
> from the actual mask. No luck so far. If not, I think I'll simply leave it as
> is for now.

OK.

> 
> > > FYI, What's happening here is that we have to save the CPU address range
> > > (which
> > > is already shifted right 20 positions) in two parts, the lower 12 bits go
> > > into
> > > PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT while the higher 8 bits go into
> > > PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_HI or
> > > PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LIMIT_HI.
> > 
> > The hardware spec require bits 31:20 of the address, and the high registers
> > require 39:32 right?
> 
> Yes, that's it.
> 
> > (Apologies, the indirection by the WR_FLD_** macros easily confuses me. These
> > type of macros are helpful, or rather would be if the whole kernel used them.
> > I think they can add confusion when each driver has its own set of similar
> > macros. This is why its *really* helpful to use any existing macros in the
> > kernel - and only invent new ones if needed).
> 
> I agree it's pretty confusing, I think v3, using bitfield.h as much as
> possible, looks substantially more welcoming.

Looking forward to seeing it.

> 
> > > [...]
> > > 
> > > > > +static inline int brcm_pcie_get_rc_bar2_size_and_offset(struct
> > > > > brcm_pcie
> > > > > *pcie,
> > > > > +							u64
> > > > > *rc_bar2_size,
> > > > > +							u64
> > > > > *rc_bar2_offset)
> > > > > +{
> > > > > +	struct pci_host_bridge *bridge =
> > > > > pci_host_bridge_from_priv(pcie);
> > > > > +	struct device *dev = pcie->dev;
> > > > > +	struct resource_entry *entry;
> > > > > +	u64 total_mem_size = 0;
> > > > > +
> > > > > +	*rc_bar2_offset = -1;
> > > > > +
> > > > > +	resource_list_for_each_entry(entry, &bridge->dma_ranges) {
> > > > > +		/*
> > > > > +		 * We're promised the RC will provide a contiguous view
> > > > > of
> > > > > +		 * memory to downstream devices. We can then infer the
> > > > > +		 * rc_bar2_offset from the lower available dma-range
> > > > > offset.
> > > > > +		 */
> > > > > +		if (entry->offset < *rc_bar2_offset)
> > > > > +			*rc_bar2_offset = entry->offset;
> > > > > +
> > > > > +		total_mem_size += entry->res->end - entry->res->start +
> > > > > 1;
> > > > 
> > > > This requires that if there are multiple dma-ranges, then there are no
> > > > gaps
> > > > between them right?
> > > 
> > > Yes, the PCI view of inbound memory will always be gapless. See an example
> > > here: https://patchwork.kernel.org/patch/10605957/
> > 
> > Thanks for the reference. 
> > 
> > 
> > > That said, iterating over the dma-ranges is not strictly necessary for now
> > > as
> > > RPi4 is assured to only need one. If that's bothering you I can always
> > > remove
> > > it for now.
> > 
> > One purpose of this function is to validate that the information given in the
> > device tree is valid - I've seen other feedback on these lists where the view
> > is taken that 'it's not the job of the kernel to validate the DT'. Subscribing
> > to this view would be a justification for removing this validation -
> > especially
> > given that the bindings you include have only one dma-range (in any case if
> > there are constraints you ought to include them in the binding document).
> > 
> > Though the problem with this point of view is that if the DT is wrong, it may
> > be possible for the driver to work well enough to do some function but with
> > some horrible side effects that are difficult to track down to a bad DT.
> > 
> > If you assume the DT will only have one range (at least for the Pi) then this
> > code will never be used and so can probably be removed.
> 
> Ok, less is more, I'll simplify it.
> 
> [...]
> 
> > > > > +			continue;
> > > > > +
> > > > > +		if (num_out_wins >= BRCM_NUM_PCIE_OUT_WINS) {
> > > > > +			dev_err(pcie->dev, "too many outbound wins\n");
> > > > > +			return -EINVAL;
> > > > > +		}
> > > > > +
> > > > > +		brcm_pcie_set_outbound_win(pcie, num_out_wins, res-
> > > > > >start,
> > > > > +					   res->start - entry->offset,
> > > > > +					   res->end - res->start + 1);
> > > > > +		num_out_wins++;
> > > > > +	}
> > > > > +
> > > > > +	/*
> > > > > +	 * For config space accesses on the RC, show the right class for
> > > > > +	 * a PCIe-PCIe bridge (the default setting is to be EP mode).
> > > > > +	 */
> > > > > +	WR_FLD_RB(base, PCIE_RC_CFG_PRIV1_ID_VAL3, CLASS_CODE,
> > > > > 0x060400);
> > > > 
> > > > Why does this need to be _RB ? I haven't looked at all of the uses of _RB
> > > > though I think there are others that may not be necessary.
> > > 
> > > We're reviewing the _RB usage with Jim, I'll come back to you on that topic
> > > later.
> > 
> > Thanks.
> 
> Jim and Florian went over all the _RB usages and found out none of them applied
> to the Pi. Apparently they where introduced as a form of barrier needed on some
> MIPS SoCs. Sorry for that, I'll remove them.

If I recall correctly, a read cannot overtake a write. Therefore adding a read
after a write ensures that the write has 'happened' to some degree...

> 
> > > [...]
> > > 
> > > > > +	__brcm_pcie_remove(pcie);
> > > > > +
> > > > > +	return 0;
> > > > > +}
> > > > > +
> > > > > +static const struct of_device_id brcm_pcie_match[] = {
> > > > > +	{ .compatible = "brcm,bcm2711-pcie", .data = &bcm2711_cfg },
> > > > 
> > > > I'd rather see use of the pcie_cfg_data structure removed from this
> > > > series.
> > > > 
> > > > I've seen the comments in the previous thread [1], and I understand that
> > > > the intention is that this driver will eventually be used for other SOCs.
> > > > 
> > > > However this indirection isn't needed *now* and it makes reviewing this
> > > > patch more difficult. If and when a later series is made to cover other
> > > > SOCs - then I'd expect that series to find a way to apply this
> > > > indirection.
> > > > 
> > > > And if that later series is more difficult to review because of the newly
> > > > added indirection, then I'd expect an early patch of that series to apply
> > > > the indirection in a single patch - which would be easy to review.
> > > > 
> > > > The other risk of such premature changes like this is that when you come
> > > > to adding other SOCs, you may then discover that there were shortcomings
> > > > in the way you've approached it here.
> > > > 
> > > 
> > > I was about to make a point similar to Florian's. I'll wait for your reply
> > > and
> > > change this accordingly.
> > 
> > No problem.
> 
> Following your reply, I'll remove it.

Thanks,

Andrew Murray

> 
> Regards,
> Nicolas
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
