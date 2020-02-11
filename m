Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3194158E9F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 13:39:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ja1gzrexv7OIHkVvRL7Rs+xToBP8LcNT3R0PYOOc0Eg=; b=c5ydjTkkGoiGuheSTiKtPIbcK
	DfPuLJMcIQ5gmtAAmSs4HnbD5O+sAKO7nurwsC+ZTgJ37YwxyvGLNUIzp78Z/VRCF4D1EUHKcWINE
	2lZRpV0zdvk83YAk8c4BqmDOM9IKOPZgRVCK7q7nyhS9NWfZWIpJIYgkdKBAUobKsau+Q9ReQJnTy
	2x4GF3ptq4npqHWM+0Q6vewBY3/bC2qWfCHX68z5JND2lwhMO4NRglDRcWAvc+8DIchgE3cA/LcDN
	NDDK81I+yD6jCZ7FJvVQhmTIgL2Mr9P3SkObUxIUWGHMWqudlVoNmYo8+x17nPpkVkt4btT89K4yu
	WYytZdrBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Uos-00008e-Ng; Tue, 11 Feb 2020 12:39:14 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Uoj-00008C-Hm
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 12:39:07 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id E5D8D21C1B;
 Tue, 11 Feb 2020 07:39:03 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 11 Feb 2020 07:39:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=RC7CgfumKJMevq6aQ4QTK7DfJ2T
 lGNm2F1ftNSwmRp0=; b=LpMBIVGbxGnLlp5k949vbdd8LYYfqjEGtpq6f4e9Kjy
 K7sujZR0mofaNogXe0tNChjqqp0f49vR0hUBEScKWezfFJx2G34PVYseatKZNJdE
 UzAyEvFSWPC3PZTtItU+JAtrsun0vK1+FOhmU4hATTVvE2aG3w+zvBispPKRMG+f
 jZobJ9tTytWFgWq0GTImYfEBr8LQI1qbcaYI+kXL5MGKI9awcZ68Qh+OsBUG1TjT
 BQsrkFnoJxIP6BfJ2Ldmd1UeFkdR63kwx32HwunVVgXh0pDZE7R1uOzQ1Im+5qcj
 JHDx3m33+YylvFQ/Od7i05DILRkUI8FUpORktD8IJJg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=RC7Cgf
 umKJMevq6aQ4QTK7DfJ2TlGNm2F1ftNSwmRp0=; b=YuewJ8ab4Vm4u+DI9eSsAr
 GjpWumZZ3kVwX5wHUGIhGACGWivbDthTZ3PaLkbYg1o9Y2LSYQC6lZ8lrfBhd2WE
 l0jUS5qmnYLiuGu92UUqUkl7VAh/GF+CFfjMC0tjdPHy9ifLBbqB3ZWs4PMnt86U
 UfdL1fK2g0hpdS1Ju9GY8JUGn5vlCXa+QOFm3lXicVffYbBh0n+YVcqwG21p9Bkz
 M3W3JD10h7nmEYG8c8WlLjY3orLoeU6rC+P24ew3nZ3tQMj4+6etACnEBRlxQcuC
 2WygKSsO3ngT5U6QYjjx540BnuOLevyQf6xjv4QaoYiKjN3b0P2zZN1xUGRmyrrA
 ==
X-ME-Sender: <xms:Z6BCXpcDrmPQFAbW-JWfBdaRmEGHDrMsjEzPLmoOsBOMOPxMxeRjMQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrieefgdegfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:Z6BCXiWa-E39X1cFemkiey1IT8cV2_m55GLx_Kz67f79iIWYI3fYDA>
 <xmx:Z6BCXo6GIFBas5LEM8FjOb7_zxOb5x9c99x_ZZVXgynfn6HZvrcqXQ>
 <xmx:Z6BCXt7ON8hx05vTHjIHUL8fvISO9qq4K3tPEVq_3Sry9tMWV3kndw>
 <xmx:Z6BCXtO1V4NsOgzjY-WMJ4cYfwHovKV7EXewCsvPzCZKACvLgzioUA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id F04D63280064;
 Tue, 11 Feb 2020 07:39:02 -0500 (EST)
Date: Tue, 11 Feb 2020 13:39:01 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 2/3] iommu: Add Allwinner H6 IOMMU driver
Message-ID: <20200211123901.nm6ajh5sxqurim6w@gilmour.lan>
References: <cover.b2a9e1507135d81e726fcbb65137665a7f0ab74f.1579696927.git-series.maxime@cerno.tech>
 <fe383c3f6fa0db772c87d9d9080add97efe9ba1a.1579696927.git-series.maxime@cerno.tech>
 <a0bec2de-e87a-ddac-450e-b0f467158796@arm.com>
 <20200127142256.us5zpcft5obd7zu6@gilmour.lan>
 <99e9cb73-761f-3b30-bd73-c50aa7c21692@arm.com>
