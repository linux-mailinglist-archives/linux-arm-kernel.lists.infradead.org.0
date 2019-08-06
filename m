Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2BB837D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 19:25:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lIS/GOCxW+h4cMpAsgTTX224CLAHG4As2V2EMq0r4+g=; b=OB0w47GhDlkxXD
	5enBYV+Q31kcd4Pr3/lhY1W3h1K/uuHW7GVIj2XpXkgmtw9VNmuu5kt6eC+bcwXJQUoZAenZ05qfE
	XzICaZ2o1tOqZbhKPj8xjpzuXopK0hMyvCkACFu3CqNh6KZBn0XQux5P6nzkxxQMkrNSFOCo8v9lw
	Xi/aZcNANIdqzgxiO2xJt1BSeGGKd34b7USICmZdVy7s9Y9Ve79fqvi4O16m9q8ipWo90T0+AXNtd
	3qGhhXgmWYDahcb70fnSqia6+BwcRQN+kF6QHRhgC1dTZcgHDdymveGvP7gyTHyrh8U3r/vdSueYE
	CelixbUGX26J7gEaaQHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv3DG-00031S-UN; Tue, 06 Aug 2019 17:25:30 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv3D9-00030y-11
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 17:25:24 +0000
Received: by mail-pf1-x442.google.com with SMTP id t16so41838350pfe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 10:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=++FX/M76MkJ77Wmy6ZQS0b99NlwKRsO0LdWt36B9bDo=;
 b=eWzzE7nuUqqomzdRaZM4fbGQAsQ9CcWdhoShx2noBZxcc1DJ+7oJERIsTVprpW6Ium
 WrK9ML+WKEOGF8KZ2XARf7QTUspWfLJiYS6PVQNpGSTeE2Gy74nWuBYVKF4ILLL5h2Qz
 aJRG4k9Ueidxzse3Rx0HUDSIgNWEYBB6UbOMc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=++FX/M76MkJ77Wmy6ZQS0b99NlwKRsO0LdWt36B9bDo=;
 b=I3TeZr8cUJn3VFoVo/WvUID6KYdASwE9xnsdbUY2iFRTdwzRDhs7qtKx1WOvYQu7po
 ep0fvkU0r32bYF7YpdkygOrlTMNkPXHNGDptjaDQ88DYRM+bDapmseKlmiZO+hTJMjG0
 d3bQXr9wDBW+cbwqbNB8Wve+89LxMjGDydJQoBY1GOGJ3pWOpUWpSfEbGpKrk7ErNzJ+
 AHcP1sLbSVReRRrNb+gjkFc0lcpkxxPxHW5U3cxs+PJ2APMpDp1Ae904CMloBlB10Xbd
 HgMSbP/GXc69mUq0WtN+vuUXkBHXIWpbyyw+IUB3+ZOu5llvYuacWugqCCrlo1GrneMw
 wU5Q==
X-Gm-Message-State: APjAAAWDmza9QD8ogX0L97vZ3x/FUYRw0eH/aOo/X2Oskqh4ug4zJvYC
 JwIxDH/kE7rpe+ViQOrxuSc/Aw==
X-Google-Smtp-Source: APXvYqw7Yw+KCFeiI9FmWSl0UyWUYpyMNgU2fLsmddKSC41C0ESHrwbVq/zDVWULTJrLPuI9SAg/jA==
X-Received: by 2002:a63:6fc9:: with SMTP id k192mr3981375pgc.20.1565112321645; 
 Tue, 06 Aug 2019 10:25:21 -0700 (PDT)
Received: from localhost ([2620:15c:6:12:9c46:e0da:efbf:69cc])
 by smtp.gmail.com with ESMTPSA id r75sm112195247pfc.18.2019.08.06.10.25.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 10:25:20 -0700 (PDT)
Date: Tue, 6 Aug 2019 13:25:19 -0400
From: Joel Fernandes <joel@joelfernandes.org>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH v3] tracing: Function stack size and its name mismatch in
 arm64
