Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB91F14AA2D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 20:01:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PRw+QOq/xJN0QLiqXa8XQw+5DHU1tBBGbIIS7IxKlrs=; b=pVSWkB/u10Qk1aHRj0d73aWfs
	/TyJXyFTiyWN6T/xLtkaAY7uI1C8OGMF7nH5F6FJlBqI+Ew1w9y+dt77cB676dDfbepK8DxDXwbFo
	BhUqFOvu4SYG6PgHUpOmw2kKp0wxtV2G3OgelaGyafxxLq3kZDIPIYCb0PlDeXeqUW7SAPF9+xIt/
	If7pAdR8p2fHsHphGe/zkz9dN3oQOSf+L9633DfZF6HMNUpdiF/T3p32lVVlerC0klibueGZdaJNH
	g2r4OjO4EGKlgUF6DMi78+HWUXyLb8dZePcBfV/YQpbORAuAvr+hwBqAw0Mfkq1ULuVRDlz7ks52p
	fp3T39YBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw9dZ-0000LC-6Q; Mon, 27 Jan 2020 19:01:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw9dK-0000JR-Rt
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 19:01:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 804C830E;
 Mon, 27 Jan 2020 11:01:12 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5416A3F52E;
 Mon, 27 Jan 2020 11:01:07 -0800 (PST)
Subject: Re: [PATCH 2/3] iommu: Add Allwinner H6 IOMMU driver
To: Maxime Ripard <maxime@cerno.tech>
References: <cover.b2a9e1507135d81e726fcbb65137665a7f0ab74f.1579696927.git-series.maxime@cerno.tech>
 <fe383c3f6fa0db772c87d9d9080add97efe9ba1a.1579696927.git-series.maxime@cerno.tech>
 <a0bec2de-e87a-ddac-450e-b0f467158796@arm.com>
 <20200127142256.us5zpcft5obd7zu6@gilmour.lan>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <99e9cb73-761f-3b30-bd73-c50aa7c21692@arm.com>
Date: Mon, 27 Jan 2020 19:01:02 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200127142256.us5zpcft5obd7zu6@gilmour.lan>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_110115_000315_84DEA1EA 
X-CRM114-Status: GOOD (  50.10  )
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
 Joerg Roedel <joro@8bytes.org>, iommu@lists.linux-foundation.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/01/2020 2:22 pm, Maxime Ripard wrote:
> Hi Robin,
> 
> Thanks for the extensive review :)
> 
> On Thu, Jan 23, 2020 at 06:47:14PM +0000, Robin Murphy wrote:
>> This looks like a pretty decent first cut of a driver, thanks! Plenty of
>> comments, but overall it looks to be in mostly the right shape to begin
>> with.
>>
>> On 22/01/2020 12:44 pm, Maxime Ripard wrote:
>>> The Allwinner H6 has introduced an IOMMU for a few DMA controllers, mostly
>>> video related: the display engine, the video decoders / encoders, the
>>> camera capture controller, etc.
>>>
>>> The design is pretty simple compared to other IOMMUs found in SoCs: there's
>>> a single instance, controlling all the masters, with a single address
>>> space.
>>>
>>> It also features a performance monitoring unit that allows to retrieve
>>> various informations (per-master and global TLB accesses, hits and misses,
>>> access latency, etc) that isn't supported at the moment.
>>
>> Yes, it sounds like that might ideally be a separate perf_events driver, but
>> there's no need to get into the details of that until the basic IOMMU driver
>> is baked.
>>
>>> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>>> ---
>>>    drivers/iommu/Kconfig        |   10 +-
>>>    drivers/iommu/Makefile       |    1 +-
>>>    drivers/iommu/sun50i-iommu.c | 1126 +++++++++++++++++++++++++++++++++++-
>>>    3 files changed, 1137 insertions(+)
>>>    create mode 100644 drivers/iommu/sun50i-iommu.c
>>>
>>> diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
>>> index 0b9d78a0f3ac..5cbfa6f282e2 100644
>>> --- a/drivers/iommu/Kconfig
>>> +++ b/drivers/iommu/Kconfig
>>> @@ -289,6 +289,16 @@ config ROCKCHIP_IOMMU
>>>    	  Say Y here if you are using a Rockchip SoC that includes an IOMMU
>>>    	  device.
>>> +config SUN50I_IOMMU
>>> +	bool "Allwinner H6 IOMMU Support"
>>> +	depends on ARM || ARM64
>>> +	depends on ARCH_SUNXI
>>
>> Surely ARCH_SUNXI implies "ARM || ARM64" anyway? Ideally there shouldn't be
>> anything CPU-specific here, so supporting COMPILE_TEST as well would be
>> nice.
> 
> I guess, yes, I'll change that.
> 
> ...
> 
>>> +#define IOMMU_DM_AUT_CTRL_REG(d)	(0x0b0 + ((d) / 2) * 4)
>>> +#define IOMMU_DM_AUT_CTRL_RD_UNAVAIL(d, m)	(1 << (((d & 1) * 16) + ((m) * 2)))
>>> +#define IOMMU_DM_AUT_CTRL_RD_AVAIL(d, m)	(0 << (((d & 1) * 16) + ((m) * 2)))
>>
>> It might just be personal opinion, but I think overly-complex ways
>> of expressing 0 are usually better left entirely unsaid. Plus this
>> makes sun50i_iommu_resume() appear to be doing a lot more than it
>> really is - it seems sufficiently straightforward to me for the mere
>> absence of "available" to imply "unavailable".
> 
> The polarity is inversed though. By default (or with the value 0), the
> operation is allowed, while 1 disables it, so the absence of available
> actually sets it available (at least if you do the usual OR between
> the values).
> 
> I guess you could say that the absence of unavailable is available
> though. I'll remove those.

