Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 314CD965E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 18:07:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbSxIOsHLpAMhihblXnGXxBaImEBqdJ3VCg6QKBEPLc=; b=DkYXdt7sQL2116
	CL4NjQVnGr8tWmM/EvJvAIgYOkSxzQC5oENBUbWAZQkSBdLE+dLWCtcNGO388GtdgrLXEQyfmhgwD
	m146NlI8WqHIZQbM4NV8SRLaod1OCLShTZPX2O9HiV3gwN20YA6SvIRN/seYWwbvbYRl/wkxNouqU
	7C4LapMrD7bQh3F2IKmnaZROjAsNuI4ToLaveKlPIrfNKxPHEmb/eyg4i+5uOgbcY6Be711L2jdjC
	zSM9OiiOG/zmPRsF/rMZ5JCQ/6dRkLpdPkmZrbdkFFLYce+PRCJvTD0is7I5aiVdToECDqoVmD9Y7
	kQjD6CcODmnBcvNVBIMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06fQ-0004km-E6; Tue, 20 Aug 2019 16:07:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i06f3-0004a1-8F
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 16:07:07 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7D846214DA;
 Tue, 20 Aug 2019 16:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566317224;
 bh=yjdMCPpvHA/zyaGYQskPIWkvobp02wx4WcilLI4gbF0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lg3wPSpRXeCO6BAt6aAeKIuI+n/AuPutaGmKAWf2OCvlVM8LLowJ+YS7wW3U7OrA2
 DpvtJLnbqaTzkz2T/G5GW9cOsBo2N2GQ50Zg72FvsLNrFYnDeV6stwpJ8PmRFulHPY
 8unYJr5H7c35Vw3zQhHP8DncqY4ML8K+QUGdhask=
Date: Tue, 20 Aug 2019 17:07:00 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 3/4] iommu/io-pgtable-arm: Rationalise TCR handling
Message-ID: <20190820160700.6ircxomwuo5bksqz@willie-the-truck>
References: <cover.1566238530.git.robin.murphy@arm.com>
 <78df4f8e2510e88f3ded59eb385f79b4442ed4f2.1566238530.git.robin.murphy@arm.com>
 <20190820103115.o7neehdethf7sbqi@willie-the-truck>
 <48ca6945-de73-116a-3230-84862ca9e60b@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <48ca6945-de73-116a-3230-84862ca9e60b@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_090705_487514_693E0650 
X-CRM114-Status: GOOD (  23.68  )
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

On Tue, Aug 20, 2019 at 04:25:56PM +0100, Robin Murphy wrote:
> On 20/08/2019 11:31, Will Deacon wrote:
> > On Mon, Aug 19, 2019 at 07:19:30PM +0100, Robin Murphy wrote:
> > > Although it's conceptually nice for the io_pgtable_cfg to provide a
> > > standard VMSA TCR value, the reality is that no VMSA-compliant IOMMU
> > > looks exactly like an Arm CPU, and they all have various other TCR
> > > controls which io-pgtable can't be expected to understand. Thus since
> > > there is an expectation that drivers will have to add to the given TCR
> > > value anyway, let's strip it down to just the essentials that are
> > > directly relevant to io-pgatble's inner workings - namely the address
> > > sizes, walk attributes, and where appropriate, format selection.
> > > 
> > > Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> > > ---
> > >   drivers/iommu/arm-smmu-v3.c        | 7 +------
> > >   drivers/iommu/arm-smmu.c           | 1 +
> > >   drivers/iommu/arm-smmu.h           | 2 ++
> > >   drivers/iommu/io-pgtable-arm-v7s.c | 6 ++----
> > >   drivers/iommu/io-pgtable-arm.c     | 4 ----
> > >   drivers/iommu/qcom_iommu.c         | 2 +-
> > >   6 files changed, 7 insertions(+), 15 deletions(-)
> > 
> > Hmm, so I'm a bit nervous about this one since I think we really should
> > be providing a TCR with EPD1 set if we're only giving you TTBR0. Relying
> > on the driver to do this worries me. See my comments on the next patch.
> 
> The whole idea is that we already know we can't provide a *complete* TCR
> value (not least because anything above bit 31 is the wild west), thus
> there's really no point in io-pgtable trying to provide anything other than
> the parts it definitely controls. It makes sense to provide this partial TCR
> value "as if" for TTBR0, since that's the most common case, but ultimately
> io-pgatble doesn't know (or need to) which TTBR the caller intends to
> actually use for this table. Even if the caller *is* allocating it for
> TTBR0, io-pgtable doesn't know that they haven't got something live in TTBR1
> already, so it still wouldn't be in a position to make the EPD1 call either
> way.

Ok, but the driver can happily rewrite/ignore what it gets back. I suppose
an alternative would be scrapped the 'u64 tcr' and instead having a bunch
of named bitfields for the stuff we're actually providing, although I'd
still like EPDx to be in there.

> Ultimately, it's the IOMMU drivers who decide what they put in which TTBR,
> so it's the IOMMU drivers which have to take responsibility for EPD*. Sure
> you can worry about it, but you can equally worry about them them
> misprogramming the ASID or anything else...

I find the EPDx bits particularly dangerous because:

  - They're easily overlooked
  - Clobbering TTBR1 with 0x0 doesn't disable walks via TTBR1 as you might
    reasonably expect
  - If you do the above without EPD, the breakage will be subtle

and given that I don't see any real downsides to us providing a default TCR
value with EPD set appropriately, then I think we should do that. I'd be
happy to revisit the decision later on if it's getting the way of a real
use-case, but it feels like we're throwing the baby out with the bathwater
at the moment and I'd rather do this incrementally based on actual need.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
