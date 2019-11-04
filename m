Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE32EE72C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 19:17:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c8tE9mYlmrxqqHVc+3NrUXUKZOl2777krniHdMV9W6E=; b=hs8p/bpw2/K1D2
	VcDUfnKmR52Sueq9u6+fk1ofzVEKWo5nlKSV1ZRDukjYeDmAAnP+WCLDmynlxWxj8f6ZjM6S8eRN2
	ThUbraijR/2ajDmxcIaBEyq93GQQejBjmCkC46Kz6ci+S/3zcN/ka4GgIEfvx6I3QyL3FzLiC4xIN
	O3NAeI4vC7M9/L7sKBJxFKbSp90qmt7tiR25gsv5IciXqIkH7MyHgeKzVJ/vmoL2KnwtcaXI1BcE8
	pl/XVowKFYygweROUycqO0ImwkHUVp3JKvGcIIoXqEyJC7IWJ43Tw4ZAnMvYxEToHk20uv7oxY/EV
	WEqdsnULARC0dHzwE5Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRgvB-0003za-32; Mon, 04 Nov 2019 18:17:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRguu-0003vq-2l
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 18:17:29 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B025420578;
 Mon,  4 Nov 2019 18:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572891447;
 bh=I0ClEyfYYg+5vZmQ5JQDLaZ5AFVtu2E4q0e7uMtVpz4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MregfVcg4Le7ebB4b6p6lGzAOFFhK7K25ALaLHWbsDc8WmaRHztAMBvyXPfhH57Zk
 Ymq4nsLSWJaxb1X/M0ZO4nPFio44FxATL1oAHF4tzCygnuURfV/PK0o/voR6/EdndF
 D+4XkeyENeKp0wa3XYpIN0XyIod2Um9Mjw6r+M4A=
Date: Mon, 4 Nov 2019 18:17:23 +0000
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 06/10] iommu/io-pgtable-arm: Simplify level indexing
Message-ID: <20191104181722.GF24909@willie-the-truck>
References: <cover.1572024119.git.robin.murphy@arm.com>
 <698173b487383735e470a28e5cca4f9db22703de.1572024120.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <698173b487383735e470a28e5cca4f9db22703de.1572024120.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_101728_179263_6546C397 
X-CRM114-Status: GOOD (  19.03  )
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

On Fri, Oct 25, 2019 at 07:08:35PM +0100, Robin Murphy wrote:
> The nature of the LPAE format means that data->pg_shift is always
> redundant with data->bits_per_level, since they represent the size of a
> page and the number of PTEs per page respectively, and the size of a PTE
> is constant. Thus it works out more efficient to only store the latter,
> and derive the former via a trivial addition where necessary.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/iommu/io-pgtable-arm.c | 29 +++++++++++++----------------
>  1 file changed, 13 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
> index 4b1483eb0ccf..15b4927ce36b 100644
> --- a/drivers/iommu/io-pgtable-arm.c
> +++ b/drivers/iommu/io-pgtable-arm.c
> @@ -36,10 +36,11 @@
>   * in a virtual address mapped by the pagetable in d.
>   */
>  #define ARM_LPAE_LVL_SHIFT(l,d)						\
> -	(((ARM_LPAE_MAX_LEVELS - 1 - (l)) * (d)->bits_per_level) +	\
> -	(d)->pg_shift)
> +	(((ARM_LPAE_MAX_LEVELS - (l)) * (d)->bits_per_level) +		\
> +	ilog2(sizeof(arm_lpae_iopte)))
>  
> -#define ARM_LPAE_GRANULE(d)		(1UL << (d)->pg_shift)
> +#define ARM_LPAE_GRANULE(d)						\
> +	(sizeof(arm_lpae_iopte) << (d)->bits_per_level)
>  #define ARM_LPAE_PGD_SIZE(d)						\
>  	(sizeof(arm_lpae_iopte) << (d)->pgd_bits)
>  
> @@ -55,9 +56,7 @@
>  	 ((1 << ((d)->bits_per_level + ARM_LPAE_PGD_IDX(l,d))) - 1))
>  
>  /* Calculate the block/page mapping size at level l for pagetable in d. */
> -#define ARM_LPAE_BLOCK_SIZE(l,d)					\
> -	(1ULL << (ilog2(sizeof(arm_lpae_iopte)) +			\
> -		((ARM_LPAE_MAX_LEVELS - (l)) * (d)->bits_per_level)))
> +#define ARM_LPAE_BLOCK_SIZE(l,d)	(1ULL << ARM_LPAE_LVL_SHIFT(l,d))
>  
>  /* Page table bits */
>  #define ARM_LPAE_PTE_TYPE_SHIFT		0
> @@ -175,8 +174,7 @@ struct arm_lpae_io_pgtable {
>  
>  	int			pgd_bits;
>  	int			start_level;
> -	unsigned long		pg_shift;
> -	unsigned long		bits_per_level;
> +	int			bits_per_level;
>  
>  	void			*pgd;
>  };
> @@ -206,7 +204,7 @@ static phys_addr_t iopte_to_paddr(arm_lpae_iopte pte,
>  {
>  	u64 paddr = pte & ARM_LPAE_PTE_ADDR_MASK;
>  
> -	if (data->pg_shift < 16)
> +	if (data->bits_per_level < 13) /* i.e. 64K granule */

nit, but:

	if (ARM_LPAE_GRANULE(data) < SZ_64K)

might be clearer and avoid the need for a comment?

(I can make the change locally if you agree)

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
