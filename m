Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 807F8586F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 18:24:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KeMxpkrgk6x5e3lqkxzDYzkd3wLCrfJlSVVDSxkz6Io=; b=TbBp2M5sv8ftNl
	2UT2wmKeKQ9NtDnAE+vsUIhBYglPlPwWafqL7TBCm3pwFTSl/Eoxsn+LVyzrf0YUtfUEUgr9bL9Wh
	ih9Cs90gwqX1i6DZzR9VqLEl7NugxvpJqJAv/vOKemIiJBdv2EaLz8W7txA80CKa4glq0zkXE8+Hn
	zH982NifNMXYFqujeqGDTNy+zjGvt/sthNhttNBPWI6V/IjRIk16u7atxn91mee6SdSUTbQB+TJhO
	VW/GVjEn/lZgbKE1hSpsC1OKh9dQog3nUYp115BZtw9hzj23PS6s7IfpLhispaG1K0BiNPdHQrVNa
	pr+thqIUdEI8yZzEaDBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgXCK-00034p-Im; Thu, 27 Jun 2019 16:24:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgXC0-00033m-9T
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 16:24:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9EC37360;
 Thu, 27 Jun 2019 09:24:09 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D01743F246;
 Thu, 27 Jun 2019 09:24:08 -0700 (PDT)
Subject: Re: [PATCH 3/3] arm64: stacktrace: better handle corrupted stacks
To: Mark Rutland <mark.rutland@arm.com>
References: <20190606125402.10229-1-mark.rutland@arm.com>
 <20190606125402.10229-4-mark.rutland@arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <0ae84e0e-426a-2cea-a665-39e56f03a9f6@arm.com>
Date: Thu, 27 Jun 2019 17:24:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190606125402.10229-4-mark.rutland@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_092412_420991_36A8EE05 
X-CRM114-Status: GOOD (  21.65  )
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
Cc: catalin.marinas@arm.com, tengfeif@codeaurora.org, will.deacon@arm.com,
 dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 06/06/2019 13:54, Mark Rutland wrote:
> The arm64 stacktrace code is careful to only dereference frame records
> in valid stack ranges, ensuring that a corrupted frame record won't
> result in a faulting access.
> 
> However, it's still possible for corrupt frame records to result in
> infinite loops in the stacktrace code, which is also undesirable.
> 
> This patch ensures that we complete a stacktrace in finite time, by
> keeping track of which stacks we have already completed unwinding, and
> verifying that if the next frame record is on the same stack, it is at a
> higher address.

I see this truncate stacks when walking from the SDEI handler...


> diff --git a/arch/arm64/kernel/stacktrace.c b/arch/arm64/kernel/stacktrace.c
> index b00ec7d483d1..1c45b33c7474 100644
> --- a/arch/arm64/kernel/stacktrace.c
> +++ b/arch/arm64/kernel/stacktrace.c
> @@ -43,6 +43,8 @@
>  int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
>  {
>  	unsigned long fp = frame->fp;
> +	bool changed_stack = false;
> +	struct stack_info info;
>  
>  	if (fp & 0xf)
>  		return -EINVAL;
> @@ -50,12 +52,24 @@ int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
>  	if (!tsk)
>  		tsk = current;
>  
> -	if (!on_accessible_stack(tsk, fp, NULL))
> +	if (!on_accessible_stack(tsk, fp, &info))
>  		return -EINVAL;
>  
> +	if (test_bit(info.type, frame->stacks_done))
> +		return -EINVAL;
> +
> +	if (frame->stack_current != info.type) {
> +		set_bit(frame->stack_current, frame->stacks_done);
> +		frame->stack_current = info.type;
> +		changed_stack = true;
> +	}
> +
>  	frame->fp = READ_ONCE_NOCHECK(*(unsigned long *)(fp));
>  	frame->pc = READ_ONCE_NOCHECK(*(unsigned long *)(fp + 8));


> +	if (!changed_stack && frame->fp <= fp)
> +		return -EINVAL;

This is where it goes wrong. changed_stack is only true for the first frame on a newly
visited stack. This means for the last frame of the previous stack, (which must point to
the next stack), we still require 'frame->fp <= fp'.

It think like this just happens to be true for the irq stacks as they are allocated early.
(whereas the SDEI stacks are allocated late).


This hunk fixes it for me:
------------------------------------%<------------------------------------
diff --git a/arch/arm64/kernel/stacktrace.c b/arch/arm64/kernel/stacktrace.c
index 8a1fa90c784d..cb5dee233ede 100644
--- a/arch/arm64/kernel/stacktrace.c
+++ b/arch/arm64/kernel/stacktrace.c
@@ -43,7 +43,6 @@
 int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
 {
        unsigned long fp = frame->fp;
-       bool changed_stack = false;
        struct stack_info info;

        if (fp & 0xf)
@@ -61,14 +60,16 @@ int notrace unwind_frame(struct task_struct *tsk, struct stackframe
*frame)
        if (frame->stack_current != info.type) {
                set_bit(frame->stack_current, frame->stacks_done);
                frame->stack_current = info.type;
-               changed_stack = true;
        }

        frame->fp = READ_ONCE_NOCHECK(*(unsigned long *)(fp));
        frame->pc = READ_ONCE_NOCHECK(*(unsigned long *)(fp + 8));

-       if (!changed_stack && frame->fp <= fp)
-               return -EINVAL;
+       if (info.low <= frame->fp && frame->fp <= info.high) {
+               /* within stack bounds: the next frame must be older */
+               if (frame->fp <= fp)
+                       return -EINVAL;
+       }

 #ifdef CONFIG_FUNCTION_GRAPH_TRACER
        if (tsk->ret_stack &&
------------------------------------%<------------------------------------

I've given this kick with SDEI, perf and ftrace.
Let me know if its easier for me to post a v2 with all these bits assembled.

(If this is is picked onto arm64's for-next/core: The function_graph tracer works with
this series on v5.2-rc6, but it locks up on v5.2-rc4 even without this series.)


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