MIME-Version: 1.0
In-Reply-To: <99e9cb73-761f-3b30-bd73-c50aa7c21692@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_043905_732599_6A61C277 
X-CRM114-Status: GOOD (  43.51  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: multipart/mixed; boundary="===============4881280182209409390=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4881280182209409390==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="k7emksq7utbrovec"
Content-Disposition: inline


--k7emksq7utbrovec
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Robin,

On Mon, Jan 27, 2020 at 07:01:02PM +0000, Robin Murphy wrote:
> > > > +static void sun50i_iommu_domain_free(struct iommu_domain *domain)
> > > > +{
> > > > +	struct sun50i_iommu_domain *sun50i_domain = to_sun50i_domain(domain);
> > > > +	struct sun50i_iommu *iommu = sun50i_domain->iommu;
> > > > +	unsigned long flags;
> > > > +	int i;
> > > > +
> > > > +	spin_lock_irqsave(&sun50i_domain->dt_lock, flags);
> > > > +
> > > > +	for (i = 0; i < NUM_DT_ENTRIES; i++) {
> > > > +		phys_addr_t pt_phys;
> > > > +		u32 *page_table;
> > > > +		u32 *dte_addr;
> > > > +		u32 dte;
> > > > +
> > > > +		dte_addr = &sun50i_domain->dt[i];
> > > > +		dte = *dte_addr;
> > > > +		if (!sun50i_dte_is_pt_valid(dte))
> > > > +			continue;
> > > > +
> > > > +		memset(dte_addr, 0, sizeof(*dte_addr));
> > > > +		sun50i_table_flush(sun50i_domain, virt_to_phys(dte_addr), 1);
> > >
> > > This shouldn't be necessary - freeing a domain while it's still live is an
> > > incredibly very wrong thing to do, so the hardware should have already been
> > > programmed to no longer walk this table by this point.
> >
> > We never "garbage collect" and remove the dte for the page table we
> > don't use anymore elsewhere though, so couldn't we end up in a
> > situation where we don't have a page table (because it has been freed)
> > at the other end of our dte, but the IOMMU doesn't know about it since
> > we never flushed?
>
> Let me reiterate: at the point of freeing, the assumption is that this
> domain should be long dissociated from the hardware. Any actual invalidation
> should have already happened at the point the TTB was disabled or pointed to
> some other domain, therefore fiddling with pagetable pages just before you
> free them back to the kernel is just pointless busywork.
>
> If the TTB *was* still live here, then as soon as you call free_pages()
> below the DT memory could get reallocated by someone else and filled with
> data that happens to look like valid pagetables, so even if you invalidate
> the TLBs the hardware could just immediately go walk that data and refill
> them with nonsense, thus any pretence at invalidation is in vain anyway.

Thanks, that makes a lot of sense.

> The fly in the soup, however, is that default domains appear to be lacking
> proper detach notifications (I hadn't consciously noticed that before), so
> if you've been looking at the iommu_group_release() path it might have given
> the wrong impression. So what might be justifiable here is to check if the
> domain being freed is the one currently active in hardware, and if so
> perform a detach (i.e. disable the TTB and invalidate everything) first,
> then free everything as normal. Or just handwave that we essentially never
> free a default domain anyway so it's OK to just assume that we're not
> freeing anything live.

I'm still a bit unsure as of what to do exactly here. I haven't found
a hook that would be called when a given domain doesn't have any
devices attached to it. Or did you mean that I should just create a
separate function, not part of the IOMMU ops?

> > > > +
> > > > +	if (iommu->domain == domain)
> > > > +		return 0;
> > > > +
> > > > +	if (iommu->domain)
> > > > +		sun50i_iommu_detach_device(iommu->domain, dev);
> > > > +
> > > > +	iommu->domain = domain;
> > > > +	sun50i_domain->iommu = iommu;
> > > > +
> > > > +	return pm_runtime_get_sync(iommu->dev);
> > >
> > > Deferring all the actual hardware pogramming to the suspend/resume hooks is
> > > a fiendishly clever idea that took me more than a moment to make sense of,
> > > but how well does it work when RPM is compiled out or runtime-inhibited?
> >
> > We have a bunch of other controllers that require runtime_pm already,
> > so it's going to be enabled. But that should be expressed in Kconfig.
>
> But it can still be inhibited from sysfs, right? We don't want driver
> behaviour to be *unnecessarily* fragile to user actions, however silly they
> may be.

That's a good point :)

> > > Furthermore, basing RPM on having a domain attached means that
> > > you'll effectively never turn the IOMMU off, even when all the
> > > clients are idle. It would make more sene to use device links like
> > > most other drivers do to properly model the producer/consumer
> > > relationship.
> >
> > I'm not familiar with device links for runtime_pm, I thought this was
> > only useful for system-wide resume and suspend?
>
> See DL_FLAG_PM_RUNTIME - we already have several IOMMU drivers taking full
> advantage of this.

I'll look into it, thanks!

> > > > +static int __maybe_unused sun50i_iommu_resume(struct device *dev)
> > > > +{
> > > > +	struct sun50i_iommu_domain *sun50i_domain;
> > > > +	struct sun50i_iommu *iommu;
> > > > +	unsigned long flags;
> > > > +	dma_addr_t dt_dma;
> > > > +	int ret;
> > > > +
> > > > +	iommu = dev_get_drvdata(dev);
> > > > +	if (!iommu->domain)
> > > > +		return 0;
> > > > +
> > > > +	sun50i_domain = to_sun50i_domain(iommu->domain);
> > > > +	dt_dma = dma_map_single(dev, sun50i_domain->dt, DT_SIZE, DMA_TO_DEVICE);
> > >
> > > As above. The power state of the IOMMU should be enitrely irrelevant to the
> > > contents of RAM.
> >
> > Sorry, I should have put a comment here.
> >
> > I'm not quite sure what the difference between a group and domain in
> > the IOMMU framework is, but since this IOMMU can only deal with a
> > single address space, my understanding was that we'd need to allocate
> > a single domain and group, and that the domain was the abstraction
> > tied to an address space (since it's what is passed as an argument to
> > map).
>
> That's correct, a domain is effectvely an address space, while groups
> represents sets of devices that the IOMMU can isolate from each other.
> IOMMUs like this one (and the MediaTek M4U in mtk_iommu.c) are a little
> hard-done-by in that they do actually have some finer-grained isolation on a
> basic allow/deny level, but the API really assumes that isolation happens at
> the address space level, so it's easier to ignore it and just use the
> single-group model anyway.
>
> The really neat advantage of having a guaranteed single group, though, is
> that you then no longer need to care about address spaces: since the group
> can only ever be attached to one domain at a time, you can have as many
> domains as you like, and handle it by having the first attach_dev call on a
> given domain context-switch that pagetable into the hardware. That's more or
> less what you've done already, which is good, it would just benefit from
> that context-switching being done in a more robust and obvious manner :)

Got it, thanks :)

> > So, given this, what made since was to allocate the directory table
> > buffer at domain_alloc time and map it. But then, domain_alloc seems
> > to not have any pointer back to the iommu we registered for some
> > reason (I guess that a domain could be shared across multiple
> > IOMMUs?), and so we don't have access to our IOMMU's struct device.
>
> I'll spare you the unrpoductive "Robin complains bitterly about the
> iommu_domain_alloc() interface being terrible, episode #27"...
>
> You'll see two main ways that existing drivers work around that - if you're
> happy to assume that you'll only ever have one IOMMU instance, or that all
> instances will always be functionally equal, then you can simply keep track
> of any old IOMMU device handle for DMA purposes (e.g. exynos_iommu);
> otherwise if you might need to cope with multiple IOMMU instances having
> different DMA capabilities then deferring instance-specific setup to the
> first device attach is the de-facto standard (e.g. arm-smmu).

I don't have any idea on how it's going to evolve, and the latter
seems cleaner, I'll work on that.

> > Also, a more general question. One of the cleanups I wanted to do was
> > to remove the kmem_cache in favour of a dma_pool, which triggered that
> > test. It looks like with a dma_pool, the physical address and dma
> > address are not the same, even though the IOMMU is directly connected
> > to the RAM so there should be no intermediate mapping. Do you know
> > why?
>
> DMA pools are backed by dma_alloc_coherent, so (at least on arm64) the
> virtual address you get will be a non-cacheable remap (assuming a
> non-coherent device), and thus calling virt_to_phys() on it is bogus and
> will give you nonsense.

Going further off-topic, why do we need a remap instead of a regular
physical address?

Thanks!
Maxime

--k7emksq7utbrovec
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkKgZQAKCRDj7w1vZxhR
xW5kAP9+HpYTW0hNs5Io4MhBpg2UaLLrAj9DZNnZ7TQ/pLVtDQEA4d94SrILvtxn
zhXcYGvkc/AnGeqyyJ3y43DBxoIrvAo=
=gP1F
-----END PGP SIGNATURE-----

--k7emksq7utbrovec--


--===============4881280182209409390==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4881280182209409390==--

