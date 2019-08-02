Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C63B57FE29
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 18:09:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3vCc0rtYt/hizMUWJON/JNXC+ZjUj+QMxe2cwIN0QVw=; b=svwp004LxyvHSVz7WkV5xFH4U
	tviDU3H0BtTEA6rLPcu1svOCHSB/RCzauz3DVYcKiBpZ7Rg8r0XZV2mou3YXZ8ZibzcbykfXf7vk9
	UNPFl8ysg0J7RpAh3Zdj7et+5SUE8XV9FChYT/lni9HI8ZfrDfDVaB1Tw6Ffgs0otjQZIrnOO+MIM
	ZiXQS5lQVyeVhRXSpQV4jsaI29nM0OqCsYqB9inT6sQfnTTBH/20lampnF76eJIVd3A8gyBficLqN
	VkQ5X4kV2e4iGCuspIzYh8Iet8WPoZS8lHNscCdbUBY5ERETri4IMWAu/mrJLZdxG//TZf3LmoiPK
	iutzM0Vyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hta7U-0006Mo-CV; Fri, 02 Aug 2019 16:09:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hta7O-0006MS-K9
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 16:09:24 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AEDEE21783;
 Fri,  2 Aug 2019 16:09:21 +0000 (UTC)
Date: Fri, 2 Aug 2019 12:09:20 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Jiping Ma <jiping.ma2@windriver.com>
Subject: Re: [PATCH v3] tracing: Function stack size and its name mismatch
 in arm64
Message-ID: <20190802120920.3b1f4351@gandalf.local.home>
In-Reply-To: <20190802112259.0530a648@gandalf.local.home>
References: <20190802094103.163576-1-jiping.ma2@windriver.com>
 <20190802112259.0530a648@gandalf.local.home>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="MP_/H_zswQr7OwRjASX6FA341vN"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_090922_703897_E9DE6D81 
X-CRM114-Status: GOOD (  15.02  )
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
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--MP_/H_zswQr7OwRjASX6FA341vN
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Fri, 2 Aug 2019 11:22:59 -0400
Steven Rostedt <rostedt@goodmis.org> wrote:

> I think you are not explaining the issue correctly. From looking at the
> document, I think what you want to say is that the LR is saved *after*
> the data for the function. Is that correct? If so, then yes, it would
> cause the stack tracing algorithm to be incorrect.
> 

[..]

> Can someone confirm that this is the real issue?

Does this patch fix your issue?

-- Steve

diff --git a/arch/arm64/include/asm/ftrace.h b/arch/arm64/include/asm/ftrace.h
index 5ab5200b2bdc..13a4832cfb00 100644
--- a/arch/arm64/include/asm/ftrace.h
+++ b/arch/arm64/include/asm/ftrace.h
@@ -13,6 +13,7 @@
 #define HAVE_FUNCTION_GRAPH_FP_TEST
 #define MCOUNT_ADDR		((unsigned long)_mcount)
 #define MCOUNT_INSN_SIZE	AARCH64_INSN_SIZE
+#define ARCH_RET_ADDR_AFTER_LOCAL_VARS 1
 
 #ifndef __ASSEMBLY__
 #include <linux/compat.h>
diff --git a/kernel/trace/trace_stack.c b/kernel/trace/trace_stack.c
index 5d16f73898db..050c6bd9beac 100644
--- a/kernel/trace/trace_stack.c
+++ b/kernel/trace/trace_stack.c
@@ -158,6 +158,18 @@ static void check_stack(unsigned long ip, unsigned long *stack)
 			i++;
 	}
 
+#ifdef ARCH_RET_ADDR_AFTER_LOCAL_VARS
+	/*
+	 * Most archs store the return address before storing the
+	 * function's local variables. But some archs do this backwards.
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

--MP_/H_zswQr7OwRjASX6FA341vN
Content-Type: text/x-patch
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=f.patch

diff --git a/arch/arm64/include/asm/ftrace.h b/arch/arm64/include/asm/ftrace.h
index 5ab5200b2bdc..13a4832cfb00 100644
--- a/arch/arm64/include/asm/ftrace.h
+++ b/arch/arm64/include/asm/ftrace.h
@@ -13,6 +13,7 @@
 #define HAVE_FUNCTION_GRAPH_FP_TEST
 #define MCOUNT_ADDR		((unsigned long)_mcount)
 #define MCOUNT_INSN_SIZE	AARCH64_INSN_SIZE
+#define ARCH_RET_ADDR_AFTER_LOCAL_VARS 1
 
 #ifndef __ASSEMBLY__
 #include <linux/compat.h>
diff --git a/kernel/trace/trace_stack.c b/kernel/trace/trace_stack.c
index 5d16f73898db..050c6bd9beac 100644
--- a/kernel/trace/trace_stack.c
+++ b/kernel/trace/trace_stack.c
@@ -158,6 +158,18 @@ static void check_stack(unsigned long ip, unsigned long *stack)
 			i++;
 	}
 
+#ifdef ARCH_RET_ADDR_AFTER_LOCAL_VARS
+	/*
+	 * Most archs store the return address before storing the
+	 * function's local variables. But some archs do this backwards.
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

--MP_/H_zswQr7OwRjASX6FA341vN
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--MP_/H_zswQr7OwRjASX6FA341vN--