Oops, sorry, I did indeed manage to read it the wrong way round. Still, 
I think it would be enough to document the behaviour at point-of-use 
with a comment like "all domains have permission by default" then 
explicitly setting just the non-default values. That way when the next 
iteration of the hardware comes along supporting a different number of 
'authority domains' we don't potentially end up with a mix of both 
explicit and implicit zero values being significant or not.

>>> +static struct sun50i_iommu *sun50i_iommu_from_dev(struct device *dev)
>>> +{
>>> +	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
>>> +
>>> +	if (!fwspec)
>>> +		return NULL;
>>
>> Strictly you should only need that check in .add_device and .attach_dev - if
>> the other callbacks end up getting passed the wrong device then things have
>> arguably gone crash-worthily wrong already.
> 
> That helper is being used in both add_device / attach_dev and other
> callbacks, so I'm not sure what your suggestion is here? Should I
> remove the helper entirely, or remove that check?

I was implying that you could make the fwspec check explicit at the 
points where you have a real "is this a device I care about?" condition, 
rather than every time you need to retrieve priv for any reason. It's 
only a matter of conceptual cleanliness, though, so hardly critical.

>>> +	return fwspec->iommu_priv;
>>> +}
>>> +
> 
> ...
> 
>>> +/*
>>> + * The Allwinner H6 IOMMU uses a 2-level page table.
>>> + *
>>> + * The first level is the usual Directory Table (DT), that consists of
>>> + * 4096 4-bytes Directory Table Entries (DTE), each pointing to a Page
>>> + * Table (PT).
>>> + *
>>> + * Each PT consits of 256 4-bytes Page Table Entries (PTE), each
>>> + * pointing to a 4kB page of physical memory.
>>> + *
>>> + * The IOMMU supports a single DT, pointed by the IOMMU_TTB_REG
>>> + * register that contains its physical address.
>>> + */
>>> +
>>> +#define SUN50I_IOVA_DTE_MASK	GENMASK(31, 20)
>>> +#define SUN50I_IOVA_DTE_SHIFT	20
>>> +#define SUN50I_IOVA_PTE_MASK	GENMASK(19, 12)
>>> +#define SUN50I_IOVA_PTE_SHIFT	12
>>> +#define SUN50I_IOVA_PAGE_MASK	GENMASK(11, 0)
>>> +#define SUN50I_IOVA_PAGE_SHIFT	0
>>> +
>>> +static u32 sun50i_iova_dte_index(dma_addr_t iova)
>>> +{
>>> +	return (u32)(iova & SUN50I_IOVA_DTE_MASK) >> SUN50I_IOVA_DTE_SHIFT;
>>> +}
>>> +
>>> +static u32 sun50i_iova_pte_index(dma_addr_t iova)
>>> +{
>>> +	return (u32)(iova & SUN50I_IOVA_PTE_MASK) >> SUN50I_IOVA_PTE_SHIFT;
>>> +}
>>> +
>>> +static u32 sun50i_iova_page_offset(dma_addr_t iova)
>>> +{
>>> +	return (u32)(iova & SUN50I_IOVA_PAGE_MASK) >> SUN50I_IOVA_PAGE_SHIFT;
>>
>> A shift in a "page offset" calculation looks weird and surprising at the
>> best of times, so a redundant one is *actively* confounding.
> 
> It's probably a poorly written name then. It's supposed to return the
> offset of a given address within the page. What would name / rework
> would make it less confusing?

I mean just get rid of SUN50I_IOVA_PAGE_SHIFT, since it serves no 
purpose other than to look misleading.

>>> +}
>>> +
>>> +/*
>>> + * Each Directory Table Entry has a Page Table address and a valid
>>> + * bit:
>>> +
>>> + * +---------------------+-----------+-+
>>> + * | PT address          | Reserved  |V|
>>> + * +---------------------+-----------+-+
>>> + *  31:10 - Page Table address
>>> + *   9:2  - Reserved
>>> + *   1:0  - 1 if the entry is valid
>>> + */
>>> +
>>> +#define SUN50I_DTE_PT_ADDRESS_MASK	GENMASK(31, 10)
>>> +#define SUN50I_DTE_PT_ATTRS		GENMASK(1, 0)
>>> +#define SUN50I_DTE_PT_VALID		BIT(0)
>>> +
>>> +static inline phys_addr_t sun50i_dte_pt_address(u32 dte)
>>> +{
>>> +	return (phys_addr_t)dte & SUN50I_DTE_PT_ADDRESS_MASK;
>>> +}
>>> +
>>> +static inline bool sun50i_dte_is_pt_valid(u32 dte)
>>> +{
>>> +	return (dte & SUN50I_DTE_PT_ATTRS) == SUN50I_DTE_PT_VALID;
>>
>> If SUN50I_DTE_PT_ATTRS was being used consistently with an expectation that
>> it might possibly grow in future, then it might deserve to stay, but right
>> now I'd say just "return dte & SUN50I_DTE_PT_VALID" here to match the use
>> below.
> 
> You can't really do that though :/
> 
> The two LSBs are meant to hold whether the page is valid, and only
> 0b01 is the valid value. With an AND operator only, if the two LSBs
> are 0b11, the helper would return true, while the IOMMU would consider
> it invalid.

Oops, my bad - between skimming the deceptively-almost-to-scale ASCII 
diagram and the "BIT(0)" definition I misread it as being a single-bit 
field. In that case the masking logic is fine, but please define the 
value as "1" since it's still conceptually a 2-bit integer.

>>> +#define SUN50I_PTE_PAGE_ADDRESS_MASK	GENMASK(31, 12)
>>> +#define SUN50I_PTE_ACI_MASK		GENMASK(7, 4)
>>> +#define SUN50I_PTE_ACI_SHIFT		4
>>> +#define SUN50I_PTE_ACI(aci)		((aci) << SUN50I_PTE_ACI_SHIFT)
>>> +#define SUN50I_PTE_PAGE_VALID		BIT(1)
>>> +
>>> +static inline phys_addr_t sun50i_pte_page_address(u32 pte)
>>> +{
>>> +	return (phys_addr_t)pte & SUN50I_PTE_PAGE_ADDRESS_MASK;
>>> +}
>>> +
>>> +static inline enum iommu_aci sun50i_pte_aci(u32 pte)
>>
>> Eww, "lowercase name does opposite of uppercase name" is a confusingly
>> unfamiliar paradigm - can we have a clearer distinction between "get" and
>> "set" operations please?
> 
> ACK.
> 
>> Plus a bit more consistency in terms of macros vs. helper functions
>> (maybe consider bitfield.h helpers too).
> 
> What did you find inconsistent? (Also, I didn't know FIELD_GET was a
> thing. I'll use it).

I mean having a function to convert one way but a macro to convert the 
other - I'd be inclined to use functions everywhere for the sake of type 
safety.

> 
> ...
> 
>>> +static int sun50i_iommu_tlb_invalidate(struct sun50i_iommu *iommu,
>>> +				       dma_addr_t iova)
>>> +{
>>> +	int ret;
>>> +	u32 reg;
>>> +
>>> +	assert_spin_locked(&iommu->iommu_lock);
>>> +
>>> +	iommu_write(iommu, IOMMU_TLB_IVLD_ADDR_REG, iova);
>>> +	iommu_write(iommu, IOMMU_TLB_IVLD_ADDR_MASK_REG,
>>> +		    SUN50I_PTE_PAGE_ADDRESS_MASK);
>>
>> Does this imply that the hardware might support power-of-two invalidations
>> larger than a single page? No need to worry about it for the initial driver,
>> but it could be worth investigating for future optimisation.
> 
> The documentation is pretty sparse (and I'm not really fluent in
> IOMMUs yet) but it's my understanding yes.
> 
> I'm not quite sure how that would translate into the IOMMU
> framework. As far as I could experience, map and unmap is only called
> a single page at a time, so I'm not sure what we could optimize here?

For unmaps, invalidation can now be somewhat decoupled via the 
iotlb_gather concept. Invalidate-on-map is considered more of a weird 
quirk so isn't given quite so much accommodation in the high-level API, 
but with the iotlb_sync_map hook and a bit of state-tracking in the 
domain, even that should be similarly optimisable if you wanted to.

> ...
> 
>>> +static u32 *sun50i_dte_get_page_table(struct sun50i_iommu_domain *sun50i_domain,
>>> +				      dma_addr_t iova)
>>> +{
>>> +	struct sun50i_iommu *iommu = sun50i_domain->iommu;
>>> +	u32 *page_table, *dte_addr;
>>> +	phys_addr_t pt_phys;
>>> +	dma_addr_t pt_dma;
>>> +	u32 dte_index, dte;
>>> +
>>> +	assert_spin_locked(&sun50i_domain->dt_lock);
>>> +
>>> +	dte_index = sun50i_iova_dte_index(iova);
>>> +	dte_addr = &sun50i_domain->dt[dte_index];
>>> +	dte = *dte_addr;
>>> +	if (sun50i_dte_is_pt_valid(dte))
>>> +		goto done;
>>> +
>>> +	page_table = kmem_cache_zalloc(iommu->pt_pool, GFP_ATOMIC);
>>
>> Can you respect the new gfp argument from ->map() here, or is that one of
>> those things that kmem_caches can be overly picky about?
> 
> That's a good question, I'll try :)
> 
>>> +}
>>> +
>>> +static int sun50i_iommu_map(struct iommu_domain *domain, unsigned long iova,
>>> +			    phys_addr_t paddr, size_t size, int prot, gfp_t gfp)
>>> +{
>>> +	struct sun50i_iommu_domain *sun50i_domain = to_sun50i_domain(domain);
>>> +	struct sun50i_iommu *iommu = sun50i_domain->iommu;
>>> +	u32 pte_index;
>>> +	u32 *page_table, *pte_addr;
>>> +	unsigned long flags;
>>> +	int ret = 0;
>>> +
>>> +	spin_lock_irqsave(&sun50i_domain->dt_lock, flags);
>>> +	page_table = sun50i_dte_get_page_table(sun50i_domain, iova);
>>> +	if (IS_ERR(page_table)) {
>>> +		ret = PTR_ERR(page_table);
>>> +		goto out;
>>> +	}
>>> +
>>> +	pte_index = sun50i_iova_pte_index(iova);
>>> +	pte_addr = &page_table[pte_index];
>>> +	if (sun50i_pte_is_page_valid(*pte_addr)) {
>>> +		phys_addr_t page_phys = sun50i_pte_page_address(*pte_addr);
>>> +		dev_err(iommu->dev,
>>> +			"iova %pad already mapped to %pa cannot remap to %pa prot: %#x\n",
>>> +			&iova, &page_phys, &paddr, prot);
>>> +		ret = -EADDRINUSE;
>>
>> I think that strictly refers to a *network* address - I'd be inclined to
>> stick with boring old EBUSY.
> 
> ACK
> 
>>> +		goto out;
>>> +	}
>>> +
>>> +	*pte_addr = sun50i_mk_pte(paddr, prot);
>>> +	sun50i_table_flush(sun50i_domain, virt_to_phys(pte_addr), 1);
>>> +
>>> +	spin_lock_irqsave(&iommu->iommu_lock, flags);
>>> +
>>> +	sun50i_iommu_tlb_invalidate(iommu, iova);
>>> +	sun50i_iommu_ptw_invalidate(iommu, iova);
>>
>> Does the walk cache actually cache PTEs as well as DTEs? If it's really only
>> the latter, the maintenance could perhaps be folded into pagetable
>> allocation (being the only place that ever changes them).
> 
> So the documentation is also sparse on this, but there's definitely a
> cache for the table walk, and you feed the invalidate register an
> address aligned on 1MB, wich is (1 << 20), and the index of the DTE is
> stored in the bits 20 to 31 in the iova.
> 
> So my best guess is that, yeah, it's the DTE -> PT association. But
> it's not like something confirms it :)
> 
> But you're right that we shouldn't need this here, I'll move it to the
> page table allocation function.

If you've only got a vendor driver to go on, then feel free to play 
safe. It's a logical hunch that ptw_invalidate is *probably* only needed 
if a DTE changes, but you might still prefer potentially 
over-invalidating to debugging weird TLB issues down the line (which is 
never fun).

>>> +static void sun50i_iommu_domain_free(struct iommu_domain *domain)
>>> +{
>>> +	struct sun50i_iommu_domain *sun50i_domain = to_sun50i_domain(domain);
>>> +	struct sun50i_iommu *iommu = sun50i_domain->iommu;
>>> +	unsigned long flags;
>>> +	int i;
>>> +
>>> +	spin_lock_irqsave(&sun50i_domain->dt_lock, flags);
>>> +
>>> +	for (i = 0; i < NUM_DT_ENTRIES; i++) {
>>> +		phys_addr_t pt_phys;
>>> +		u32 *page_table;
>>> +		u32 *dte_addr;
>>> +		u32 dte;
>>> +
>>> +		dte_addr = &sun50i_domain->dt[i];
>>> +		dte = *dte_addr;
>>> +		if (!sun50i_dte_is_pt_valid(dte))
>>> +			continue;
>>> +
>>> +		memset(dte_addr, 0, sizeof(*dte_addr));
>>> +		sun50i_table_flush(sun50i_domain, virt_to_phys(dte_addr), 1);
>>
>> This shouldn't be necessary - freeing a domain while it's still live is an
>> incredibly very wrong thing to do, so the hardware should have already been
>> programmed to no longer walk this table by this point.
> 
> We never "garbage collect" and remove the dte for the page table we
> don't use anymore elsewhere though, so couldn't we end up in a
> situation where we don't have a page table (because it has been freed)
> at the other end of our dte, but the IOMMU doesn't know about it since
> we never flushed?

Let me reiterate: at the point of freeing, the assumption is that this 
domain should be long dissociated from the hardware. Any actual 
invalidation should have already happened at the point the TTB was 
disabled or pointed to some other domain, therefore fiddling with 
pagetable pages just before you free them back to the kernel is just 
pointless busywork.

If the TTB *was* still live here, then as soon as you call free_pages() 
below the DT memory could get reallocated by someone else and filled 
with data that happens to look like valid pagetables, so even if you 
invalidate the TLBs the hardware could just immediately go walk that 
data and refill them with nonsense, thus any pretence at invalidation is 
in vain anyway.

The fly in the soup, however, is that default domains appear to be 
lacking proper detach notifications (I hadn't consciously noticed that 
before), so if you've been looking at the iommu_group_release() path it 
might have given the wrong impression. So what might be justifiable here 
is to check if the domain being freed is the one currently active in 
hardware, and if so perform a detach (i.e. disable the TTB and 
invalidate everything) first, then free everything as normal. Or just 
handwave that we essentially never free a default domain anyway so it's 
OK to just assume that we're not freeing anything live.

>>> +
>>> +		pt_phys = sun50i_dte_pt_address(dte);
>>> +		dma_unmap_single(iommu->dev, pt_phys, PT_SIZE, DMA_TO_DEVICE);
>>> +
>>> +		page_table = phys_to_virt(pt_phys);
>>> +		kmem_cache_free(iommu->pt_pool, page_table);
>>> +	}
>>> +
>>> +	free_pages((unsigned long)sun50i_domain->dt, get_order(DT_SIZE));
>>> +	sun50i_domain->dt = NULL;
>>> +
>>> +	spin_lock(&iommu->iommu_lock);
>>> +	sun50i_iommu_flush_all_tlb(iommu);
>>> +	spin_unlock(&iommu->iommu_lock);
>>
>> And this looks very out-of-place. I'd expect any invalidation to have
>> happened at the point that translation was disabled, or be deferred until it
>> is next reenabled. Consider that users are within their rights to call
>> iommu_domain_alloc() 17 times in a row and immediately free them all again
>> without ever attaching any devices; there should be no reason to ever touch
>> the hardware in such a case.
> 
> So I guess we shouldn't remove the DTEs here then, but in unmap then?

It's fine to lazily free the tables themselves - you don't really want 
to have to scan all 256 PTEs on every unmap just to work out if a table 
is still used or not - it's just that, as above, fiddling with the 
actual DTE values is pretty futile even then.

>>> +static int sun50i_iommu_attach_device(struct iommu_domain *domain,
>>> +				      struct device *dev)
>>> +{
>>> +	struct sun50i_iommu_domain *sun50i_domain = to_sun50i_domain(domain);
>>> +	struct sun50i_iommu *iommu;
>>> +
>>> +	iommu = sun50i_iommu_from_dev(dev);
>>> +	if (!iommu)
>>> +		return -ENODEV;
>>> +
>>> +	dev_info(dev, "Attaching to IOMMU domain\n");
>>
>> Also no.
> 
> ACK
> 
>>> +
>>> +	if (iommu->domain == domain)
>>> +		return 0;
>>> +
>>> +	if (iommu->domain)
>>> +		sun50i_iommu_detach_device(iommu->domain, dev);
>>> +
>>> +	iommu->domain = domain;
>>> +	sun50i_domain->iommu = iommu;
>>> +
>>> +	return pm_runtime_get_sync(iommu->dev);
>>
>> Deferring all the actual hardware pogramming to the suspend/resume hooks is
>> a fiendishly clever idea that took me more than a moment to make sense of,
>> but how well does it work when RPM is compiled out or runtime-inhibited?
> 
> We have a bunch of other controllers that require runtime_pm already,
> so it's going to be enabled. But that should be expressed in Kconfig.

But it can still be inhibited from sysfs, right? We don't want driver 
behaviour to be *unnecessarily* fragile to user actions, however silly 
they may be.

>> Furthermore, basing RPM on having a domain attached means that
>> you'll effectively never turn the IOMMU off, even when all the
>> clients are idle. It would make more sene to use device links like
>> most other drivers do to properly model the producer/consumer
>> relationship.
> 
> I'm not familiar with device links for runtime_pm, I thought this was
> only useful for system-wide resume and suspend?

See DL_FLAG_PM_RUNTIME - we already have several IOMMU drivers taking 
full advantage of this.

> 
> ...
> 
>>> +static void sun50i_iommu_report_fault(struct sun50i_iommu *iommu,
>>> +				      unsigned master, phys_addr_t iova,
>>> +				      unsigned prot)
>>> +{
>>> +	dev_err(iommu->dev, "Page fault for %pad (master %d, dir %s)\n",
>>> +		&iova, master, (prot == IOMMU_FAULT_WRITE) ? "wr" : "rd");
>>
>> If you're expecting an external handler to be able to do something useful
>> with faults, then save the log spam for the case where it's actually failed.
> 
> I'm sorry, I'm not quite sure what you mean here. Where what actually failed?

The (potential) handler behind report_iommu_fault(). If that returns 0 
then you probably want to stay quiet since the fault was presumably 
expected.

>>> +
>>> +	if (iommu->domain)
>>> +		report_iommu_fault(iommu->domain, iommu->dev, iova, prot);
>>> +	else
>>> +		dev_err(iommu->dev, "Page fault while iommu not attached to any domain?\n");
>>> +}
>>> +
>>> +static phys_addr_t sun50i_iommu_handle_pt_irq(struct sun50i_iommu *iommu,
>>> +					      unsigned addr_reg,
>>> +					      unsigned blame_reg)
>>> +{
>>> +	phys_addr_t iova;
>>> +	unsigned master;
>>> +	u32 blame;
>>> +
>>> +	assert_spin_locked(&iommu->iommu_lock);
>>> +
>>> +	iova = iommu_read(iommu, addr_reg);
>>> +	blame = iommu_read(iommu, blame_reg);
>>> +	master = ilog2(blame & IOMMU_INT_MASTER_MASK);
>>> +
>>> +	/*
>>> +	 * If the address is not in the page table, we can't get what
>>> +	 * operation triggered the fault. Assume it's a read
>>> +	 * operation.
>>> +	 */
>>> +	sun50i_iommu_report_fault(iommu, master, iova, IOMMU_FAULT_READ);
>>> +
>>> +	return iova;
>>> +}
>>> +
>>> +static phys_addr_t sun50i_iommu_handle_perm_irq(struct sun50i_iommu *iommu)
>>> +{
>>> +	enum iommu_aci aci;
>>> +	phys_addr_t iova;
>>> +	unsigned master;
>>> +	unsigned dir;
>>> +	u32 blame;
>>> +
>>> +	assert_spin_locked(&iommu->iommu_lock);
>>> +
>>> +	blame = iommu_read(iommu, IOMMU_INT_STA_REG);
>>> +	master = ilog2(blame & IOMMU_INT_MASTER_MASK);
>>> +	iova = iommu_read(iommu, IOMMU_INT_ERR_ADDR_REG(master));
>>> +	aci = sun50i_pte_aci(iommu_read(iommu, IOMMU_INT_ERR_DATA_REG(master)));
>>> +
>>> +	switch (aci) {
>>> +		/*
>>> +		 * If we are in the read-only domain, then it means we
>>> +		 * tried to write.
>>> +		 */
>>> +	case IOMMU_ACI_RD:
>>> +		dir = IOMMU_FAULT_WRITE;
>>> +		break;
>>> +
>>> +		/*
>>> +		 * If we are in the write-only domain, then it means
>>> +		 * we tried to read.
>>> +		 */
>>> +	case IOMMU_ACI_WR:
>>> +
>>> +		/*
>>> +		 * If we are in the domain without any permission, we
>>> +		 * can't really tell. Let's default to a read
>>> +		 * operation.
>>> +		 */
>>> +	case IOMMU_ACI_NONE:
>>> +
>>> +		/* WTF? */
>>> +	case IOMMU_ACI_RD_WR:
>>> +	default:
>>> +		dir = IOMMU_FAULT_READ;
>>> +		break;
>>> +	}
>>> +
>>> +	/*
>>> +	 * If the address is not in the page table, we can't get what
>>> +	 * operation triggered the fault. Assume it's a read
>>> +	 * operation.
>>> +	 */
>>> +	sun50i_iommu_report_fault(iommu, master, iova, dir);
>>> +
>>> +	return iova;
>>> +}
>>> +
>>> +static irqreturn_t sun50i_iommu_irq(int irq, void *dev_id)
>>> +{
>>> +	struct sun50i_iommu *iommu = dev_id;
>>> +	phys_addr_t iova;
>>> +	u32 status;
>>> +
>>> +	spin_lock(&iommu->iommu_lock);
>>> +
>>> +	status = iommu_read(iommu, IOMMU_INT_STA_REG);
>>> +	if (!(status & IOMMU_INT_MASK)) {
>>> +		spin_unlock(&iommu->iommu_lock);
>>> +		return IRQ_NONE;
>>> +	}
>>> +
>>> +	if (status & IOMMU_INT_INVALID_L2PG)
>>> +		iova = sun50i_iommu_handle_pt_irq(iommu,
>>> +						  IOMMU_INT_ERR_ADDR_L2_REG,
>>> +						  IOMMU_L2PG_INT_REG);
>>> +	else if (status & IOMMU_INT_INVALID_L1PG)
>>> +		iova = sun50i_iommu_handle_pt_irq(iommu,
>>> +						  IOMMU_INT_ERR_ADDR_L1_REG,
>>> +						  IOMMU_L1PG_INT_REG);
>>> +	else
>>> +		iova = sun50i_iommu_handle_perm_irq(iommu);
>>> +
>>> +	sun50i_iommu_tlb_invalidate(iommu, iova);
>>> +	sun50i_iommu_ptw_invalidate(iommu, iova);
>>
>> Yikes, does the hardware really somehow require that?
> 
> Again the documentation is sparse, so I don't really know. The
> original driver had that though (and not just one):
> https://github.com/Allwinner-Homlet/H6-BSP4.9-linux/blob/master/drivers/iommu/sunxi-iommu.c#L952
> 
> I guess I can just remove it and see if it works. I'm not really an
> expert on cache maintainance, so I wasn't really sure whether that was
> needed or not.

No, I'm sure it's more than possible for sufficiently wacky hardware to 
genuinely require TLB invalidation on a faulting address. It's just one 
of those things that can't help like it could have been a bodge to 'fix' 
a fault that was caused by improper TLB maintenance in the first place. 
If in any doubt, leave it in.

>>> +static int __maybe_unused sun50i_iommu_suspend(struct device *dev)
>>> +{
>>> +	struct sun50i_iommu_domain *sun50i_domain;
>>> +	struct sun50i_iommu *iommu;
>>> +	unsigned long flags;
>>> +
>>> +	iommu = dev_get_drvdata(dev);
>>> +	if (!iommu->domain)
>>> +		return 0;
>>> +
>>> +	spin_lock_irqsave(&iommu->iommu_lock, flags);
>>> +
>>> +	iommu_write(iommu, IOMMU_ENABLE_REG, 0);
>>> +	iommu_write(iommu, IOMMU_TTB_REG, 0);
>>> +
>>> +	spin_unlock_irqrestore(&iommu->iommu_lock, flags);
>>> +
>>> +	clk_disable_unprepare(iommu->clk);
>>> +	reset_control_assert(iommu->reset);
>>> +
>>> +	sun50i_domain = to_sun50i_domain(iommu->domain);
>>> +	dma_unmap_single(dev, virt_to_phys(sun50i_domain->dt), DT_SIZE,
>>> +			 DMA_TO_DEVICE);
>>
>> Why? The only time you should need to do this is when freeing the table.
>>
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +static int __maybe_unused sun50i_iommu_resume(struct device *dev)
>>> +{
>>> +	struct sun50i_iommu_domain *sun50i_domain;
>>> +	struct sun50i_iommu *iommu;
>>> +	unsigned long flags;
>>> +	dma_addr_t dt_dma;
>>> +	int ret;
>>> +
>>> +	iommu = dev_get_drvdata(dev);
>>> +	if (!iommu->domain)
>>> +		return 0;
>>> +
>>> +	sun50i_domain = to_sun50i_domain(iommu->domain);
>>> +	dt_dma = dma_map_single(dev, sun50i_domain->dt, DT_SIZE, DMA_TO_DEVICE);
>>
>> As above. The power state of the IOMMU should be enitrely irrelevant to the
>> contents of RAM.
> 
> Sorry, I should have put a comment here.
> 
> I'm not quite sure what the difference between a group and domain in
> the IOMMU framework is, but since this IOMMU can only deal with a
> single address space, my understanding was that we'd need to allocate
> a single domain and group, and that the domain was the abstraction
> tied to an address space (since it's what is passed as an argument to
> map).

That's correct, a domain is effectvely an address space, while groups 
represents sets of devices that the IOMMU can isolate from each other. 
IOMMUs like this one (and the MediaTek M4U in mtk_iommu.c) are a little 
hard-done-by in that they do actually have some finer-grained isolation 
on a basic allow/deny level, but the API really assumes that isolation 
happens at the address space level, so it's easier to ignore it and just 
use the single-group model anyway.

The really neat advantage of having a guaranteed single group, though, 
is that you then no longer need to care about address spaces: since the 
group can only ever be attached to one domain at a time, you can have as 
many domains as you like, and handle it by having the first attach_dev 
call on a given domain context-switch that pagetable into the hardware. 
That's more or less what you've done already, which is good, it would 
just benefit from that context-switching being done in a more robust and 
obvious manner :)

> So, given this, what made since was to allocate the directory table
> buffer at domain_alloc time and map it. But then, domain_alloc seems
> to not have any pointer back to the iommu we registered for some
> reason (I guess that a domain could be shared across multiple
> IOMMUs?), and so we don't have access to our IOMMU's struct device.

I'll spare you the unrpoductive "Robin complains bitterly about the 
iommu_domain_alloc() interface being terrible, episode #27"...

You'll see two main ways that existing drivers work around that - if 
you're happy to assume that you'll only ever have one IOMMU instance, or 
that all instances will always be functionally equal, then you can 
simply keep track of any old IOMMU device handle for DMA purposes (e.g. 
exynos_iommu); otherwise if you might need to cope with multiple IOMMU 
instances having different DMA capabilities then deferring 
instance-specific setup to the first device attach is the de-facto 
standard (e.g. arm-smmu).

> It's not really clear in my mind, so there's probably a better way.
> 
>>> +	if (dma_mapping_error(dev, dt_dma)) {
>>> +		dev_err(dev, "Couldn't map L1 Page Table\n");
>>> +		return -ENOMEM;
>>> +	}
>>> +
>>> +	ret = reset_control_deassert(iommu->reset);
>>> +	if (ret)
>>> +		goto err_unmap;
>>> +
>>> +	ret = clk_prepare_enable(iommu->clk);
>>> +	if (ret)
>>> +		goto err_reset_assert;
>>> +
>>> +	/* We rely on the physical address and DMA address being the same */
>>> +	WARN_ON(dt_dma != virt_to_phys(sun50i_domain->dt));
>>
>> If you made proper use of both iommu->dt and iommu->dt_dma you wouldn't
>> actually need that invariant at this level, which I think would be a good
>> thing. The phys_to_virt() dance is somewhat justifiable for the second-level
>> tables to save maintaining an additional dma_addr_t[4096] array; far less so
>> for the single top-level address.
> 
> This kind of conflics with your earlier comment about moving the
> virt_to_phys call for the flush function into the function and remove
> it from the caller. Judging from that last comment, I guess keeping
> the dma address as the argument makes more sense?

Yeah, I try to avoid backtracking too much in big reviews these days :)

It's an either/or choice of alternative ideas, I guess - refining the 
slightly restrictive approach for self-consistency vs. separating the 
handling for each level of table entirely so that one can be a little 
more robust.

> Also, a more general question. One of the cleanups I wanted to do was
> to remove the kmem_cache in favour of a dma_pool, which triggered that
> test. It looks like with a dma_pool, the physical address and dma
> address are not the same, even though the IOMMU is directly connected
> to the RAM so there should be no intermediate mapping. Do you know
> why?

DMA pools are backed by dma_alloc_coherent, so (at least on arm64) the 
virtual address you get will be a non-cacheable remap (assuming a 
non-coherent device), and thus calling virt_to_phys() on it is bogus and 
will give you nonsense.

Although using coherent allocations (correctly) for pagetables would be 
perfectly acceptable, the nature of both IOMMU and CPU accesses makes it 
generally more efficient to do this trick with long-lived streaming 
mappings plus occasional syncs. Mixing both methods for different levels 
of table wouldn't be very nice, though.

>>> +
>>> +	spin_lock_irqsave(&iommu->iommu_lock, flags);
>>> +
>>> +	iommu_write(iommu, IOMMU_TTB_REG, dt_dma);
>>> +	iommu_write(iommu, IOMMU_TLB_PREFETCH_REG,
>>> +		    IOMMU_TLB_PREFETCH_MASTER_ENABLE(0) |
>>> +		    IOMMU_TLB_PREFETCH_MASTER_ENABLE(1) |
>>> +		    IOMMU_TLB_PREFETCH_MASTER_ENABLE(2) |
>>> +		    IOMMU_TLB_PREFETCH_MASTER_ENABLE(3) |
>>> +		    IOMMU_TLB_PREFETCH_MASTER_ENABLE(4) |
>>> +		    IOMMU_TLB_PREFETCH_MASTER_ENABLE(5));
>>> +	iommu_write(iommu, IOMMU_INT_ENABLE_REG, IOMMU_INT_MASK);
>>> +	iommu_write(iommu, IOMMU_DM_AUT_CTRL_REG(IOMMU_ACI_NONE),
>>> +		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_NONE, 0) |
>>> +		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_NONE, 0) |
>>> +		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_NONE, 1) |
>>> +		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_NONE, 1) |
>>> +		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_NONE, 2) |
>>> +		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_NONE, 2) |
>>> +		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_NONE, 3) |
>>> +		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_NONE, 3) |
>>> +		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_NONE, 4) |
>>> +		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_NONE, 4) |
>>> +		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_NONE, 5) |
>>> +		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_NONE, 5));
>>> +
>>> +	iommu_write(iommu, IOMMU_DM_AUT_CTRL_REG(IOMMU_ACI_RD),
>>> +		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD, 0) |
>>> +		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD, 1) |
>>> +		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD, 2) |
>>> +		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD, 3) |
>>> +		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD, 4) |
>>> +		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD, 5) |
>>> +		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_RD, 0) |
>>> +		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_RD, 1) |
>>> +		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_RD, 2) |
>>> +		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_RD, 3) |
>>> +		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_RD, 4) |
>>> +		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_RD, 5));
>>> +
>>> +	iommu_write(iommu, IOMMU_DM_AUT_CTRL_REG(IOMMU_ACI_WR),
>>> +		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_WR, 0) |
>>> +		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_WR, 1) |
>>> +		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_WR, 2) |
>>> +		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_WR, 3) |
>>> +		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_WR, 4) |
>>> +		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_WR, 5) |
>>> +		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_WR, 0) |
>>> +		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_WR, 1) |
>>> +		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_WR, 2) |
>>> +		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_WR, 3) |
>>> +		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_WR, 4) |
>>> +		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_WR, 5));
>>> +
>>> +	iommu_write(iommu, IOMMU_DM_AUT_CTRL_REG(IOMMU_ACI_RD_WR),
>>> +		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD_WR, 0) |
>>> +		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_RD_WR, 0) |
>>> +		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD_WR, 1) |
>>> +		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_RD_WR, 1) |
>>> +		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD_WR, 2) |
>>> +		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_RD_WR, 2) |
>>> +		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD_WR, 3) |
>>> +		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_RD_WR, 3) |
>>> +		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD_WR, 4) |
>>> +		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_RD_WR, 4) |
>>> +		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD_WR, 5) |
>>> +		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_RD_WR, 5));
>>> +
>>> +	ret = sun50i_iommu_flush_all_tlb(iommu);
>>> +	if (ret) {
>>> +		spin_unlock_irqrestore(&iommu->iommu_lock, flags);
>>> +		goto err_clk_disable;
>>> +	}
>>> +
>>> +	iommu_write(iommu, IOMMU_AUTO_GATING_REG, IOMMU_AUTO_GATING_ENABLE);
>>> +	iommu_write(iommu, IOMMU_ENABLE_REG, IOMMU_ENABLE_ENABLE);
>>
>> As mentioned, although you obviously do need to reprogram the hardware on
>> resume, the fact that the *only* references to most of the control registers
>> are from "__maybe_unused" functions is a big red flag.
>>
>>> +
>>> +	spin_unlock_irqrestore(&iommu->iommu_lock, flags);
>>> +
>>> +	return 0;
>>> +
>>> +err_clk_disable:
>>> +	clk_disable_unprepare(iommu->clk);
>>> +
>>> +err_reset_assert:
>>> +	reset_control_assert(iommu->reset);
>>> +
>>> +err_unmap:
>>> +	sun50i_domain = to_sun50i_domain(iommu->domain);
>>> +	dma_unmap_single(dev, dt_dma, DT_SIZE, DMA_TO_DEVICE);
>>> +	return ret;
>>> +}
>>> +
>>> +static const struct dev_pm_ops sun50i_iommu_pm_ops = {
>>> +	SET_RUNTIME_PM_OPS(sun50i_iommu_suspend, sun50i_iommu_resume, NULL)
>>
>> In principle you should be able to support system PM with the same resume
>> callback.
> 
> We don't have system-wide support, so I couldn't test it. I'd prefer
> to leave it out until we have, if that's alright?

Oh, for sure, that was more of a general observation in case it had just 
been overlooked. FWIW if you do get to it, hibernate is a good way to 
exercise system suspend/resume ops too, especially for IOMMUs where the 
symptoms of failing to restore from whatever state the resume kernel 
left things in are typically very obvious.

Robin.

>>> +};
>>> +
>>> +static const struct of_device_id sun50i_iommu_dt[] = {
>>> +	{ .compatible = "allwinner,sun50i-h6-iommu", },
>>> +	{ /* sentinel */ },
>>> +};
>>> +MODULE_DEVICE_TABLE(of, sun50i_iommu_dt);
>>> +
>>> +static struct platform_driver sun50i_iommu_driver = {
>>> +	.probe		= sun50i_iommu_probe,
>>> +	.driver		= {
>>> +		.name			= "sun50i-iommu",
>>> +		.of_match_table 	= sun50i_iommu_dt,
>>> +		.pm			= &sun50i_iommu_pm_ops,
>>> +		.suppress_bind_attrs	= true,
>>> +	}
>>> +};
>>> +
>>> +static int __init sun50i_iommu_init(void)
>>> +{
>>> +	return platform_driver_register(&sun50i_iommu_driver);
>>> +}
>>> +subsys_initcall(sun50i_iommu_init);
>>
>> Regular device_initcall() (or just a *_platform_driver() helper) should be
>> sufficient these days.
> 
> Ack. Thanks again!
> Maxime
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