Message-ID: <20190806172519.GD39951@google.com>
References: <20190802094103.163576-1-jiping.ma2@windriver.com>
 <20190802112259.0530a648@gandalf.local.home>
 <20190802120920.3b1f4351@gandalf.local.home>
 <20190802121124.6b41f26a@gandalf.local.home>
 <20190806154811.GB39951@google.com>
 <20190806123455.487ac02b@gandalf.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806123455.487ac02b@gandalf.local.home>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_102523_077760_CF5D443A 
X-CRM114-Status: GOOD (  36.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

On Tue, Aug 06, 2019 at 12:34:55PM -0400, Steven Rostedt wrote:
> On Tue, 6 Aug 2019 11:48:11 -0400
> Joel Fernandes <joel@joelfernandes.org> wrote:
> 
> 
> > > diff --git a/arch/arm64/include/asm/ftrace.h b/arch/arm64/include/asm/ftrace.h
> > > index 5ab5200b2bdc..13a4832cfb00 100644
> > > --- a/arch/arm64/include/asm/ftrace.h
> > > +++ b/arch/arm64/include/asm/ftrace.h
> > > @@ -13,6 +13,7 @@
> > >  #define HAVE_FUNCTION_GRAPH_FP_TEST
> > >  #define MCOUNT_ADDR		((unsigned long)_mcount)
> > >  #define MCOUNT_INSN_SIZE	AARCH64_INSN_SIZE
> > > +#define ARCH_RET_ADDR_AFTER_LOCAL_VARS 1
> > >  
> > >  #ifndef __ASSEMBLY__
> > >  #include <linux/compat.h>
> > > diff --git a/kernel/trace/trace_stack.c b/kernel/trace/trace_stack.c
> > > index 5d16f73898db..050c6bd9beac 100644
> > > --- a/kernel/trace/trace_stack.c
> > > +++ b/kernel/trace/trace_stack.c
> > > @@ -158,6 +158,18 @@ static void check_stack(unsigned long ip, unsigned long *stack)
> > >  			i++;
> > >  	}
> > >  
> > > +#ifdef ARCH_RET_ADDR_AFTER_LOCAL_VARS
> > > +	/*
> > > +	 * Most archs store the return address before storing the
> > > +	 * function's local variables. But some archs do this backwards.
> > > +	 */
> > > +	if (x > 1) {
> > > +		memmove(&stack_trace_index[0], &stack_trace_index[1],
> > > +			sizeof(stack_trace_index[0]) * (x - 1));
> > > +		x--;
> > > +	}
> > > +#endif
> > > +
> > >  	stack_trace_nr_entries = x;
> > >  
> > >  	if (task_stack_end_corrupted(current)) {  
> > 
> > 
> > I am not fully understanding the fix :(. If the positions of the data and
> > FP/LR are swapped, then there should be a loop of some sort where the FP/LR
> > are copied repeatedly to undo the mess we are discussing. But in this patch
> > I see only one copy happening. May be I just don't understand this code well
> > enough. Are there any more clues for helping understand the fix?
> 
> Here's the best way to explain this. The code is using the stack trace
> to figure out which function is the stack hog. Or perhaps a serious of
> stack hogs. On x86, a call stores the return address as it calls the
> next function. Then that function allocates its stack frame for its
> local variables and saving of registers.

This makes perfect sense, (probably also makes sense to push this whole
explanation into either the changelog or the kernel documentation)

Thanks a lot, Steve!

 - Joel



> on x86:
> 
> [ top of stack ]
>  0: sys call entry frame
> 10: return addr to entry code
> 11: start of sys_foo frame
> 20: return addr to sys_foo
> 21: start of kernel_func_bar frame
> 30: return addr to kernel_func_bar
> 31: [ do trace stack here ]
> 
> 
> Then we do a save_stack_trace which returns the addresses of the
> functions it finds. Which would be (from the bottom of the stack to the
> top)
> 
>   return addr to kernel_func_bar
>   return addr to sys_foo
>   return addr to entry code
> 
> What we do here is try to figure out how much stack each of theses
> functions have. So we loop through the stack looking for the addresses
> returned by the save_stack trace, and see where on the stack this is.
> This gives us:
> 
>   return addr to kernel_func_bar [ 30 ]
>   return addr to sys_foo         [ 20 ]
>   return addr to entry frame     [ 10 ]
> 
> From this, we can conclude (on x86) that the size of the stack used for
> kernel_func_bar is 30 - 20 = 10. Because on the stack we have:
> 
> 20: return addr to sys_foo
> 21: start of kernel_func_bar frame  <<-- kernel_func_bar stack frame
> 30: return addr to kernel_func_bar
> 
> 
> Now, what Jiping reported, is that on arm64, it saves the link register
> (the return address) when it is needed to, which is after the stack
> frame for the current function has been saved. That means we have
> something that looks like this:
> 
> on arm64:
> 
> [ top of stack ]
>  0: sys call entry frame
> 10: start of sys_foo_frame
> 19: return addr to entry code << lr saved before calling kern_func_bar
> 20: start of kernel_func_bar frame
> 29: return addr to sys_foo_frame << lr saved before calling next function
> 30: [ do trace stack here ]
> 
> Now, I have a question. To call the mcount code (ftrace and the stack
> tracing), you need to save the return address of kern_func_bar
> somewhere, otherwise the call to mcount will overwrite the lr. But
> let's say it does and then forgets it, so we have:
> 
> 30: return addr of kernel_func_bar frame
> 31: [ do trace stack here ]
> 
> Now save_stack_trace gives us the same result:
> 
>  return addr to kernel_func bar
>  return addr to sys_foo
>  return addr to entry frame
> 
> But we get a different result when finding them in the location of the
> stack.
> 
>  return addr to kernel_func_bar [ 30 ]
>  return addr to sys foo         [ 29 ]
>  return addr to entry frame     [ 19 ]
> 
> The simple subtractions will be off:
> 
> kernel_func_bar stack size = 30 - 29 = 1
> Or even, sys_foo 29 - 19 = 10, but if we look at the stack:
> 
> 10: start of sys_foo_frame
> 19: return addr to entry_code
> 20: start of kernel_func_bar frame
> 29: return addr to sys_foo
> 
> We are measuring the kernel_func_bar frame for sys_foo!
> 
> We are off by one here.
> 
> stack_trace_index[] is an array of the offsets mapping to the function
> return addresses found. If we shift it by one, then we then sync the
> functions found with their frames:
> 
> stack_trace_index[0] = 30
> stack_trace_index[1] = 29
> stack_trace_index[2] = 19
> 
> 		memmove((&stack_trace_index[0], &stack_trace_index[1],
> 			sizeof(stack_trace_index[0]) * (x - 1));
> 
> Makes that:
> 
> stack_trace_index[0] = 29
> stack_trace_index[1] = 19
> 
> And we do x-- to lose the last frame.
> 
> With the stack_dump_trace being:
> 
> stack_dump_trace[0] = return addr kernel_func_bar
> stack_dump_trace[1] = return addr sys_foo
> 
> we then match which frame size belongs to which function better.
> 
> 
> > 
> > Also, this stack trace loop (original code) is a bit hairy :) It appears
> > there is a call to stack_trace_save() followed by another loop that goes
> > through the returned entries from there and tries to generate a set of
> > indexes. Isn't the real issue that the entries returned by stack_trace_save()
> > are a out of whack? I am curious also if other users of stack_trace_save()
> > will suffer from the same issue.
> 
> No, the order is fine. The issue is that we are using the location of
> the return address in the stack to find out what function has the
> biggest stack usage, and our assumption for arm64 is incorrect in that
> location.
> 
> -- Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
