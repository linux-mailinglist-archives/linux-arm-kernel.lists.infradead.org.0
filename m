Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FB38228C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 18:37:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1b89zqBfUaF2L4D/LGyDmdGebmVTKxmI8alLhNMR9mg=; b=VEPalyUBqi5nEO
	3RT1NdixvMWW1wgcyNJabY/q4nd6AACcDgFd6udp5jzHTzcfT4cQ2FjClxeK+Gb/j9tU7Amws8Cd5
	OOlmQ/4lWsqNk5lHRdwbsO8JPC05yeSenPQGEUwJIvRc3561UWpxvmsdGSgKd2BHLgKZAMm9+aAsD
	MGFu50xVkA30Sfx6tU/rFn8we0LbQi5+DlMMqLIzJQMGdVWo4m7ubDi5XcHQGUKARg/UXW6HTrazW
	cDa3CP/scTsKGPQnOIukTpMscc59aeN/l366pRpmNOgq/gK8Rrtg28vfS2hCrTWc4fK6tUtbSjb9U
	xhIz2mly5xdpxXzVRahg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hufza-0000SW-Fl; Mon, 05 Aug 2019 16:37:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hufzB-0000PO-0Y
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 16:37:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 314C8344;
 Mon,  5 Aug 2019 09:37:24 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 2E1F63F694; Mon,  5 Aug 2019 09:37:23 -0700 (PDT)
Date: Mon, 5 Aug 2019 17:37:21 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steve Capper <steve.capper@arm.com>
Subject: Re: [PATCH V4 03/11] arm64: kasan: Switch to using KASAN_SHADOW_OFFSET
Message-ID: <20190805163720.GF4175@arrakis.emea.arm.com>
References: <20190729162117.832-1-steve.capper@arm.com>
 <20190729162117.832-4-steve.capper@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729162117.832-4-steve.capper@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_093725_643413_5D4E81D0 
X-CRM114-Status: GOOD (  14.23  )
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, maz@kernel.org,
 bhsharma@redhat.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 05:21:09PM +0100, Steve Capper wrote:
> diff --git a/Documentation/arm64/kasan-offsets.sh b/Documentation/arm64/kasan-offsets.sh
> new file mode 100644
> index 000000000000..2b7a021db363
> --- /dev/null
> +++ b/Documentation/arm64/kasan-offsets.sh
> @@ -0,0 +1,27 @@
> +#!/bin/sh
> +
> +# Print out the KASAN_SHADOW_OFFSETS required to place the KASAN SHADOW
> +# start address at the mid-point of the kernel VA space
> +
> +print_kasan_offset () {
> +	printf "%02d\t" $1
> +	printf "0x%08x00000000\n" $(( (0xffffffff & (-1 << ($1 - 1 - 32))) \
> +			+ (1 << ($1 - 32 - $2)) \
> +			- (1 << (64 - 32 - $2)) ))
> +}
> +
> +echo KASAN_SHADOW_SCALE_SHIFT = 3
> +printf "VABITS\tKASAN_SHADOW_OFFSET\n"
> +print_kasan_offset 48 3
> +print_kasan_offset 47 3
> +print_kasan_offset 42 3
> +print_kasan_offset 39 3
> +print_kasan_offset 36 3
> +echo
> +echo KASAN_SHADOW_SCALE_SHIFT = 4
> +printf "VABITS\tKASAN_SHADOW_OFFSET\n"
> +print_kasan_offset 48 4
> +print_kasan_offset 47 4
> +print_kasan_offset 42 4
> +print_kasan_offset 39 4
> +print_kasan_offset 36 4

Even better if this generated the Kconfig entry directly ;). Anyway,
it's fine as it is.


> diff --git a/arch/arm64/mm/kasan_init.c b/arch/arm64/mm/kasan_init.c
> index 05edfe9b02e4..9e68e3d12956 100644
> --- a/arch/arm64/mm/kasan_init.c
> +++ b/arch/arm64/mm/kasan_init.c
> @@ -154,8 +154,6 @@ static void __init kasan_pgd_populate(unsigned long addr, unsigned long end,
>  /* The early shadow maps everything to a single page of zeroes */
>  asmlinkage void __init kasan_early_init(void)
>  {
> -	BUILD_BUG_ON(KASAN_SHADOW_OFFSET !=
> -		KASAN_SHADOW_END - (1UL << (64 - KASAN_SHADOW_SCALE_SHIFT)));

Can we not still keep a BUILD_BUG_ON() for KASAN_SHADOW_OFFSET around,
even if it does the same calculation as the script?

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
