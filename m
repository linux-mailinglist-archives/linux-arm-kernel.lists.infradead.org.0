Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5072B137173
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:37:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EYP8++YMkmi/VnuIKL9I1Q+ukiYODgmyxmbLV1KW4Do=; b=n1amL5tcWLq6pP
	tuiNGNNoxgyAHL8/ZrDn7E0VLTHH7QVLWMdfW281IuE8ZlqYCzYWRReUYqW8+BGN/9Y/caJoVXGPZ
	GQ18kczsDDZ7ym95WAg25Lbl+lMp/Psw7s7slsXdT41BPWNv+MsVHPfUOLqLmdCc8CKMgCBECG1zj
	J4q+WegID/RzJ0lXcHY2et8fb+gRjR7zXd/J2MJ1m4UZzkR7GuorMcDbpCjQRKVXHOyP3X+4pjrnJ
	bGF5Dwy+atD+LmflXr4kK9c2CDaI0rJ3gUfwSjd0uf1ksLspqo97b/J9IpYFKvT9ygGqDFzpu8neL
	UlGm7Bg6ERPERh97Kngg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwM8-0007lo-Qt; Fri, 10 Jan 2020 15:37:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwM1-0007kg-8H
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:37:42 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2AC2720721;
 Fri, 10 Jan 2020 15:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578670660;
 bh=zXVssYwWECjGiR0d/pu9mtfbN4xQSeBYcBoiAkhN+Sk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=e2XxQPPn1rUecm4cocUTcNk9jz8dttgjlyNbvF/TcrhkKo65kGINE+g8mg0jesWo9
 KNllrFedI+/6+llWCUj8PbPmBMQlQr2NyKfEDUWZYJ4N3sMi1tZPpW6VSotybjo94e
 /kXHDpPtAJuu2dUGkXY/6Q4+Xa+ujyMLedpzD5BY=
Date: Fri, 10 Jan 2020 15:37:37 +0000
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] iommu/io-pgtable-arm: Improve attribute handling
Message-ID: <20200110153736.GA24322@willie-the-truck>
References: <dee4fff7765629ca5d215af1105b5f98b32f073a.1578669544.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dee4fff7765629ca5d215af1105b5f98b32f073a.1578669544.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_073741_311629_BABBC2BC 
X-CRM114-Status: GOOD (  19.91  )
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
Cc: iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 03:21:51PM +0000, Robin Murphy wrote:
> By VMSA rules, using Normal Non-Cacheable type with a shareability
> attribute of anything other than Outer Shareable is liable to lead into
> unpredictable territory. Although the SMMU architectures seem to give
> some slightly stronger guarantees of Non-Cacheable output types becoming
> implicitly Outer Shareable in most cases, we may as well be explicit and
> not take any chances. It's also weird that LPAE attribute handling is
> currently split between prot_to_pte() and init_pte() given that it can
> all be statically determined up-front. Thus, collect *all* the LPAE
> attributes into prot_to_pte() in order to logically pick the
> shareability based on the incoming IOMMU API prot value, and tweak the
> short-descriptor code to stop setting TTBR0.NOS for Non-Cacheable walks.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/iommu/io-pgtable-arm-v7s.c |  7 +++----
>  drivers/iommu/io-pgtable-arm.c     | 17 +++++++++++------
>  2 files changed, 14 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/iommu/io-pgtable-arm-v7s.c b/drivers/iommu/io-pgtable-arm-v7s.c
> index 7c3bd2c3cdca..7d6a8622f2e6 100644
> --- a/drivers/iommu/io-pgtable-arm-v7s.c
> +++ b/drivers/iommu/io-pgtable-arm-v7s.c
> @@ -823,10 +823,9 @@ static struct io_pgtable *arm_v7s_alloc_pgtable(struct io_pgtable_cfg *cfg,
>  	wmb();
>  
>  	/* TTBRs */
> -	cfg->arm_v7s_cfg.ttbr[0] = virt_to_phys(data->pgd) |
> -				   ARM_V7S_TTBR_S | ARM_V7S_TTBR_NOS |
> -				   (cfg->coherent_walk ?
> -				   (ARM_V7S_TTBR_IRGN_ATTR(ARM_V7S_RGN_WBWA) |
> +	cfg->arm_v7s_cfg.ttbr[0] = virt_to_phys(data->pgd) | ARM_V7S_TTBR_S |
> +				   (cfg->coherent_walk ? (ARM_V7S_TTBR_NOS |
> +				    ARM_V7S_TTBR_IRGN_ATTR(ARM_V7S_RGN_WBWA) |

Ha, I just sent a broken version of this out myself, but with you as the
author ;)

I'll merge this hunk into that patch, if you don't mind?

> +	if (prot & IOMMU_CACHE)
> +		pte |= ARM_LPAE_PTE_SH_IS;
> +	else
> +		pte |= ARM_LPAE_PTE_SH_OS;
> +
>  	if (prot & IOMMU_NOEXEC)
>  		pte |= ARM_LPAE_PTE_XN;
>  
> +	if (data->iop.cfg.quirks & IO_PGTABLE_QUIRK_ARM_NS)
> +		pte |= ARM_LPAE_PTE_NS;
> +
> +	if (data->iop.fmt != ARM_MALI_LPAE)
> +		pte |= ARM_LPAE_PTE_AF;
> +

I left these last two where they were, just because they're not driven
directly from the IOMMU prot encoding. However, I don't mind moving them,
but let's do that as a separate patch.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
