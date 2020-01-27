Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 809E214A5EE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 15:23:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=H/Rm1rGSsaZrywZM+lhU9OXc4dkky3CTD3DdS45YHFo=; b=PZbV4rznFwM5ODX3unbxx8QhK
	DNotp0gMriIzF76J9R7Y1bJxYHK9h/eb7LlMUGydhJn2TgFuem+Sc+O2SNVbZy1gFoYI1bWpnwNQ1
	sg8mS25GoufuBDWkFbMtL22ARVLiFIRkMih9l4zpM2OdyHmCrZF47KtR77aRi5Z79Qw4BYJKJJl55
	mVRHGNqzr4B6UQqqcUYcLwru2yXQNy+ZhCkkEcYZdINmL6+WuEUbpjWpCVoBL7qz1/lfGjs9IcxBZ
	TkgduVvnVpSp+W4T3PABEf8LLZfK9OeI8pJVIeqGA1I5BveBawzuJEGCXxIzKlSVtN4xL8OlMgg96
	29KSeFlFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw5II-0006b1-Pu; Mon, 27 Jan 2020 14:23:14 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw5I7-0006Ze-Ol
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 14:23:07 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 6C6A2220CB;
 Mon, 27 Jan 2020 09:23:00 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 27 Jan 2020 09:23:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=2NuPZMPimepX9fHXdZef72Yc3RY
 aZqt1X1GMMuOaGL4=; b=Uv1admKneGtbfe2Fkn6+yWTh+oTk10/NT8OYaAETxWb
 tHJ/ncEOoEz6vcimo1kvATu79FYyxx3zXuuaIBkSagLK1KtaQjzU9GSePHNKZMJa
 OaPqQkzYUt7me9JVrvM7kvrvWCA1Shv5jJRZI3fYZSevDJB3QC2HVbA5ZJaOHM9Z
 yj8eL5lYcbNJw6GORwcd+9AdtiT5A7Poqgfh+ehD6Bsp6nk3le1gOmC+JVPVmmcR
 qwd+jGt6IyxUF8gJwzU0yuajr9UDyH9vIdb2kG+5tMnKSeoGYLTxCzCnhzmO45Zu
 ivUBrLX8axNmEOm1WsJQ/hsyuGh9tmGL6dHc+MzdXLA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=2NuPZM
 PimepX9fHXdZef72Yc3RYaZqt1X1GMMuOaGL4=; b=A5MASQnZX87RF73m9rlfpT
 jEnoH8rjmVyQ3yu/2WpTNYYcmTmYbty4bOvaX6BYjw9+NAaHSAxp1u7LYGIUr+QA
 2yeqqa6HWQxXszzTqDdYD1UhnA6GdtbUjRh3icXoS26SNHCPj63Aky+5JOCzck12
 YpH9/nGIj4bcSK5lrbuiM/DyrHf4sfYPrcqhKxi4OD3dA45p+cnIoulO6gYJW94l
 TpiaLy7PoA3mthf+NnPKbXJk5ApphSH0RAsUCpsWPmtCFc9cHSsoLuYOHkNtp0nb
 4fW+TRDHJdfbZaWakPBzv+DP0XHm1aGCWI499GbhrUoS6tlT6vYlT3jfD1KQU0sg
 ==
X-ME-Sender: <xms:Q_IuXhnDsYvzldMnTibaifNdM4pWVvgrVWR03VwIzm0yz485KH2GhA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrfedvgdeifecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
 epghhithhhuhgsrdgtohhmnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnh
 hordhtvggthh
X-ME-Proxy: <xmx:Q_IuXhF9KVoQu7zyjsw1YxHyrDDwRN1lnlsInECgVqpFsBntVkAZvw>
 <xmx:Q_IuXipzXnV0i-_2Fe3kGuZz8Wz3b9u000b6vrhXPnDV9XiWLnv0tA>
 <xmx:Q_IuXl7OZXpyn8GnAFRhDKc66si0hx8I4Glgmfu4V8v4sXpWMbAFjw>
 <xmx:RPIuXh8PmjSMXRovskKweYY2BeHOd_X3k2XtcOn3-EvNYMIkJdDaVw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 018223280065;
 Mon, 27 Jan 2020 09:22:58 -0500 (EST)
Date: Mon, 27 Jan 2020 15:22:56 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 2/3] iommu: Add Allwinner H6 IOMMU driver
Message-ID: <20200127142256.us5zpcft5obd7zu6@gilmour.lan>
References: <cover.b2a9e1507135d81e726fcbb65137665a7f0ab74f.1579696927.git-series.maxime@cerno.tech>
 <fe383c3f6fa0db772c87d9d9080add97efe9ba1a.1579696927.git-series.maxime@cerno.tech>
 <a0bec2de-e87a-ddac-450e-b0f467158796@arm.com>
