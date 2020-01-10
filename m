Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A53961370C0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:09:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bUSzACR6YmUkA1JIEvcsPhkfY0DO//guPJgEF5fykJ8=; b=TduVTsXL6XPETV
	LQdlN95tdvzWaHMP6w/j1tB0/9LGwfVXO7Karc83aDEPnAjt6SslTvqNt0b2Kl90cyEED2M7GnskI
	Cu7mMWGjGngqReS2A5ee/HadbUamdmXfh0r0zMTf/Xs2R6LFFjr4zSwCF/9MUDb29SsbLaqnl1A8X
	EP8U5g4W9xaI3inFGGAkdLmTQ8ukSjIwtqqo7Zi29tYxusOwNhoACtnlKXyvnd8Z9HEtgn4Rm5zcn
	855ts96aF2uggeBdDujbVk8YofP3JKqaayQrcqpaNoRvvuhq76LJ7dxWgVFW/bQob6gber0yr4kpP
	kvqSu5KBjfSiKujJjpnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipvv6-0007az-1z; Fri, 10 Jan 2020 15:09:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipvuv-0007aV-Dd
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:09:42 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4B8952077C;
 Fri, 10 Jan 2020 15:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578668981;
 bh=CjM2+mej2vDfDaxx9EuNh3xVcqSR6DNAiTeKsJFz/48=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bVEyX0mDobj3Do0pvAG1R3FkaEwtSX0af1wgZOKSQacSCjRvPHrlVW6+3SS07JmwZ
 Zk/vnAuG6Ua5cT+R6mOxwXe9NpV7SpyaG887A9mw8Zpi0u5HPhwW5SEevvQCuQvV+q
 gYSgtpuRy3a1ITUiRcZMPW1KOaNAiAzaNRk2/qn8=
Date: Fri, 10 Jan 2020 15:09:36 +0000
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 00/10] iommu/io-pgtable: Cleanup and prep for split
 tables
Message-ID: <20200110150936.GA23011@willie-the-truck>
References: <cover.1572024119.git.robin.murphy@arm.com>
 <20191104192228.GL24909@willie-the-truck>
 <20191104202012.GN24909@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104202012.GN24909@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_070941_490115_C3D0C696 
X-CRM114-Status: GOOD (  20.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Mon, Nov 04, 2019 at 08:20:12PM +0000, Will Deacon wrote:
> On Mon, Nov 04, 2019 at 07:22:28PM +0000, Will Deacon wrote:
> > On Fri, Oct 25, 2019 at 07:08:29PM +0100, Robin Murphy wrote:
> > > Since the flawed first attempt, I've reworked things with an abstracted
> > > TCR and an explicit TTBR1 quirk. I originally envisaged the need to pass
> > > the quirk all the way down to the TLBI calls, hence getting diverted
> > > into trying to make the parameter passing less cluttered in general, but
> > > in the end it turned out fairly neat to just fix the indexing such that
> > > we can always just pass around the original unmodified IOVA. Most of the
> > > new patches come from staring at that indexing code for long enough to
> > > see the subtle inefficiencies that were worth ironing out, plus a bit of
> > > random cleanup which doesn't feel worth posting separately.
> > > 
> > > Note that these patches depend on the fixes already queued in -rc4,
> > > otherwise there will be conflicts in arm_mali_lpae_alloc_pgtable().
> > > 
> > > Robin.
> > > 
> > > 
> > > Robin Murphy (10):
> > >   iommu/io-pgtable: Make selftest gubbins consistently __init
> > >   iommu/io-pgtable-arm: Rationalise size check
> > >   iommu/io-pgtable-arm: Simplify bounds checks
> > >   iommu/io-pgtable-arm: Simplify start level lookup
> > >   iommu/io-pgtable-arm: Simplify PGD size handling
> > >   iommu/io-pgtable-arm: Simplify level indexing
> > >   iommu/io-pgtable-arm: Rationalise MAIR handling
> > >   iommu/io-pgtable-arm: Rationalise TTBRn handling
> > >   iommu/io-pgtable-arm: Rationalise TCR handling
> > >   iommu/io-pgtable-arm: Prepare for TTBR1 usage
> > 
> > Overall, this looks really good to me. There's a bit more work to do
> > (see my comments) and I'd like Jordan to have a look as well, but on the
> > whole it's a big improvement. Thanks.
> 
> Also, I've merged the first 7 patches to save you having to repost those:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=for-joerg/arm-smmu/updates

I've now picked up the remaining three patches, but I'll post them to the
list shortly because I've ended up trying to address my own review comments
as I'd like this stuff in before we go ahead with Jordan's patches.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
