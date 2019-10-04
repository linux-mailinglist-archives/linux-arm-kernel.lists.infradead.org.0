Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5EACB816
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 12:19:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HjMjQcTlIBhgVdDFM//f4S/WpUOsvG/EKFc3UHQJCEQ=; b=RAJZOeNyuaq+PS
	oaJgEr96PZQLgD3Ma2m15E4iUG5JoHOE55ei9yubJlrtEzV5/z+tiPDqZuwIgVHBJbnuFckLv9dDX
	nBFLhXA5UgcF9heInjdox60rK18JLD1hWR7WIdlKRTO832AyPq4tFHdGudQ19QQbmPSaMhNXBJs2L
	sUgJJXFCT1jEmS6J+IqI25/LK4ARlEibQmZV5vkWpye6v4yDNZpSsqW3DtlCFnH0uJiSTl/sxb0Fo
	xR0DGtEBeJfoQJc8M+7Zh/bqDcBA8Tctdhn0tPTgoSCw74zhrMs3M7gxZea11C8QRlEsgCzA9OAlX
	qtKxpEwyywg1wDovM2nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGKg4-000058-Oj; Fri, 04 Oct 2019 10:19:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGKfy-0008Vl-KP
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 10:19:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3771D15A1;
 Fri,  4 Oct 2019 03:19:05 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 604683F706;
 Fri,  4 Oct 2019 03:19:04 -0700 (PDT)
Subject: Re: [PATCH] arm64/mm: Poison initmem while freeing with
 free_reserved_area()
To: Anshuman Khandual <anshuman.khandual@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1570163038-32067-1-git-send-email-anshuman.khandual@arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <600676fd-1b39-74f4-49a7-3c807ee24cff@arm.com>
Date: Fri, 4 Oct 2019 11:19:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1570163038-32067-1-git-send-email-anshuman.khandual@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_031906_714913_3BF3F079 
X-CRM114-Status: GOOD (  18.70  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/10/2019 05:23, Anshuman Khandual wrote:
> Platform implementation for free_initmem() should poison the memory while
> freeing it up. Hence pass across POISON_FREE_INITMEM while calling into
> free_reserved_area(). The same is being followed in the generic fallback
> for free_initmem() and some other platforms overriding it.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>

Is there a good reason you haven't made a similar change to
free_initrd_mem() - the same logic seems to apply. However this change
looks fine to me.

Reviewed-by: Steven Price <steven.price@arm.com>

> ---
>  arch/arm64/mm/init.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> index 45c00a54909c..ea7d38011e83 100644
> --- a/arch/arm64/mm/init.c
> +++ b/arch/arm64/mm/init.c
> @@ -571,7 +571,7 @@ void free_initmem(void)
>  {
>  	free_reserved_area(lm_alias(__init_begin),
>  			   lm_alias(__init_end),
> -			   0, "unused kernel");
> +			   POISON_FREE_INITMEM, "unused kernel");
>  	/*
>  	 * Unmap the __init region but leave the VM area in place. This
>  	 * prevents the region from being reused for kernel modules, which
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
