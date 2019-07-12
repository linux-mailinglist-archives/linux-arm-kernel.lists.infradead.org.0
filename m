Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B21BA66474
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 04:36:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7F/L8qWxpeqf6tN//ZRKVRFh/tpfXng4aoUYjGaNRo4=; b=WS7Iz7TRT1FX8+
	8MwXyxRD1zgWyIqQ33A971nPnObPIDVRI/fTfCOeDLREcF/OkiveZmrpgt4gMZCXEiluorQsXRuHc
	2mSnUNut+2xF7TIFLgRSB1SOmcJKCtBc3GNHPnzVgSerDAMPMFFrPpjVPDoXJjlCK3caF1FUO6TtZ
	aYifE9ZKsn1ny42sHihr1zrGwuthJyv73tFDmEVjTY2e9RjO1aKCuanfDuNvak/0TQeDjlyisJh04
	onTuGFYLdeWly7FxKi5zys4Aycb9TeDcTSieW5Lvl8IWTXbOod9Jv35PNmtHD1yJ2JK6NqYu+Icpw
	DdtopgvlbexrPuMIOmTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hllQJ-00074E-FZ; Fri, 12 Jul 2019 02:36:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hllQ4-00073n-TP
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 02:36:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 94C912B;
 Thu, 11 Jul 2019 19:36:17 -0700 (PDT)
Received: from [10.162.41.115] (p8cg001049571a15.blr.arm.com [10.162.41.115])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 6334B3F71F; Thu, 11 Jul 2019 19:36:12 -0700 (PDT)
Subject: Re: [PATCH] arm: Extend the check for RAM in /dev/mem
To: KarimAllah Ahmed <karahmed@amazon.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <1562883681-18659-1-git-send-email-karahmed@amazon.de>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <14f02e29-77b2-29d9-a9f4-7f89ad0194f6@arm.com>
Date: Fri, 12 Jul 2019 08:06:43 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1562883681-18659-1-git-send-email-karahmed@amazon.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_193621_045641_1F806F65 
X-CRM114-Status: GOOD (  21.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, Enrico Weigelt <info@metux.net>,
 Anders Roxell <anders.roxell@linaro.org>, Yu Zhao <yuzhao@google.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Jun Yao <yaojun8558363@gmail.com>, James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 07/12/2019 03:51 AM, KarimAllah Ahmed wrote:
> Some valid RAM can live outside kernel control (e.g. using mem= kernel
> command-line). For these regions, pfn_valid would return "false" causing
> system RAM to be mapped as uncached. Use memblock instead to identify RAM.

Once the remaining memory is outside of the kernel (as the admin would have
intended with mem= command line) what is the particular concern regarding
the way those get mapped (cached or not) ? It is not to be used any way.

> 
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Mike Rapoport <rppt@linux.ibm.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Anders Roxell <anders.roxell@linaro.org>
> Cc: Enrico Weigelt <info@metux.net>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: KarimAllah Ahmed <karahmed@amazon.de>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: James Morse <james.morse@arm.com>
> Cc: Anshuman Khandual <anshuman.khandual@arm.com>
> Cc: Jun Yao <yaojun8558363@gmail.com>
> Cc: Yu Zhao <yuzhao@google.com>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: KarimAllah Ahmed <karahmed@amazon.de>
> ---
>  arch/arm/mm/mmu.c   | 2 +-
>  arch/arm64/mm/mmu.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
> index 1aa2586..492774b 100644
> --- a/arch/arm/mm/mmu.c
> +++ b/arch/arm/mm/mmu.c
> @@ -705,7 +705,7 @@ static void __init build_mem_type_table(void)
>  pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
>  			      unsigned long size, pgprot_t vma_prot)
>  {
> -	if (!pfn_valid(pfn))
> +	if (!memblock_is_memory(__pfn_to_phys(pfn)))
>  		return pgprot_noncached(vma_prot);
>  	else if (file->f_flags & O_SYNC)
>  		return pgprot_writecombine(vma_prot);
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index 3645f29..cdc3e8e 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -78,7 +78,7 @@ void set_swapper_pgd(pgd_t *pgdp, pgd_t pgd)
>  pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
>  			      unsigned long size, pgprot_t vma_prot)
>  {
> -	if (!pfn_valid(pfn))
> +	if (!memblock_is_memory(__pfn_to_phys(pfn)))

pfn_valid() on arm64 checks if the memblock region is mapped i.e does it have
a linear mapping or not. If a segment of RAM is outside linear mapping due to
mem= directive and lacks a linear mapping then why should it be mapped similarly
like system RAM on this path ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
