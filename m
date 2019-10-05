Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAC6CC8F2
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 11:06:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DMGxj4XUfJ+r4ztvo6OKJn26jos7z5DrZLVQYls7EbE=; b=rdqk+JkLJZGy/Y
	ir6KNBKAMlld8pammRRKe3LK1GkxsAiX4p7B5eIa2XQPMu0ILqWsPO/LQzcf5yDfnUlxgLJ45hP3w
	XowYU5L7KdGkaAqDVTq50+vWocGt2ix86zGBFW4sjwZwfkQzN0RA7QrY9u/pKbCFMzayz3SFtH1P1
	idbkta+dch1av437ZBInFU6188dBBg5KrL8/7LilJHsp37kIhg/DfaVRXk8YxtJwaUC0UYSPkPoUP
	rdwn2MmoxrBqfN/x48B54yfAd2lweDaGS6GEnnjv4hfwQc31yGuqlOF/zWc5R0h8Ahvl2EbnC7D4i
	8DUNSG9Ebv3gGel44Jjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGg0z-0000Yv-61; Sat, 05 Oct 2019 09:06:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGg0s-0000YR-P3
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 09:06:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6ECCC142F;
 Sat,  5 Oct 2019 02:05:59 -0700 (PDT)
Received: from [10.162.42.128] (p8cg001049571a15.blr.arm.com [10.162.42.128])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 AFB903F534; Sat,  5 Oct 2019 02:05:57 -0700 (PDT)
Subject: Re: [PATCH] arm64: mm: fix spurious fault detection
To: Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
References: <20191004135847.39326-1-mark.rutland@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <875cd594-ee23-aa9e-de01-5189eeb89038@arm.com>
Date: Sat, 5 Oct 2019 14:36:19 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20191004135847.39326-1-mark.rutland@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_020606_855802_B6F23ABC 
X-CRM114-Status: GOOD (  22.69  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, James Morse <james.morse@arm.com>,
 Will Deacon <will.deacon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 10/04/2019 07:28 PM, Mark Rutland wrote:
> When detecting a spurious EL1 translation fault, we attempt to compare
> ESR_EL1.DFSC with PAR_EL1.FST. We erroneously use FIELD_PREP() to
> extract PAR_EL1.FST, when we should be using FIELD_GET().
> 
> In the wise words of Robin Murphy:
> 
> | FIELD_GET() is a UBFX, FIELD_PREP() is a BFI
> 
> Using FIELD_PREP() means that that dfsc & ESR_ELx_FSC_TYPE is always
> zero, and hence not equal to ESR_ELx_FSC_FAULT. Thus we detect any
> unhandled translation fault as spurious.
> 
> ... so let's use FIELD_GET() to ensure we don't decide all translation
> faults are spurious. ESR_EL1.DFSC occupies bits [5:0], and requires no
> shifting.
> 
> Fixes: 42f91093b043332a ("arm64: mm: Ignore spurious translation faults taken from the kernel")
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Reported-by: Robin Murphy <robin.murphy@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: James Morse <james.morse@arm.com>
> Cc: Will Deacon <will.deacon@kernel.org>
> ---
>  arch/arm64/mm/fault.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
> index 115d7a0e4b08..b0074b91913b 100644
> --- a/arch/arm64/mm/fault.c
> +++ b/arch/arm64/mm/fault.c
> @@ -266,7 +266,7 @@ static bool __kprobes is_spurious_el1_translation_fault(unsigned long addr,

A small nit, pt_regs pointer argument is not required and can be dropped.

>  	 * If we got a different type of fault from the AT instruction,
>  	 * treat the translation fault as spurious.
>  	 */
> -	dfsc = FIELD_PREP(SYS_PAR_EL1_FST, par);
> +	dfsc = FIELD_GET(SYS_PAR_EL1_FST, par);

FIELD_* functions are not getting used any where other drivers. Though this
patch did not add that but just wondering why there are no non-driver use
cases for these helpers.

>  	return (dfsc & ESR_ELx_FSC_TYPE) != ESR_ELx_FSC_FAULT;
>  }
>  
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
