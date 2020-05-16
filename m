Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6CE1D5FC3
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 10:47:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=seMYnlaBjaZIlqUQjftAw/dETu5+NtWjgHGkAUPgNTk=; b=Hj9HDZ0hGLB4+U
	8/LUy9P7u1rRtaH/SzkDt7mPsh3K8Qz3YdHBqxn9gyW90wgWSGBtcjXj5L6R3aBXbp0silyyyAdBa
	MIbW3UBVu5IKSb7NyDtntFnORi78JosdqFCdeUmGBbY+7sv7YzbIJQGborqt3uR4Kz8Ld4J06OPWJ
	3te1x67AXoaW6iTn2WyQdKhp7oqMECLhmeiAlge/TVQ8u4RnMVDK1lGpLqyMYU5MQ7kHvR63ucgw1
	CEHR/YtD78PoJCyeT3eF29MXx4me5HqN+DldXteyGYl4h76esGZV9GMyDuCLgqcrZZTb+oC/ew86o
	6AvQiaMGqS8dSYrlkxPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZsTb-0001yR-Sx; Sat, 16 May 2020 08:47:23 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZsTT-0001y3-Be
 for linux-arm-kernel@lists.infradead.org; Sat, 16 May 2020 08:47:17 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 7880A39151B447A1EF14;
 Sat, 16 May 2020 16:47:11 +0800 (CST)
Received: from [10.166.215.145] (10.166.215.145) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.487.0; Sat, 16 May 2020 16:47:08 +0800
Subject: Re: [PATCH 2/4] arm64: Extract kprobes_save_local_irqflag() and
 kprobes_restore_local_irqflag()
To: Doug Anderson <dianders@chromium.org>
References: <20200509214159.19680-1-liwei391@huawei.com>
 <20200509214159.19680-3-liwei391@huawei.com>
 <CAD=FV=VVz4QnQ6AWAsCMxw6Zne6es0omvJ--Gnag=PXkMPt42g@mail.gmail.com>
From: "liwei (GF)" <liwei391@huawei.com>
Message-ID: <d5bb9ccf-6047-13d9-45b3-18421629e83f@huawei.com>
Date: Sat, 16 May 2020 16:47:07 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <CAD=FV=VVz4QnQ6AWAsCMxw6Zne6es0omvJ--Gnag=PXkMPt42g@mail.gmail.com>
X-Originating-IP: [10.166.215.145]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_014715_566664_67C04F8B 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Daniel Thompson <daniel.thompson@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, liwei1412@163.com,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Jason Wessel <jason.wessel@windriver.com>, Will Deacon <will@kernel.org>,
 David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Douglas,

On 2020/5/14 8:21, Doug Anderson wrote:
(SNIP)
>> +/*
>> + * Interrupts need to be disabled before single-step mode is set, and not
>> + * reenabled until after single-step mode ends.
>> + * Without disabling interrupt on local CPU, there is a chance of
>> + * interrupt occurrence in the period of exception return and  start of
>> + * out-of-line single-step, that result in wrongly single stepping
>> + * into the interrupt handler.
>> + */
>> +void kernel_prepare_single_step(unsigned long *flags,
>> +                                               struct pt_regs *regs)
>> +{
>> +       *flags = regs->pstate & DAIF_MASK;
>> +       regs->pstate |= PSR_I_BIT;
>> +       /* Unmask PSTATE.D for enabling software step exceptions. */
>> +       regs->pstate &= ~PSR_D_BIT;
>> +}
>> +NOKPROBE_SYMBOL(kernel_prepare_single_step);
> 
> nit: why not just return unsigned long rather than passing by reference?
Because i just extract this function from kprobes_save_local_irqflag(), i think
return unsigned long is fine.

> 
>> +
>> +void kernel_cleanup_single_step(unsigned long flags,
>> +                                               struct pt_regs *regs)
>> +{
>> +       regs->pstate &= ~DAIF_MASK;
>> +       regs->pstate |= flags;
>> +}
>> +NOKPROBE_SYMBOL(kernel_cleanup_single_step);
>> +
>>  /* ptrace API */
>>  void user_enable_single_step(struct task_struct *task)
>>  {
>> diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
>> index d1c95dcf1d78..c655b6b543e3 100644
>> --- a/arch/arm64/kernel/probes/kprobes.c
>> +++ b/arch/arm64/kernel/probes/kprobes.c
>> @@ -168,30 +168,6 @@ static void __kprobes set_current_kprobe(struct kprobe *p)
>>         __this_cpu_write(current_kprobe, p);
>>  }
>>
>> -/*
>> - * Interrupts need to be disabled before single-step mode is set, and not
>> - * reenabled until after single-step mode ends.
>> - * Without disabling interrupt on local CPU, there is a chance of
>> - * interrupt occurrence in the period of exception return and  start of
>> - * out-of-line single-step, that result in wrongly single stepping
>> - * into the interrupt handler.
>> - */
>> -static void __kprobes kprobes_save_local_irqflag(struct kprobe_ctlblk *kcb,
>> -                                               struct pt_regs *regs)
>> -{
>> -       kcb->saved_irqflag = regs->pstate & DAIF_MASK;
>> -       regs->pstate |= PSR_I_BIT;
>> -       /* Unmask PSTATE.D for enabling software step exceptions. */
>> -       regs->pstate &= ~PSR_D_BIT;
>> -}
>> -
>> -static void __kprobes kprobes_restore_local_irqflag(struct kprobe_ctlblk *kcb,
>> -                                               struct pt_regs *regs)
>> -{
>> -       regs->pstate &= ~DAIF_MASK;
>> -       regs->pstate |= kcb->saved_irqflag;
>> -}
>> -
>>  static void __kprobes
>>  set_ss_context(struct kprobe_ctlblk *kcb, unsigned long addr)
>>  {
>> @@ -227,7 +203,7 @@ static void __kprobes setup_singlestep(struct kprobe *p,
>>                 set_ss_context(kcb, slot);      /* mark pending ss */
>>
>>                 /* IRQs and single stepping do not mix well. */
>> -               kprobes_save_local_irqflag(kcb, regs);
>> +               kernel_prepare_single_step(&kcb->saved_irqflag, regs);
> 
> Is there some reason to have two functions?  It seems like every time
> you call kernel_enable_single_step() you'd want to call
> kernel_prepare_single_step().  ...and every time you call
> kernel_disable_single_step() you'd want to call
> kernel_cleanup_single_step().
> 
> Maybe you can just add the flags parameter to
> kernel_enable_single_step() / kernel_disable_single_step() and put the
> code in there?
> 

As kernel_enable_single_step() / kernel_disable_single_step() are also called in
breakpoint_handler() and watchpoint_handler(), i am not sure it's a right thing
to put the daif flag prepare/cleanup into them, especially we don't have a context
to save the flags.

Thanks,
Wei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
