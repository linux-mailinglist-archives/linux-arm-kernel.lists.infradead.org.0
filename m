Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77341823F0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 19:27:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IBFlmdanDMw7r0t8ZofAyFCzAja3777h1uE7BjCOWYo=; b=i5f2WNqLS6VigD
	BoOmnVI+5YWd/5dYztL60CDt5GkOlsEnODjjqM534XLgEHY7wokOSatutKlgUFgUU8ABqoxxSg/iK
	jhGixM/PlGP+bfjP/MVCd/1NQhtFe9eyyeMlEO2JIJa1bZaqx+4sry4ZsqKvq9Goaf8at7HOkYHXC
	p0LWPlHrr2X6bnpSAVO26OuMUNjNoeHt5tLXdBCJqeY8PHaB5POFGuZ5ZRI3PiLZ178gAIX2qSW8W
	RywFHiInZjJXJvi2vrcpw8rrwmNWzE4OYStatb77hnyrYnJYqf2Im5ZRXdye6PGRdpHFfsHBvf+v4
	1vlfmKhE+rAcoOSXaaBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hugl7-0008W2-QN; Mon, 05 Aug 2019 17:26:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hugkx-0008Vh-En
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 17:26:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 940C7344;
 Mon,  5 Aug 2019 10:26:46 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 8DFD53F694; Mon,  5 Aug 2019 10:26:45 -0700 (PDT)
Date: Mon, 5 Aug 2019 18:26:43 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steve Capper <steve.capper@arm.com>
Subject: Re: [PATCH V4 06/11] arm64: mm: Introduce VA_BITS_ACTUAL
Message-ID: <20190805172643.GM4175@arrakis.emea.arm.com>
References: <20190729162117.832-1-steve.capper@arm.com>
 <20190729162117.832-7-steve.capper@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729162117.832-7-steve.capper@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_102647_543214_CD633DF8 
X-CRM114-Status: GOOD (  12.56  )
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

On Mon, Jul 29, 2019 at 05:21:12PM +0100, Steve Capper wrote:
> diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> index a8a91a573bff..93341f4fe840 100644
> --- a/arch/arm64/include/asm/memory.h
> +++ b/arch/arm64/include/asm/memory.h
> @@ -37,8 +37,6 @@
>   * VA_START - the first kernel virtual address.
>   */
>  #define VA_BITS			(CONFIG_ARM64_VA_BITS)
> -#define VA_START		(UL(0xffffffffffffffff) - \
> -	(UL(1) << (VA_BITS - 1)) + 1)
>  #define PAGE_OFFSET		(UL(0xffffffffffffffff) - \
>  	(UL(1) << VA_BITS) + 1)
>  #define KIMAGE_VADDR		(MODULES_END)
> @@ -166,10 +164,14 @@
>  #endif
>  
>  #ifndef __ASSEMBLY__
> +extern u64			vabits_actual;
> +#define VA_BITS_ACTUAL		({vabits_actual;})

Why not use the variable vabits_actual directly instead of defining a
macro?

> diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
> index ac58c69993ec..6dc7349868d9 100644
> --- a/arch/arm64/kernel/head.S
> +++ b/arch/arm64/kernel/head.S
> @@ -321,6 +321,11 @@ __create_page_tables:
>  	dmb	sy
>  	dc	ivac, x6		// Invalidate potentially stale cache line
>  
> +	adr_l	x6, vabits_actual
> +	str	x5, [x6]
> +	dmb	sy
> +	dc	ivac, x6		// Invalidate potentially stale cache line

Can we not replace vabits_user with vabits_actual and have a single
write? Maybe not in this patch but once the series is applied, they are
practically the same. It could be an additional patch (or define a
vabits_user macro as vabits_actual).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