MIME-Version: 1.0
In-Reply-To: <a0bec2de-e87a-ddac-450e-b0f467158796@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_062304_207259_0CDFECC9 
X-CRM114-Status: GOOD (  47.10  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: multipart/mixed; boundary="===============3823825710191383122=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3823825710191383122==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="32n4kykvz45fuwk4"
Content-Disposition: inline


--32n4kykvz45fuwk4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Robin,

Thanks for the extensive review :)

On Thu, Jan 23, 2020 at 06:47:14PM +0000, Robin Murphy wrote:
> This looks like a pretty decent first cut of a driver, thanks! Plenty of
> comments, but overall it looks to be in mostly the right shape to begin
> with.
>
> On 22/01/2020 12:44 pm, Maxime Ripard wrote:
> > The Allwinner H6 has introduced an IOMMU for a few DMA controllers, mostly
> > video related: the display engine, the video decoders / encoders, the
> > camera capture controller, etc.
> >
> > The design is pretty simple compared to other IOMMUs found in SoCs: there's
> > a single instance, controlling all the masters, with a single address
> > space.
> >
> > It also features a performance monitoring unit that allows to retrieve
> > various informations (per-master and global TLB accesses, hits and misses,
> > access latency, etc) that isn't supported at the moment.
>
> Yes, it sounds like that might ideally be a separate perf_events driver, but
> there's no need to get into the details of that until the basic IOMMU driver
> is baked.
>
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > ---
> >   drivers/iommu/Kconfig        |   10 +-
> >   drivers/iommu/Makefile       |    1 +-
> >   drivers/iommu/sun50i-iommu.c | 1126 +++++++++++++++++++++++++++++++++++-
> >   3 files changed, 1137 insertions(+)
> >   create mode 100644 drivers/iommu/sun50i-iommu.c
> >
> > diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
> > index 0b9d78a0f3ac..5cbfa6f282e2 100644
> > --- a/drivers/iommu/Kconfig
> > +++ b/drivers/iommu/Kconfig
> > @@ -289,6 +289,16 @@ config ROCKCHIP_IOMMU
> >   	  Say Y here if you are using a Rockchip SoC that includes an IOMMU
> >   	  device.
> > +config SUN50I_IOMMU
> > +	bool "Allwinner H6 IOMMU Support"
> > +	depends on ARM || ARM64
> > +	depends on ARCH_SUNXI
>
> Surely ARCH_SUNXI implies "ARM || ARM64" anyway? Ideally there shouldn't be
> anything CPU-specific here, so supporting COMPILE_TEST as well would be
> nice.

I guess, yes, I'll change that.

...

> > +#define IOMMU_DM_AUT_CTRL_REG(d)	(0x0b0 + ((d) / 2) * 4)
> > +#define IOMMU_DM_AUT_CTRL_RD_UNAVAIL(d, m)	(1 << (((d & 1) * 16) + ((m) * 2)))
> > +#define IOMMU_DM_AUT_CTRL_RD_AVAIL(d, m)	(0 << (((d & 1) * 16) + ((m) * 2)))
>
> It might just be personal opinion, but I think overly-complex ways
> of expressing 0 are usually better left entirely unsaid. Plus this
> makes sun50i_iommu_resume() appear to be doing a lot more than it
> really is - it seems sufficiently straightforward to me for the mere
> absence of "available" to imply "unavailable".

The polarity is inversed though. By default (or with the value 0), the
operation is allowed, while 1 disables it, so the absence of available
actually sets it available (at least if you do the usual OR between
the values).

I guess you could say that the absence of unavailable is available
though. I'll remove those.

> > +static struct sun50i_iommu *sun50i_iommu_from_dev(struct device *dev)
> > +{
> > +	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
> > +
> > +	if (!fwspec)
> > +		return NULL;
>
> Strictly you should only need that check in .add_device and .attach_dev - if
> the other callbacks end up getting passed the wrong device then things have
> arguably gone crash-worthily wrong already.

That helper is being used in both add_device / attach_dev and other
callbacks, so I'm not sure what your suggestion is here? Should I
remove the helper entirely, or remove that check?

> > +	return fwspec->iommu_priv;
> > +}
> > +

...

