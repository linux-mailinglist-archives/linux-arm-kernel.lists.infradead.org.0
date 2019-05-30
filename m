Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 247D22EAC0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 04:41:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v26yokm5qZnMih2oPs4DDHf7sNazqPMYSdTBG6krX9o=; b=QjobEuTTDneTzBgZQrxFDfpvs
	H1tGfeF9gmaa+pnOANCXsM99ng0jBlW60/mDyZf9E2AXZZOuDeOQWWAydDVHK7Nh5Ysdd+6yPpAUI
	d+ecXqoiyixmKkDkkaUBeJ87LDaApz9LBvrA+Joy7lqmfWpi+tc8EEm/Vn43WbCdZx/iIL8C/7rZp
	BDkWmGg8SSXB7wU3G9aztbdtw60RJVGGNYStsc8ha1BCtP9Izn4maARATlGXqvoFBcsgnSBMeKIVD
	ndua/3AwBZtFzK/dRN5Q7YUEILfAOUzf0X3NdJ+e84U51THq1fGDFrmdaY9DQ7pY2UCSSXTx/FEGu
	KjtzW6A4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWB0P-0004Xf-Ku; Thu, 30 May 2019 02:41:25 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWB0I-0004Wz-8M
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 02:41:19 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 891086087B; Thu, 30 May 2019 02:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559184072;
 bh=KZzN8mKGdKvkpGucs4JphPlo8n4hbN/Gg9urLIAqbEc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=e7IC8g7jbEZyR+Oy5Cm7ksMUi1pUaG272SUfx/BrYxsoB8zBP32jJTpGY+o1dHHwU
 uzF7hy0dmzcIdUNf23Qvv9LZLKvVTXzdTaYdMFJUwm9TF7j9KxIa+h2rOUUMY9BHv5
 2NBkurXSfWtu9LjP6f2HytphCOQxLOvd/VaKdkKI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 973AD604D4;
 Thu, 30 May 2019 02:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559184071;
 bh=KZzN8mKGdKvkpGucs4JphPlo8n4hbN/Gg9urLIAqbEc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=UIhRzLqN0mLLoPvzy2/rp0Vg6yv0YHzt4vL33AmZl1rDVmProV9LOCUm21CUs2Xp8
 otrP0LuFQLkcNW/hqQwsDT5WH152PerZEaXcNYrBeTHyulj0zamuhooukp10Q/+Dz0
 2inymFXuNAeNo49NrIZz0B1JyyeSCvC4vJZjN+FQ=
MIME-Version: 1.0
Date: Thu, 30 May 2019 10:41:11 +0800
From: tengfeif@codeaurora.org
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: break while loop if task had been rescheduled
In-Reply-To: <20190524104148.GB12796@lakrids.cambridge.arm.com>
References: <1558430404-4840-1-git-send-email-tengfeif@codeaurora.org>
 <20190524104148.GB12796@lakrids.cambridge.arm.com>
Message-ID: <665641d42e21da3466693ac49ac5d40e@codeaurora.org>
X-Sender: tengfeif@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_194118_335362_C2EF1F2C 
X-CRM114-Status: GOOD (  18.01  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: tengfei@codeaurora.org, anshuman.khandual@arm.com, marc.zyngier@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 andreyknvl@google.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-05-24 18:41, Mark Rutland wrote:
> On Tue, May 21, 2019 at 05:20:04PM +0800, Tengfei Fan wrote:
>> While printing a task's backtrace and this task isn't
>> current task, it is possible that task's fp and fp+8
>> have the same value, so cannot break the while loop.
>> This can break while loop if this task had been
>> rescheduled during print this task's backtrace.
> 
> There are a few cases where backtracing can get stuck in an infinite
> loop. I'd attempted to address that more generally in my
> arm64/robust-stacktrace branch [1].
> 
> Looking at tsk->state here is inherently racy, and doesn't solve the
> general case, so I'd prefer to avoid that.
> 
> Do my patches help you here? If so, I'm happy to rebase those to
> v5.2-rc1 and repost.

I think your arm64/robust-stacktrace branch [1] can cover my issue, 
please
rebase and reposet

Thanks,
Tengfei Fan

> 
> Thanks,
> Mark.
> 
> [1]
> https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/log/?h=arm64/robust-stacktrace
> 
>> 
>> Signed-off-by: Tengfei Fan <tengfeif@codeaurora.org>
>> ---
>>  arch/arm64/kernel/traps.c | 23 +++++++++++++++++++++++
>>  1 file changed, 23 insertions(+)
>> 
>> diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
>> index 2975598..9df6e02 100644
>> --- a/arch/arm64/kernel/traps.c
>> +++ b/arch/arm64/kernel/traps.c
>> @@ -103,6 +103,9 @@ void dump_backtrace(struct pt_regs *regs, struct 
>> task_struct *tsk)
>>  {
>>  	struct stackframe frame;
>>  	int skip = 0;
>> +	long cur_state = 0;
>> +	unsigned long cur_sp = 0;
>> +	unsigned long cur_fp = 0;
>> 
>>  	pr_debug("%s(regs = %p tsk = %p)\n", __func__, regs, tsk);
>> 
>> @@ -127,6 +130,9 @@ void dump_backtrace(struct pt_regs *regs, struct 
>> task_struct *tsk)
>>  		 */
>>  		frame.fp = thread_saved_fp(tsk);
>>  		frame.pc = thread_saved_pc(tsk);
>> +		cur_state = tsk->state;
>> +		cur_sp = thread_saved_sp(tsk);
>> +		cur_fp = frame.fp;
>>  	}
>>  #ifdef CONFIG_FUNCTION_GRAPH_TRACER
>>  	frame.graph = 0;
>> @@ -134,6 +140,23 @@ void dump_backtrace(struct pt_regs *regs, struct 
>> task_struct *tsk)
>> 
>>  	printk("Call trace:\n");
>>  	do {
>> +		if (tsk != current && (cur_state != tsk->state
>> +			/*
>> +			 * We would not be printing backtrace for the task
>> +			 * that has changed state from uninterruptible to
>> +			 * running before hitting the do-while loop but after
>> +			 * saving the current state. If task is in running
>> +			 * state before saving the state, then we may print
>> +			 * wrong call trace or end up in infinite while loop
>> +			 * if *(fp) and *(fp+8) are same. While the situation
>> +			 * will stop print when that task schedule out.
>> +			 */
>> +			|| cur_sp != thread_saved_sp(tsk)
>> +			|| cur_fp != thread_saved_fp(tsk))) {
>> +			printk("The task:%s had been rescheduled!\n",
>> +				tsk->comm);
>> +			break;
>> +		}
>>  		/* skip until specified stack frame */
>>  		if (!skip) {
>>  			dump_backtrace_entry(frame.pc);
>> --
>> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora 
>> Forum,
>> a Linux Foundation Collaborative Project
>> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
