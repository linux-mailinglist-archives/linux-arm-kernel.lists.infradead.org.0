Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 796F97FD6E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 17:23:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=61WzlG0sUvAnv3MQEmbe2ojrH7xiBC0cJxQ2/w8d730=; b=t0cVAu41WcsIi9
	q9TsqBdQZSC9Q/pA9f/Ac9gdbgO3bKL0oicMSUOskQoVx9CiN9J/g1eYdojoXdEZGAQJCSxD7pHsr
	My6jPhXSzj2UjbVl47Kp8dhDCl9+3Q6kraIiCCRibKlwGtydIAAN4p3yHupO17A81foZx3/i7V/1t
	gi9ygvdl9mANElXjFdKI6jTe9ORrQHPoxqBNkDFalLoLojcDsx+Qj3ydAzsrE/3bapt6Vu2kNnRjp
	uhixQm8w9lqP7ztBPHYfNgVZWyr1ZJBCdAr6jns7Rvik/v5He4ho5nuw8vJscVHtqMe6a2QbJMvNS
	/P83H3PO8D9k7HYpt9UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htZOi-0007mb-0b; Fri, 02 Aug 2019 15:23:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htZOb-0007gk-4v
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 15:23:06 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 924342087C;
 Fri,  2 Aug 2019 15:23:01 +0000 (UTC)
Date: Fri, 2 Aug 2019 11:22:59 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Jiping Ma <jiping.ma2@windriver.com>
Subject: Re: [PATCH v3] tracing: Function stack size and its name mismatch
 in arm64
Message-ID: <20190802112259.0530a648@gandalf.local.home>
In-Reply-To: <20190802094103.163576-1-jiping.ma2@windriver.com>
References: <20190802094103.163576-1-jiping.ma2@windriver.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_082305_235662_EE58B635 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 mingo@redhat.com, joel@joelfernandes.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2 Aug 2019 17:41:03 +0800
Jiping Ma <jiping.ma2@windriver.com> wrote:

First of all, this patch will not be accepted. I will not allow arch
specific defines in generic code like this. That said, there are better
solutions.


> There is not PC in ARM64 stack, LR is used to for walk_stackframe in
> ARM64. Tere is no the issue in ARM32 because there is PC in ARM32 stack.
> PC is used to calculate the stack size in trace_stack.c, so the
> function name and its stack size appear to be off-by-one.
> ARM64 stack layout:
> 	LR
>         FP
>         ......
>         LR
>         FP
>         ......

I think you are not explaining the issue correctly. From looking at the
document, I think what you want to say is that the LR is saved *after*
the data for the function. Is that correct? If so, then yes, it would
cause the stack tracing algorithm to be incorrect.

Most archs do this:

On entry to a function:

	save return address
 	reserve local variables and such for current function

I think you are saying that arm64 does this backwards.

	reserve local variables and such for current function
	save return address (LR)


For normal archs, we usually have something like this:

