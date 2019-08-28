Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5D79FCA4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 10:10:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p6ZGgvqc6wpIM6sH5ahnS08Yj4VD7Y95LnrCB7iDn1s=; b=ga6u4nXBnXkVPZ
	oslHGkkaLBE657tRBc7n/4xNPlQKWGgy9MyK4n1ipS3p1GzN/WPHQN0ZZYLSxADF9RDQYbqvAXVWP
	BaAd3NkoyTgM0t6sEylZednh5N8H9MFP07sFG8TIKsChvwunMnBiPivps73kr2XxR4v3GPfGRySpV
	J6fovauO/dWilRfNlbi3Ux2utZMw2L+Hxk2P//PwVLkDI0fQKO3PftyTJorX7CE2CktW3JkncUB7R
	XVH1/5WOoNmfUfRBfNAxt5CCq/eZfNH38uqWDZ0rHy1xO85WSdYqtFYYMv2ReiIFlmbZx/zmczfMP
	3+gfD1yta9DiSfEt6H8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2t2O-0001Vw-TV; Wed, 28 Aug 2019 08:10:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2t2C-0001Va-3c
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 08:10:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 290B0344;
 Wed, 28 Aug 2019 01:10:27 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 1D0DA3F59C; Wed, 28 Aug 2019 01:10:26 -0700 (PDT)
Subject: Re: [PATCH] arm64: KVM: Device mappings should be execute-never
To: James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
References: <20190827170646.17105-1-james.morse@arm.com>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <55d934f4-1cea-9439-86c2-a8d39653ad35@kernel.org>
Date: Wed, 28 Aug 2019 09:10:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190827170646.17105-1-james.morse@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_011028_196488_AF30894A 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/08/2019 18:06, James Morse wrote:
> Since commit 2f6ea23f63cca ("arm64: KVM: Avoid marking pages as XN in
> Stage-2 if CTR_EL0.DIC is set"), KVM has stopped marking normal memory
> as execute-never at stage2 when the system supports D->I Coherency at
> the PoU. This avoids KVM taking a trap when the page is first executed,
> in order to clean it to PoU.
> 
> The patch that added this change also wrapped PAGE_S2_DEVICE mappings
> up in this too. The upshot is, if your CPU caches support DIC ...
> you can execute devices.

Amazing. And we all missed that, while it should have been obvious. Oh
well...

> 
> Revert the PAGE_S2_DEVICE change so PTE_S2_XN is always used
> directly.
> 
> Fixes: 2f6ea23f63cca ("arm64: KVM: Avoid marking pages as XN in Stage-2 if CTR_EL0.DIC is set")
> Signed-off-by: James Morse <james.morse@arm.com>
> ---
>  arch/arm64/include/asm/pgtable-prot.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/pgtable-prot.h b/arch/arm64/include/asm/pgtable-prot.h
> index 92d2e9f28f28..9a21b84536f2 100644
> --- a/arch/arm64/include/asm/pgtable-prot.h
> +++ b/arch/arm64/include/asm/pgtable-prot.h
> @@ -77,7 +77,7 @@
>  	})
>  
>  #define PAGE_S2			__pgprot(_PROT_DEFAULT | PAGE_S2_MEMATTR(NORMAL) | PTE_S2_RDONLY | PAGE_S2_XN)
> -#define PAGE_S2_DEVICE		__pgprot(_PROT_DEFAULT | PAGE_S2_MEMATTR(DEVICE_nGnRE) | PTE_S2_RDONLY | PAGE_S2_XN)
> +#define PAGE_S2_DEVICE		__pgprot(_PROT_DEFAULT | PAGE_S2_MEMATTR(DEVICE_nGnRE) | PTE_S2_RDONLY | PTE_S2_XN)
>  
>  #define PAGE_NONE		__pgprot(((_PAGE_DEFAULT) & ~PTE_VALID) | PTE_PROT_NONE | PTE_RDONLY | PTE_NG | PTE_PXN | PTE_UXN)
>  #define PAGE_SHARED		__pgprot(_PAGE_DEFAULT | PTE_USER | PTE_NG | PTE_PXN | PTE_UXN | PTE_WRITE)
> 

Applied to -next.

Thanks,

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
