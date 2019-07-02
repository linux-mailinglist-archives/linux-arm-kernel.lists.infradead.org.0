Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 829535CCB1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 11:34:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s/P20I4bt/TKhtyw4OqRlqmGoD+exgYTQGQtaY9Ni64=; b=MiGhXanCA7KWec
	2SNlp8GIRElGHIX8ieIY48yqZygQSJZrCwn/56yY+nHc+DXIuuIw3neLmJiHmRPz2YVE73LM6s4XJ
	Iva5o3c2KeupyznSjM6Ro3gD04b3gS1rAvw2kTB0pyfscZHa7cA5r68l/ZMdiYrQShR/vJ2xWMGYX
	kPGLvM9UKhse/4cA8nfv1NTFTSyqEo4yTqMv3UL1Lzz98vdnXiO4zd9t00+hH72nzM9Kt7BTytB/F
	Dpfhu9h4+Oig6e6jIZPwaSnlclismwZI6solaU9NHRx/TJHBAZmN05JYHd4i38xlSJbXQQyZKyaAg
	T8iAgh0B+A09nhpmYQAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiFB8-0005MH-7C; Tue, 02 Jul 2019 09:34:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiFAl-0005LR-Dx
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 09:34:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D2377344;
 Tue,  2 Jul 2019 02:33:53 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E315D3F718;
 Tue,  2 Jul 2019 02:33:52 -0700 (PDT)
Subject: Re: [PATCHv2 3/3] arm64: stacktrace: better handle corrupted stacks
To: Mark Rutland <mark.rutland@arm.com>
References: <20190628154639.5308-1-mark.rutland@arm.com>
 <20190628154639.5308-4-mark.rutland@arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <caffff42-3a37-bb28-25a4-c0c79289e15f@arm.com>
Date: Tue, 2 Jul 2019 10:33:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190628154639.5308-4-mark.rutland@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_023359_561703_6EE55253 
X-CRM114-Status: GOOD (  19.17  )
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

On 28/06/2019 16:46, Mark Rutland wrote:
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


> diff --git a/arch/arm64/include/asm/stacktrace.h b/arch/arm64/include/asm/stacktrace.h
> index 18f90bf1385c..938b96ba1f0f 100644
> --- a/arch/arm64/include/asm/stacktrace.h
> +++ b/arch/arm64/include/asm/stacktrace.h
> @@ -47,6 +41,17 @@ struct stack_info {
>  	enum stack_type type;
>  };
>  
> +struct stackframe {
> +	unsigned long fp;
> +	unsigned long pc;

> +#ifdef CONFIG_FUNCTION_GRAPH_TRACER
> +	int graph;
> +#endif

(Could we get rid of this #ifdef? It just prevents us using IS_ENABLED() elsewhere)


> +	DECLARE_BITMAP(stacks_done, __NR_STACK_TYPES);
> +	unsigned long prev_fp;
> +	enum stack_type prev_type;
> +};
> +
>  extern int unwind_frame(struct task_struct *tsk, struct stackframe *frame);
>  extern void walk_stackframe(struct task_struct *tsk, struct stackframe *frame,
>  			    int (*fn)(struct stackframe *, void *), void *data);


> diff --git a/arch/arm64/kernel/stacktrace.c b/arch/arm64/kernel/stacktrace.c
> index e5338216deaa..2e4b59e10e71 100644
> --- a/arch/arm64/kernel/stacktrace.c
> +++ b/arch/arm64/kernel/stacktrace.c
> @@ -43,6 +43,7 @@
>  int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
>  {
>  	unsigned long fp = frame->fp;
> +	struct stack_info info, prev_info;
>  
>  	if (fp & 0xf)
>  		return -EINVAL;
> @@ -50,11 +51,23 @@ int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
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
> +	if (info.type == frame->prev_type) {
> +		if (fp <= frame->prev_fp)
> +			return -EINVAL;
> +	} else {

> +		set_bit(prev_info.type, frame->stacks_done);

What is prev_info for? This looks like we're setting $uninitialised_stack bit.


> +	}
> +
>  	frame->fp = READ_ONCE_NOCHECK(*(unsigned long *)(fp));
>  	frame->pc = READ_ONCE_NOCHECK(*(unsigned long *)(fp + 8));
> +	frame->prev_fp = fp;
> +	frame->prev_type = info.type;


With prev_info, this doesn't boot when lockdep is enabled. The pre-linear-map stacktrace
calls generate bad addresses and we panic() before earlycon.

With that set_bit() line changed to read:
|		set_bit(frame->prev_type, frame->stacks_done);

this works with perf and ftrace, and stepping off the sdei stack.

Reviewed-by: James Morse <james.morse@arm.com>
Tested-by: James Morse <james.morse@arm.com>


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
