Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70279F06BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 21:15:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RJ0lLlLyuypAyBc8RjWCinDeGLf072TGx9UCwnjdzes=; b=nwZFiEETKKWNLa
	Izsvg5x7ZxwLcqReHjm4d8UJQeey43b35aoSD7RraP6/bfqDdawASBOWk01vXA+e8v2hn2wpAxxVi
	3HLuN3vJd9IXv5QYovo1xp2/6fP0gxW2pRPBGDIi79qCFeZlDSo3C5B5zmQ7HpL/EQ/yLP/6QCsmv
	Pvc0fjLDrwYh3srk1WZg1NZSUDGSJGt6QV/mZfVEwmTDUKZ4n5aR7lEb5hI6/wfHKxbAIHIsR48dD
	XOcrn7JIUFF9a4AzhXGeJgSxk/eJPFVxyYGZSTtZZNNwSbpn1U5fxdYPi9E30n9z5WKDsJ7Cb/AZ+
	3nHd/NdPQIK6bJ8PlDjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS5EQ-0001eR-1o; Tue, 05 Nov 2019 20:15:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5E9-0001e1-DM
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 20:14:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2A5727B9;
 Tue,  5 Nov 2019 12:14:56 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0BC003FBF5;
 Tue,  5 Nov 2019 01:37:10 -0800 (PST)
Date: Tue, 5 Nov 2019 09:37:08 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] arm64: mm: simplify the page end calculation in
 __create_pgd_mapping()
Message-ID: <20191105093708.GE4743@lakrids.cambridge.arm.com>
References: <20191103123559.8866-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191103123559.8866-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_121457_495197_D0ABC4C3 
X-CRM114-Status: GOOD (  17.09  )
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
Cc: Yu Zhao <yuzhao@google.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 David Hildenbrand <david@redhat.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel@vger.kernel.org, Hsin-Yi Wang <hsinyi@chromium.org>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Steve Capper <steve.capper@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Nov 03, 2019 at 09:35:58PM +0900, Masahiro Yamada wrote:
> Calculate the page-aligned end address more simply.
> 
> The local variable, "length" is unneeded.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
>  arch/arm64/mm/mmu.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index 60c929f3683b..a9f541912289 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -338,7 +338,7 @@ static void __create_pgd_mapping(pgd_t *pgdir, phys_addr_t phys,
>  				 phys_addr_t (*pgtable_alloc)(int),
>  				 int flags)
>  {
> -	unsigned long addr, length, end, next;
> +	unsigned long addr, end, next;
>  	pgd_t *pgdp = pgd_offset_raw(pgdir, virt);
>  
>  	/*
> @@ -350,9 +350,8 @@ static void __create_pgd_mapping(pgd_t *pgdir, phys_addr_t phys,
>  
>  	phys &= PAGE_MASK;
>  	addr = virt & PAGE_MASK;
> -	length = PAGE_ALIGN(size + (virt & ~PAGE_MASK));
> +	end = PAGE_ALIGN(virt + size);
>  
> -	end = addr + length;

While looking at this, I got confused by the old code and thought that
there was an existing bug, but I now see that's not the case, and the
old and new code are equivalent.

The new code looks cleaner, and leaves less room for confusion, so I
think that's preferable:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Mark.

>  	do {
>  		next = pgd_addr_end(addr, end);
>  		alloc_init_pud(pgdp, addr, next, phys, prot, pgtable_alloc,
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
