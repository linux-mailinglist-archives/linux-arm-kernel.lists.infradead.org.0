Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 215D3EE82B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 20:20:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DGHucamTh6rAkWAGP/UJz3B8uQYYRiSa0GNc6jPLCuM=; b=BRYXrZYZU9ASg8
	D0ABOrclWy526rM6NLFQ0FjYLBFI8bou2dw51SjvJbDQ4luNmc584TQ8nSMWYpBa4azozjur2iWrW
	2BC5Xxn/e86WL4+iKrVTKnxSYcgQz7NEPR3KaSRr4TuZGJuhvJI6zv3hH1r958o4oV50LIlJ4TAkD
	x0aWHRaMV3OwkoYi06y2dPSoLJyqyoanKRLPXiuXy57aw87Ox4f8daUImOoXfoDGRGJ1Sw+r5hwe2
	ACepTZQ52AtuwAhCM08PYYbLXOEgfkLt8neHXJtIkT7JNxTTR1B+GW5E7o4RQWeWrIycNReDMXLXP
	G3jPkbLV7bjFav28+otg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRhtp-00069v-4n; Mon, 04 Nov 2019 19:20:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRhti-00069R-UV
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 19:20:20 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7C1FE2084D;
 Mon,  4 Nov 2019 19:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572895218;
 bh=cDz9gfK8MWilHlMzVfKaiaO3yX6AZlcXNifxBXP/KPQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mhE/SkjnYFG/Lopp8nsY6/eoCtWw7QPgBqtTjOZnv3vl5GZ96mrg5vhmSoQGXyB6S
 eq1XJ5bTDlbcsckkim34gvAzLzDRisKi39u9eLEORy4KjaineI029mNNSkesgmPuD2
 MoXRNwDLEQ48qQo3a3nJMZmX5UQdFSg3OuVSTd8c=
Date: Mon, 4 Nov 2019 19:20:11 +0000
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 06/10] iommu/io-pgtable-arm: Simplify level indexing
Message-ID: <20191104192010.GJ24909@willie-the-truck>
References: <cover.1572024119.git.robin.murphy@arm.com>
 <698173b487383735e470a28e5cca4f9db22703de.1572024120.git.robin.murphy@arm.com>
 <20191104181722.GF24909@willie-the-truck>
 <f39248b0-b70e-4138-3eb9-81ce2cfbee4b@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f39248b0-b70e-4138-3eb9-81ce2cfbee4b@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_112019_024236_ADD6DB39 
X-CRM114-Status: GOOD (  23.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: iommu@lists.linux-foundation.org, jcrouse@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 06:36:51PM +0000, Robin Murphy wrote:
> On 04/11/2019 18:17, Will Deacon wrote:
> > On Fri, Oct 25, 2019 at 07:08:35PM +0100, Robin Murphy wrote:
> > > The nature of the LPAE format means that data->pg_shift is always
> > > redundant with data->bits_per_level, since they represent the size of a
> > > page and the number of PTEs per page respectively, and the size of a PTE
> > > is constant. Thus it works out more efficient to only store the latter,
> > > and derive the former via a trivial addition where necessary.
> > > 
> > > Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> > > ---
> > >   drivers/iommu/io-pgtable-arm.c | 29 +++++++++++++----------------
> > >   1 file changed, 13 insertions(+), 16 deletions(-)
> > > 
> > > diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
> > > index 4b1483eb0ccf..15b4927ce36b 100644
> > > --- a/drivers/iommu/io-pgtable-arm.c
> > > +++ b/drivers/iommu/io-pgtable-arm.c
> > > @@ -36,10 +36,11 @@
> > >    * in a virtual address mapped by the pagetable in d.
> > >    */
> > >   #define ARM_LPAE_LVL_SHIFT(l,d)						\
> > > -	(((ARM_LPAE_MAX_LEVELS - 1 - (l)) * (d)->bits_per_level) +	\
> > > -	(d)->pg_shift)
> > > +	(((ARM_LPAE_MAX_LEVELS - (l)) * (d)->bits_per_level) +		\
> > > +	ilog2(sizeof(arm_lpae_iopte)))
> > > -#define ARM_LPAE_GRANULE(d)		(1UL << (d)->pg_shift)
> > > +#define ARM_LPAE_GRANULE(d)						\
> > > +	(sizeof(arm_lpae_iopte) << (d)->bits_per_level)
> > >   #define ARM_LPAE_PGD_SIZE(d)						\
> > >   	(sizeof(arm_lpae_iopte) << (d)->pgd_bits)
> > > @@ -55,9 +56,7 @@
> > >   	 ((1 << ((d)->bits_per_level + ARM_LPAE_PGD_IDX(l,d))) - 1))
> > >   /* Calculate the block/page mapping size at level l for pagetable in d. */
> > > -#define ARM_LPAE_BLOCK_SIZE(l,d)					\
> > > -	(1ULL << (ilog2(sizeof(arm_lpae_iopte)) +			\
> > > -		((ARM_LPAE_MAX_LEVELS - (l)) * (d)->bits_per_level)))
> > > +#define ARM_LPAE_BLOCK_SIZE(l,d)	(1ULL << ARM_LPAE_LVL_SHIFT(l,d))
> > >   /* Page table bits */
> > >   #define ARM_LPAE_PTE_TYPE_SHIFT		0
> > > @@ -175,8 +174,7 @@ struct arm_lpae_io_pgtable {
> > >   	int			pgd_bits;
> > >   	int			start_level;
> > > -	unsigned long		pg_shift;
> > > -	unsigned long		bits_per_level;
> > > +	int			bits_per_level;
> > >   	void			*pgd;
> > >   };
> > > @@ -206,7 +204,7 @@ static phys_addr_t iopte_to_paddr(arm_lpae_iopte pte,
> > >   {
> > >   	u64 paddr = pte & ARM_LPAE_PTE_ADDR_MASK;
> > > -	if (data->pg_shift < 16)
> > > +	if (data->bits_per_level < 13) /* i.e. 64K granule */
> > 
> > nit, but:
> > 
> > 	if (ARM_LPAE_GRANULE(data) < SZ_64K)
> > 
> > might be clearer and avoid the need for a comment?
> 
> Unfortunately GCC doesn't treat the two as directly equivalent (presumably
> due to boundary conditions) so will emit the additional faff to actually
> compute and compare the intermediate value every time, rather than just
> trivially testing the shift. I figured the minor I$/register pressure win
> was worth the small price of a comment.

Bet ya can't measure the difference ;)

I'd prefer the readable version in the absence of numbers.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
