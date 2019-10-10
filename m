Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 758B2D2E63
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 18:12:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MpGN2hcBxqMlm0f4eHlZ/T/UHcAUKfRw7RMFacJ/RyU=; b=Noh3nQ0uAbM3kS
	R6UsDlLpVCiiaaqaDml8vqnOyPUX+PmOboErgxfJ/mU6pnqkwltNg4FDEqv1YsFTC3irMFPSF4xJP
	Ybg8Jb3/tBd7rz7FE0/7DoqHlHNtm9FBdQIhwlxzwyZVvkHa3bh1K/lCYoafDSLIW7aNc6ENVeFxB
	4ZFFRS6t79sUPHn2m4/xb/NT3nm6Aoj4cbi81ONNJo7Ct0fXhahgPGCw5DOTSAp/xDhhYEoBi5Vqc
	oDdzeTF5Ln5e44RXrLmTkRdRpg7KWkqXWmcg93+XhRGVESKWBHwvcavD03sOIQtFxz64iplbqAFbv
	JWAUducVMzcc/Vknp1kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIb3Q-0005Ca-MZ; Thu, 10 Oct 2019 16:12:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIb3H-0005Bv-EP
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 16:12:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8B023337;
 Thu, 10 Oct 2019 09:12:25 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 57AD63F71A;
 Thu, 10 Oct 2019 09:12:24 -0700 (PDT)
Subject: Re: [PATCH] arm64: remove arm64 definitions of kc_vaddr_to_offset and
 kc_offset_to_vaddr.
To: Chris von Recklinghausen <crecklin@redhat.com>,
 linux-arm-kernel@lists.infradead.org
References: <20191008175434.27434-1-crecklin@redhat.com>
From: James Morse <james.morse@arm.com>
Message-ID: <4b08fce7-83a4-29a5-c0c4-407c9d6aa095@arm.com>
Date: Thu, 10 Oct 2019 17:12:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191008175434.27434-1-crecklin@redhat.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_091231_529504_D2C69AD0 
X-CRM114-Status: GOOD (  18.86  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, steve.capper@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, anderson@redhat.com,
 "will@kernel.org" <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chris,

(CC: +arm64 maintainers ... and the folk further down the thread)

./scripts/get_maintainer.pl will give you a hint at who to CC on patches.

On 08/10/2019 18:54, Chris von Recklinghausen wrote:
> With the reshuffling of kernel VA space to support 52 bits, the
> kc_vaddr_to_offset and kc_offset_to_vaddr macros are broken, since they are
> based on VA_START,

git grep VA_START in /arch/arm64 brings back nothing.
These are defined based on PAGE_END, but that is a renamed version of VA_START due to
commit 77ad4ce69321a ("arm64: memory: rename VA_START to PAGE_END").


> but VA_START no longer points to the base of the kernel
> virtual address space, (PAGE_OFFSET does now). fs/proc/kcore.c already has
> default definitions of kc_vaddr_to_offset and kc_offset_to_vaddr based on
> PAGE_OFFSET, so simply remove the arm64 definitions of them.

So far this just sounds like we are doing something unnecessary... your subsequent mail
says its a regression in v5.4.


It does look like kc_offset_to_vaddr() should map values in/out of the full TTBR1 range.
It was previously using VA_START.

These macros were added on arm64 by commit 03875ad52fdd ("arm64: add kc_offset_to_vaddr
and kc_vaddr_to_offset macro"), which notes the default version didn't work because the
kernel image was below PAGE_OFFSET.
(This sounds like a fix for when we moved the kernel from the linear-map, but I thought
that was done by a7f8de168ace as part of kaslr, which was merged later)

It looks like the core code versions will now work, but only because PAGE_OFFSET is now
'the start of the TTBR1 address space', (the macro formerly known as VA_START). Based on
what we did in commit 233947ef16a1 ("arm64: memory: fix flipped VA space fallout"), we're
okay with PAGE_OFFSET meaning both.


Could you summarise what is broken in the commit message, and how this changed fixes it?
Getting the word 'fix' in the subject will make this look less like cleanup.


Thanks,

James


> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> index 7576df00eb50..8330810f699e 100644
> --- a/arch/arm64/include/asm/pgtable.h
> +++ b/arch/arm64/include/asm/pgtable.h
> @@ -876,9 +876,6 @@ static inline void update_mmu_cache(struct vm_area_struct *vma,
>  
>  #define update_mmu_cache_pmd(vma, address, pmd) do { } while (0)
>  
> -#define kc_vaddr_to_offset(v)	((v) & ~PAGE_END)
> -#define kc_offset_to_vaddr(o)	((o) | PAGE_END)
> -
>  #ifdef CONFIG_ARM64_PA_BITS_52
>  #define phys_to_ttbr(addr)	(((addr) | ((addr) >> 46)) & TTBR_BADDR_MASK_52)
>  #else
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
