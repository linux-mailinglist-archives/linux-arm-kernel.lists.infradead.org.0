Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7779EFAE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 18:05:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EdC+LmaM7XT/Qm7Ph+yB9ui8ESY4Vaea7dDXmzEFfYs=; b=SxpPL8uehlWm3/XxHQj45ygO8
	G/G/0k1NoDSttQ9y6Ed3CQdhwZQ1SS9iwWBXE4mxMWizh5ou64rK3YBPyoaL8o58FIXey3sscmu+J
	w5IjpMLbg+x9VRTvP4eUTWfTjgI82hmGrduPnyZBj56uYiia6Otw74ySdUBmWOUQJjqqX8murL85V
	xOCm0hP6Z/FOk6XDYNyvhrZnOxDvQI9SCT60Yr4m9PgIKbRrltDr2120QqZ9CQvkpYUnt9D0P3P5K
	gkt25v9A+vKJslnT7cPzYGY1gdKHGItSWTqHXcVPJa8IQRyx3SooE+kRMIFCISVdJ/7WW/eDbqawU
	aUZASApZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2dxs-0000Cf-EH; Tue, 27 Aug 2019 16:05:00 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2dxi-0000C2-UF
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 16:04:52 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1i2dxd-0002tp-IV; Tue, 27 Aug 2019 18:04:45 +0200
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: fix fixmap copy for 16K pages and 48-bit VA
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Tue, 27 Aug 2019 17:04:45 +0100
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20190827155708.34699-1-mark.rutland@arm.com>
References: <20190827155708.34699-1-mark.rutland@arm.com>
Message-ID: <0ea43e3232390748b829996544fb244c@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org,
 anshuman.khandual@arm.com, ard.biesheuvel@linaro.org, catalin.marinas@arm.com,
 steve.capper@arm.com, will@kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_090451_113163_6E299221 
X-CRM114-Status: GOOD (  21.97  )
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Steve Capper <steve.capper@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-08-27 16:57, Mark Rutland wrote:
> With 16K pages and 48-bit VAs, the PGD level of table has two 
> entries,
> and so the fixmap shares a PGD with the kernel image. Since commit:
>
>   f9040773b7bbbd9e ("arm64: move kernel image to base of vmalloc 
> area")
>
> ... we copy the existing fixmap to the new fine-grained page tables 
> at
> the PUD level in this case. When walking to the new PUD, we forgot to
> offset the PGD entry and always used the PGD entry at index 0, but 
> this
> worked as the kernel image and fixmap were in the low half of the 
> TTBR1
> address space.
>
> As of commit:
>
>   14c127c957c1c607 ("arm64: mm: Flip kernel VA space")
>
> ... the kernel image and fixmap are in the high half of the TTBR1
> address space, and hence use the PGD at index 1, but we didn't update
> the fixmap copying code to account for this.
>
> Thus, we'll erroneously try to copy the fixmap slots into a PUD under
> the PGD entry at index 0. At the point we do so this PGD entry has 
> not
> been initialised, and thus we'll try to write a value to a small 
> offset
> from physical address 0, causing a number of potential problems.
>
> Fix this be correctly offsetting the PGD. This is split over a few 
> steps
> for legibility.
>
> Fixes: 14c127c957c1c607 ("arm64: mm: Flip kernel VA space")
> Reported-by: Anshuman Khandual <anshuman.khandual@arm.com>
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Steve Capper <Steve.Capper@arm.com>
> Cc: Will Deacon <will@kernel.org>
> ---
>  arch/arm64/mm/mmu.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index 1d4247f9a496..4197f27f86e5 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -646,6 +646,8 @@ static void __init map_kernel(pgd_t *pgdp)
>  		set_pgd(pgd_offset_raw(pgdp, FIXADDR_START),
>  			READ_ONCE(*pgd_offset_k(FIXADDR_START)));
>  	} else if (CONFIG_PGTABLE_LEVELS > 3) {
> +		pgd_t *bm_pgdp;
> +		pud_t *bm_pudp;
>  		/*
>  		 * The fixmap shares its top level pgd entry with the kernel
>  		 * mapping. This can really only occur when we are running
> @@ -653,9 +655,9 @@ static void __init map_kernel(pgd_t *pgdp)
>  		 * entry instead.
>  		 */
>  		BUG_ON(!IS_ENABLED(CONFIG_ARM64_16K_PAGES));
> -		pud_populate(&init_mm,
> -			     pud_set_fixmap_offset(pgdp, FIXADDR_START),
> -			     lm_alias(bm_pmd));
> +		bm_pgdp = pgd_offset_raw(pgdp, FIXADDR_START);
> +		bm_pudp = pud_set_fixmap_offset(bm_pgdp, FIXADDR_START);
> +		pud_populate(&init_mm, bm_pudp, lm_alias(bm_pmd));
>  		pud_clear_fixmap();
>  	} else {
>  		BUG();

I've thrown this at a guest running on a TX1 box, and the guest
booted flawlessly, which is a major improvement.

Acked-by: Marc Zyngier <maz@kernel.org>
Tested-by: Marc Zyngier <maz@kernel.org>

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