sys_call_entry:
   [save regs and crap on stack ]
   bl sys_finit_module
 sys_call_entry+x:
   [ here's the address put into the lr regsister ]

sys_finit_module:
   save lr on stack [syscall_entry+x]
   save more stuff on stack
   [..]
   bl load_module
  sys_finit_module+y:

load_module:
  save lr on stack [sys_finit_module+y]
  save more stuff on stack
  [..]
  bl do_init_module
 load_module+z:

do_init_module:
  save lr on stack [load_module+z]
  [ let's say we do the stack trace here! ]

On the stack we have:

  data for kernel entry
  sys_call_entry+x [ lr saved in sys_finit_module ]
  data for sys_finit_module
  sys_finit_module+y [ lr saved in load_module ]
  data for load_module
  load_module+z [ lr saved in do_init_module

When we call stack_trace_save() we get:

  sys_call_entry+x
  sys_finit_module+y
  load_module+z

We then find those locations on the stack. Let's add some numbers here:

0:   top of stack
     data for kernel entry
504: sys_call_entry+x
     data for sys_finit_module
856: sys_finit_module+y
     data for sys_load_module
904: load_module+z
1048: BOTTOM OF STACK HERE

To do the work, we start from the bottom of the stack, looking for what
was returned from the stack_trace_save

start = 1048
 *p == load_module+z
  stack size = 1048 - 904

Then we say load_module stack size is 144.

What you are describing doesn't make any sense. Yes, we all add LR to
the stack, not the PC! But if the issue is that the LR is saved *after*
the function data, then that *will* make a difference. We then have:


sys_call_entry:
   [save regs and crap on stack ]
   bl sys_finit_module
 sys_call_entry+x:
   [ here's the address put into the lr regsister ]

sys_finit_module:
   save sys_finit_module stuff on stack
   save lr on stack [syscall_entry+x]  <-- reversed order from before!
   [..]
   bl load_module
  sys_finit_module+y:

load_module:
  save load_module stuff on stack
  save lr on stack [sys_finit_module+y]
  [..]
  bl do_init_module
 load_module+z:

do_init_module:
  [ let's say we do the stack trace here! ]

On the stack we have:

  data for sys_call_entry
  data for sys_finit_module
  sys_call_entry+x [ lr saved in sys_finit_module ]
  data for load_module
  sys_finit_module+y [ lr saved in load_module ]
  data for do_init_module
  load_module+z [ lr saved in do_init_module

This also brings up the question of when the mcount is called?

We get the same data from stack_trace_save():

  sys_call_entry+x
  sys_finit_module+y
  load_module+z

But this time, the stack is different!

0:   top of stack
     data from kernel entry
     data for sys_call_entry
     data for sys_finit_module
504: sys_call_entry+x
     data for sys_finit_module
856: sys_finit_module+y
     data for load_module
904: load_module+z
     data for do_init_module?
1048: BOTTOM OF STACK HERE

So yes, the same algorithm is will come up with the wrong result,
because...

start = 1048
 *p == load_module+z
  stack size = 1048 - 904

We just calculated the size of data for do_init_module, and not for
load_module!

Can someone confirm that this is the real issue?

-- Steve


> 
> Wrong info:
> Depth Size Location (16 entries)
> ----- ---- --------
> 0) 5400 16 __update_load_avg_se.isra.2+0x28/0x220
> 1) 5384 96 put_prev_entity+0x250/0x338
> 2) 5288 80 pick_next_task_fair+0x4c4/0x508
> 3) 5208 72 __schedule+0x100/0x600
> 4) 5136 184 preempt_schedule_common+0x28/0x48
> 5) 4952 32 preempt_schedule+0x28/0x30
> 6) 4920 16 vprintk_emit+0x170/0x1f8
> 7) 4904 128 vprintk_default+0x48/0x58
> 8) 4776 64 vprintk_func+0xf8/0x1c8
> 9) 4712 112 printk+0x70/0x90
> 10) 4600 176 occupy_stack_init+0x64/0xc0 [kernel_stack]
> 11) 4424 3376 do_one_initcall+0x68/0x248
> 12) 1048 144 do_init_module+0x60/0x1f0
> 13) 904 48 load_module+0x1d50/0x2340
> 14) 856 352 sys_finit_module+0xd0/0xe8
> 15) 504 504 el0_svc_naked+0x30/0x34
> 
> Correct info:
> Depth Size Location (18 entries)
> ----- ---- --------
> 0) 5464 48 cgroup_rstat_updated+0x20/0x100
> 1) 5416 32 cgroup_base_stat_cputime_account_end.isra.0+0x30/0x60
> 2) 5384 32 __cgroup_account_cputime+0x3c/0x48
> 3) 5352 64 update_curr+0xc4/0x1d0
> 4) 5288 72 pick_next_task_fair+0x444/0x508
> 5) 5216 184 __schedule+0x100/0x600
> 6) 5032 32 preempt_schedule_common+0x28/0x48
> 7) 5000 16 preempt_schedule+0x28/0x30
> 8) 4984 128 vprintk_emit+0x170/0x1f8
> 9) 4856 64 vprintk_default+0x48/0x58
> 10) 4792 112 vprintk_func+0xf8/0x1c8
> 11) 4680 176 printk+0x70/0x90
> 12) 4504 80 func_test+0x7c/0xb8 [kernel_stack]
> 13) 4424 3376 occupy_stack_init+0x7c/0xc0 [kernel_stack]
> 14) 1048 144 do_one_initcall+0x68/0x248
> 15) 904 48 do_init_module+0x60/0x1f0
> 16) 856 352 load_module+0x1d50/0x2340
> 17) 504 504 sys_finit_module+0xd0/0xe8
> 
> Signed-off-by: Jiping Ma <jiping.ma2@windriver.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
