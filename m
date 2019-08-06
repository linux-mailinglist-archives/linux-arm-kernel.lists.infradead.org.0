Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 101DD8320F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 15:01:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S/vvP+O+jJfQexw8yoltwtVcUroAsUsLZEF1D78gAZA=; b=kpzkUS27FxKY0z
	chy99V2CNeAGWZYTMgxAX5+H71/OM8tMYU0qc/iQlcuQbyj/TyzDgklzN6fthUWLAzBAAUAjt6YVf
	jvLpQq0AmeTCd4hQulC2dPIfqQ6oxCPSY2ZmKcv3PY9jWh8PKEpUIAs+46fEGyiiGD5qX6zf/z2ca
	xHcu5UzhhrjhUYFhJ+araQGg6Wc2Y+r+XXO9L5XiSmDEJG2O+ikJ3sGdmZy+EYAvuAKgWDTFuixUO
	Ycw4b46htCaVrS6S2GGrlXHbEVkFc6tzZnu+vtiQzRZAWsTl+EzKPpuf4X8sABnHfJOg4KUsERX6F
	Vzm0Fmzh6SG7rJn803Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huz5Z-0006cb-Ka; Tue, 06 Aug 2019 13:01:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huz5O-0006bd-Ng
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 13:01:08 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9CFB120C01;
 Tue,  6 Aug 2019 13:01:00 +0000 (UTC)
Date: Tue, 6 Aug 2019 09:00:59 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3] tracing: Function stack size and its name mismatch
 in arm64
Message-ID: <20190806090059.3c106d41@gandalf.local.home>
In-Reply-To: <20190805112524.ajlmouutqckwpqyd@willie-the-truck>
References: <20190802094103.163576-1-jiping.ma2@windriver.com>
 <20190802112259.0530a648@gandalf.local.home>
 <20190803082642.GA224541@google.com>
 <20190805112524.ajlmouutqckwpqyd@willie-the-truck>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_060106_815821_83D393EB 
X-CRM114-Status: GOOD (  21.68  )
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
 will.deacon@arm.com, linux-kernel@vger.kernel.org, takahiro.akashi@linaro.org,
 mingo@redhat.com, Joel Fernandes <joel@joelfernandes.org>,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 5 Aug 2019 12:25:25 +0100
Will Deacon <will@kernel.org> wrote:

> This can be read as "subtract 144 bytes (32*4 + 16) from the stack pointer,
> write the frame record there and then update the stack pointer to point at the
> bottom of the newly allocated stack", which means that the array 'a[32]' sits
> directly /above/ the frame record on the stack. However, this is just what my
> GCC happened to do today. When we looked at this back in 2015, there were other
> cases we ended up having to identify with heuristics based on what had been
> observed under various compilers:
> 
> http://lists.infradead.org/pipermail/linux-arm-kernel/2015-December/393721.html

That's a bit more involved than what I came up with.

> 
> This was deemed to be far too fragile, so we didn't merge it in the end.
> 
> If this is to work reliably, then we need support from the tools. This was
> raised when we first merged support for ftrace, but I'm not sure it went
> anywhere:
> 
> https://gcc.gnu.org/ml/gcc/2016-01/msg00035.html
> 
> So, I completely agree with Steve that we shouldn't be littering the core code
> with #ifdef CONFIG_ARM64, but we probably do need something in the arch backend
> if we're going to do this properly, and that in turn is likely to need a very
> different algorithm from the one currently in use.

So basically it seems that on arm64, gcc only saves the lr when needed
(leaf functions don't need it). And I can even see that if you have
several paths that don't call other functions, why save the lr?

It does seem that doing the slight change makes the current code more
accurate without need for any heuristics.

Here's my patch again, slightly tweaked and Jiping said it solved the
issue for him.

Are you OK with this change?

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
index 5d16f73898db..40e4a88eea8f 100644
--- a/kernel/trace/trace_stack.c
+++ b/kernel/trace/trace_stack.c
@@ -158,6 +158,20 @@ static void check_stack(unsigned long ip, unsigned long *stack)
 			i++;
 	}
 
+#ifdef ARCH_RET_ADDR_AFTER_LOCAL_VARS
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

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
