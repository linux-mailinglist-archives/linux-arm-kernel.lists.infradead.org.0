Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5AD486B3B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 22:17:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VCydnMfj0HrMNc8tpBC+x4uy697SHdX+FizAKK26Wos=; b=WTjr4+bffFs+I3
	uF9kHIKMBXV2xejOEPJHXJ7tY0bDH3HahtPHrmC5cRBpxdsqcK0hyYUQoywqCOI+nu2k3XMgWFcj4
	Z1BM74a9xbnzdcIHuHpM3pHfqJnXAD267X75l3LL2Mr9ZhpZf4dvWsr0xVYXAPXYTXnveCUE72tOb
	rmqCL47BUchTT2+iFCdVSmUIgKe0Wn+9lt+sRA1Sg/X/6VkLqO2GVGbi7dRmOnP2+ZbOifreMD25+
	odTFoZSichk3/WTPcXJBuhvZZPOUsWNyASToI/mvGE/DvT6oSEOGIMnK7r3VdKIN9o1pvFFRR5XFM
	yl5bDrdvgvIk6y/mI2/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvoqX-0006wd-Vu; Thu, 08 Aug 2019 20:17:14 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvoqP-0006vz-JV
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 20:17:07 +0000
Received: by mail-pl1-x641.google.com with SMTP id m12so5380211plt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 13:17:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5f4CqgEOBdU1sAWH2G9u22gyRYPbta1aig+V48mAphg=;
 b=K0fHDV/c6bvsC0qLSvpocXZbNgQfks/MdnquDqwksf7dhTD98RI4nANdKdU4EkY24x
 0olhK/GhPbPPex9HnYXSj8j7OF0HgwYuSQJmcgDQq/Uj5scHAI+ui2G2tvoM9Lzudw5h
 5XilgXJpwsOHsGXXb4xvQbuSxUu1T3VWv/b6o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5f4CqgEOBdU1sAWH2G9u22gyRYPbta1aig+V48mAphg=;
 b=c9VihY+7ZA2HxN412NhebJfLYXKA3cuWL23rH+Zw1c/u7zqx0Iq2Z30o4oc9XFrus7
 2ht/U+oCHHc3KKAH2mK06Ebm91fVf44wpYqIPPfzhlF/Kmh694qrUwxiLpLYX4ZGqPpf
 Uwo8C/Z8JhNUO1yY4NxJuVFQ9OWCOndDB0RaeC895YkJ9DGkumI3l3EPON411V33G+o1
 h4kcgmXbSlMjVrxyTM1bjRxo98RaG6lQ6/vMrKFkpOf0WwjM6PIhiaO5pSIyCA+O6+Ox
 hoFmNbhE9TQ7XQgYo1HNH4ORjHg9UNaXOvbrtf5eB3/3pwUJk5AiFdlwq2Uj7v1Tu2lH
 xmhA==
X-Gm-Message-State: APjAAAWjymds/AycS4KdLL/SUZUezl0ketNaupmjVd748T/9kXGmbLvp
 guBZt+ofFKalC0AmupN3BeVouA==
X-Google-Smtp-Source: APXvYqws/0AbAFRQrpc39ivMkiU/nNnCNzDeEutw3lh4sdHQxYIsAE9EYG1zanM54XVWwO1sxMytHg==
X-Received: by 2002:a17:902:9004:: with SMTP id
 a4mr15566437plp.109.1565295424221; 
 Thu, 08 Aug 2019 13:17:04 -0700 (PDT)
Received: from localhost ([2620:15c:6:12:9c46:e0da:efbf:69cc])
 by smtp.gmail.com with ESMTPSA id cx22sm2915882pjb.25.2019.08.08.13.17.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 13:17:03 -0700 (PDT)
Date: Thu, 8 Aug 2019 16:17:02 -0400
From: Joel Fernandes <joel@joelfernandes.org>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH 2/2 v2] tracing: Document the stack trace algorithm in
 the comments
Message-ID: <20190808201702.GF261256@google.com>
References: <20190807172826.352574408@goodmis.org>
 <20190807172907.310138647@goodmis.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807172907.310138647@goodmis.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_131705_646954_9326A90C 
