Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD699702D0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 16:58:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9EQpwDqTxnsI7ZQg2u1fYBRkjfFUkF0rzPKTXzhvA8Q=; b=BnbYPCz7i2xfuUz4GXaKJRGWC
	TuNyer1HpLVi0VONoxfS1jMloR5fhw/Qgay9lORuV57A0IXhiuve/n+lEaR4frTF43+bUmdHq1pRR
	ScOb81TsJIRCnjqJjqWhJvNzMoWX0DajBoP/TeIEVfdHCJPcWbiKvCsPK4pxVYkEr/1/K9vA6fV3V
	VwBiedC5lv+izS8kBdNj/MHQMla3jQstUwbs5RL1PeRVip3unWLfnJ3J+KmadVrNCeZ//tDKqFzjA
	sAE01w34LgI4Rl0cpe9zlzJItMk+QdqmHg2Ino7k9NO3dEndHs2f79BHA7zHdw5i7ZE9qjDkTln8P
	yx6vcOYQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpZls-0004CL-Ep; Mon, 22 Jul 2019 14:58:36 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpZld-0004C2-6o
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 14:58:22 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 66B9E61157; Mon, 22 Jul 2019 14:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563807500;
 bh=94go6kfcjiILasUyuwdynDZ+rYlh8s0MCvc2VsmcBBA=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=JoU9hdmvOlyDY/4/q+gaM4TYPMPV86Yk4e8iUq0767oSePxSeZBkvSu4kZ7IrwflW
 55b3mZZNo9gO50tefXTgVrqqMTIaqqu9ww6qCUmeafNuj4/WrPpg/gaVS21p+sqHPB
 nJgnGD4VDIhkdJA/gx9YjDbvZ13jfMYZA+OPY3Ic=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [10.204.78.89]
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: neeraju@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id EEA4760F3E;
 Mon, 22 Jul 2019 14:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563807499;
 bh=94go6kfcjiILasUyuwdynDZ+rYlh8s0MCvc2VsmcBBA=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=VgCoOuuDYc7BtJteWI+oVObCqKQZ/mpfGdw/8VU8ZuFej5uQjvvG2sZgI0mIs2HzH
 CWBQD31KR/Z5qnjCXYKu6GZ2QfmE3hOQrqrY309Lo/EvKeziKKd7NKCE+CR7d9F0HB
 xzsrzu2jYTolfILVL/GwNHOSlmyPW6BnPyLu8LsE=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org EEA4760F3E
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=neeraju@codeaurora.org
Subject: Re: [PATCH v2] arm64: Force SSBS on context switch
To: Marc Zyngier <marc.zyngier@arm.com>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>
References: <20190722135309.43186-1-marc.zyngier@arm.com>
From: Neeraj Upadhyay <neeraju@codeaurora.org>
Message-ID: <8c89dbc4-50ba-6802-e582-d4fe54426261@codeaurora.org>
Date: Mon, 22 Jul 2019 20:28:15 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190722135309.43186-1-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_075821_284097_DCC7707B 
X-CRM114-Status: GOOD (  22.12  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 7/22/19 7:23 PM, Marc Zyngier wrote:
> On a CPU that doesn't support SSBS, PSTATE[12] is RES0.  In a system
> where only some of the CPUs implement SSBS, we end-up losing track of
> the SSBS bit across task migration.
>
> To address this issue, let's force the SSBS bit on context switch.
>
> Fixes: 8f04e8e6e29c ("arm64: ssbd: Add support for PSTATE.SSBS rather than trapping to EL3")
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>   arch/arm64/include/asm/processor.h | 14 ++++++++++++--
>   arch/arm64/kernel/process.c        | 17 ++++++++++++++++-
>   2 files changed, 28 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
> index fd5b1a4efc70..844e2964b0f5 100644
> --- a/arch/arm64/include/asm/processor.h
> +++ b/arch/arm64/include/asm/processor.h
> @@ -193,6 +193,16 @@ static inline void start_thread_common(struct pt_regs *regs, unsigned long pc)
>   		regs->pmr_save = GIC_PRIO_IRQON;
>   }
>   
> +static inline void set_ssbs_bit(struct pt_regs *regs)
> +{
> +	regs->pstate |= PSR_SSBS_BIT;
> +}
> +
> +static inline void set_compat_ssbs_bit(struct pt_regs *regs)
> +{
> +	regs->pstate |= PSR_AA32_SSBS_BIT;
> +}
> +
>   static inline void start_thread(struct pt_regs *regs, unsigned long pc,
>   				unsigned long sp)
>   {
> @@ -200,7 +210,7 @@ static inline void start_thread(struct pt_regs *regs, unsigned long pc,
>   	regs->pstate = PSR_MODE_EL0t;
>   
>   	if (arm64_get_ssbd_state() != ARM64_SSBD_FORCE_ENABLE)
> -		regs->pstate |= PSR_SSBS_BIT;
> +		set_ssbs_bit(regs);
>   
>   	regs->sp = sp;
>   }
> @@ -219,7 +229,7 @@ static inline void compat_start_thread(struct pt_regs *regs, unsigned long pc,
>   #endif
>   
>   	if (arm64_get_ssbd_state() != ARM64_SSBD_FORCE_ENABLE)
> -		regs->pstate |= PSR_AA32_SSBS_BIT;
> +		set_compat_ssbs_bit(regs);
>   
>   	regs->compat_sp = sp;
>   }
> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index 9856395ccdb7..036aa301d97d 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
> @@ -398,7 +398,7 @@ int copy_thread(unsigned long clone_flags, unsigned long stack_start,
>   			childregs->pstate |= PSR_UAO_BIT;
>   
>   		if (arm64_get_ssbd_state() == ARM64_SSBD_FORCE_DISABLE)
> -			childregs->pstate |= PSR_SSBS_BIT;
> +			set_ssbs_bit(childregs);
>   
>   		if (system_uses_irq_prio_masking())
>   			childregs->pmr_save = GIC_PRIO_IRQON;
> @@ -442,6 +442,20 @@ void uao_thread_switch(struct task_struct *next)
>   	}
>   }
>   
> +static void ssbs_thread_switch(struct task_struct *next)
> +{
> +	if (likely(!(next->flags & PF_KTHREAD)) &&
> +	    arm64_get_ssbd_state() != ARM64_SSBD_FORCE_ENABLE &&
> +	    !test_tsk_thread_flag(next, TIF_SSBD)) {
> +		struct pt_regs *regs = task_pt_regs(next);
> +
> +		if (compat_user_mode(regs))
> +			set_compat_ssbs_bit(regs);
> +		else if (user_mode(regs))
> +			set_ssbs_bit(regs);
> +	}
> +}
> +
>   /*
>    * We store our current task in sp_el0, which is clobbered by userspace. Keep a
>    * shadow copy so that we can restore this upon entry from userspace.
> @@ -471,6 +485,7 @@ __notrace_funcgraph struct task_struct *__switch_to(struct task_struct *prev,
>   	entry_task_switch(next);
>   	uao_thread_switch(next);
>   	ptrauth_thread_switch(next);
> +	ssbs_thread_switch(next);
>   
>   	/*
>   	 * Complete any pending TLB or cache maintenance on this CPU in case

Looks good to me.


Thanks

Neeraj

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a
member of the Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
