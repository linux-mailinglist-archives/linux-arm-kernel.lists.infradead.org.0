Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB80983599
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 17:48:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wylowx4lCfRNaoyG0lPIK16Cl3pHyjk1CKfoHZzLTYU=; b=Ay1QXw8QE7FluN
	Kn04mZZBgu1qyEUMTUpwEY7dKqRveFDF36M8eI2IxOy7oP4nNo5bUtwefZhMa7FFmfOZYwd/bsopc
	I06eAVw7/9b2BgfBOMNMhr35lzH3qPFAnr0rE3D6EI7jqpw7f0vGl88XUhB3HeHGwfsVcpTZN1+bp
	ftq+0N+EFlptyyr2q0TozgNfpH9Xc7+kysG3xKUURkE2pw3bapH2Eaiqxq6zJ/GMwANMCWEMGhF0O
	pmoHR5lWOUtoTvRnxU/7ewKGYOMoUxsP3zy88zuvq9IbwNLi5OQXR2WrHX2eBkGHuWPMKlgSkqG05
	bsjV5jAtE1gDXG7RMQ9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv1hL-0008E8-5T; Tue, 06 Aug 2019 15:48:27 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv1h8-0008Di-ED
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 15:48:15 +0000
Received: by mail-pg1-x543.google.com with SMTP id i18so41809170pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 08:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3PRJIP91/AQ/oyHrXd4NPkQ8KybghYi4upuqcJUjSbQ=;
 b=DHDWmi6dSuFjRnennVT95S4pXEJ37oOBjcfvuwJF56/1dOiRdLLJ+qxk198MtfGcAv
 27dc158ZXVmSzEUSDiFJkkcdy9kW+jPXcaujqMWSpJs5pyYQGcMSSF+8sAIRFJE4oLip
 AoqvDJ71rBS6FAf9wA+jadrC45BYOJUa/z1KA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3PRJIP91/AQ/oyHrXd4NPkQ8KybghYi4upuqcJUjSbQ=;
 b=QCKcfowu0IT4b0Fp17IAYKBy0d/eXYVTROwXwPoU0uYN1+CvhGaPaH6lNdILhJqkfH
 yLLh2RkLPlb9KxWDGJ2t2BwN7fdlpwo+UhHu774kNSR0Hr85y7BuPI8xp4/eTscpnB/v
 PR0Y8+b9FboEFyXxUk4AXurBcC74HkU6ZW4eiKWaCjVo8NRFRr8uDjV/3mtYW6FsmR1z
 F5FrIJKj5wXFllST5++eurcM4LvDw9MrZflqydvTiO9H2kSCD1kSCb7e8BLmQKZoIk/E
 YakJRS2keR1EHACpMkbM2yzhqH3AvWs74YHg0x8H/Jsb4FRc6TdPNNZerCfhhfbL02yF
 nd7A==
X-Gm-Message-State: APjAAAV+eOMZwm/3Miw1RcncuOmB/suxX7NRZ5jDLotFf1tZ/1A3qzLZ
 SxREnyLkSbltmLFAt7JRL9XN60uaVLU=
X-Google-Smtp-Source: APXvYqwRBTUwdJjZqywEVj3R4ki4ntt43ZMkU8pP14OJ3NdosvZLrmuW9LtRkaKzaK3TaSfW6a4Iag==
X-Received: by 2002:aa7:9293:: with SMTP id j19mr4520097pfa.90.1565106493576; 
 Tue, 06 Aug 2019 08:48:13 -0700 (PDT)
Received: from localhost ([2620:15c:6:12:9c46:e0da:efbf:69cc])
 by smtp.gmail.com with ESMTPSA id t96sm20287354pjb.1.2019.08.06.08.48.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 08:48:12 -0700 (PDT)
Date: Tue, 6 Aug 2019 11:48:11 -0400
From: Joel Fernandes <joel@joelfernandes.org>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH v3] tracing: Function stack size and its name mismatch in
 arm64
Message-ID: <20190806154811.GB39951@google.com>
References: <20190802094103.163576-1-jiping.ma2@windriver.com>
 <20190802112259.0530a648@gandalf.local.home>
 <20190802120920.3b1f4351@gandalf.local.home>
 <20190802121124.6b41f26a@gandalf.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802121124.6b41f26a@gandalf.local.home>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_084814_492303_E82DAE8A 
X-CRM114-Status: GOOD (  23.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Fri, Aug 02, 2019 at 12:11:24PM -0400, Steven Rostedt wrote:
> On Fri, 2 Aug 2019 12:09:20 -0400
> Steven Rostedt <rostedt@goodmis.org> wrote:
> 
> > On Fri, 2 Aug 2019 11:22:59 -0400
> > Steven Rostedt <rostedt@goodmis.org> wrote:
> > 
> > > I think you are not explaining the issue correctly. From looking at the
> > > document, I think what you want to say is that the LR is saved *after*
> > > the data for the function. Is that correct? If so, then yes, it would
> > > cause the stack tracing algorithm to be incorrect.
> > > 
> > 
> > [..]
> > 
> > > Can someone confirm that this is the real issue?
> > 
> > Does this patch fix your issue?
> >
> 
> Bah, I hit "attach" instead of "insert" (I wondered why it didn't
> insert). Here's the patch without the attachment.
> 
> -- Steve
> 
> diff --git a/arch/arm64/include/asm/ftrace.h b/arch/arm64/include/asm/ftrace.h
> index 5ab5200b2bdc..13a4832cfb00 100644
> --- a/arch/arm64/include/asm/ftrace.h
> +++ b/arch/arm64/include/asm/ftrace.h
> @@ -13,6 +13,7 @@
>  #define HAVE_FUNCTION_GRAPH_FP_TEST
>  #define MCOUNT_ADDR		((unsigned long)_mcount)
>  #define MCOUNT_INSN_SIZE	AARCH64_INSN_SIZE
> +#define ARCH_RET_ADDR_AFTER_LOCAL_VARS 1
>  
>  #ifndef __ASSEMBLY__
>  #include <linux/compat.h>
> diff --git a/kernel/trace/trace_stack.c b/kernel/trace/trace_stack.c
> index 5d16f73898db..050c6bd9beac 100644
> --- a/kernel/trace/trace_stack.c
> +++ b/kernel/trace/trace_stack.c
> @@ -158,6 +158,18 @@ static void check_stack(unsigned long ip, unsigned long *stack)
>  			i++;
>  	}
>  
> +#ifdef ARCH_RET_ADDR_AFTER_LOCAL_VARS
> +	/*
> +	 * Most archs store the return address before storing the
> +	 * function's local variables. But some archs do this backwards.
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


I am not fully understanding the fix :(. If the positions of the data and
FP/LR are swapped, then there should be a loop of some sort where the FP/LR
are copied repeatedly to undo the mess we are discussing. But in this patch
I see only one copy happening. May be I just don't understand this code well
enough. Are there any more clues for helping understand the fix?

Also, this stack trace loop (original code) is a bit hairy :) It appears
there is a call to stack_trace_save() followed by another loop that goes
through the returned entries from there and tries to generate a set of
indexes. Isn't the real issue that the entries returned by stack_trace_save()
are a out of whack? I am curious also if other users of stack_trace_save()
will suffer from the same issue.

thanks,

 - Joel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
