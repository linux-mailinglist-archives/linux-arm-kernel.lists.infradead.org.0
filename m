Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F7A74E7F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 14:49:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p3Xax2PpSTrajPOKe6gpNW8xG1KnyX7C/1jXPRqJsxs=; b=Hp0ls3eMyLx4Ls
	Y9LCoc6mEfjj+PjdFnzjU/7oK2upBWn0CsWyJ4vmZBML3lvK6T+Ce41vd74Vr7qv1FxurRJl6wQA4
	3zM6o7UNDdhiUbJ17vnSWg+s1ANbtDzpmDXzA/9pQWCEWGDyJOJOexF53i+xARgdzXiBlCEQ4e6f2
	TttM0Fw9sM5775qYFQdnvUOK7LgAvzmQAUsRWCC86zEBpsldM7ad2ZZvIoMZGKynLGHDc9yV25WIS
	iriWl9ksq/r00Hu7iSMYty04XbqZBCyJXMxkxJ1vDE6pea11WlJVDw4a4P1zx8KWQ7xSvikbNd4Gt
	+mQWjBu2ZIrrWr7+C6YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdBU-0000gL-OM; Thu, 25 Jul 2019 12:49:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdAo-0000fX-Rp
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 12:48:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B302E152D;
 Thu, 25 Jul 2019 05:48:40 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2545A3F71F;
 Thu, 25 Jul 2019 05:48:39 -0700 (PDT)
Subject: Re: [PATCH] KVM: arm64: Update kvm_arm_exception_class and
 esr_class_str for new EC
To: Zenghui Yu <yuzenghui@huawei.com>
References: <1562992854-972-1-git-send-email-yuzenghui@huawei.com>
From: James Morse <james.morse@arm.com>
Message-ID: <e009aceb-9d23-1a58-8186-4883ab98bd45@arm.com>
Date: Thu, 25 Jul 2019 13:48:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1562992854-972-1-git-send-email-yuzenghui@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_054842_944203_745D7189 
X-CRM114-Status: GOOD (  14.02  )
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
Cc: mark.rutland@arm.com, julien.thierry@arm.com, marc.zyngier@arm.com,
 catalin.marinas@arm.com, suzuki.poulose@arm.com, linux-kernel@vger.kernel.org,
 Dave.Martin@arm.com, amit.kachhap@arm.com, wanghaibin.wang@huawei.com,
 will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 13/07/2019 05:40, Zenghui Yu wrote:
> We've added two ESR exception classes for new ARM hardware extensions:
> ESR_ELx_EC_PAC and ESR_ELx_EC_SVE.
> 
> This patch updates "kvm_arm_exception_class" for these two EC, which the

> new EC will be parsed in kvm_exit trace events (for guest's usage of

new EC will be visible to user-space via kvm_exit() trace events... ?


> Pointer Authentication and Scalable Vector Extension).  The same updates
> to "esr_class_str" for ESR_ELx_EC_PAC, by which we can get more accurate
> debug info.

Its accurate either way round. This stops the trace-point print from printing the EC in
hex, instead giving it a name, like we do for all the others.


>  Trivial changes, update them in one go.

(I don't think this bit needs to go in the git-log!)


> diff --git a/arch/arm64/include/asm/kvm_arm.h b/arch/arm64/include/asm/kvm_arm.h
> index a8b205e..ddf9d76 100644
> --- a/arch/arm64/include/asm/kvm_arm.h
> +++ b/arch/arm64/include/asm/kvm_arm.h
> @@ -316,9 +316,10 @@
>  
>  #define kvm_arm_exception_class \
>  	ECN(UNKNOWN), ECN(WFx), ECN(CP15_32), ECN(CP15_64), ECN(CP14_MR), \
> -	ECN(CP14_LS), ECN(FP_ASIMD), ECN(CP10_ID), ECN(CP14_64), ECN(SVC64), \
> -	ECN(HVC64), ECN(SMC64), ECN(SYS64), ECN(IMP_DEF), ECN(IABT_LOW), \
> -	ECN(IABT_CUR), ECN(PC_ALIGN), ECN(DABT_LOW), ECN(DABT_CUR), \
> +	ECN(CP14_LS), ECN(FP_ASIMD), ECN(CP10_ID), ECN(PAC), ECN(CP14_64), \
> +	ECN(SVC64), ECN(HVC64), ECN(SMC64), ECN(SYS64), ECN(SVE), \
> +	ECN(IMP_DEF), ECN(IABT_LOW), ECN(IABT_CUR), \
> +	ECN(PC_ALIGN), ECN(DABT_LOW), ECN(DABT_CUR), \
>  	ECN(SP_ALIGN), ECN(FP_EXC32), ECN(FP_EXC64), ECN(SERROR), \
>  	ECN(BREAKPT_LOW), ECN(BREAKPT_CUR), ECN(SOFTSTP_LOW), \
>  	ECN(SOFTSTP_CUR), ECN(WATCHPT_LOW), ECN(WATCHPT_CUR), \

Do we need to add:
ESR_ELx_EC_ILL
ESR_ELx_EC_HVC32
ESR_ELx_EC_SMC32


(I don't see how any of the _CUR entries could ever happen as these EC originally come
from ESR_EL2, but they're harmless)


> diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
> index 8c03456..969e156 100644
> --- a/arch/arm64/kernel/traps.c
> +++ b/arch/arm64/kernel/traps.c
> @@ -734,6 +734,7 @@ asmlinkage void __exception do_sysinstr(unsigned int esr, struct pt_regs *regs)
>  	[ESR_ELx_EC_CP14_LS]		= "CP14 LDC/STC",
>  	[ESR_ELx_EC_FP_ASIMD]		= "ASIMD",
>  	[ESR_ELx_EC_CP10_ID]		= "CP10 MRC/VMRS",
> +	[ESR_ELx_EC_PAC]		= "PAC",
>  	[ESR_ELx_EC_CP14_64]		= "CP14 MCRR/MRRC",
>  	[ESR_ELx_EC_ILL]		= "PSTATE.IL",
>  	[ESR_ELx_EC_SVC32]		= "SVC (AArch32)",


Reviewed-by: James Morse <james.morse@arm.com>


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
