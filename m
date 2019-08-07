Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F00D85390
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 21:29:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BzAwYs63j4K4taaGhqDcQPXVozR7ItS+kwS9u50YCS0=; b=PM+hTuOuIWI8fj
	ZUCqsAQ8DiNySzWvS9X85jq65GF+4nv73VOuro8I7WbxmL9O6c3hQ/69wQKClNXDdxKPGuQTiQGWR
	w893BkHr5Q7q2JNS1H5UVBnF99SU+NC0N7geYsqjqljkMl6bEcmiUfDc9qImKA4Bmx7wgR0AwP1vq
	2KqPwuNBbee2TGmlnP2hmFQpiXLKMsK+Q4KolxosuBLVlcnfU89/JrnX+hjUxWNZJCM7I9edA9Qd7
	95yXT9s2b4szKgjqmi4jvJ11oXOT+3Zso7fmYWpLvXA6SMqEjnK9Sh1Bt3rsA9YwUpa4YQcC+/BoB
	brmRp/Z/BM5DRAeDkiGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvRcr-00079h-G7; Wed, 07 Aug 2019 19:29:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvRcc-00079I-Lp
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 19:29:20 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3129D2086D;
 Wed,  7 Aug 2019 19:29:17 +0000 (UTC)
Date: Wed, 7 Aug 2019 15:29:15 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2 v2] tracing/arm64: Have max stack tracer handle the
 case of return address after data
Message-ID: <20190807152915.6ee412b1@gandalf.local.home>
In-Reply-To: <20190807172907.155165959@goodmis.org>
References: <20190807172826.352574408@goodmis.org>
 <20190807172907.155165959@goodmis.org>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_122918_750101_D7E40A08 
X-CRM114-Status: GOOD (  22.66  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Jiping Ma <jiping.ma2@windriver.com>, Mark Rutland <mark.rutland@arm.com>,
 catalin.marinas@arm.com, will.deacon@arm.com, mingo@redhat.com,
 Joel Fernandes <joel@joelfernandes.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


[ I should have added Mark as Cc ]

Dear ARM64 folks,

Are you OK with this patch set?

If so, please ACK.

Should it be marked for stable?

Hmm, I'm starting to think not.

-- Steve


On Wed, 07 Aug 2019 13:28:27 -0400
Steven Rostedt <rostedt@goodmis.org> wrote:

> From: "Steven Rostedt (VMware)" <rostedt@goodmis.org>
> 
> Most archs (well at least x86) store the function call return address on the
> stack before storing the local variables for the function. The max stack
> tracer depends on this in its algorithm to display the stack size of each
> function it finds in the back trace.
> 
> Some archs (arm64), may store the return address (from its link register)
> just before calling a nested function. There's no reason to save the link
> register on leaf functions, as it wont be updated. This breaks the algorithm
> of the max stack tracer.
> 
> Add a new define ARCH_RET_ADDR_AFTER_LOCAL_VARS that an architecture may set
> if it stores the return address (link register) after it stores the
> function's local variables, and have the stack trace shift the values of the
> mapped stack size to the appropriate functions.
> 
> Link: 20190802094103.163576-1-jiping.ma2@windriver.com
> 
> Reported-by: Jiping Ma <jiping.ma2@windriver.com>
> Signed-off-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
> ---
>  arch/arm64/include/asm/ftrace.h | 13 +++++++++++++
>  kernel/trace/trace_stack.c      | 14 ++++++++++++++
>  2 files changed, 27 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/ftrace.h b/arch/arm64/include/asm/ftrace.h
> index 5ab5200b2bdc..961e98618db4 100644
> --- a/arch/arm64/include/asm/ftrace.h
> +++ b/arch/arm64/include/asm/ftrace.h
> @@ -14,6 +14,19 @@
>  #define MCOUNT_ADDR		((unsigned long)_mcount)
>  #define MCOUNT_INSN_SIZE	AARCH64_INSN_SIZE
>  
> +/*
> + * Currently, gcc tends to save the link register after the local variables
> + * on the stack. This causes the max stack tracer to report the function
> + * frame sizes for the wrong functions. By defining
> + * ARCH_RET_ADDR_AFTER_LOCAL_VARS, it will tell the stack tracer to expect
> + * to find the return address on the stack after the local variables have
> + * been set up.
> + *
> + * Note, this may change in the future, and we will need to deal with that
> + * if it were to happen.
> + */
> +#define ARCH_RET_ADDR_AFTER_LOCAL_VARS 1
> +
>  #ifndef __ASSEMBLY__
>  #include <linux/compat.h>
>  
> diff --git a/kernel/trace/trace_stack.c b/kernel/trace/trace_stack.c
> index 5d16f73898db..40e4a88eea8f 100644
> --- a/kernel/trace/trace_stack.c
> +++ b/kernel/trace/trace_stack.c
> @@ -158,6 +158,20 @@ static void check_stack(unsigned long ip, unsigned long *stack)
>  			i++;
>  	}
>  
> +#ifdef ARCH_RET_ADDR_AFTER_LOCAL_VARS
> +	/*
> +	 * Some archs will store the link register before calling
> +	 * nested functions. This means the saved return address
> +	 * comes after the local storage, and we need to shift
> +	 * for that.
> +	 */
> +	if (x > 1) {
> +		memmove(&stack_trace_index[0], &stack_trace_index[1],
> +			sizeof(stack_trace_index[0]) * (x - 1));
> +		x--;
> +	}
> +#endif
> +
>  	stack_trace_nr_entries = x;
>  
>  	if (task_stack_end_corrupted(current)) {


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
