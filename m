Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3717118A801
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 23:19:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r2rAAm7qyvFSNrDfFEPk2IEFgXmMie3jKuI6+yDZW0w=; b=KhiXRoHtlL99Mw
	RknyylRugcFEX7XuyypD4tELMvGhJmrgg9AcBbq/BVA/lqFsDXKFcMo0rDkLKT0elytzBheKuaLGs
	aMa5EBx2FNzLrBGxG3MOX3i6GS928PrCkj8M1JGNdiLgeE8tEvw5+35xy7s/9AWzvFvxcCQD5Gpf3
	WptO2vD9mbi5XsOinYaL/cqzK9hbMu02n3/yKqeP+gi4goL3Ce1LPK6fJkZLnsNo/BJtW9MKLRBMZ
	obZqDyyqJQutLQYtDyTWaJDSx2SeRnVdv8XMIKr9EgkgzA9P87RYGiy2yIhs8GcSere1wdM+aNULw
	VEksEhZXmiPj8IxEeFQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEh2K-0002sq-M0; Wed, 18 Mar 2020 22:19:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEh2B-0002sJ-TE
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 22:19:33 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C65D20714;
 Wed, 18 Mar 2020 22:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584569971;
 bh=IkV7guYcGBxx2wF92laAcTYpfXKU9uSDklWHHX0Iz94=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OnQF0+4Fq6ZNErBMLjeBnH8eIAgbVa+7NytYYV5+s3FzNuXdZVGumjsJMV46J1i3m
 Fczeub7M4DVnFJf7bOPFYhY7AN1KHPqpGhewr+DNzAM7W1xUc1DtEif0df2irzmkoN
 64SEigRAb7LTCH/TL7CWVjn9aV3zIdYKrOwhvplw=
Date: Wed, 18 Mar 2020 22:19:27 +0000
From: Will Deacon <will@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3] iommu/arm-smmu-v3: Add SMMUv3.2 range invalidation
 support
Message-ID: <20200318221926.GA10097@willie-the-truck>
References: <20200224223129.1068-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224223129.1068-1-robh@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_151931_962836_FBF63F85 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Joerg Roedel <joro@8bytes.org>, Eric Auger <eric.auger@redhat.com>,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Mon, Feb 24, 2020 at 04:31:29PM -0600, Rob Herring wrote:
> Arm SMMUv3.2 adds support for TLB range invalidate operations.
> Support for range invalidate is determined by the RIL bit in the IDR3
> register.
> 
> The range invalidate is in units of the leaf page size and operates on
> 1-32 chunks of a power of 2 multiple pages. First, we determine from the
> size what power of 2 multiple we can use. Then we calculate how many
> chunks (1-31) of the power of 2 size for the range on the iteration. On
> each iteration, we move up in size by at least 5 bits.
> 
> Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>
> Cc: Will Deacon <will@kernel.org>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: Joerg Roedel <joro@8bytes.org>
> Reviewed-by: Eric Auger <eric.auger@redhat.com>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> v3:
> - Use inv_range local instead of modifying granule
> - Simplify the TG calculation
> - Use shift instead of divide by power of 2.
> ---
>  drivers/iommu/arm-smmu-v3.c | 69 +++++++++++++++++++++++++++++++++++--
>  1 file changed, 67 insertions(+), 2 deletions(-)

I've queued this one, but I had to resolve some conflicts with the command
queue batching changes, so please can you take a quick look at my
resolution?

https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/commit/?h=for-joerg/arm-smmu/updates

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
