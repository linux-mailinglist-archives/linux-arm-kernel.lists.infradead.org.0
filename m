Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D3A1B7163
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 12:02:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cye9D/Uq72SxECqnuF9ZGq3fqYpsqChjUbbg82EUSNw=; b=Iut3C2EFotVJlI
	EN/QjBFOepzKtC0amn8GkMV21wJpen3NzBBTCbtcNk2aCSptG4AAsn2iCuqx9lI7WC0nWHZHgN0ex
	cSk0t/wtETWieKP+e8saKiAejB6OT/g6dm2G2JhvlCDJejx22JhZt12Khb0EPBJNcWBZWmHpNgGA2
	aVPcjkkhepR97mF5DXlMZkaqi4BcHnTFN7cBy8EEaNOKGwIBnBrwD+wOENJrWpFoKvdUrruzbz/lh
	fCPZ6QG8+XEcryuzWU9xbkfYOeCnswZDyorWJyzDsX5n/BzZ9Xji8jaaXcNhQmKs/7e1P974/goZG
	WLRYwQPHgQmw6iPxU3yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRv9g-0004S4-MU; Fri, 24 Apr 2020 10:01:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRv9Y-0004RJ-Eo
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 10:01:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F26AF1FB;
 Fri, 24 Apr 2020 03:01:44 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D755C3F73D;
 Fri, 24 Apr 2020 03:01:42 -0700 (PDT)
Date: Fri, 24 Apr 2020 11:01:31 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH] arm64/kernel: Fix range on invalidating dcache for boot
 page tables
Message-ID: <20200424100131.GB1167@C02TD0UTHF1T.local>
References: <20200424050230.16720-1-gshan@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424050230.16720-1-gshan@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_030148_583423_1927E48E 
X-CRM114-Status: GOOD (  21.37  )
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
Cc: steve.capper@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 broonie@kernel.org, shan.gavin@gmail.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Gavin,

On Fri, Apr 24, 2020 at 03:02:30PM +1000, Gavin Shan wrote:
> The MMU is disabled when __create_page_tables() is called. The data
> cache corresponding to these two page tables, which are tracked by
> @idmap_pg_dir and @init_pg_dir, is invalidated after the page tables
> are populated. However, the wrong or inappropriate size have been used
> and more data cache are invalidated than it need.
> 
> This fixes the issue by invalidating the data cache for these two
> page tables separately as they aren't necessarily physically adjacent.

Thanks for this!

I think the commit message needs to explain the issue more explicitly,
e.g.

| Prior to commit:
| 
|   8eb7e28d4c642c31i ("arm64/mm: move runtime pgds to rodata")
|
| ... idmap_pgd_dir, tramp_pg_dir, reserved_ttbr0, swapper_pg_dir, and
| init_pg_dir were contiguous at the end of the kernel image. The
| maintenance at the end of __create_page_tables assumed these were
| contiguous, and affected everything from the start of idmap_pg_dir to
| the end of init_pg_dir.
|
| That commit moved all but init_pg_dir into the .rodata section, with
| other data placed between idmap_pg_dir and init_pg_dir, but did not
| update the maintenance. Hence the maintenance is performed on much
| more data than necessary (but as the bootloader previously made this
| clean to the PoC there is no functional problem).
|
| As we only alter idmap_pg_dir, and init_pg_dir, we only need to
| perform maintenance for these. As the other dirs are in .rodata, the
| bootloader will have initialised them as expected and cleaned them to
| the PoC. The kernel will initialize them as necessary after enabling
| the MMU.
|
| This patch reworks the maintenance to only cover the idmap_pg_dir and
| init_pg_dir to avoid this unnecessary work.

> Signed-off-by: Gavin Shan <gshan@redhat.com>
> ---
>  arch/arm64/kernel/head.S | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
> index 57a91032b4c2..66947873c9e7 100644
> --- a/arch/arm64/kernel/head.S
> +++ b/arch/arm64/kernel/head.S
> @@ -398,6 +398,10 @@ SYM_FUNC_START_LOCAL(__create_page_tables)
>  	 * tables again to remove any speculatively loaded cache lines.
>  	 */

The comment above has been stale for a while, since it says:

| 	/*
| 	 * Since the page tables have been populated with non-cacheable
| 	 * accesses (MMU disabled), invalidate the idmap and swapper page
| 	 * tables again to remove any speculatively loaded cache lines.
| 	 */

... can we please update that at the same time? We can avoid mention of
the specific tables and say:

| 	/*
| 	 * Since the page tables have been populated with non-cacheable
| 	 * accesses (MMU disabled), invalidate those tables again to
| 	 * remove any speculatively loaded cache lines.
| 	 */

>  	adrp	x0, idmap_pg_dir
> +	mov	x1, #IDMAP_DIR_SIZE
> +	dmb	sy
> +	bl	__inval_dcache_area
> +	adrp	x0, init_pg_dir
>  	adrp	x1, init_pg_end
>  	sub	x1, x1, x0
>  	dmb	sy

The existing DMB is to order prior non-cacheable accesses against cache
maintenance, so we only need one of those at the start of the sequence.
For consistency, we should use the same idiom to generate the size of
both dirs. Given we use ADRP+ADRP+SUB here and elsewhere in head.S, I
think that's preferable for now.

So I reckon this should be:

|	dmb	sy
|
|	adrp	x0, idmap_pg_dir
|	adrp	x1, idmap_pg_end
|	sub	x1, x1, x0
|	bl	__inval_dcache_area
|
|	adrp	x0, init_pg_dir
|	adrp	x1, init_pg_end
|	sub	x1, x1, x0
|	bl	__inval_dcache_area

... with those line gaps to make the distinct blocks clearer.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
