Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 053DF17AA69
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 17:22:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2C250YbbB+EDrhIosMRz0PkOo/JkRtOAnEafswLRT5E=; b=shLa0Yg6XFBa66
	RQxCb09Sar+sDcET/BDgmuW+S+U5SJSSknfNIOLmJSYeYK6aOs8uLOpByn7FZapXxGh1P4fi/Y5UG
	NV1IMR22xcRjRJZERTCtv60KUWl8ClvqmGjAx88dNqMxzpH1MQCyrKxXWfHyzRFJdIolmBnOTFZWA
	vre9XTpmrhXokTTyEz28NcMN3Ymfng96ffbP5ngi6sgZVD0u7/FjeTDetlkVsbO5PLRP7zuR4KdBX
	GrSkDmQzCY7qsiD2hlC9vlboiN1eK0Th961zJTUpM/yaA2mcFRalvBnKhwZNKB5lkjDU6C3Q9Tp8s
	Qni6zOyDWD92m7TtRiyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9tFu-0008PO-Gr; Thu, 05 Mar 2020 16:21:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9tFk-0008OC-Sq
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 16:21:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2002530E;
 Thu,  5 Mar 2020 08:21:37 -0800 (PST)
Received: from [10.1.195.32] (e112269-lin.cambridge.arm.com [10.1.195.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C34233F534;
 Thu,  5 Mar 2020 08:21:35 -0800 (PST)
Subject: Re: [PATCH v2 04/19] arm64: mte: Use Normal Tagged attributes for the
 linear map
To: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200226180526.3272848-1-catalin.marinas@arm.com>
 <20200226180526.3272848-5-catalin.marinas@arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <946fcd05-ba8f-90ec-d30b-458b327df59c@arm.com>
Date: Thu, 5 Mar 2020 16:21:34 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200226180526.3272848-5-catalin.marinas@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_082141_021820_FD52FE94 
X-CRM114-Status: GOOD (  21.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Will Deacon <will@kernel.org>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26/02/2020 18:05, Catalin Marinas wrote:
> Once user space is given access to tagged memory, the kernel must be
> able to clear/save/restore tags visible to the user. This is done via
> the linear mapping, therefore map it as such. The new MT_NORMAL_TAGGED
> index for MAIR_EL1 is initially mapped as Normal memory and later
> changed to Normal Tagged via the cpufeature infrastructure. From a
> mismatched attribute aliases perspective, the Tagged memory is
> considered a permission and it won't lead to undefined behaviour.
> 
> The empty_zero_page is cleared to ensure that the tags it contains are
> already zeroed. The actual tags-aware clear_page() implementation is
> part of a subsequent patch.
> 
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> ---
>  arch/arm64/include/asm/memory.h       |  1 +
>  arch/arm64/include/asm/pgtable-prot.h |  2 ++
>  arch/arm64/kernel/cpufeature.c        | 30 +++++++++++++++++++++++++++
>  arch/arm64/mm/dump.c                  |  4 ++++
>  arch/arm64/mm/mmu.c                   | 22 ++++++++++++++++++--
>  arch/arm64/mm/proc.S                  |  8 +++++--
>  6 files changed, 63 insertions(+), 4 deletions(-)
> 
[...]
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index 128f70852bf3..a2c206444e47 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -120,7 +120,7 @@ static bool pgattr_change_is_safe(u64 old, u64 new)
>  	 * The following mapping attributes may be updated in live
>  	 * kernel mappings without the need for break-before-make.
>  	 */
> -	static const pteval_t mask = PTE_PXN | PTE_RDONLY | PTE_WRITE | PTE_NG;
> +	pteval_t mask = PTE_PXN | PTE_RDONLY | PTE_WRITE | PTE_NG;
>  
>  	/* creating or taking down mappings is always safe */
>  	if (old == 0 || new == 0)
> @@ -134,6 +134,19 @@ static bool pgattr_change_is_safe(u64 old, u64 new)
>  	if (old & ~new & PTE_NG)
>  		return false;
>  
> +	if (system_supports_mte()) {
> +		/*
> +		 * Changing the memory type between Normal and Normal-Tagged
> +		 * is safe since Tagged is considered a permission attribute
> +		 * from the mismatched attribute aliases perspective.
> +		 */
> +		if ((old & PTE_ATTRINDX_MASK) == PTE_ATTRINDX(MT_NORMAL) ||
> +		    (old & PTE_ATTRINDX_MASK) == PTE_ATTRINDX(MT_NORMAL_TAGGED) ||
> +		    (new & PTE_ATTRINDX_MASK) == PTE_ATTRINDX(MT_NORMAL) ||
> +		    (new & PTE_ATTRINDX_MASK) == PTE_ATTRINDX(MT_NORMAL_TAGGED))
> +			mask |= PTE_ATTRINDX_MASK;
> +	}
> +
>  	return ((old ^ new) & ~mask) == 0;
>  }

This is much more permissive than I would expect. If either the old or
new memory type is NORMAL (or NORMAL_TAGGED) then the memory type is
ignored altogether.

Should this check be:

if (((old & PTE_ATTRINDX_MASK) == PTE_ATTRINDX(MT_NORMAL) ||
     (old & PTE_ATTRINDX_MASK) == PTE_ATTRINDX(MT_NORMAL_TAGGED)) &&
    ((new & PTE_ATTRINDX_MASK) == PTE_ATTRINDX(MT_NORMAL) ||
     (new & PTE_ATTRINDX_MASK) == PTE_ATTRINDX(MT_NORMAL_TAGGED)))

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
