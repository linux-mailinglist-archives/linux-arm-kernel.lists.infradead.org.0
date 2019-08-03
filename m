Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C46780547
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 10:27:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L+le2Rrxv4now+6CbWWhdnP39+rR/tKXRFHxpsCFTjI=; b=YvGCXemB6FFlSD
	cuERVAAnoYs7QG9aeYZqXarzkAWtSwYAQPStYRtYb2ltcbl1sLmQOAxuIO6j3xi257bKsRuoNmGhM
	zc+dZuH2pVggiWpWcgp05Ysi64irX5AXOldBM0kgIurfc0KAuetoOsqoo6S3piIy5y16KC9BTlnfw
	kpa9lkLPl1MEUDgoc6CZxsqi9g001q5hmB4xvBEis95DE4HXWVKDTGKhltR0f9xM4QLpR25+fDnt8
	JHhAf+SfSO4wmN/N2FmOwlSxnY0KAZmk1o63N9LE8L9EumqCQIUdq9BzFbe9d7GzaTpWWMr5c+2JW
	/8wW9/kRiKe2AW+BHndQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htpNS-0006ui-Lu; Sat, 03 Aug 2019 08:26:58 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htpNH-0006uO-0F
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 08:26:48 +0000
Received: by mail-pg1-x541.google.com with SMTP id n4so1936218pgv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 03 Aug 2019 01:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=84B35mYLGpI4HbvVXnngFYN2QdTPC6BiOGyowB6xoe0=;
 b=hv6lLJ2dsXIn1HZjuQZlUWnyE+q0lPKhwfX4qdRJxgnQrFh6kWLMibRXRYtdNwDhs/
 N7IgPWMVP2/34O3OW1alQEXJlSIGgG2KHoUUDXw90j0dD7v6Y6/HxzdjBqJloZESDj6p
 1OXgQozQ8LMAud/fmXVdJvBMnZ2bFpo01gUYQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=84B35mYLGpI4HbvVXnngFYN2QdTPC6BiOGyowB6xoe0=;
 b=R2eaPNXeVp+Fw7nkheMmrlcfkTGrzdZnDayu3h3qh+HQoWYfyz42U/sjUhg7uW0d7h
 bEK8RBXRl39xJv/1WGPEPYxdB47jcAPfgdDfYJzOPEYMC65mKoxdTvheGouEs4VaVF3p
 g+tFS83a+PjmVtv/tsEOLRU5+sj/dG9S1iOHYI3g+DLmWrJrBmAIngl+KvgXu5FW2nfL
 MJOPX6W7UuIR2hDnHGVts8sN/6q+CKJUYmKC7f6iuofX43ItXz4fj797ME99eGBplc3q
 nScMccwl10PJ4xlY1UuYu24hcBza+/84TPfeMkZ5PiahpQn7D4X+vXEBAPXTt5pfseSw
 OSxw==
X-Gm-Message-State: APjAAAWzWIQJdpkfqoknwy+9Q5etHubMwot9483gNGil5DA5t5sgIVfa
 D4dh9IjkvTmsO+3p6wNYlS0=
X-Google-Smtp-Source: APXvYqzVhrfEZH3yCKb4iPGox1AjSAcanSCCqemhI9Hzd8JO3s3Up7xfmPzxM8YS2zFAfoyUcIma0w==
X-Received: by 2002:aa7:8383:: with SMTP id u3mr63828857pfm.175.1564820805502; 
 Sat, 03 Aug 2019 01:26:45 -0700 (PDT)
Received: from localhost ([2620:15c:6:12:9c46:e0da:efbf:69cc])
 by smtp.gmail.com with ESMTPSA id a21sm86317497pfi.27.2019.08.03.01.26.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 03 Aug 2019 01:26:44 -0700 (PDT)
Date: Sat, 3 Aug 2019 04:26:42 -0400
From: Joel Fernandes <joel@joelfernandes.org>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH v3] tracing: Function stack size and its name mismatch in
 arm64
Message-ID: <20190803082642.GA224541@google.com>
References: <20190802094103.163576-1-jiping.ma2@windriver.com>
 <20190802112259.0530a648@gandalf.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802112259.0530a648@gandalf.local.home>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_012647_063503_72CD0AA5 
