Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1916BECB40
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 23:16:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jSFIuWRWi5sAZJc4zYZPj20GSXSzq1zG+GUirAebXsA=; b=EKv/r2BaYpF7qI
	VNRYgnnuCDZoXWk1PfUUe82zAaOEmvz/xy4vRvZ73oyZYXPm6yg2C8Sl/kRdt/TogS/LBCxCyZLct
	VrGKW6UOSSy4TFckAIFOO6prrIAHQj9IhHT5QcMAlUofrWXP0sQNcTbo5cM7S1feHNvgPiwWmcwsw
	4HsI8TVFUlwWRHCvzqHq02bvz+6PpxyorWEGRi4lc5SaWGzj6wxaL0Cxy8hDqMDQzs4AXzxr0uTif
	a+cShHjrIHEJj/jlc3Ga9YcBXGBa24noH5c3swhbuhK6MTuAWanThnD9zPo97OSFj9xWD43bBIC3U
	DU/AGlHHmJtCjKuj6TQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQfD8-00049p-LC; Fri, 01 Nov 2019 22:16:02 +0000
Received: from mail-vk1-xa4a.google.com ([2607:f8b0:4864:20::a4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQf9k-0008BT-1Q
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 22:12:33 +0000
Received: by mail-vk1-xa4a.google.com with SMTP id s17so4464356vkb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 15:12:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=oPoEfiJ829HFiTJF4c1zGL5TdlrTqAGNgCQhkPxdZv8=;
 b=LtAl7DtyP3CWOemlPwjpOVNnzn34lyrO0lR489D5hiJ2VdFoF7EvYDq2wfAcUETMUj
 AJJV9M7q6HlU6FTXIdD1nVIYYwLxTKh17kUwJIBUkK7g2ckd+p7WgRLwUL+U4LhnUrbS
 88BQeTCyX9oSneGkX/XIJMANH1JIMKlq987kvfi9Jwu3IO8heBNjQe3JNyCoyIBcqE5C
 r14KyfVUCK2DPs+EL3vCGkIShUp8wmIdLEHOjtbfUl144pnEGGFEFKJlhFi/qSds+L4C
 EczTWrE0OgWD8kqUXRcCY/eBf8by4lrn14g7ldLKqA66pCBxbbWJBFgW5xjq+nWP9ZjC
 NtIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=oPoEfiJ829HFiTJF4c1zGL5TdlrTqAGNgCQhkPxdZv8=;
 b=YwuGfprfys0+MM15f356l0LPoNODh8Bw60YPT+DSvySx1ulYuoZJRaiYCtUkJ6C31L
 l6IWPJok7wfKA0/fA+7WqyjFIDAc7Y+mnAeBzKK38gmeUsMZVYuElEMqNoHR5V9n0bFJ
 fKfux3byEg3cblUvrCn5vcQ59P0cTdwuoVg9KfvQC6/wQBXU0X+8rtAemSPY72zfqsYG
 TIyH0ltSpYQGKT42g6tN8ygvIQA2eK0m4do/S8yaECL6Eh+uobUDuq3+9sj8QdXSKI3q
 p3kMqfvx48oKXw22svIUTANxOdi8M6LFPM8PVLEEZr+ZlLaP1ky9Sj9bRJts2FqEFo6d
 mVcg==
X-Gm-Message-State: APjAAAVW3abebGEtokStDoEacH0jDjk5sn5aLcNNg7DOnP+EdoG9/n2j
 M1j+DGrvwlF0aeLX6ffRqbCiCl/uA9Qb3D9gsLw=
X-Google-Smtp-Source: APXvYqxf6pyuy2b0C7kGwVb9cMM9HBx/dT4rTM6z4dJTmBDml32z4MNPrDuebbuZ9ExwOLM18YhheN7oDa5AKWC4xdM=
X-Received: by 2002:a67:f7d0:: with SMTP id a16mr2505843vsp.108.1572646349491; 
 Fri, 01 Nov 2019 15:12:29 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:46 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-14-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 13/17] arm64: preserve x18 when CPU is suspended
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_151232_154447_66EB763A 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a4a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>,
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
---
 arch/arm64/include/asm/suspend.h |  2 +-
 arch/arm64/mm/proc.S             | 10 ++++++++++
 2 files changed, 11 insertions(+), 1 deletion(-)

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
index fdabf40a83c8..5616dc52a033 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -49,6 +49,8 @@
  * cpu_do_suspend - save CPU registers context
  *
  * x0: virtual address of context pointer
+ *
+ * This must be kept in sync with struct cpu_suspend_ctx in <asm/suspend.h>.
  */
 ENTRY(cpu_do_suspend)
 	mrs	x2, tpidr_el0
@@ -73,6 +75,9 @@ alternative_endif
 	stp	x8, x9, [x0, #48]
 	stp	x10, x11, [x0, #64]
 	stp	x12, x13, [x0, #80]
+#ifdef CONFIG_SHADOW_CALL_STACK
+	str	x18, [x0, #96]
+#endif
 	ret
 ENDPROC(cpu_do_suspend)
 
@@ -89,6 +94,11 @@ ENTRY(cpu_do_resume)
 	ldp	x9, x10, [x0, #48]
 	ldp	x11, x12, [x0, #64]
 	ldp	x13, x14, [x0, #80]
+#ifdef CONFIG_SHADOW_CALL_STACK
+	ldr	x18, [x0, #96]
+	/* Clear the SCS pointer from the state buffer */
+	str	xzr, [x0, #96]
+#endif
 	msr	tpidr_el0, x2
 	msr	tpidrro_el0, x3
 	msr	contextidr_el1, x4
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