> > +/*
> > + * The Allwinner H6 IOMMU uses a 2-level page table.
> > + *
> > + * The first level is the usual Directory Table (DT), that consists of
> > + * 4096 4-bytes Directory Table Entries (DTE), each pointing to a Page
> > + * Table (PT).
> > + *
> > + * Each PT consits of 256 4-bytes Page Table Entries (PTE), each
> > + * pointing to a 4kB page of physical memory.
> > + *
> > + * The IOMMU supports a single DT, pointed by the IOMMU_TTB_REG
> > + * register that contains its physical address.
> > + */
> > +
> > +#define SUN50I_IOVA_DTE_MASK	GENMASK(31, 20)
> > +#define SUN50I_IOVA_DTE_SHIFT	20
> > +#define SUN50I_IOVA_PTE_MASK	GENMASK(19, 12)
> > +#define SUN50I_IOVA_PTE_SHIFT	12
> > +#define SUN50I_IOVA_PAGE_MASK	GENMASK(11, 0)
> > +#define SUN50I_IOVA_PAGE_SHIFT	0
> > +
> > +static u32 sun50i_iova_dte_index(dma_addr_t iova)
> > +{
> > +	return (u32)(iova & SUN50I_IOVA_DTE_MASK) >> SUN50I_IOVA_DTE_SHIFT;
> > +}
> > +
> > +static u32 sun50i_iova_pte_index(dma_addr_t iova)
> > +{
> > +	return (u32)(iova & SUN50I_IOVA_PTE_MASK) >> SUN50I_IOVA_PTE_SHIFT;
> > +}
> > +
> > +static u32 sun50i_iova_page_offset(dma_addr_t iova)
> > +{
> > +	return (u32)(iova & SUN50I_IOVA_PAGE_MASK) >> SUN50I_IOVA_PAGE_SHIFT;
>
> A shift in a "page offset" calculation looks weird and surprising at the
> best of times, so a redundant one is *actively* confounding.

It's probably a poorly written name then. It's supposed to return the
offset of a given address within the page. What would name / rework
would make it less confusing?

> > +}
> > +
> > +/*
> > + * Each Directory Table Entry has a Page Table address and a valid
> > + * bit:
> > +
> > + * +---------------------+-----------+-+
> > + * | PT address          | Reserved  |V|
> > + * +---------------------+-----------+-+
> > + *  31:10 - Page Table address
> > + *   9:2  - Reserved
> > + *   1:0  - 1 if the entry is valid
> > + */
> > +
> > +#define SUN50I_DTE_PT_ADDRESS_MASK	GENMASK(31, 10)
> > +#define SUN50I_DTE_PT_ATTRS		GENMASK(1, 0)
> > +#define SUN50I_DTE_PT_VALID		BIT(0)
> > +
> > +static inline phys_addr_t sun50i_dte_pt_address(u32 dte)
> > +{
> > +	return (phys_addr_t)dte & SUN50I_DTE_PT_ADDRESS_MASK;
> > +}
> > +
> > +static inline bool sun50i_dte_is_pt_valid(u32 dte)
> > +{
> > +	return (dte & SUN50I_DTE_PT_ATTRS) == SUN50I_DTE_PT_VALID;
>
> If SUN50I_DTE_PT_ATTRS was being used consistently with an expectation that
> it might possibly grow in future, then it might deserve to stay, but right
> now I'd say just "return dte & SUN50I_DTE_PT_VALID" here to match the use
> below.

You can't really do that though :/

The two LSBs are meant to hold whether the page is valid, and only
0b01 is the valid value. With an AND operator only, if the two LSBs
are 0b11, the helper would return true, while the IOMMU would consider
it invalid.

> > +#define SUN50I_PTE_PAGE_ADDRESS_MASK	GENMASK(31, 12)
> > +#define SUN50I_PTE_ACI_MASK		GENMASK(7, 4)
> > +#define SUN50I_PTE_ACI_SHIFT		4
> > +#define SUN50I_PTE_ACI(aci)		((aci) << SUN50I_PTE_ACI_SHIFT)
> > +#define SUN50I_PTE_PAGE_VALID		BIT(1)
> > +
> > +static inline phys_addr_t sun50i_pte_page_address(u32 pte)
> > +{
> > +	return (phys_addr_t)pte & SUN50I_PTE_PAGE_ADDRESS_MASK;
> > +}
> > +
> > +static inline enum iommu_aci sun50i_pte_aci(u32 pte)
>
> Eww, "lowercase name does opposite of uppercase name" is a confusingly
> unfamiliar paradigm - can we have a clearer distinction between "get" and
> "set" operations please?

ACK.

> Plus a bit more consistency in terms of macros vs. helper functions
> (maybe consider bitfield.h helpers too).

What did you find inconsistent? (Also, I didn't know FIELD_GET was a
thing. I'll use it).

...

> > +static int sun50i_iommu_tlb_invalidate(struct sun50i_iommu *iommu,
> > +				       dma_addr_t iova)
> > +{
> > +	int ret;
> > +	u32 reg;
> > +
> > +	assert_spin_locked(&iommu->iommu_lock);
> > +
> > +	iommu_write(iommu, IOMMU_TLB_IVLD_ADDR_REG, iova);
> > +	iommu_write(iommu, IOMMU_TLB_IVLD_ADDR_MASK_REG,
> > +		    SUN50I_PTE_PAGE_ADDRESS_MASK);
>
> Does this imply that the hardware might support power-of-two invalidations
> larger than a single page? No need to worry about it for the initial driver,
> but it could be worth investigating for future optimisation.

The documentation is pretty sparse (and I'm not really fluent in
IOMMUs yet) but it's my understanding yes.

I'm not quite sure how that would translate into the IOMMU
framework. As far as I could experience, map and unmap is only called
a single page at a time, so I'm not sure what we could optimize here?

...

> > +static u32 *sun50i_dte_get_page_table(struct sun50i_iommu_domain *sun50i_domain,
> > +				      dma_addr_t iova)
> > +{
> > +	struct sun50i_iommu *iommu = sun50i_domain->iommu;
> > +	u32 *page_table, *dte_addr;
> > +	phys_addr_t pt_phys;
> > +	dma_addr_t pt_dma;
> > +	u32 dte_index, dte;
> > +
> > +	assert_spin_locked(&sun50i_domain->dt_lock);
> > +
> > +	dte_index = sun50i_iova_dte_index(iova);
> > +	dte_addr = &sun50i_domain->dt[dte_index];
> > +	dte = *dte_addr;
> > +	if (sun50i_dte_is_pt_valid(dte))
> > +		goto done;
> > +
> > +	page_table = kmem_cache_zalloc(iommu->pt_pool, GFP_ATOMIC);
>
> Can you respect the new gfp argument from ->map() here, or is that one of
> those things that kmem_caches can be overly picky about?

That's a good question, I'll try :)

> > +}
> > +
> > +static int sun50i_iommu_map(struct iommu_domain *domain, unsigned long iova,
> > +			    phys_addr_t paddr, size_t size, int prot, gfp_t gfp)
> > +{
> > +	struct sun50i_iommu_domain *sun50i_domain = to_sun50i_domain(domain);
> > +	struct sun50i_iommu *iommu = sun50i_domain->iommu;
> > +	u32 pte_index;
> > +	u32 *page_table, *pte_addr;
> > +	unsigned long flags;
> > +	int ret = 0;
> > +
> > +	spin_lock_irqsave(&sun50i_domain->dt_lock, flags);
> > +	page_table = sun50i_dte_get_page_table(sun50i_domain, iova);
> > +	if (IS_ERR(page_table)) {
> > +		ret = PTR_ERR(page_table);
> > +		goto out;
> > +	}
> > +
> > +	pte_index = sun50i_iova_pte_index(iova);
> > +	pte_addr = &page_table[pte_index];
> > +	if (sun50i_pte_is_page_valid(*pte_addr)) {
> > +		phys_addr_t page_phys = sun50i_pte_page_address(*pte_addr);
> > +		dev_err(iommu->dev,
> > +			"iova %pad already mapped to %pa cannot remap to %pa prot: %#x\n",
> > +			&iova, &page_phys, &paddr, prot);
> > +		ret = -EADDRINUSE;
>
> I think that strictly refers to a *network* address - I'd be inclined to
> stick with boring old EBUSY.

ACK

> > +		goto out;
> > +	}
> > +
> > +	*pte_addr = sun50i_mk_pte(paddr, prot);
> > +	sun50i_table_flush(sun50i_domain, virt_to_phys(pte_addr), 1);
> > +
> > +	spin_lock_irqsave(&iommu->iommu_lock, flags);
> > +
> > +	sun50i_iommu_tlb_invalidate(iommu, iova);
> > +	sun50i_iommu_ptw_invalidate(iommu, iova);
>
> Does the walk cache actually cache PTEs as well as DTEs? If it's really only
> the latter, the maintenance could perhaps be folded into pagetable
> allocation (being the only place that ever changes them).

So the documentation is also sparse on this, but there's definitely a
cache for the table walk, and you feed the invalidate register an
address aligned on 1MB, wich is (1 << 20), and the index of the DTE is
stored in the bits 20 to 31 in the iova.

So my best guess is that, yeah, it's the DTE -> PT association. But
it's not like something confirms it :)

But you're right that we shouldn't need this here, I'll move it to the
page table allocation function.

> > +static void sun50i_iommu_domain_free(struct iommu_domain *domain)
> > +{
> > +	struct sun50i_iommu_domain *sun50i_domain = to_sun50i_domain(domain);
> > +	struct sun50i_iommu *iommu = sun50i_domain->iommu;
> > +	unsigned long flags;
> > +	int i;
> > +
> > +	spin_lock_irqsave(&sun50i_domain->dt_lock, flags);
> > +
> > +	for (i = 0; i < NUM_DT_ENTRIES; i++) {
> > +		phys_addr_t pt_phys;
> > +		u32 *page_table;
> > +		u32 *dte_addr;
> > +		u32 dte;
> > +
> > +		dte_addr = &sun50i_domain->dt[i];
> > +		dte = *dte_addr;
> > +		if (!sun50i_dte_is_pt_valid(dte))
> > +			continue;
> > +
> > +		memset(dte_addr, 0, sizeof(*dte_addr));
> > +		sun50i_table_flush(sun50i_domain, virt_to_phys(dte_addr), 1);
>
> This shouldn't be necessary - freeing a domain while it's still live is an
> incredibly very wrong thing to do, so the hardware should have already been
> programmed to no longer walk this table by this point.

We never "garbage collect" and remove the dte for the page table we
don't use anymore elsewhere though, so couldn't we end up in a
situation where we don't have a page table (because it has been freed)
at the other end of our dte, but the IOMMU doesn't know about it since
we never flushed?

> > +
> > +		pt_phys = sun50i_dte_pt_address(dte);
> > +		dma_unmap_single(iommu->dev, pt_phys, PT_SIZE, DMA_TO_DEVICE);
> > +
> > +		page_table = phys_to_virt(pt_phys);
> > +		kmem_cache_free(iommu->pt_pool, page_table);
> > +	}
> > +
> > +	free_pages((unsigned long)sun50i_domain->dt, get_order(DT_SIZE));
> > +	sun50i_domain->dt = NULL;
> > +
> > +	spin_lock(&iommu->iommu_lock);
> > +	sun50i_iommu_flush_all_tlb(iommu);
> > +	spin_unlock(&iommu->iommu_lock);
>
> And this looks very out-of-place. I'd expect any invalidation to have
> happened at the point that translation was disabled, or be deferred until it
> is next reenabled. Consider that users are within their rights to call
> iommu_domain_alloc() 17 times in a row and immediately free them all again
> without ever attaching any devices; there should be no reason to ever touch
> the hardware in such a case.

So I guess we shouldn't remove the DTEs here then, but in unmap then?

> > +static int sun50i_iommu_attach_device(struct iommu_domain *domain,
> > +				      struct device *dev)
> > +{
> > +	struct sun50i_iommu_domain *sun50i_domain = to_sun50i_domain(domain);
> > +	struct sun50i_iommu *iommu;
> > +
> > +	iommu = sun50i_iommu_from_dev(dev);
> > +	if (!iommu)
> > +		return -ENODEV;
> > +
> > +	dev_info(dev, "Attaching to IOMMU domain\n");
>
> Also no.

ACK

> > +
> > +	if (iommu->domain == domain)
> > +		return 0;
> > +
> > +	if (iommu->domain)
> > +		sun50i_iommu_detach_device(iommu->domain, dev);
> > +
> > +	iommu->domain = domain;
> > +	sun50i_domain->iommu = iommu;
> > +
> > +	return pm_runtime_get_sync(iommu->dev);
>
> Deferring all the actual hardware pogramming to the suspend/resume hooks is
> a fiendishly clever idea that took me more than a moment to make sense of,
> but how well does it work when RPM is compiled out or runtime-inhibited?

We have a bunch of other controllers that require runtime_pm already,
so it's going to be enabled. But that should be expressed in Kconfig.

> Furthermore, basing RPM on having a domain attached means that
> you'll effectively never turn the IOMMU off, even when all the
> clients are idle. It would make more sene to use device links like
> most other drivers do to properly model the producer/consumer
> relationship.

I'm not familiar with device links for runtime_pm, I thought this was
only useful for system-wide resume and suspend?

...

> > +static void sun50i_iommu_report_fault(struct sun50i_iommu *iommu,
> > +				      unsigned master, phys_addr_t iova,
> > +				      unsigned prot)
> > +{
> > +	dev_err(iommu->dev, "Page fault for %pad (master %d, dir %s)\n",
> > +		&iova, master, (prot == IOMMU_FAULT_WRITE) ? "wr" : "rd");
>
> If you're expecting an external handler to be able to do something useful
> with faults, then save the log spam for the case where it's actually failed.

I'm sorry, I'm not quite sure what you mean here. Where what actually failed?

> > +
> > +	if (iommu->domain)
> > +		report_iommu_fault(iommu->domain, iommu->dev, iova, prot);
> > +	else
> > +		dev_err(iommu->dev, "Page fault while iommu not attached to any domain?\n");
> > +}
> > +
> > +static phys_addr_t sun50i_iommu_handle_pt_irq(struct sun50i_iommu *iommu,
> > +					      unsigned addr_reg,
> > +					      unsigned blame_reg)
> > +{
> > +	phys_addr_t iova;
> > +	unsigned master;
> > +	u32 blame;
> > +
> > +	assert_spin_locked(&iommu->iommu_lock);
> > +
> > +	iova = iommu_read(iommu, addr_reg);
> > +	blame = iommu_read(iommu, blame_reg);
> > +	master = ilog2(blame & IOMMU_INT_MASTER_MASK);
> > +
> > +	/*
> > +	 * If the address is not in the page table, we can't get what
> > +	 * operation triggered the fault. Assume it's a read
> > +	 * operation.
> > +	 */
> > +	sun50i_iommu_report_fault(iommu, master, iova, IOMMU_FAULT_READ);
> > +
> > +	return iova;
> > +}
> > +
> > +static phys_addr_t sun50i_iommu_handle_perm_irq(struct sun50i_iommu *iommu)
> > +{
> > +	enum iommu_aci aci;
> > +	phys_addr_t iova;
> > +	unsigned master;
> > +	unsigned dir;
> > +	u32 blame;
> > +
> > +	assert_spin_locked(&iommu->iommu_lock);
> > +
> > +	blame = iommu_read(iommu, IOMMU_INT_STA_REG);
> > +	master = ilog2(blame & IOMMU_INT_MASTER_MASK);
> > +	iova = iommu_read(iommu, IOMMU_INT_ERR_ADDR_REG(master));
> > +	aci = sun50i_pte_aci(iommu_read(iommu, IOMMU_INT_ERR_DATA_REG(master)));
> > +
> > +	switch (aci) {
> > +		/*
> > +		 * If we are in the read-only domain, then it means we
> > +		 * tried to write.
> > +		 */
> > +	case IOMMU_ACI_RD:
> > +		dir = IOMMU_FAULT_WRITE;
> > +		break;
> > +
> > +		/*
> > +		 * If we are in the write-only domain, then it means
> > +		 * we tried to read.
> > +		 */
> > +	case IOMMU_ACI_WR:
> > +
> > +		/*
> > +		 * If we are in the domain without any permission, we
> > +		 * can't really tell. Let's default to a read
> > +		 * operation.
> > +		 */
> > +	case IOMMU_ACI_NONE:
> > +
> > +		/* WTF? */
> > +	case IOMMU_ACI_RD_WR:
> > +	default:
> > +		dir = IOMMU_FAULT_READ;
> > +		break;
> > +	}
> > +
> > +	/*
> > +	 * If the address is not in the page table, we can't get what
> > +	 * operation triggered the fault. Assume it's a read
> > +	 * operation.
> > +	 */
> > +	sun50i_iommu_report_fault(iommu, master, iova, dir);
> > +
> > +	return iova;
> > +}
> > +
> > +static irqreturn_t sun50i_iommu_irq(int irq, void *dev_id)
> > +{
> > +	struct sun50i_iommu *iommu = dev_id;
> > +	phys_addr_t iova;
> > +	u32 status;
> > +
> > +	spin_lock(&iommu->iommu_lock);
> > +
> > +	status = iommu_read(iommu, IOMMU_INT_STA_REG);
> > +	if (!(status & IOMMU_INT_MASK)) {
> > +		spin_unlock(&iommu->iommu_lock);
> > +		return IRQ_NONE;
> > +	}
> > +
> > +	if (status & IOMMU_INT_INVALID_L2PG)
> > +		iova = sun50i_iommu_handle_pt_irq(iommu,
> > +						  IOMMU_INT_ERR_ADDR_L2_REG,
> > +						  IOMMU_L2PG_INT_REG);
> > +	else if (status & IOMMU_INT_INVALID_L1PG)
> > +		iova = sun50i_iommu_handle_pt_irq(iommu,
> > +						  IOMMU_INT_ERR_ADDR_L1_REG,
> > +						  IOMMU_L1PG_INT_REG);
> > +	else
> > +		iova = sun50i_iommu_handle_perm_irq(iommu);
> > +
> > +	sun50i_iommu_tlb_invalidate(iommu, iova);
> > +	sun50i_iommu_ptw_invalidate(iommu, iova);
>
> Yikes, does the hardware really somehow require that?

Again the documentation is sparse, so I don't really know. The
original driver had that though (and not just one):
https://github.com/Allwinner-Homlet/H6-BSP4.9-linux/blob/master/drivers/iommu/sunxi-iommu.c#L952

I guess I can just remove it and see if it works. I'm not really an
expert on cache maintainance, so I wasn't really sure whether that was
needed or not.

> > +static int __maybe_unused sun50i_iommu_suspend(struct device *dev)
> > +{
> > +	struct sun50i_iommu_domain *sun50i_domain;
> > +	struct sun50i_iommu *iommu;
> > +	unsigned long flags;
> > +
> > +	iommu = dev_get_drvdata(dev);
> > +	if (!iommu->domain)
> > +		return 0;
> > +
> > +	spin_lock_irqsave(&iommu->iommu_lock, flags);
> > +
> > +	iommu_write(iommu, IOMMU_ENABLE_REG, 0);
> > +	iommu_write(iommu, IOMMU_TTB_REG, 0);
> > +
> > +	spin_unlock_irqrestore(&iommu->iommu_lock, flags);
> > +
> > +	clk_disable_unprepare(iommu->clk);
> > +	reset_control_assert(iommu->reset);
> > +
> > +	sun50i_domain = to_sun50i_domain(iommu->domain);
> > +	dma_unmap_single(dev, virt_to_phys(sun50i_domain->dt), DT_SIZE,
> > +			 DMA_TO_DEVICE);
>
> Why? The only time you should need to do this is when freeing the table.
>
> > +
> > +	return 0;
> > +}
> > +
> > +static int __maybe_unused sun50i_iommu_resume(struct device *dev)
> > +{
> > +	struct sun50i_iommu_domain *sun50i_domain;
> > +	struct sun50i_iommu *iommu;
> > +	unsigned long flags;
> > +	dma_addr_t dt_dma;
> > +	int ret;
> > +
> > +	iommu = dev_get_drvdata(dev);
> > +	if (!iommu->domain)
> > +		return 0;
> > +
> > +	sun50i_domain = to_sun50i_domain(iommu->domain);
> > +	dt_dma = dma_map_single(dev, sun50i_domain->dt, DT_SIZE, DMA_TO_DEVICE);
>
> As above. The power state of the IOMMU should be enitrely irrelevant to the
> contents of RAM.

Sorry, I should have put a comment here.

I'm not quite sure what the difference between a group and domain in
the IOMMU framework is, but since this IOMMU can only deal with a
single address space, my understanding was that we'd need to allocate
a single domain and group, and that the domain was the abstraction
tied to an address space (since it's what is passed as an argument to
map).

So, given this, what made since was to allocate the directory table
buffer at domain_alloc time and map it. But then, domain_alloc seems
to not have any pointer back to the iommu we registered for some
reason (I guess that a domain could be shared across multiple
IOMMUs?), and so we don't have access to our IOMMU's struct device.

It's not really clear in my mind, so there's probably a better way.

> > +	if (dma_mapping_error(dev, dt_dma)) {
> > +		dev_err(dev, "Couldn't map L1 Page Table\n");
> > +		return -ENOMEM;
> > +	}
> > +
> > +	ret = reset_control_deassert(iommu->reset);
> > +	if (ret)
> > +		goto err_unmap;
> > +
> > +	ret = clk_prepare_enable(iommu->clk);
> > +	if (ret)
> > +		goto err_reset_assert;
> > +
> > +	/* We rely on the physical address and DMA address being the same */
> > +	WARN_ON(dt_dma != virt_to_phys(sun50i_domain->dt));
>
> If you made proper use of both iommu->dt and iommu->dt_dma you wouldn't
> actually need that invariant at this level, which I think would be a good
> thing. The phys_to_virt() dance is somewhat justifiable for the second-level
> tables to save maintaining an additional dma_addr_t[4096] array; far less so
> for the single top-level address.

This kind of conflics with your earlier comment about moving the
virt_to_phys call for the flush function into the function and remove
it from the caller. Judging from that last comment, I guess keeping
the dma address as the argument makes more sense?

Also, a more general question. One of the cleanups I wanted to do was
to remove the kmem_cache in favour of a dma_pool, which triggered that
test. It looks like with a dma_pool, the physical address and dma
address are not the same, even though the IOMMU is directly connected
to the RAM so there should be no intermediate mapping. Do you know
why?

> > +
> > +	spin_lock_irqsave(&iommu->iommu_lock, flags);
> > +
> > +	iommu_write(iommu, IOMMU_TTB_REG, dt_dma);
> > +	iommu_write(iommu, IOMMU_TLB_PREFETCH_REG,
> > +		    IOMMU_TLB_PREFETCH_MASTER_ENABLE(0) |
> > +		    IOMMU_TLB_PREFETCH_MASTER_ENABLE(1) |
> > +		    IOMMU_TLB_PREFETCH_MASTER_ENABLE(2) |
> > +		    IOMMU_TLB_PREFETCH_MASTER_ENABLE(3) |
> > +		    IOMMU_TLB_PREFETCH_MASTER_ENABLE(4) |
> > +		    IOMMU_TLB_PREFETCH_MASTER_ENABLE(5));
> > +	iommu_write(iommu, IOMMU_INT_ENABLE_REG, IOMMU_INT_MASK);
> > +	iommu_write(iommu, IOMMU_DM_AUT_CTRL_REG(IOMMU_ACI_NONE),
> > +		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_NONE, 0) |
> > +		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_NONE, 0) |
> > +		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_NONE, 1) |
> > +		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_NONE, 1) |
> > +		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_NONE, 2) |
> > +		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_NONE, 2) |
> > +		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_NONE, 3) |
> > +		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_NONE, 3) |
> > +		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_NONE, 4) |
> > +		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_NONE, 4) |
> > +		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_NONE, 5) |
> > +		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_NONE, 5));
> > +
> > +	iommu_write(iommu, IOMMU_DM_AUT_CTRL_REG(IOMMU_ACI_RD),
> > +		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD, 0) |
> > +		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD, 1) |
> > +		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD, 2) |
> > +		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD, 3) |
> > +		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD, 4) |
> > +		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD, 5) |
> > +		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_RD, 0) |
> > +		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_RD, 1) |
> > +		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_RD, 2) |
> > +		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_RD, 3) |
> > +		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_RD, 4) |
> > +		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_RD, 5));
> > +
> > +	iommu_write(iommu, IOMMU_DM_AUT_CTRL_REG(IOMMU_ACI_WR),
> > +		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_WR, 0) |
> > +		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_WR, 1) |
> > +		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_WR, 2) |
> > +		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_WR, 3) |
> > +		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_WR, 4) |
> > +		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_WR, 5) |
> > +		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_WR, 0) |
> > +		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_WR, 1) |
> > +		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_WR, 2) |
> > +		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_WR, 3) |
> > +		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_WR, 4) |
> > +		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_WR, 5));
> > +
> > +	iommu_write(iommu, IOMMU_DM_AUT_CTRL_REG(IOMMU_ACI_RD_WR),
> > +		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD_WR, 0) |
> > +		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_RD_WR, 0) |
> > +		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD_WR, 1) |
> > +		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_RD_WR, 1) |
> > +		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD_WR, 2) |
> > +		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_RD_WR, 2) |
> > +		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD_WR, 3) |
> > +		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_RD_WR, 3) |
> > +		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD_WR, 4) |
> > +		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_RD_WR, 4) |
> > +		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD_WR, 5) |
> > +		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_RD_WR, 5));
> > +
> > +	ret = sun50i_iommu_flush_all_tlb(iommu);
> > +	if (ret) {
> > +		spin_unlock_irqrestore(&iommu->iommu_lock, flags);
> > +		goto err_clk_disable;
> > +	}
> > +
> > +	iommu_write(iommu, IOMMU_AUTO_GATING_REG, IOMMU_AUTO_GATING_ENABLE);
> > +	iommu_write(iommu, IOMMU_ENABLE_REG, IOMMU_ENABLE_ENABLE);
>
> As mentioned, although you obviously do need to reprogram the hardware on
> resume, the fact that the *only* references to most of the control registers
> are from "__maybe_unused" functions is a big red flag.
>
> > +
> > +	spin_unlock_irqrestore(&iommu->iommu_lock, flags);
> > +
> > +	return 0;
> > +
> > +err_clk_disable:
> > +	clk_disable_unprepare(iommu->clk);
> > +
> > +err_reset_assert:
> > +	reset_control_assert(iommu->reset);
> > +
> > +err_unmap:
> > +	sun50i_domain = to_sun50i_domain(iommu->domain);
> > +	dma_unmap_single(dev, dt_dma, DT_SIZE, DMA_TO_DEVICE);
> > +	return ret;
> > +}
> > +
> > +static const struct dev_pm_ops sun50i_iommu_pm_ops = {
> > +	SET_RUNTIME_PM_OPS(sun50i_iommu_suspend, sun50i_iommu_resume, NULL)
>
> In principle you should be able to support system PM with the same resume
> callback.

We don't have system-wide support, so I couldn't test it. I'd prefer
to leave it out until we have, if that's alright?

> > +};
> > +
> > +static const struct of_device_id sun50i_iommu_dt[] = {
> > +	{ .compatible = "allwinner,sun50i-h6-iommu", },
> > +	{ /* sentinel */ },
> > +};
> > +MODULE_DEVICE_TABLE(of, sun50i_iommu_dt);
> > +
> > +static struct platform_driver sun50i_iommu_driver = {
> > +	.probe		= sun50i_iommu_probe,
> > +	.driver		= {
> > +		.name			= "sun50i-iommu",
> > +		.of_match_table 	= sun50i_iommu_dt,
> > +		.pm			= &sun50i_iommu_pm_ops,
> > +		.suppress_bind_attrs	= true,
> > +	}
> > +};
> > +
> > +static int __init sun50i_iommu_init(void)
> > +{
> > +	return platform_driver_register(&sun50i_iommu_driver);
> > +}
> > +subsys_initcall(sun50i_iommu_init);
>
> Regular device_initcall() (or just a *_platform_driver() helper) should be
> sufficient these days.

Ack. Thanks again!
Maxime

--32n4kykvz45fuwk4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXi7yQAAKCRDj7w1vZxhR
xVv0AQCMDw/0rZ/rXBq3mRCYXtVoSpI+oNVBZSGdP9cIJV+mlgEAoCoHpwTXwU8K
yIbzR2wznAOmZ+SkwVjw6WaakoGfmA4=
=LXFQ
-----END PGP SIGNATURE-----

--32n4kykvz45fuwk4--


--===============3823825710191383122==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3823825710191383122==--

