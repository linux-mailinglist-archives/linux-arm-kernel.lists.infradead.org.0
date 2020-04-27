Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F87B1BA9B8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 18:03:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYDLDaSUnOf6FRefVsnLbiW5HeaUHnnE85CT/SNwFqc=; b=arGruKvCfwoOvt
	tG02rVNibiY3toHd2A5IPRTzyFJrOWAspWwUeP3VQsy6Y2ZF+2MzRn4UYwwMWjwl1LgVq51CMbcZ8
	M6M8LmbIpz9jrGWArTK8OJwmlSQ+9RVMo1AFsK2ELXzT/h546Qi7lsx0OoKJNu6DyFQhHTxnjZEI9
	tt+AIs7ko5iV8K4yLTTV+HAnnt4yOwzuE9SLLFYH2HJFtaBkqhXqQsnXc0tJjg8WOLadsU1E+d4dN
	mIMYMU5wvQedfcehQ+Y+PvN7dBmsobxlRdsRZkZceXEz5c93Qr5Bmzegs71Ajt5zQGrzOGW/vgQvB
	tZtDNb8nfetX1uvyuA+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT6EM-0004oy-VP; Mon, 27 Apr 2020 16:03:38 +0000
Received: from mail-yb1-xb49.google.com ([2607:f8b0:4864:20::b49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT6Bp-0002XT-3J
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 16:01:07 +0000
Received: by mail-yb1-xb49.google.com with SMTP id s8so20797814ybj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 09:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=qkETA9PcFfLLgtHJjON9o2tnpUEMYOCdGfYROMcqbgY=;
 b=CRokN2oO5qHaIwDnfhPQm4WUGN3dL/7L085WmXGBSTSWdMgIglwt0wRRJelCXVTkUE
 evOGTcMnXuR7Gjk4FVLYN7tW5CCc6BokYtvDyoKf0BZkGqxaFodx3U9MT4v6NLYHqmZ3
 iKYOMczKSYycS/Y78HO0iUKm+Cybr6RYQTwonAcmpQMj4NBDWRV7rBluW3RDsp+lkYsB
 XjiNReA/J9iMZUvAfy9f6Kp0qq+eqtAmtSd9c8FAhrtbFh6vgYjxE0lF9hnWHmvKb9K6
 9WkijNUXXW4KO1tiyvrcZh1oyagjEj80iU2m3X3BlmfDkqRZqoPzeopP0mihx1UMFM7T
 1fAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=qkETA9PcFfLLgtHJjON9o2tnpUEMYOCdGfYROMcqbgY=;
 b=Hd1gA25Z/I17SSVa2fXhjymJrKq+4Wfw8rFOtSqd7uzKvwCEr9J93QrnYGW58SK3+V
 pnsf0wXWDkBacqXsLqTqoq/Qp/HZxSJHHZyF1Hzp8GrKHVhx1SJ8NFYemcykvF2R6cQS
 xR/oiufyJ2BS2trSVfk3XQv4kpPcVQNdLat1xYfohzGPOuyv3BelFIEpKYNhYD29NIr9
 AR1LEJmbzu9ozas9wXSPR2gLO/u6VgkbzF3D1rQb+ij33NF48+ckPqrgvayX3KZsiCuT
 Ab1hHZjm1VUxIZQQxj/Kkpc55KVZagRKB1XVJbwGeiHBLMTKod5EdicyQGB12OLzm3/S
 un7A==
X-Gm-Message-State: AGi0Pub/lTgQTq8Qd5KqpOk2uUrMpZiSN7adQpOOczmbW3Slt8hmFbK6
 fuVRjsplBpfC4OBq+2Nv8YSEioF6obFc/hB/hnE=
X-Google-Smtp-Source: APiQypLYy8Cf6kn4jY7fWjXaYMyZ9zM7eZaWrEh0s8K72Jfk+q/yv/f8RANanjFwMmhFbjtpLFic2YH4QuKkPtwOEog=
X-Received: by 2002:a25:d14c:: with SMTP id i73mr9231289ybg.116.1588003258779; 
 Mon, 27 Apr 2020 09:00:58 -0700 (PDT)
Date: Mon, 27 Apr 2020 09:00:17 -0700
In-Reply-To: <20200427160018.243569-1-samitolvanen@google.com>
Message-Id: <20200427160018.243569-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200427160018.243569-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH v13 11/12] arm64: scs: add shadow stacks for SDEI
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>, 
 Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>,
 Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
 Juri Lelli <juri.lelli@redhat.com>,
 Vincent Guittot <vincent.guittot@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_090101_219188_6A957E23 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b49 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>, clang-built-linux@googlegroups.com,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This change adds per-CPU shadow call stacks for the SDEI handler.
Similarly to how the kernel stacks are handled, we add separate shadow
stacks for normal and critical events.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: James Morse <james.morse@arm.com>
Tested-by: James Morse <james.morse@arm.com>
---
 arch/arm64/kernel/entry.S | 14 +++++++++++++-
 arch/arm64/kernel/scs.c   |  5 +++++
 2 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 244268d5ae47..cb0516e6f963 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -1049,13 +1049,16 @@ SYM_CODE_START(__sdei_asm_handler)
 
 	mov	x19, x1
 
+#if defined(CONFIG_VMAP_STACK) || defined(CONFIG_SHADOW_CALL_STACK)
+	ldrb	w4, [x19, #SDEI_EVENT_PRIORITY]
+#endif
+
 #ifdef CONFIG_VMAP_STACK
 	/*
 	 * entry.S may have been using sp as a scratch register, find whether
 	 * this is a normal or critical event and switch to the appropriate
 	 * stack for this CPU.
 	 */
-	ldrb	w4, [x19, #SDEI_EVENT_PRIORITY]
 	cbnz	w4, 1f
 	ldr_this_cpu dst=x5, sym=sdei_stack_normal_ptr, tmp=x6
 	b	2f
@@ -1065,6 +1068,15 @@ SYM_CODE_START(__sdei_asm_handler)
 	mov	sp, x5
 #endif
 
+#ifdef CONFIG_SHADOW_CALL_STACK
+	/* Use a separate shadow call stack for normal and critical events */
+	cbnz	w4, 3f
+	adr_this_cpu dst=x18, sym=sdei_shadow_call_stack_normal, tmp=x6
+	b	4f
+3:	adr_this_cpu dst=x18, sym=sdei_shadow_call_stack_critical, tmp=x6
+4:
+#endif
+
 	/*
 	 * We may have interrupted userspace, or a guest, or exit-from or
 	 * return-to either of these. We can't trust sp_el0, restore it.
diff --git a/arch/arm64/kernel/scs.c b/arch/arm64/kernel/scs.c
index acc6741d1a40..adc97f826fab 100644
--- a/arch/arm64/kernel/scs.c
+++ b/arch/arm64/kernel/scs.c
@@ -13,3 +13,8 @@
 	DEFINE_PER_CPU(unsigned long [SCS_SIZE/sizeof(long)], name)	\
 
 DEFINE_SCS(irq_shadow_call_stack);
+
+#ifdef CONFIG_ARM_SDE_INTERFACE
+DEFINE_SCS(sdei_shadow_call_stack_normal);
+DEFINE_SCS(sdei_shadow_call_stack_critical);
+#endif
-- 
2.26.2.303.gf8c07b1a785-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