X-CRM114-Status: GOOD (  24.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 02, 2019 at 11:22:59AM -0400, Steven Rostedt wrote:
[snip]
> > There is not PC in ARM64 stack, LR is used to for walk_stackframe in
> > ARM64. Tere is no the issue in ARM32 because there is PC in ARM32 stack.
> > PC is used to calculate the stack size in trace_stack.c, so the
> > function name and its stack size appear to be off-by-one.
> > ARM64 stack layout:
> > 	LR
> >         FP
> >         ......
> >         LR
> >         FP
> >         ......
> 
> I think you are not explaining the issue correctly. From looking at the
> document, I think what you want to say is that the LR is saved *after*
> the data for the function. Is that correct? If so, then yes, it would
> cause the stack tracing algorithm to be incorrect.
> 
> Most archs do this:
> 
> On entry to a function:
> 
> 	save return address
>  	reserve local variables and such for current function
> 
> I think you are saying that arm64 does this backwards.
> 
> 	reserve local variables and such for current function
> 	save return address (LR)

Actually for arm64 it is like what you said about 'Most archs'. It saves FP
and LR first onto the current stack frame, then assigns the top of the stack
to FP (marking the new frame). Then executes branch-link, and then allocates
space to variables on stack in the callee.

Disassembly of prog:

int foo(int x, int y) {
	int a[32];
        return (x + y + a[31]);
}

int bar(void) {
        foo(1, 2);
}

confirms it:

000000000000073c <bar>:
 73c:   a9bf7bfd        stp     x29, x30, [sp, #-16]! <-- save FP and LR
 740:   910003fd        mov     x29, sp		      <-- create new FP 
 744:   52800041        mov     w1, #0x2              <-- pass arguments
 748:   52800020        mov     w0, #0x1 
 74c:   97fffff4        bl      71c <foo>             <-- branch (sets LR)
 750:   d503201f        nop
 754:   a8c17bfd        ldp     x29, x30, [sp], #16   <-- restore FP, LR
 758:   d65f03c0        ret

000000000000071c <foo>:
 71c:   d10243ff        sub     sp, sp, #0x90        <-- space for local var
 720:   b9000fe0        str     w0, [sp, #12]
 724:   b9000be1        str     w1, [sp, #8]
 728:   b9400fe1        ldr     w1, [sp, #12]
 72c:   b9400be0        ldr     w0, [sp, #8]
 730:   0b000021        add     w1, w1, w0
 734:   b9408fe0        ldr     w0, [sp, #140]
 738:   0b000020        add     w0, w1, w0
 73c:   910243ff        add     sp, sp, #0x90      <-- restore sp before ret
 740:   d65f03c0        ret

 thanks,

  - Joel


> For normal archs, we usually have something like this:
> 
> sys_call_entry:
>    [save regs and crap on stack ]
>    bl sys_finit_module
>  sys_call_entry+x:
>    [ here's the address put into the lr regsister ]
> 
> sys_finit_module:
>    save lr on stack [syscall_entry+x]
>    save more stuff on stack
>    [..]
>    bl load_module
>   sys_finit_module+y:
> 
> load_module:
>   save lr on stack [sys_finit_module+y]
>   save more stuff on stack
>   [..]
>   bl do_init_module
>  load_module+z:
> 
> do_init_module:
>   save lr on stack [load_module+z]
>   [ let's say we do the stack trace here! ]
> 
> On the stack we have:
> 
>   data for kernel entry
>   sys_call_entry+x [ lr saved in sys_finit_module ]
>   data for sys_finit_module
>   sys_finit_module+y [ lr saved in load_module ]
>   data for load_module
>   load_module+z [ lr saved in do_init_module
> 
> When we call stack_trace_save() we get:
> 
>   sys_call_entry+x
>   sys_finit_module+y
>   load_module+z
> 
> We then find those locations on the stack. Let's add some numbers here:
> 
> 0:   top of stack
>      data for kernel entry
> 504: sys_call_entry+x
>      data for sys_finit_module
> 856: sys_finit_module+y
>      data for sys_load_module
> 904: load_module+z
> 1048: BOTTOM OF STACK HERE
> 
> To do the work, we start from the bottom of the stack, looking for what
> was returned from the stack_trace_save
> 
> start = 1048
>  *p == load_module+z
>   stack size = 1048 - 904
> 
> Then we say load_module stack size is 144.
> 
> What you are describing doesn't make any sense. Yes, we all add LR to
> the stack, not the PC! But if the issue is that the LR is saved *after*
> the function data, then that *will* make a difference. We then have:
> 
> 
> sys_call_entry:
>    [save regs and crap on stack ]
>    bl sys_finit_module
>  sys_call_entry+x:
>    [ here's the address put into the lr regsister ]
> 
> sys_finit_module:
>    save sys_finit_module stuff on stack
>    save lr on stack [syscall_entry+x]  <-- reversed order from before!
>    [..]
>    bl load_module
>   sys_finit_module+y:
> 
> load_module:
>   save load_module stuff on stack
>   save lr on stack [sys_finit_module+y]
>   [..]
>   bl do_init_module
>  load_module+z:
> 
> do_init_module:
>   [ let's say we do the stack trace here! ]
> 
> On the stack we have:
> 
>   data for sys_call_entry
>   data for sys_finit_module
>   sys_call_entry+x [ lr saved in sys_finit_module ]
>   data for load_module
>   sys_finit_module+y [ lr saved in load_module ]
>   data for do_init_module
>   load_module+z [ lr saved in do_init_module
> 
> This also brings up the question of when the mcount is called?
> 
> We get the same data from stack_trace_save():
> 
>   sys_call_entry+x
>   sys_finit_module+y
>   load_module+z
> 
> But this time, the stack is different!
> 
> 0:   top of stack
>      data from kernel entry
>      data for sys_call_entry
>      data for sys_finit_module
> 504: sys_call_entry+x
>      data for sys_finit_module
> 856: sys_finit_module+y
>      data for load_module
> 904: load_module+z
>      data for do_init_module?
> 1048: BOTTOM OF STACK HERE
> 
> So yes, the same algorithm is will come up with the wrong result,
> because...
> 
> start = 1048
>  *p == load_module+z
>   stack size = 1048 - 904
> 
> We just calculated the size of data for do_init_module, and not for
> load_module!
> 
> Can someone confirm that this is the real issue?
> 
> -- Steve
> 
> 
> > 
> > Wrong info:
> > Depth Size Location (16 entries)
> > ----- ---- --------
> > 0) 5400 16 __update_load_avg_se.isra.2+0x28/0x220
> > 1) 5384 96 put_prev_entity+0x250/0x338
> > 2) 5288 80 pick_next_task_fair+0x4c4/0x508
> > 3) 5208 72 __schedule+0x100/0x600
> > 4) 5136 184 preempt_schedule_common+0x28/0x48
> > 5) 4952 32 preempt_schedule+0x28/0x30
> > 6) 4920 16 vprintk_emit+0x170/0x1f8
> > 7) 4904 128 vprintk_default+0x48/0x58
> > 8) 4776 64 vprintk_func+0xf8/0x1c8
> > 9) 4712 112 printk+0x70/0x90
> > 10) 4600 176 occupy_stack_init+0x64/0xc0 [kernel_stack]
> > 11) 4424 3376 do_one_initcall+0x68/0x248
> > 12) 1048 144 do_init_module+0x60/0x1f0
> > 13) 904 48 load_module+0x1d50/0x2340
> > 14) 856 352 sys_finit_module+0xd0/0xe8
> > 15) 504 504 el0_svc_naked+0x30/0x34
> > 
> > Correct info:
> > Depth Size Location (18 entries)
> > ----- ---- --------
> > 0) 5464 48 cgroup_rstat_updated+0x20/0x100
> > 1) 5416 32 cgroup_base_stat_cputime_account_end.isra.0+0x30/0x60
> > 2) 5384 32 __cgroup_account_cputime+0x3c/0x48
> > 3) 5352 64 update_curr+0xc4/0x1d0
> > 4) 5288 72 pick_next_task_fair+0x444/0x508
> > 5) 5216 184 __schedule+0x100/0x600
> > 6) 5032 32 preempt_schedule_common+0x28/0x48
> > 7) 5000 16 preempt_schedule+0x28/0x30
> > 8) 4984 128 vprintk_emit+0x170/0x1f8
> > 9) 4856 64 vprintk_default+0x48/0x58
> > 10) 4792 112 vprintk_func+0xf8/0x1c8
> > 11) 4680 176 printk+0x70/0x90
> > 12) 4504 80 func_test+0x7c/0xb8 [kernel_stack]
> > 13) 4424 3376 occupy_stack_init+0x7c/0xc0 [kernel_stack]
> > 14) 1048 144 do_one_initcall+0x68/0x248
> > 15) 904 48 do_init_module+0x60/0x1f0
> > 16) 856 352 load_module+0x1d50/0x2340
> > 17) 504 504 sys_finit_module+0xd0/0xe8
> > 
> > Signed-off-by: Jiping Ma <jiping.ma2@windriver.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
