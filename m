Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74430105803
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 18:08:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2nInWB2rubRq/05XDzOQwEw7/eBbmEZUYbuDLP587sk=; b=a9w97ovputAFtnAKHna/n2XGJ
	IUqXfuYjMgJZbLQfGCw2ZV7Py7X374rqax7nDal7JJ7a1LulQf6S1eqZii6AtjKwyPq5wp00vxZYg
	Y6uO9ico89nM3If9PLNznZZek0TpkLNIYB0gbis41zj8CjLg1uCncIHd8X0OtdRZXTOuMOo/DgKwN
	rbe/F2kLNEW6DsIS7L+4Y1/GtSacva5QJ/kHsWjzBTADYG8Fnimakzt3PQFxj8WXaO8SFaUas0E7N
	5fg0U+OJ5UFUg/vpm56dAKLf3v+WLldara+sUhWrt45F0uJFHiZH2UZUqXGGiiwPGADfgjNJMzUFN
	XiXNImlWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXpwA-0006Eu-0A; Thu, 21 Nov 2019 17:08:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXpw0-0006E1-RO
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 17:08:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E0BA9328;
 Thu, 21 Nov 2019 09:07:59 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 937C53F52E;
 Thu, 21 Nov 2019 09:07:55 -0800 (PST)
Subject: Re: [PATCH v2] dma-mapping: treat dev->bus_dma_mask as a DMA limit
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Dave Hansen <dave.hansen@linux.intel.com>, Andy Lutomirski
 <luto@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Hanjun Guo <guohanjun@huawei.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>
References: <20191121092646.8449-1-nsaenzjulienne@suse.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <c407877d-a812-de85-5e8f-e0915f5a517f@arm.com>
Date: Thu, 21 Nov 2019 17:07:54 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191121092646.8449-1-nsaenzjulienne@suse.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_090800_971746_51C47AEA 
X-CRM114-Status: GOOD (  36.50  )
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-kernel@vger.kernel.org, linux-ide@vger.kernel.org,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Paul Burton <paulburton@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, linux-acpi@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 linux-pci@vger.kernel.org, James Hogan <jhogan@kernel.org>,
 Len Brown <lenb@kernel.org>, devicetree@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 iommu@lists.linux-foundation.org, linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21/11/2019 9:26 am, Nicolas Saenz Julienne wrote:
> Using a mask to represent bus DMA constraints has a set of limitations.
> The biggest one being it can only hold a power of two (minus one). The
> DMA mapping code is already aware of this and treats dev->bus_dma_mask
> as a limit. This quirk is already used by some architectures although
> still rare.
> 
> With the introduction of the Raspberry Pi 4 we've found a new contender
> for the use of bus DMA limits, as its PCIe bus can only address the
> lower 3GB of memory (of a total of 4GB). This is impossible to represent
> with a mask. To make things worse the device-tree code rounds non power
> of two bus DMA limits to the next power of two, which is unacceptable in
> this case.
> 
> In the light of this, rename dev->bus_dma_mask to dev->bus_dma_limit all
> over the tree and treat it as such. Note that dev->bus_dma_limit should
> contain the higher accesible DMA address.

^^ super-nit only because I can't not see my editor currently 
highlighting the typo: "accessible"

