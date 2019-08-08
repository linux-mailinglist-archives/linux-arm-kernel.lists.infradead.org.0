Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEB4867E5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 19:25:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ANSiAOELpWrIII9XRKy8wyUF8hhgi/WfigqIp9pjnxU=; b=r9pLzkMhYmYCuF
	c3Uw1aop8R5OlLZ+L4vqBzOyc9fZBmgZplPmvdwLd9mZ7Gk8cKP47CZO4xUTB80fy3+D9u3pqS2pX
	yXG/Cgj+EZmART85WQsK66DUxZDhfWEMagrtftpjBM0pqueBbV8UVDvmUSGJwOoztbeMCqA4Q9NNo
	KnyWxnc7aO5dVkfI22Dt8ubVW04rUNuLlSfxJ43sMre2WdxSHu7eNZrWQiUOeasZeMvJscnOrH9VF
	KaUfKjviG1/C1bZ8R9c3XvlLCMt+1LesjOILDh3LHygWGBSgAk/IApLdpeQyAGkr6d7JO+eMDV0FB
	JmwLbEa2FsIgmhwZYSxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvmA1-0001UL-Q9; Thu, 08 Aug 2019 17:25:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvm9q-0001U0-1K
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 17:24:59 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E963F217F4;
 Thu,  8 Aug 2019 17:24:56 +0000 (UTC)
Date: Thu, 8 Aug 2019 13:24:55 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 1/2 v2] tracing/arm64: Have max stack tracer handle the
 case of return address after data
Message-ID: <20190808132455.5fa2c660@gandalf.local.home>
In-Reply-To: <20190808171153.6j56h4hlcpcl5trz@willie-the-truck>
References: <20190807172826.352574408@goodmis.org>
 <20190807172907.155165959@goodmis.org>
 <20190808162825.7klpu3ffza5zxwrt@willie-the-truck>
 <20190808123632.0dd1a58c@gandalf.local.home>
 <20190808171153.6j56h4hlcpcl5trz@willie-the-truck>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_102458_123638_BECC82A7 
X-CRM114-Status: GOOD (  19.45  )
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
Cc: Jiping Ma <jiping.ma2@windriver.com>, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, mingo@redhat.com,
 Joel Fernandes <joel@joelfernandes.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 8 Aug 2019 18:11:53 +0100
Will Deacon <will@kernel.org> wrote:

> > We could make it more descriptive of what it will do and not the reason
> > for why it is done...
> > 
> > 
> >   ARCH_FTRACE_SHIFT_STACK_TRACER  
> 
> Acked-by: Will Deacon <will@kernel.org>

Thanks Will!

Here's the official patch.

From: "Steven Rostedt (VMware)" <rostedt@goodmis.org>

Most archs (well at least x86) store the function call return address on the
stack before storing the local variables for the function. The max stack
tracer depends on this in its algorithm to display the stack size of each
function it finds in the back trace.

Some archs (arm64), may store the return address (from its link register)
just before calling a nested function. There's no reason to save the link
register on leaf functions, as it wont be updated. This breaks the algorithm
of the max stack tracer.

Add a new define ARCH_RET_ADDR_AFTER_LOCAL_VARS that an architecture may set
if it stores the return address (link register) after it stores the
function's local variables, and have the stack trace shift the values of the
mapped stack size to the appropriate functions.

Link: 20190802094103.163576-1-jiping.ma2@windriver.com

Reported-by: Jiping Ma <jiping.ma2@windriver.com>
Acked-by: Will Deacon <will@kernel.org>
Signed-off-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
---
 arch/arm64/include/asm/ftrace.h | 13 +++++++++++++
 kernel/trace/trace_stack.c      | 14 ++++++++++++++
 2 files changed, 27 insertions(+)

diff --git a/arch/arm64/include/asm/ftrace.h b/arch/arm64/include/asm/ftrace.h
index 5ab5200b2bdc..d48667b04c41 100644
--- a/arch/arm64/include/asm/ftrace.h
+++ b/arch/arm64/include/asm/ftrace.h
@@ -14,6 +14,19 @@
 #define MCOUNT_ADDR		((unsigned long)_mcount)
 #define MCOUNT_INSN_SIZE	AARCH64_INSN_SIZE
 
+/*
+ * Currently, gcc tends to save the link register after the local variables
+ * on the stack. This causes the max stack tracer to report the function
+ * frame sizes for the wrong functions. By defining
+ * ARCH_FTRACE_SHIFT_STACK_TRACER, it will tell the stack tracer to expect
+ * to find the return address on the stack after the local variables have
+ * been set up.
+ *
+ * Note, this may change in the future, and we will need to deal with that
+ * if it were to happen.
+ */
+#define ARCH_FTRACE_SHIFT_STACK_TRACER 1
+
 #ifndef __ASSEMBLY__
 #include <linux/compat.h>
 
diff --git a/kernel/trace/trace_stack.c b/kernel/trace/trace_stack.c
index 5d16f73898db..642a850af81a 100644
--- a/kernel/trace/trace_stack.c
+++ b/kernel/trace/trace_stack.c
@@ -158,6 +158,20 @@ static void check_stack(unsigned long ip, unsigned long *stack)
 			i++;
 	}
 
+#ifdef ARCH_FTRACE_SHIFT_STACK_TRACER
+	/*
+	 * Some archs will store the link register before calling
+	 * nested functions. This means the saved return address
+	 * comes after the local storage, and we need to shift
+	 * for that.
+	 */
+	if (x > 1) {
+		memmove(&stack_trace_index[0], &stack_trace_index[1],
+			sizeof(stack_trace_index[0]) * (x - 1));
+		x--;
+	}
+#endif
+
 	stack_trace_nr_entries = x;
 
 	if (task_stack_end_corrupted(current)) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
