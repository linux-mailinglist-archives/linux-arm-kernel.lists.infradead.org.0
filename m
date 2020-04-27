Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 872371BA9AB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 18:02:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kQAokKRsUjwTk2OAPQxfvZNtnJjKHGo5rsimDnDtttc=; b=Gmdf0+QevQmjCW
	MOsxzrWTKpkedfg7MOci8HKdozlGt9F/KzFm997XfIyvs+cNAaf0TZjyGbzOJPBJNL7+E8yLXLTH3
	NZkt5oYpPh41B+/NBjTL6v10yKSyBGo92ZT9WpVfE2Ni5NFpfpKuKX0xhVGoGFDRnqhKAH8Cbs/BL
	OqHQDTNqh2XlfCKHVolyquzG6luJQnqxJC6xMKh47DuRpd8LMs2PFcSsfPvJqD4E4gyglkW+a+I7s
	9cX94H4gO1mFPXmkoM9BBN7Teh0So7WUxq5vPsuRfSUdOmdzQllLDiNObZiVjSVIPL8gPmzj+7HBP
	13k7VHoFv5on+4P8Bm6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT6DL-0003km-GV; Mon, 27 Apr 2020 16:02:35 +0000
Received: from mail-qk1-x749.google.com ([2607:f8b0:4864:20::749])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT6Bb-0002Lr-8m
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 16:00:48 +0000
Received: by mail-qk1-x749.google.com with SMTP id x7so19872638qkb.17
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 09:00:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=aDem5II6XtVFnIoK0CnL/HzpdSNcG3sRMln2VgftrwU=;
 b=ZfWmmWWeg8Xv5CC2meB1osNUPG8RstNTWpr4cI8ESrfdKMVwQ7dxJXztTGQFimsM+Q
 CNvseJXVkYZoisMem4nRmxocSgBUZWRX2WM22kEjc8yGFWBw+H2CgMCAGJRvh5nA4tpL
 psKwxJzZBPKnH8RZhpmunbTEeHw7mqoGl1Chyd7YQFp1F8NuL79hZl5YpbN3INQoxV+B
 bs2zi3POqfqPXq6HRcKeb0fQ5M+8KRlgMPb3DVTPJden1T0c6jIaMjOnnX/iCef8UIHH
 0wTi0R/2zRQc9P2Tgoryc+izyibMdoy6SFeJchSyHM1zbcKBR0WBctCIMUrRhaOOp1KA
 baSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=aDem5II6XtVFnIoK0CnL/HzpdSNcG3sRMln2VgftrwU=;
 b=J9GO3hXKYlOpRg1Uc1sZj9mNfKvDHmTdFDH45Fs4qjG11wOcKfuGI5ngsOOTb/b9V6
 FPf2HIkcnwwXsNI+SIThy5CGR56ICypRgCl9m1UQUzAN78g4ft/B5wkGLrj8YqG0XXvH
 50vBCA/3EohkiGA37VtVb7wCNZGOwPM7fI9JJFufLJoiWmRF0tSjMBaH67wscsNro96E
 GApCygDKMAEhfcIlyPu158L+fctL80agANTLJj/UGhBhUxooLBQbaYUe2s++FN4OUXq9
 BwYv3jtbXqxCHempSFVDxKVs4EqYV4PTQF1YVdCPEsVlV4z84Xj9FcxUGnA3zIIisf6f
 t7Iw==
X-Gm-Message-State: AGi0PuZvXv0aSsbSGS7dW331VpMJSGESdhfY2Ea5m5HL+N8iVDwddjs5
 Jw8Qz2IkmpuVhUMQ1lUCEVgTxIXL6RcuDBtwXUU=
X-Google-Smtp-Source: APiQypJO4M2N3eKFmynDymgRKzs8tsPGJgj0wNazOuUIlfBTsE5WgPC/94hr99zCwp1irzlSc77dDJj+XxgS7YX4+qA=
X-Received: by 2002:a0c:8262:: with SMTP id h89mr21907606qva.173.1588003245161; 
 Mon, 27 Apr 2020 09:00:45 -0700 (PDT)
Date: Mon, 27 Apr 2020 09:00:12 -0700
In-Reply-To: <20200427160018.243569-1-samitolvanen@google.com>
Message-Id: <20200427160018.243569-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200427160018.243569-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH v13 06/12] arm64: preserve x18 when CPU is suspended
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
X-CRM114-CacheID: sfid-20200427_090047_437601_8ACAD547 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:749 listed in]
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

Don't lose the current task's shadow stack when the CPU is suspended.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/suspend.h |  2 +-
 arch/arm64/mm/proc.S             | 14 ++++++++++++++
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/suspend.h b/arch/arm64/include/asm/suspend.h
index 8939c87c4dce..0cde2f473971 100644
--- a/arch/arm64/include/asm/suspend.h
+++ b/arch/arm64/include/asm/suspend.h
@@ -2,7 +2,7 @@
 #ifndef __ASM_SUSPEND_H
 #define __ASM_SUSPEND_H
 
-#define NR_CTX_REGS 12
+#define NR_CTX_REGS 13
 #define NR_CALLEE_SAVED_REGS 12
 
 /*
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index 197a9ba2d5ea..ed15be0f8103 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -58,6 +58,8 @@
  * cpu_do_suspend - save CPU registers context
  *
  * x0: virtual address of context pointer
+ *
+ * This must be kept in sync with struct cpu_suspend_ctx in <asm/suspend.h>.
  */
 SYM_FUNC_START(cpu_do_suspend)
 	mrs	x2, tpidr_el0
@@ -82,6 +84,11 @@ alternative_endif
 	stp	x8, x9, [x0, #48]
 	stp	x10, x11, [x0, #64]
 	stp	x12, x13, [x0, #80]
+	/*
+	 * Save x18 as it may be used as a platform register, e.g. by shadow
+	 * call stack.
+	 */
+	str	x18, [x0, #96]
 	ret
 SYM_FUNC_END(cpu_do_suspend)
 
@@ -98,6 +105,13 @@ SYM_FUNC_START(cpu_do_resume)
 	ldp	x9, x10, [x0, #48]
 	ldp	x11, x12, [x0, #64]
 	ldp	x13, x14, [x0, #80]
+	/*
+	 * Restore x18, as it may be used as a platform register, and clear
+	 * the buffer to minimize the risk of exposure when used for shadow
+	 * call stack.
+	 */
+	ldr	x18, [x0, #96]
+	str	xzr, [x0, #96]
 	msr	tpidr_el0, x2
 	msr	tpidrro_el0, x3
 	msr	contextidr_el1, x4
-- 
2.26.2.303.gf8c07b1a785-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
