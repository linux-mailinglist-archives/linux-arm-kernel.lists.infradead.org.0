Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A70B85215
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 19:29:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Subject:To:From
	:Date:Message-Id:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=HTVYMp25Ufhc2B+S/PBRDlAX1olo+xRUy8hwCnVN3Pk=; b=kO+wYvNbiKgilL
	5UNXruwPH1fm/Ut97TW9NO7+DhSQ7sqQ7dNDiCXQemxOSoq7PYZVg0bwZ2HFOW1/idrYTn1dZ9C+M
	IfK1HUaB41qxRJwURQvs2KHgNpo6lmGXKFh5Fp1ONd6bLUBRjUH4atpOZzgaeAXV1fgwNSnMFDKJg
	jCK/+HLwV3z9nWOdyo16O9WAIOQEjCL7TGFaNBIKnwHmljOdjt5c0k7k2xzVBz5MkoagiIjbEQ6ph
	VZ8AvOa5rFooqMIw6fyAqiuNPuvgVlAHfOwPyiQGl7w3EA4Bw+3AW6uz3uM/lmAhisZViijy5olt9
	gnQuNWbaILaZVizT3kGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvPkw-0007F9-0E; Wed, 07 Aug 2019 17:29:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvPkK-0006qX-JW
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 17:29:11 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 48C7322305;
 Wed,  7 Aug 2019 17:29:08 +0000 (UTC)
Received: from rostedt by gandalf.local.home with local (Exim 4.92)
 (envelope-from <rostedt@goodmis.org>)
 id 1hvPkJ-0007zy-De; Wed, 07 Aug 2019 13:29:07 -0400
Message-Id: <20190807172907.310138647@goodmis.org>
User-Agent: quilt/0.65
Date: Wed, 07 Aug 2019 13:28:28 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/2 v2] tracing: Document the stack trace algorithm in the
 comments
References: <20190807172826.352574408@goodmis.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_102908_680995_1E56F499 
X-CRM114-Status: GOOD (  16.83  )
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
Cc: Jiping Ma <jiping.ma2@windriver.com>, catalin.marinas@arm.com,
 will.deacon@arm.com, mingo@redhat.com, Joel Fernandes <joel@joelfernandes.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Steven Rostedt (VMware)" <rostedt@goodmis.org>

As the max stack tracer algorithm is not that easy to understand from the
code, add comments that explain the algorithm and mentions how
ARCH_RET_ADDR_AFTER_LOCAL_VARS affects it.

Link: http://lkml.kernel.org/r/20190806123455.487ac02b@gandalf.local.home

Suggested-by: Joel Fernandes <joel@joelfernandes.org>
Signed-off-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
---
 kernel/trace/trace_stack.c | 98 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 98 insertions(+)

diff --git a/kernel/trace/trace_stack.c b/kernel/trace/trace_stack.c
index 40e4a88eea8f..f94a2fc567de 100644
--- a/kernel/trace/trace_stack.c
+++ b/kernel/trace/trace_stack.c
@@ -53,6 +53,104 @@ static void print_max_stack(void)
 	}
 }
 
+/*
+ * The stack tracer looks for a maximum stack at each call from a function. It
+ * registers a callback from ftrace, and in that callback it examines the stack
+ * size. It determines the stack size from the variable passed in, which is the
+ * address of a local variable in the stack_trace_call() callback function.
+ * The stack size is calculated by the address of the local variable to the top
+ * of the current stack. If that size is smaller than the currently saved max
+ * stack size, nothing more is done.
+ *
+ * If the size of the stack is greater than the maximum recorded size, then the
+ * following algorithm takes place.
+ *
+ * For architectures (like x86) that store the function's return address before
+ * saving the function's local variables, the stack will look something like
+ * this:
+ *
+ *   [ top of stack ]
+ *    0: sys call entry frame
+ *   10: return addr to entry code
+ *   11: start of sys_foo frame
+ *   20: return addr to sys_foo
+ *   21: start of kernel_func_bar frame
+ *   30: return addr to kernel_func_bar
+ *   31: [ do trace stack here ]
+ *
+ * The save_stack_trace() is called returning all the functions it finds in the
+ * current stack. Which would be (from the bottom of the stack to the top):
+ *
+ *   return addr to kernel_func_bar
+ *   return addr to sys_foo
+ *   return addr to entry code
+ *
+ * Now to figure out how much each of these functions' local variable size is,
+ * a search of the stack is made to find these values. When a match is made, it
+ * is added to the stack_dump_trace[] array. The offset into the stack is saved
+ * in the stack_trace_index[] array. The above example would show:
+ *
+ *        stack_dump_trace[]        |   stack_trace_index[]
+ *        ------------------        +   -------------------
+ *  return addr to kernel_func_bar  |          30
+ *  return addr to sys_foo          |          20
+ *  return addr to entry            |          10
+ *
+ * The print_max_stack() function above, uses these values to print the size of
+ * each function's portion of the stack.
+ *
+ *  for (i = 0; i < nr_entries; i++) {
+ *     size = i == nr_entries - 1 ? stack_trace_index[i] :
+ *                    stack_trace_index[i] - stack_trace_index[i+1]
+ *     print "%d %d %d %s\n", i, stack_trace_index[i], size, stack_dump_trace[i]);
+ *  }
+ *
+ * The above shows
+ *
+ *     depth size  location
+ *     ----- ----  --------
+ *  0    30   10   kernel_func_bar
+ *  1    20   10   sys_foo
+ *  2    10   10   entry code
+ *
+ * Now for architectures that might save the return address after the functions
+ * local variables (saving the link register before calling nested functions),
+ * this will cause the stack to look a little different:
+ *
+ * [ top of stack ]
+ *  0: sys call entry frame
+ * 10: start of sys_foo_frame
+ * 19: return addr to entry code << lr saved before calling kernel_func_bar
+ * 20: start of kernel_func_bar frame
+ * 29: return addr to sys_foo_frame << lr saved before calling next function
+ * 30: [ do trace stack here ]
+ *
+ * Although the functions returned by save_stack_trace() may be the same, the
+ * placement in the stack will be different. Using the same algorithm as above
+ * would yield:
+ *
+ *        stack_dump_trace[]        |   stack_trace_index[]
+ *        ------------------        +   -------------------
+ *  return addr to kernel_func_bar  |          30
+ *  return addr to sys_foo          |          29
+ *  return addr to entry            |          19
+ *
+ * Where the mapping is off by one:
+ *
+ *   kernel_func_bar stack frame size is 29 - 19 not 30 - 29!
+ *
+ * To fix this, if the architecture sets ARCH_RET_ADDR_AFTER_LOCAL_VARS the
+ * values in stack_trace_index[] are shifted by one to and the number of
+ * stack trace entries is decremented by one.
+ *
+ *        stack_dump_trace[]        |   stack_trace_index[]
+ *        ------------------        +   -------------------
+ *  return addr to kernel_func_bar  |          29
+ *  return addr to sys_foo          |          19
+ *
+ * Although the entry function is not displayed, the first function (sys_foo)
+ * will still include the stack size of it.
+ */
 static void check_stack(unsigned long ip, unsigned long *stack)
 {
 	unsigned long this_size, flags; unsigned long *p, *top, *start;
-- 
2.20.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