X-CRM114-Status: GOOD (  26.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jiping Ma <jiping.ma2@windriver.com>, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 01:28:28PM -0400, Steven Rostedt wrote:
> From: "Steven Rostedt (VMware)" <rostedt@goodmis.org>
> 
> As the max stack tracer algorithm is not that easy to understand from the
> code, add comments that explain the algorithm and mentions how
> ARCH_RET_ADDR_AFTER_LOCAL_VARS affects it.
> 
> Link: http://lkml.kernel.org/r/20190806123455.487ac02b@gandalf.local.home
> 

Acked-by: Joel Fernandes (Google) <joel@joelfernandes.org>

thanks!!

- Joel


> Suggested-by: Joel Fernandes <joel@joelfernandes.org>
> Signed-off-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
> ---
>  kernel/trace/trace_stack.c | 98 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 98 insertions(+)
> 
> diff --git a/kernel/trace/trace_stack.c b/kernel/trace/trace_stack.c
> index 40e4a88eea8f..f94a2fc567de 100644
> --- a/kernel/trace/trace_stack.c
> +++ b/kernel/trace/trace_stack.c
> @@ -53,6 +53,104 @@ static void print_max_stack(void)
>  	}
>  }
>  
> +/*
> + * The stack tracer looks for a maximum stack at each call from a function. It
> + * registers a callback from ftrace, and in that callback it examines the stack
> + * size. It determines the stack size from the variable passed in, which is the
> + * address of a local variable in the stack_trace_call() callback function.
> + * The stack size is calculated by the address of the local variable to the top
> + * of the current stack. If that size is smaller than the currently saved max
> + * stack size, nothing more is done.
> + *
> + * If the size of the stack is greater than the maximum recorded size, then the
> + * following algorithm takes place.
> + *
> + * For architectures (like x86) that store the function's return address before
> + * saving the function's local variables, the stack will look something like
> + * this:
> + *
> + *   [ top of stack ]
> + *    0: sys call entry frame
> + *   10: return addr to entry code
> + *   11: start of sys_foo frame
> + *   20: return addr to sys_foo
> + *   21: start of kernel_func_bar frame
> + *   30: return addr to kernel_func_bar
> + *   31: [ do trace stack here ]
> + *
> + * The save_stack_trace() is called returning all the functions it finds in the
> + * current stack. Which would be (from the bottom of the stack to the top):
> + *
> + *   return addr to kernel_func_bar
> + *   return addr to sys_foo
> + *   return addr to entry code
> + *
> + * Now to figure out how much each of these functions' local variable size is,
> + * a search of the stack is made to find these values. When a match is made, it
> + * is added to the stack_dump_trace[] array. The offset into the stack is saved
> + * in the stack_trace_index[] array. The above example would show:
> + *
> + *        stack_dump_trace[]        |   stack_trace_index[]
> + *        ------------------        +   -------------------
> + *  return addr to kernel_func_bar  |          30
> + *  return addr to sys_foo          |          20
> + *  return addr to entry            |          10
> + *
> + * The print_max_stack() function above, uses these values to print the size of
> + * each function's portion of the stack.
> + *
> + *  for (i = 0; i < nr_entries; i++) {
> + *     size = i == nr_entries - 1 ? stack_trace_index[i] :
> + *                    stack_trace_index[i] - stack_trace_index[i+1]
> + *     print "%d %d %d %s\n", i, stack_trace_index[i], size, stack_dump_trace[i]);
> + *  }
> + *
> + * The above shows
> + *
> + *     depth size  location
> + *     ----- ----  --------
> + *  0    30   10   kernel_func_bar
> + *  1    20   10   sys_foo
> + *  2    10   10   entry code
> + *
> + * Now for architectures that might save the return address after the functions
> + * local variables (saving the link register before calling nested functions),
> + * this will cause the stack to look a little different:
> + *
> + * [ top of stack ]
> + *  0: sys call entry frame
> + * 10: start of sys_foo_frame
> + * 19: return addr to entry code << lr saved before calling kernel_func_bar
> + * 20: start of kernel_func_bar frame
> + * 29: return addr to sys_foo_frame << lr saved before calling next function
> + * 30: [ do trace stack here ]
> + *
> + * Although the functions returned by save_stack_trace() may be the same, the
> + * placement in the stack will be different. Using the same algorithm as above
> + * would yield:
> + *
> + *        stack_dump_trace[]        |   stack_trace_index[]
> + *        ------------------        +   -------------------
> + *  return addr to kernel_func_bar  |          30
> + *  return addr to sys_foo          |          29
> + *  return addr to entry            |          19
> + *
> + * Where the mapping is off by one:
> + *
> + *   kernel_func_bar stack frame size is 29 - 19 not 30 - 29!
> + *
> + * To fix this, if the architecture sets ARCH_RET_ADDR_AFTER_LOCAL_VARS the
> + * values in stack_trace_index[] are shifted by one to and the number of
> + * stack trace entries is decremented by one.
> + *
> + *        stack_dump_trace[]        |   stack_trace_index[]
> + *        ------------------        +   -------------------
> + *  return addr to kernel_func_bar  |          29
> + *  return addr to sys_foo          |          19
> + *
> + * Although the entry function is not displayed, the first function (sys_foo)
> + * will still include the stack size of it.
> + */
>  static void check_stack(unsigned long ip, unsigned long *stack)
>  {
>  	unsigned long this_size, flags; unsigned long *p, *top, *start;
> -- 
> 2.20.1
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