Regardless of that though,

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> ---
> 
> Changes since v1:
>    - rework ACPI code to avoid divergence with OF's
> 
>   arch/mips/pci/fixup-sb1250.c  | 16 ++++++++--------
>   arch/powerpc/sysdev/fsl_pci.c |  6 +++---
>   arch/x86/kernel/pci-dma.c     |  2 +-
>   arch/x86/mm/mem_encrypt.c     |  2 +-
>   arch/x86/pci/sta2x11-fixup.c  |  2 +-
>   drivers/acpi/arm64/iort.c     | 20 +++++++-------------
>   drivers/ata/ahci.c            |  2 +-
>   drivers/iommu/dma-iommu.c     |  3 +--
>   drivers/of/device.c           |  9 +++++----
>   include/linux/device.h        |  6 +++---
>   include/linux/dma-direct.h    |  2 +-
>   include/linux/dma-mapping.h   |  2 +-
>   kernel/dma/direct.c           | 27 +++++++++++++--------------
>   13 files changed, 46 insertions(+), 53 deletions(-)
> 
> diff --git a/arch/mips/pci/fixup-sb1250.c b/arch/mips/pci/fixup-sb1250.c
> index 8a41b359cf90..40efc990cdce 100644
> --- a/arch/mips/pci/fixup-sb1250.c
> +++ b/arch/mips/pci/fixup-sb1250.c
> @@ -21,22 +21,22 @@ DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_SIBYTE, PCI_DEVICE_ID_BCM1250_PCI,
>   
>   /*
>    * The BCM1250, etc. PCI host bridge does not support DAC on its 32-bit
> - * bus, so we set the bus's DMA mask accordingly.  However the HT link
> + * bus, so we set the bus's DMA limit accordingly.  However the HT link
>    * down the artificial PCI-HT bridge supports 40-bit addressing and the
>    * SP1011 HT-PCI bridge downstream supports both DAC and a 64-bit bus
>    * width, so we record the PCI-HT bridge's secondary and subordinate bus
> - * numbers and do not set the mask for devices present in the inclusive
> + * numbers and do not set the limit for devices present in the inclusive
>    * range of those.
>    */
> -struct sb1250_bus_dma_mask_exclude {
> +struct sb1250_bus_dma_limit_exclude {
>   	bool set;
>   	unsigned char start;
>   	unsigned char end;
>   };
>   
> -static int sb1250_bus_dma_mask(struct pci_dev *dev, void *data)
> +static int sb1250_bus_dma_limit(struct pci_dev *dev, void *data)
>   {
> -	struct sb1250_bus_dma_mask_exclude *exclude = data;
> +	struct sb1250_bus_dma_limit_exclude *exclude = data;
>   	bool exclude_this;
>   	bool ht_bridge;
>   
> @@ -55,7 +55,7 @@ static int sb1250_bus_dma_mask(struct pci_dev *dev, void *data)
>   			exclude->start, exclude->end);
>   	} else {
>   		dev_dbg(&dev->dev, "disabling DAC for device");
> -		dev->dev.bus_dma_mask = DMA_BIT_MASK(32);
> +		dev->dev.bus_dma_limit = DMA_BIT_MASK(32);
>   	}
>   
>   	return 0;
> @@ -63,9 +63,9 @@ static int sb1250_bus_dma_mask(struct pci_dev *dev, void *data)
>   
>   static void quirk_sb1250_pci_dac(struct pci_dev *dev)
>   {
> -	struct sb1250_bus_dma_mask_exclude exclude = { .set = false };
> +	struct sb1250_bus_dma_limit_exclude exclude = { .set = false };
>   
> -	pci_walk_bus(dev->bus, sb1250_bus_dma_mask, &exclude);
> +	pci_walk_bus(dev->bus, sb1250_bus_dma_limit, &exclude);
>   }
>   DECLARE_PCI_FIXUP_FINAL(PCI_VENDOR_ID_SIBYTE, PCI_DEVICE_ID_BCM1250_PCI,
>   			quirk_sb1250_pci_dac);
> diff --git a/arch/powerpc/sysdev/fsl_pci.c b/arch/powerpc/sysdev/fsl_pci.c
> index ff0e2b156cb5..617a443d673d 100644
> --- a/arch/powerpc/sysdev/fsl_pci.c
> +++ b/arch/powerpc/sysdev/fsl_pci.c
> @@ -115,8 +115,8 @@ static void pci_dma_dev_setup_swiotlb(struct pci_dev *pdev)
>   {
>   	struct pci_controller *hose = pci_bus_to_host(pdev->bus);
>   
> -	pdev->dev.bus_dma_mask =
> -		hose->dma_window_base_cur + hose->dma_window_size;
> +	pdev->dev.bus_dma_limit =
> +		hose->dma_window_base_cur + hose->dma_window_size - 1;
>   }
>   
>   static void setup_swiotlb_ops(struct pci_controller *hose)
> @@ -135,7 +135,7 @@ static void fsl_pci_dma_set_mask(struct device *dev, u64 dma_mask)
>   	 * mapping that allows addressing any RAM address from across PCI.
>   	 */
>   	if (dev_is_pci(dev) && dma_mask >= pci64_dma_offset * 2 - 1) {
> -		dev->bus_dma_mask = 0;
> +		dev->bus_dma_limit = 0;
>   		dev->archdata.dma_offset = pci64_dma_offset;
>   	}
>   }
> diff --git a/arch/x86/kernel/pci-dma.c b/arch/x86/kernel/pci-dma.c
> index 57de2ebff7e2..5dcedad21dff 100644
> --- a/arch/x86/kernel/pci-dma.c
> +++ b/arch/x86/kernel/pci-dma.c
> @@ -140,7 +140,7 @@ rootfs_initcall(pci_iommu_init);
>   
>   static int via_no_dac_cb(struct pci_dev *pdev, void *data)
>   {
> -	pdev->dev.bus_dma_mask = DMA_BIT_MASK(32);
> +	pdev->dev.bus_dma_limit = DMA_BIT_MASK(32);
>   	return 0;
>   }
>   
> diff --git a/arch/x86/mm/mem_encrypt.c b/arch/x86/mm/mem_encrypt.c
> index 9268c12458c8..a03614bd3e1a 100644
> --- a/arch/x86/mm/mem_encrypt.c
> +++ b/arch/x86/mm/mem_encrypt.c
> @@ -367,7 +367,7 @@ bool force_dma_unencrypted(struct device *dev)
>   	if (sme_active()) {
>   		u64 dma_enc_mask = DMA_BIT_MASK(__ffs64(sme_me_mask));
>   		u64 dma_dev_mask = min_not_zero(dev->coherent_dma_mask,
> -						dev->bus_dma_mask);
> +						dev->bus_dma_limit);
>   
>   		if (dma_dev_mask <= dma_enc_mask)
>   			return true;
> diff --git a/arch/x86/pci/sta2x11-fixup.c b/arch/x86/pci/sta2x11-fixup.c
> index 4a631264b809..c313d784efab 100644
> --- a/arch/x86/pci/sta2x11-fixup.c
> +++ b/arch/x86/pci/sta2x11-fixup.c
> @@ -143,7 +143,7 @@ static void sta2x11_map_ep(struct pci_dev *pdev)
>   
>   	dev->dma_pfn_offset = PFN_DOWN(-amba_base);
>   
> -	dev->bus_dma_mask = max_amba_addr;
> +	dev->bus_dma_limit = max_amba_addr;
>   	pci_set_consistent_dma_mask(pdev, max_amba_addr);
>   	pci_set_dma_mask(pdev, max_amba_addr);
>   
> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> index 5a7551d060f2..33f71983e001 100644
> --- a/drivers/acpi/arm64/iort.c
> +++ b/drivers/acpi/arm64/iort.c
> @@ -1057,8 +1057,8 @@ static int rc_dma_get_range(struct device *dev, u64 *size)
>    */
>   void iort_dma_setup(struct device *dev, u64 *dma_addr, u64 *dma_size)
>   {
> -	u64 mask, dmaaddr = 0, size = 0, offset = 0;
> -	int ret, msb;
> +	u64 end, mask, dmaaddr = 0, size = 0, offset = 0;
> +	int ret;
>   
>   	/*
>   	 * If @dev is expected to be DMA-capable then the bus code that created
> @@ -1085,19 +1085,13 @@ void iort_dma_setup(struct device *dev, u64 *dma_addr, u64 *dma_size)
>   	}
>   
>   	if (!ret) {
> -		msb = fls64(dmaaddr + size - 1);
>   		/*
> -		 * Round-up to the power-of-two mask or set
> -		 * the mask to the whole 64-bit address space
> -		 * in case the DMA region covers the full
> -		 * memory window.
> +		 * Limit coherent and dma mask based on size retrieved from
> +		 * firmware.
>   		 */
> -		mask = msb == 64 ? U64_MAX : (1ULL << msb) - 1;
> -		/*
> -		 * Limit coherent and dma mask based on size
> -		 * retrieved from firmware.
> -		 */
> -		dev->bus_dma_mask = mask;
> +		end = dmaaddr + size - 1;
> +		mask = DMA_BIT_MASK(ilog2(end) + 1);
> +		dev->bus_dma_limit = end;
>   		dev->coherent_dma_mask = mask;
>   		*dev->dma_mask = mask;
>   	}
> diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
> index ec6c64fce74a..4bfd1b14b390 100644
> --- a/drivers/ata/ahci.c
> +++ b/drivers/ata/ahci.c
> @@ -910,7 +910,7 @@ static int ahci_configure_dma_masks(struct pci_dev *pdev, int using_dac)
>   	 * value, don't extend it here. This happens on STA2X11, for example.
>   	 *
>   	 * XXX: manipulating the DMA mask from platform code is completely
> -	 * bogus, platform code should use dev->bus_dma_mask instead..
> +	 * bogus, platform code should use dev->bus_dma_limit instead..
>   	 */
>   	if (pdev->dma_mask && pdev->dma_mask < DMA_BIT_MASK(32))
>   		return 0;
> diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> index 041066f3ec99..0cc702a70a96 100644
> --- a/drivers/iommu/dma-iommu.c
> +++ b/drivers/iommu/dma-iommu.c
> @@ -421,8 +421,7 @@ static dma_addr_t iommu_dma_alloc_iova(struct iommu_domain *domain,
>   	if (iova_len < (1 << (IOVA_RANGE_CACHE_MAX_SIZE - 1)))
>   		iova_len = roundup_pow_of_two(iova_len);
>   
> -	if (dev->bus_dma_mask)
> -		dma_limit &= dev->bus_dma_mask;
> +	dma_limit = min_not_zero(dma_limit, dev->bus_dma_limit);
>   
>   	if (domain->geometry.force_aperture)
>   		dma_limit = min(dma_limit, domain->geometry.aperture_end);
> diff --git a/drivers/of/device.c b/drivers/of/device.c
> index da8158392010..e9127db7b067 100644
> --- a/drivers/of/device.c
> +++ b/drivers/of/device.c
> @@ -93,7 +93,7 @@ int of_dma_configure(struct device *dev, struct device_node *np, bool force_dma)
>   	bool coherent;
>   	unsigned long offset;
>   	const struct iommu_ops *iommu;
> -	u64 mask;
> +	u64 mask, end;
>   
>   	ret = of_dma_get_range(np, &dma_addr, &paddr, &size);
>   	if (ret < 0) {
> @@ -148,12 +148,13 @@ int of_dma_configure(struct device *dev, struct device_node *np, bool force_dma)
>   	 * Limit coherent and dma mask based on size and default mask
>   	 * set by the driver.
>   	 */
> -	mask = DMA_BIT_MASK(ilog2(dma_addr + size - 1) + 1);
> +	end = dma_addr + size - 1;
> +	mask = DMA_BIT_MASK(ilog2(end) + 1);
>   	dev->coherent_dma_mask &= mask;
>   	*dev->dma_mask &= mask;
> -	/* ...but only set bus mask if we found valid dma-ranges earlier */
> +	/* ...but only set bus limit if we found valid dma-ranges earlier */
>   	if (!ret)
> -		dev->bus_dma_mask = mask;
> +		dev->bus_dma_limit = end;
>   
>   	coherent = of_dma_is_coherent(np);
>   	dev_dbg(dev, "device is%sdma coherent\n",
> diff --git a/include/linux/device.h b/include/linux/device.h
> index 99af366db50d..dada6b4bd7e0 100644
> --- a/include/linux/device.h
> +++ b/include/linux/device.h
> @@ -1214,8 +1214,8 @@ struct dev_links_info {
>    * @coherent_dma_mask: Like dma_mask, but for alloc_coherent mapping as not all
>    * 		hardware supports 64-bit addresses for consistent allocations
>    * 		such descriptors.
> - * @bus_dma_mask: Mask of an upstream bridge or bus which imposes a smaller DMA
> - *		limit than the device itself supports.
> + * @bus_dma_limit: Limit of an upstream bridge or bus which imposes a smaller
> + *		DMA limit than the device itself supports.
>    * @dma_pfn_offset: offset of DMA memory range relatively of RAM
>    * @dma_parms:	A low level driver may set these to teach IOMMU code about
>    * 		segment limitations.
> @@ -1301,7 +1301,7 @@ struct device {
>   					     not all hardware supports
>   					     64 bit addresses for consistent
>   					     allocations such descriptors. */
> -	u64		bus_dma_mask;	/* upstream dma_mask constraint */
> +	u64		bus_dma_limit;	/* upstream dma constraint */
>   	unsigned long	dma_pfn_offset;
>   
>   	struct device_dma_parameters *dma_parms;
> diff --git a/include/linux/dma-direct.h b/include/linux/dma-direct.h
> index c5c5b5ff2371..aa031cb213c3 100644
> --- a/include/linux/dma-direct.h
> +++ b/include/linux/dma-direct.h
> @@ -62,7 +62,7 @@ static inline bool dma_capable(struct device *dev, dma_addr_t addr, size_t size)
>   	    min(addr, end) < phys_to_dma(dev, PFN_PHYS(min_low_pfn)))
>   		return false;
>   
> -	return end <= min_not_zero(*dev->dma_mask, dev->bus_dma_mask);
> +	return end <= min_not_zero(*dev->dma_mask, dev->bus_dma_limit);
>   }
>   
>   u64 dma_direct_get_required_mask(struct device *dev);
> diff --git a/include/linux/dma-mapping.h b/include/linux/dma-mapping.h
> index a4930310d0c7..330ad58fbf4d 100644
> --- a/include/linux/dma-mapping.h
> +++ b/include/linux/dma-mapping.h
> @@ -694,7 +694,7 @@ static inline int dma_coerce_mask_and_coherent(struct device *dev, u64 mask)
>    */
>   static inline bool dma_addressing_limited(struct device *dev)
>   {
> -	return min_not_zero(dma_get_mask(dev), dev->bus_dma_mask) <
> +	return min_not_zero(dma_get_mask(dev), dev->bus_dma_limit) <
>   			    dma_get_required_mask(dev);
>   }
>   
> diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
> index 84cf8be65078..998d48ddfb07 100644
> --- a/kernel/dma/direct.c
> +++ b/kernel/dma/direct.c
> @@ -27,10 +27,10 @@ static void report_addr(struct device *dev, dma_addr_t dma_addr, size_t size)
>   {
>   	if (!dev->dma_mask) {
>   		dev_err_once(dev, "DMA map on device without dma_mask\n");
> -	} else if (*dev->dma_mask >= DMA_BIT_MASK(32) || dev->bus_dma_mask) {
> +	} else if (*dev->dma_mask >= DMA_BIT_MASK(32) || dev->bus_dma_limit) {
>   		dev_err_once(dev,
> -			"overflow %pad+%zu of DMA mask %llx bus mask %llx\n",
> -			&dma_addr, size, *dev->dma_mask, dev->bus_dma_mask);
> +			"overflow %pad+%zu of DMA mask %llx bus limit %llx\n",
> +			&dma_addr, size, *dev->dma_mask, dev->bus_dma_limit);
>   	}
>   	WARN_ON_ONCE(1);
>   }
> @@ -57,15 +57,14 @@ u64 dma_direct_get_required_mask(struct device *dev)
>   }
>   
>   static gfp_t __dma_direct_optimal_gfp_mask(struct device *dev, u64 dma_mask,
> -		u64 *phys_mask)
> +		u64 *phys_limit)
>   {
> -	if (dev->bus_dma_mask && dev->bus_dma_mask < dma_mask)
> -		dma_mask = dev->bus_dma_mask;
> +	u64 dma_limit = min_not_zero(dma_mask, dev->bus_dma_limit);
>   
>   	if (force_dma_unencrypted(dev))
> -		*phys_mask = __dma_to_phys(dev, dma_mask);
> +		*phys_limit = __dma_to_phys(dev, dma_limit);
>   	else
> -		*phys_mask = dma_to_phys(dev, dma_mask);
> +		*phys_limit = dma_to_phys(dev, dma_limit);
>   
>   	/*
>   	 * Optimistically try the zone that the physical address mask falls
> @@ -75,9 +74,9 @@ static gfp_t __dma_direct_optimal_gfp_mask(struct device *dev, u64 dma_mask,
>   	 * Note that GFP_DMA32 and GFP_DMA are no ops without the corresponding
>   	 * zones.
>   	 */
> -	if (*phys_mask <= DMA_BIT_MASK(zone_dma_bits))
> +	if (*phys_limit <= DMA_BIT_MASK(zone_dma_bits))
>   		return GFP_DMA;
> -	if (*phys_mask <= DMA_BIT_MASK(32))
> +	if (*phys_limit <= DMA_BIT_MASK(32))
>   		return GFP_DMA32;
>   	return 0;
>   }
> @@ -85,7 +84,7 @@ static gfp_t __dma_direct_optimal_gfp_mask(struct device *dev, u64 dma_mask,
>   static bool dma_coherent_ok(struct device *dev, phys_addr_t phys, size_t size)
>   {
>   	return phys_to_dma_direct(dev, phys) + size - 1 <=
> -			min_not_zero(dev->coherent_dma_mask, dev->bus_dma_mask);
> +			min_not_zero(dev->coherent_dma_mask, dev->bus_dma_limit);
>   }
>   
>   struct page *__dma_direct_alloc_pages(struct device *dev, size_t size,
> @@ -94,7 +93,7 @@ struct page *__dma_direct_alloc_pages(struct device *dev, size_t size,
>   	size_t alloc_size = PAGE_ALIGN(size);
>   	int node = dev_to_node(dev);
>   	struct page *page = NULL;
> -	u64 phys_mask;
> +	u64 phys_limit;
>   
>   	if (attrs & DMA_ATTR_NO_WARN)
>   		gfp |= __GFP_NOWARN;
> @@ -102,7 +101,7 @@ struct page *__dma_direct_alloc_pages(struct device *dev, size_t size,
>   	/* we always manually zero the memory once we are done: */
>   	gfp &= ~__GFP_ZERO;
>   	gfp |= __dma_direct_optimal_gfp_mask(dev, dev->coherent_dma_mask,
> -			&phys_mask);
> +			&phys_limit);
>   	page = dma_alloc_contiguous(dev, alloc_size, gfp);
>   	if (page && !dma_coherent_ok(dev, page_to_phys(page), size)) {
>   		dma_free_contiguous(dev, page, alloc_size);
> @@ -116,7 +115,7 @@ struct page *__dma_direct_alloc_pages(struct device *dev, size_t size,
>   		page = NULL;
>   
>   		if (IS_ENABLED(CONFIG_ZONE_DMA32) &&
> -		    phys_mask < DMA_BIT_MASK(64) &&
> +		    phys_limit < DMA_BIT_MASK(64) &&
>   		    !(gfp & (GFP_DMA32 | GFP_DMA))) {
>   			gfp |= GFP_DMA32;
>   			goto again;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
