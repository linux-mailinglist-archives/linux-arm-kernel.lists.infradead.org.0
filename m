Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD2695C46
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 12:31:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mq82p0shtEWTGsLu9xO7mDqmo1Ddp28wT/p7Ipj6mrA=; b=nkxiazojr4GYjQ
	cD5v0eXfj8C8EXVC0qWf1MFTgVUWb8MPdrLA++tREXQZtAhivS9v8uDCTEknmdjvrnt5C52UTMRRc
	oGNtXRVfIeU3rHxk2NpmkJYji7FH1i1wghHWiJJWwNvQ+sZtFMvNXpflSAiqnHw+WVoG08ApQZElM
	PJ6hcCwK/7FErvWKtf8G8hCLNUhqSex0sw9jOxAg5VWoMg+k20MTITxCGMBY3CmpiH4KDaAKaMlrI
	GE9X6jV72OZtP29gV7izaLnIsFD9Uc8Mf67yFbjTn0Ou9RzQ6ePl+e4Y9mz88D9zRu+Exf2f7Pybs
	F42NpieuRAWlb5x+849g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i01Q5-0003nr-16; Tue, 20 Aug 2019 10:31:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i01Ph-0003nQ-6K
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 10:30:54 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 91D2C22CF4;
 Tue, 20 Aug 2019 10:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566297052;
 bh=QX6X9ApCRnaZQJs+459lUXGpL+CPfmZcq+MysQfUQl4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m1mH2rd6XYodYNmUQgNUW1rB1/NWbtjp6uBe4QvCwjawlLf/x5NCS7x9h4VioQGER
 AA9lYfuOfhqRcYQPxfEogwInO7X8ga1CPbGo7+xMeaTDLvn+rQsKnxJHjj7gKfFSxy
 Bhmp23scHmc35dY4bfAtRba2DVAojTUUqN5vo93g=
Date: Tue, 20 Aug 2019 11:30:48 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 4/4] iommu/io-pgtable-arm: Prepare for TTBR1 usage
Message-ID: <20190820103048.xacfbtn5o4wermhi@willie-the-truck>
References: <cover.1566238530.git.robin.murphy@arm.com>
 <6596469d5fa1e918145fdd4e6b1a3ad67f7cde2e.1566238530.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6596469d5fa1e918145fdd4e6b1a3ad67f7cde2e.1566238530.git.robin.murphy@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_033053_259929_17BACE0B 
X-CRM114-Status: GOOD (  17.34  )
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

On Mon, Aug 19, 2019 at 07:19:31PM +0100, Robin Murphy wrote:
> Now that callers are free to use a given table for TTBR1 if they wish
> (all they need do is shift the provided attributes when constructing
> their final TCR value), the only remaining impediment is the address
> validation on map/unmap. The fact that the LPAE address space split is
> symmetric makes this easy to accommodate - by simplifying the current
> range checks into explicit tests that address bits above IAS are all
> zero, it then follows straightforwardly to add the inverse test to
> allow the all-ones case as well.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/iommu/io-pgtable-arm.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
> index 09cb20671fbb..f39c50356351 100644
> --- a/drivers/iommu/io-pgtable-arm.c
> +++ b/drivers/iommu/io-pgtable-arm.c
> @@ -475,13 +475,13 @@ static int arm_lpae_map(struct io_pgtable_ops *ops, unsigned long iova,
>  	arm_lpae_iopte *ptep = data->pgd;
>  	int ret, lvl = ARM_LPAE_START_LVL(data);
>  	arm_lpae_iopte prot;
> +	long iaext = (long)iova >> data->iop.cfg.ias;
>  
>  	/* If no access, then nothing to do */
>  	if (!(iommu_prot & (IOMMU_READ | IOMMU_WRITE)))
>  		return 0;
>  
> -	if (WARN_ON(iova >= (1ULL << data->iop.cfg.ias) ||
> -		    paddr >= (1ULL << data->iop.cfg.oas)))
> +	if (WARN_ON((iaext && ~iaext) || paddr >> data->iop.cfg.oas))

I had to read that '&&' twice, but I see what you're doing now :)

>  		return -ERANGE;

This doesn't seem sufficient to prevent a mixture of TTBR1 and TTBR0
addresses from being mapped in the same TTBR. Perhaps we need a quirk for
TTBR1, which could then take care of setting EPDx appropriately?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
