Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5336A1BBC50
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 13:22:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ECPmliQ1DW+D85XIrQCDlC3O6KUovPDG+LJ/tIWJIgs=; b=cN8vi92xMsiFaz
	UU0STTVwk9EgiX7yS3SRTljnb29/xUqfVSrdF7Ir9Sc4/4jO2woNe4S/ax9MF3f7T6WDJ6isUeY8E
	iO9zVX50retbANibhZBQiH+8/dYTZdFCZGSK0A1mU/TIgBQ1ZpSJ7hjQgJ65Cw4Ye2vnQ2ujLTpR5
	CL1ZiWU9Su+swrphMwDX/pfcyDB/WfQRXnXSeBojMmPKZwRUjv4E+Y1Kb57Biww+gGVgYPA5WLjSh
	SamBMjKly+oIDlq4bPnReZMDuaBt0xypF7nKSLXwu8wQ6g3BhYud/coIrdB1CuBRmfBTtDOQ9FXzt
	Y/pFU2rCKFFKf/gSQlGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTOJY-0007GE-SG; Tue, 28 Apr 2020 11:22:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTOJP-0007FR-8h
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 11:22:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 69C3730E;
 Tue, 28 Apr 2020 04:22:02 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.1.132])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6B3713F73D;
 Tue, 28 Apr 2020 04:22:00 -0700 (PDT)
Date: Tue, 28 Apr 2020 12:21:57 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH v2] arm64/kernel: Fix range on invalidating dcache for
 boot page tables
Message-ID: <20200428112157.GB15519@C02TD0UTHF1T.local>
References: <20200427235700.112220-1-gshan@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427235700.112220-1-gshan@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_042203_394444_FF0F7D44 
X-CRM114-Status: GOOD (  20.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: steve.capper@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 broonie@kernel.org, shan.gavin@gmail.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 09:57:00AM +1000, Gavin Shan wrote:
> Prior to commit 8eb7e28d4c642c31 ("arm64/mm: move runtime pgds to
> rodata"), idmap_pgd_dir, tramp_pg_dir, reserved_ttbr0, swapper_pg_dir,
> and init_pg_dir were contiguous at the end of the kernel image. The
> maintenance at the end of __create_page_tables assumed these were
> contiguous, and affected everything from the start of idmap_pg_dir
> to the end of init_pg_dir.
> 
> That commit moved all but init_pg_dir into the .rodata section, with
> other data placed between idmap_pg_dir and init_pg_dir, but did not
> update the maintenance. Hence the maintenance is performed on much
> more data than necessary (but as the bootloader previously made this
> clean to the PoC there is no functional problem).
> 
> As we only alter idmap_pg_dir, and init_pg_dir, we only need to perform
> maintenance for these. As the other dirs are in .rodata, the bootloader
> will have initialised them as expected and cleaned them to the PoC. The
> kernel will initialize them as necessary after enabling the MMU.
> 
> This patch reworks the maintenance to only cover the idmap_pg_dir and
> init_pg_dir to avoid this unnecessary work.
> 
> Signed-off-by: Gavin Shan <gshan@redhat.com>

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
> v2: Include the suggested commit log    (Mark Rutland)
>     Improved comments and code          (Mark Rutland)
> ---
>  arch/arm64/include/asm/pgtable.h |  1 +
>  arch/arm64/kernel/head.S         | 12 +++++++++---
>  arch/arm64/kernel/vmlinux.lds.S  |  1 +
>  3 files changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> index 8c20e2bd6287..5caff09c6a3a 100644
> --- a/arch/arm64/include/asm/pgtable.h
> +++ b/arch/arm64/include/asm/pgtable.h
> @@ -457,6 +457,7 @@ extern pgd_t init_pg_dir[PTRS_PER_PGD];
>  extern pgd_t init_pg_end[];
>  extern pgd_t swapper_pg_dir[PTRS_PER_PGD];
>  extern pgd_t idmap_pg_dir[PTRS_PER_PGD];
> +extern pgd_t idmap_pg_end[];
>  extern pgd_t tramp_pg_dir[PTRS_PER_PGD];
>  
>  extern void set_swapper_pgd(pgd_t *pgdp, pgd_t pgd);
> diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
> index 57a91032b4c2..32f5ecbec0ea 100644
> --- a/arch/arm64/kernel/head.S
> +++ b/arch/arm64/kernel/head.S
> @@ -394,13 +394,19 @@ SYM_FUNC_START_LOCAL(__create_page_tables)
>  
>  	/*
>  	 * Since the page tables have been populated with non-cacheable
> -	 * accesses (MMU disabled), invalidate the idmap and swapper page
> -	 * tables again to remove any speculatively loaded cache lines.
> +	 * accesses (MMU disabled), invalidate those tables again to
> +	 * remove any speculatively loaded cache lines.
>  	 */
> +	dmb	sy
> +
>  	adrp	x0, idmap_pg_dir
> +	adrp	x1, idmap_pg_end
> +	sub	x1, x1, x0
> +	bl	__inval_dcache_area
> +
> +	adrp	x0, init_pg_dir
>  	adrp	x1, init_pg_end
>  	sub	x1, x1, x0
> -	dmb	sy
>  	bl	__inval_dcache_area
>  
>  	ret	x28
> diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
> index 497f9675071d..94402aaf5f5c 100644
> --- a/arch/arm64/kernel/vmlinux.lds.S
> +++ b/arch/arm64/kernel/vmlinux.lds.S
> @@ -139,6 +139,7 @@ SECTIONS
>  
>  	idmap_pg_dir = .;
>  	. += IDMAP_DIR_SIZE;
> +	idmap_pg_end = .;
>  
>  #ifdef CONFIG_UNMAP_KERNEL_AT_EL0
>  	tramp_pg_dir = .;
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
