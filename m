Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC06349981
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 08:54:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aYBOKbtZZd7CyN/zQMWtZgrdCCaBJIO3aZHqNcG/SfA=; b=XiAuB1G0uFK3w1
	IC+hZeKkUyeO/Hkv985ueOylKmB5uD639p8BjCWEQOymiH5HwxGvan74OfKEY5wauL5d5TiXjqxvM
	Gvoy1BnNoBMyck7h0bk2KU6moCdJuMroRGAo9NfEks22yIcgtHRNPqWnxg2a9p2ykmqH/neQICWO3
	7MiGVBMpyMxP4F6NxGa08CtkM8+EMpvSmlpv2Fx8/H87LXKP21oC0ggBani1HTj55QT1YovsNW3T1
	znFOW9bcFrwjHYfgbVNLMF7yXTy+58xo093IrrW4kXTW2Xs9idNZ8J9pnNRP54j73KSRgZaPAmClc
	AIKyjUGuFseYPGa5M9AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd80r-0001ni-Ao; Tue, 18 Jun 2019 06:54:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd80c-0001nJ-6j
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 06:54:23 +0000
Received: from brain-police (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AB0AB20665;
 Tue, 18 Jun 2019 06:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560840861;
 bh=h6KCEecYqvEUsVXMGsOj14p5VeuD+CI26MOesVKK8tw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oBvX088a/fOuuObjn7+ntF6Kq5hoY2/4Hpn4C9r/FHAPQ18VfSrKIN6FL5H8J8wzc
 BBR26SXGwC+04hPIj6pp4cWe3SMe5tW99SFutH5DZAbPe6caLBBE0uSV5X3hETFvma
 RU/jAfOdqr0dwXiPJhdVASX8az+JIm0olJ4+olBE=
Date: Tue, 18 Jun 2019 07:54:15 +0100
From: Will Deacon <will@kernel.org>
To: Mike Rapoport <rppt@linux.ibm.com>
Subject: Re: [PATCH -next] arm64/mm: fix a bogus GFP flag in pgd_alloc()
Message-ID: <20190618065414.GA15875@brain-police>
References: <1559656836-24940-1-git-send-email-cai@lca.pw>
 <20190604142338.GC24467@lakrids.cambridge.arm.com>
 <20190610114326.GF15979@fuggles.cambridge.arm.com>
 <1560187575.6132.70.camel@lca.pw>
 <20190611100348.GB26409@lakrids.cambridge.arm.com>
 <20190613121100.GB25164@rapoport-lnx>
 <20190617151252.GF16810@rapoport-lnx>
 <20190617163630.GH30800@fuggles.cambridge.arm.com>
 <20190618061259.GB15497@rapoport-lnx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618061259.GB15497@rapoport-lnx>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_235422_286546_F6FC8CD4 
X-CRM114-Status: GOOD (  19.88  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 mhocko@kernel.org, linux-mm@kvack.org, Qian Cai <cai@lca.pw>,
 vdavydov.dev@gmail.com, hannes@cmpxchg.org, cgroups@vger.kernel.org,
 akpm@linux-foundation.org, Roman Gushchin <guro@fb.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 09:12:59AM +0300, Mike Rapoport wrote:
> On Mon, Jun 17, 2019 at 05:36:30PM +0100, Will Deacon wrote:
> > On Mon, Jun 17, 2019 at 06:12:52PM +0300, Mike Rapoport wrote:
> > > Andrew, can you please add the patch below as an incremental fix?
> > > 
> > > With this the arm64::pgd_alloc() should be in the right shape.
> > > 
> > > 
> > > From 1c1ef0bc04c655689c6c527bd03b140251399d87 Mon Sep 17 00:00:00 2001
> > > From: Mike Rapoport <rppt@linux.ibm.com>
> > > Date: Mon, 17 Jun 2019 17:37:43 +0300
> > > Subject: [PATCH] arm64/mm: don't initialize pgd_cache twice
> > > 
> > > When PGD_SIZE != PAGE_SIZE, arm64 uses kmem_cache for allocation of PGD
> > > memory. That cache was initialized twice: first through
> > > pgtable_cache_init() alias and then as an override for weak
> > > pgd_cache_init().
> > > 
> > > After enabling accounting for the PGD memory, this created a confusion for
> > > memcg and slub sysfs code which resulted in the following errors:
> > > 
> > > [   90.608597] kobject_add_internal failed for pgd_cache(13:init.scope) (error: -2 parent: cgroup)
> > > [   90.678007] kobject_add_internal failed for pgd_cache(13:init.scope) (error: -2 parent: cgroup)
> > > [   90.713260] kobject_add_internal failed for pgd_cache(21:systemd-tmpfiles-setup.service) (error: -2 parent: cgroup)
> > > 
> > > Removing the alias from pgtable_cache_init() and keeping the only pgd_cache
> > > initialization in pgd_cache_init() resolves the problem and allows
> > > accounting of PGD memory.
> > > 
> > > Reported-by: Qian Cai <cai@lca.pw>
> > > Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> > > ---
> > >  arch/arm64/include/asm/pgtable.h | 3 +--
> > >  arch/arm64/mm/pgd.c              | 5 +----
> > >  2 files changed, 2 insertions(+), 6 deletions(-)
> > 
> > Looks like this actually fixes caa841360134 ("x86/mm: Initialize PGD cache
> > during mm initialization") due to an unlucky naming conflict!
> > 
> > In which case, I'd actually prefer to take this fix asap via the arm64
> > tree. Is that ok?
> 
> I suppose so, it just won't apply as is. Would you like a patch against the
> current upstream?

Yes, please. I'm assuming it's a straightforward change (please shout if it
isn't).

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
