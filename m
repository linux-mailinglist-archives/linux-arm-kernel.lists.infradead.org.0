Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E6D5B876
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 11:57:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R5Nn5Ao/8xeoYKJ+cSszvi+c/fPGbioPq4ohYirMJXQ=; b=LDM5VCRH3bQOp/
	Shrc6+Qf7GIpBit0uKnN027uykdPmf2eXp/C1zSafgdOLpeokDg3lQhKCDDUovqcSNDHfvvwdnJU/
	HaIrKUYqf3g8NSJPEtHUMZttDia1fxUs76x5ARHn8TCuZJzfr3hCJOuzLiiyZDzPIuN+2vuB3yxbO
	5p8+C4y19MKb8mIFjEn09zuGhRis+WAQvkiXgrD6+jVwiXXrOJTALYglBr/w3d7XHa9jbj8X+/04I
	+0mfdwVxXyhxDpNYbkkZfgQfgrP7OmUmSxv6JOl97qeyKdrvQX8aq2aKPBH83Obd0LYl+43kvsRHt
	lrV/8SmZ29aLY16SLW6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hht3z-00027v-5y; Mon, 01 Jul 2019 09:57:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hht3m-000277-G4
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 09:57:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CCCC92B;
 Mon,  1 Jul 2019 02:57:14 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8156A3F718;
 Mon,  1 Jul 2019 02:57:10 -0700 (PDT)
Subject: Re: [PATCH v2 1/3] arm64: mm: Add p?d_large() definitions
To: Nicholas Piggin <npiggin@gmail.com>,
 "linux-mm @ kvack . org" <linux-mm@kvack.org>
References: <20190701064026.970-1-npiggin@gmail.com>
 <20190701064026.970-2-npiggin@gmail.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <0a3e0833-908d-b7eb-e6e7-6413b2e37094@arm.com>
Date: Mon, 1 Jul 2019 10:57:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190701064026.970-2-npiggin@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_025718_619965_EBD89C35 
X-CRM114-Status: GOOD (  25.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Will Deacon <will.deacon@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 "linuxppc-dev @ lists . ozlabs . org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel @ lists . infradead . org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01/07/2019 07:40, Nicholas Piggin wrote:
> walk_page_range() is going to be allowed to walk page tables other than
> those of user space. For this it needs to know when it has reached a
> 'leaf' entry in the page tables. This information will be provided by the
> p?d_large() functions/macros.
> 
> For arm64, we already have p?d_sect() macros which we can reuse for
> p?d_large().
> 
> pud_sect() is defined as a dummy function when CONFIG_PGTABLE_LEVELS < 3
> or CONFIG_ARM64_64K_PAGES is defined. However when the kernel is
> configured this way then architecturally it isn't allowed to have a
> large page that this level, and any code using these page walking macros
> is implicitly relying on the page size/number of levels being the same as
> the kernel. So it is safe to reuse this for p?d_large() as it is an
> architectural restriction.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Signed-off-by: Steven Price <steven.price@arm.com>

Hi Nicolas,

This appears to my patch which I originally posted as part of converting
x86/arm64 to use a generic page walk code[1]. I'm not sure that this
patch makes much sense on its own, in particular it was working up to
having a generic macro[2] which means the _large() macros could be used
across all architectures.

Also as a matter of courtesy please can you ensure the authorship
information is preserved when posting other people's patches (there
should be a From: line with my name on). You should also include your
own Signed-off-by: line (see submitting-patches[3]) after mine.

Apologies to anyone that has been following my patch series, I've been
on holiday so not actively working on it. My aim is to combine the
series with a generic ptdump implementation[4] which should improve the
diff state. I should be able to post that in the next few weeks.

Thanks,

Steve

[1] Series: https://patchwork.kernel.org/cover/10883885/
    Last posting of this patch:
	https://patchwork.kernel.org/patch/10883899/

[2] https://patchwork.kernel.org/patch/10883965/

[3]
https://www.kernel.org/doc/html/latest/process/submitting-patches.html#developer-s-certificate-of-origin-1-1

[4] RFC version here:
https://lore.kernel.org/lkml/20190417143423.26665-1-steven.price@arm.com/

> ---
>  arch/arm64/include/asm/pgtable.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> index fca26759081a..0e973201bc16 100644
> --- a/arch/arm64/include/asm/pgtable.h
> +++ b/arch/arm64/include/asm/pgtable.h
> @@ -417,6 +417,7 @@ extern pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
>  				 PMD_TYPE_TABLE)
>  #define pmd_sect(pmd)		((pmd_val(pmd) & PMD_TYPE_MASK) == \
>  				 PMD_TYPE_SECT)
> +#define pmd_large(pmd)		pmd_sect(pmd)
>  
>  #if defined(CONFIG_ARM64_64K_PAGES) || CONFIG_PGTABLE_LEVELS < 3
>  #define pud_sect(pud)		(0)
> @@ -499,6 +500,7 @@ static inline void pte_unmap(pte_t *pte) { }
>  #define pud_none(pud)		(!pud_val(pud))
>  #define pud_bad(pud)		(!(pud_val(pud) & PUD_TABLE_BIT))
>  #define pud_present(pud)	pte_present(pud_pte(pud))
> +#define pud_large(pud)		pud_sect(pud)
>  #define pud_valid(pud)		pte_valid(pud_pte(pud))
>  
>  static inline void set_pud(pud_t *pudp, pud_t pud)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
