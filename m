Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE21965BF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 17:59:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2CmaiFgvV4tTlYrYZ06GYY9lhthIIRuNGXSSV/zMxbM=; b=g0uEFPirMzRCAa
	XiWC8anJctxgxmxfG8bgP0UQO/rqbRrQNia9WpKs2+M2HBrec41ZMlVnCZww9wD1RBqZ9DDYYMEaq
	Dlc6NluHF6lJkZw6x3gOm90FZU727Z7clrJHfZRWwKbp5S1/g2rlBfXnH4lCXAnMdaBeh2vGSRywA
	PyYyKuYco75WOuLy1DVYl8LyGO3rFddVoaQLzLqAP066MCSje4ESDXLmXzgL88CDqlsN1atBwtmso
	F3Bafg91mnnFnP7IDb1P8c0fvRimGW+OXsxEXX+Svb6E+21VXjQyCZqb+CYVdBJ3ERm9C9YrvPJRN
	/dZoLX9RyyVp/v7SrZ0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06X7-0000BH-Up; Tue, 20 Aug 2019 15:58:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i06Wi-0008NU-AO
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 15:58:29 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C6A1022CF7;
 Tue, 20 Aug 2019 15:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566316707;
 bh=dDXHA5bU4rB/VugoM/y+S4USn6RYgLcSxFjkdH7xqZg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nAlUc1GkL0o2MiZB9ygu3+rAl7z9MXqOto5rybXrVg7AXjPeph788PYAKLdjE8BCj
 OfdOMzy2XmKYQMSg5+QiFfjJgbLZxxYicfz5+YMO5ZNMS4aPGYE3Fs6ouNnlYxPJ7d
 zGmDLsy1TXr2uf4OiOpILnZ92P5x388+5f7mUDjw=
Date: Tue, 20 Aug 2019 16:58:24 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 4/4] iommu/io-pgtable-arm: Prepare for TTBR1 usage
Message-ID: <20190820155823.ptn2rfvnmkd4v632@willie-the-truck>
References: <cover.1566238530.git.robin.murphy@arm.com>
 <6596469d5fa1e918145fdd4e6b1a3ad67f7cde2e.1566238530.git.robin.murphy@arm.com>
 <20190820103048.xacfbtn5o4wermhi@willie-the-truck>
 <469dc66a-2532-5f7f-cd8d-3fe13f6c279a@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <469dc66a-2532-5f7f-cd8d-3fe13f6c279a@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_085828_432374_2538A6D4 
X-CRM114-Status: GOOD (  25.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: robdclark@gmail.com, joro@8bytes.org, jcrouse@codeaurora.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 03:51:45PM +0100, Robin Murphy wrote:
> On 20/08/2019 11:30, Will Deacon wrote:
> > On Mon, Aug 19, 2019 at 07:19:31PM +0100, Robin Murphy wrote:
> > > Now that callers are free to use a given table for TTBR1 if they wish
> > > (all they need do is shift the provided attributes when constructing
> > > their final TCR value), the only remaining impediment is the address
> > > validation on map/unmap. The fact that the LPAE address space split is
> > > symmetric makes this easy to accommodate - by simplifying the current
> > > range checks into explicit tests that address bits above IAS are all
> > > zero, it then follows straightforwardly to add the inverse test to
> > > allow the all-ones case as well.
> > > 
> > > Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> > > ---
> > >   drivers/iommu/io-pgtable-arm.c | 7 ++++---
> > >   1 file changed, 4 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
> > > index 09cb20671fbb..f39c50356351 100644
> > > --- a/drivers/iommu/io-pgtable-arm.c
> > > +++ b/drivers/iommu/io-pgtable-arm.c
> > > @@ -475,13 +475,13 @@ static int arm_lpae_map(struct io_pgtable_ops *ops, unsigned long iova,
> > >   	arm_lpae_iopte *ptep = data->pgd;
> > >   	int ret, lvl = ARM_LPAE_START_LVL(data);
> > >   	arm_lpae_iopte prot;
> > > +	long iaext = (long)iova >> data->iop.cfg.ias;
> > >   	/* If no access, then nothing to do */
> > >   	if (!(iommu_prot & (IOMMU_READ | IOMMU_WRITE)))
> > >   		return 0;
> > > -	if (WARN_ON(iova >= (1ULL << data->iop.cfg.ias) ||
> > > -		    paddr >= (1ULL << data->iop.cfg.oas)))
> > > +	if (WARN_ON((iaext && ~iaext) || paddr >> data->iop.cfg.oas))
> > 
> > I had to read that '&&' twice, but I see what you're doing now :)
> > 
> > >   		return -ERANGE;
> > 
> > This doesn't seem sufficient to prevent a mixture of TTBR1 and TTBR0
> > addresses from being mapped in the same TTBR. Perhaps we need a quirk for
> > TTBR1, which could then take care of setting EPDx appropriately?
> 
> Right, that's the one downside of going for the minimalist "io-pgtable
> doesn't even have to know" approach. On reflection, though, in that paradigm
> it should probably be the caller's responsibility to convert TTBR1 addresses
> to preserve the "as if TTBR0" illusion anyway :/

Right, and I'd rather not push stuff into the caller for the common case.
It's not exactly onerous to support this in io-pgtable. It's also why I'd
still like to keep the EPDx in there, because the callers that care can
rewrite the stuff, but at least we provided a default.

> The advantage of not having a quirk is that it allows split address spaces
> to fit more closely with the aux_domain idea, i.e. we could allocate and
> initialise a domain without having to assume, or even care, whether it will
> end up attached as a primary or aux domain. It *might* even be potentially
> useful to have a domain attached to TTBR0 of one device's context and TTBR1
> of another's at the same time, although that's pretty niche.

That sounds pretty theoretical to me at the moment.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
