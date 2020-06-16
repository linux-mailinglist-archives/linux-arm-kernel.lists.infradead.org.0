Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3301FAB8C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 10:46:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GuKEVAwuSIctUVmUf99//ZaLEL4jsNgz7WYRtgZAa10=; b=Goyp3b+/cyLDIm
	h7Kt9YdyX8tPeeQPQPaPL5e1Ty5ZOEdcE/jDgEi66whLqB0TZSVfn8snySyCt85sVLDG6tgBH0HzU
	se9T/okLVoRPmRWN0m30BjbzkbrRBD2jXJ5E2CloR9JaZjx/pt23MhK1q3HOTDs4qJfRIMs4d+pvz
	pizKcBo4NuJGKVyKot3ZC2AIg2k0ZO/JEY9gbfXVYKz5UyJ+10yEH33znGfE1ECTeU/HIOjkTvw8r
	m/1ty3BtWgKuDIVPzeQegIosArr/QTmeh+Q2MA/VPHYYoWjQkmLtu5UNahRlY5vmak5qE8wZUChQc
	gb+9jCxpR4iHp2sgT6qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl7Ea-0001kQ-0s; Tue, 16 Jun 2020 08:46:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl7ES-0001js-0u
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 08:46:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 79EB91FB;
 Tue, 16 Jun 2020 01:46:10 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.1.157])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5E24B3F71F;
 Tue, 16 Jun 2020 01:46:09 -0700 (PDT)
Date: Tue, 16 Jun 2020 09:45:48 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: pgtable: Clear the GP bit for non-executable
 kernel pages
Message-ID: <20200616084548.GA11780@C02TD0UTHF1T.local>
References: <20200615154642.3579-1-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615154642.3579-1-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_014612_112388_008B3B37 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Brown <broonie@kernel.org>, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 04:46:42PM +0100, Will Deacon wrote:
> Commit cca98e9f8b5e ("mm: enforce that vmap can't map pages executable")
> introduced 'pgprot_nx(prot)' for arm64 but colliding silently with the
> BTI support during the merge window, which endeavours to clear the GP
> bit for non-executable kernel mappings in set_memory_nx().
> 
> For consistency between the two APIs, clear the GP bit in pgprot_nx().
> 
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Mark Brown <broonie@kernel.org>
> Signed-off-by: Will Deacon <will@kernel.org>
> ---
>  arch/arm64/include/asm/pgtable.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> index 6dbd267ab931..758e2d1577d0 100644
> --- a/arch/arm64/include/asm/pgtable.h
> +++ b/arch/arm64/include/asm/pgtable.h
> @@ -416,7 +416,7 @@ static inline pmd_t pmd_mkdevmap(pmd_t pmd)
>  	__pgprot((pgprot_val(prot) & ~(mask)) | (bits))
>  
>  #define pgprot_nx(prot) \
> -	__pgprot_modify(prot, 0, PTE_PXN)
> +	__pgprot_modify(prot, PTE_MAYBE_GP, PTE_PXN)

Since this is just used to clear the bit, we could use PTE_GP directly
and allow the compiler to constant fold this.

Either way:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

>  
>  /*
>   * Mark the prot value as uncacheable and unbufferable.
> -- 
> 2.27.0.290.gba653c62da-goog
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
