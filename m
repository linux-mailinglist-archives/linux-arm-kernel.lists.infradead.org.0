Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E63696EA8F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 20:17:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EwkTC8lIkenTh9pRLt11UuctzBURApAsA1fmbp+UIco=; b=S6hLq5AD0ZoVMhR5qQumY1ySl
	OgCggZWHATBBvWXCQQMu7/vMx7kdmk5HbQvkry9bl1OtcY7p+Izs/SCT4OSRIJEHSdz4CbPWkbDgr
	PsHB4cPEc++VyEvYOcIZa78zWsHO771bbuWUxxL6GEmLvvhcI56pNB/Cq/P7u/vkoKqhb2fOZ92ZP
	8vuSuLlxQ0qPA4YyhiHcEmEM/e/7pt5xpAp2e84CPExluognNxoAFHdafAK74GWNGBtYSsgFB5rDc
	MxqtHFqO3NqJvTysE4OrnqZb2w3doTFOlQ/HOgFRGapwp5REi2wM9iex4Y5xHwGJWKfGvng4iXuhX
	1rvTdrZ5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoXRM-0004n0-FW; Fri, 19 Jul 2019 18:17:08 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoXRA-0004mg-Ho
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 18:16:57 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 74E8C616D3; Fri, 19 Jul 2019 18:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563560213;
 bh=F5sWNpcJ28oNodSGcimGImD/hlCWjjVrH5lpLk/SNN8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=awRv8UAkVGOsizyFlGIfs8U28DNRbquQ2tNmJ3D2gMWqH5m4XYUkE0Mz4r83sxJpM
 q0tNK19z65SBtx434oHpdek/0EroZ9wnKP8pcK+s4DgeKh5PvKFHRPg0IwTbQZK392
 Tc0obup6TcXws00/kfnHKhbCADygZbT6wig0IThU=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4555860E5F;
 Fri, 19 Jul 2019 18:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563560212;
 bh=F5sWNpcJ28oNodSGcimGImD/hlCWjjVrH5lpLk/SNN8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=VnOXZJn+Dp/xGCosQH1qsDfrUTo0otNLEoRpKLlYpB44io40GOe8O5CqvZHBGkzvh
 8tYA8/mVayrZfzZQDvKm3MxeNUkXbx7AOCSKpAKmrzAlyY0VMNgbhVT6vAaHjQwZop
 6dWdOAsrWQ2nsx6HFnMeWE/eldBlCx2TthWntlz0=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4555860E5F
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=neeraju@codeaurora.org
Subject: Re: [PATCH] arm64: Force SSBS on context switch
To: Marc Zyngier <marc.zyngier@arm.com>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
References: <20190719171651.26165-1-marc.zyngier@arm.com>
From: Neeraj Upadhyay <neeraju@codeaurora.org>
Message-ID: <ab273dea-827f-1bac-bad6-e22736c7c001@codeaurora.org>
Date: Fri, 19 Jul 2019 23:46:49 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190719171651.26165-1-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_111656_628991_532D350A 
X-CRM114-Status: GOOD (  21.32  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Patch looks good to me. Thanks!

On 7/19/19 10:46 PM, Marc Zyngier wrote:
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
>   arch/arm64/kernel/process.c        | 15 +++++++++++++++
>   2 files changed, 27 insertions(+), 2 deletions(-)
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
> index 9856395ccdb7..2fb91c8728ae 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
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

Minor: Can also modify copy_thread() to use set_ssbs_bit(childregs)


Thanks

Neeraj

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

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a
member of the Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
