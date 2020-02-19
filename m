Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E96DC163835
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 01:10:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wSHeRK7ezdsHpG7VlY8ykP+Tz2Bn8orfKrWhvK5g5GU=; b=sUIFS86q+4zPrz
	7PQ8xqJbMTJB7zlmVhbsdrpHZCL9Lxdhh+6qTemiLE79nVkhfQ8W55K0UX0Ja5pkvsgrwExEi/id3
	hEj92FnQZPMsNRq7BqxLJh4WTokgTkN2CVpVNnt8LcwoMz0/zoDKmTyK4JokhEr3ZLmsgdOd7kcE8
	03nXxhgzf3B/LVw0W0xHC9fbUV96ZW+MrwbKOKNV/dWsH+9JBVK9QzRAcKy5eP6nFQ2guM+abBDtu
	yAQ8iKISM5C1Kdy1+9iVHegyQKzL0ZOkciAVPXrYlKaB+uIj9QaxpbLypvPe/dLJvCRXngnW+AoAZ
	j3L0024qcyOt6xVZUKZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Cwc-0002G4-Ew; Wed, 19 Feb 2020 00:10:26 +0000
Received: from mail-pj1-x1049.google.com ([2607:f8b0:4864:20::1049])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Cv3-0008Bl-Nd
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 00:08:51 +0000
Received: by mail-pj1-x1049.google.com with SMTP id i3so1075185pjx.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 16:08:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=tR8HWR8eyR6LK2Q8Pau54PB7Q0F7v08515rGGzIGLyo=;
 b=b5n4a+qzRVoc9p1sMaGcT/avtJg0p34XcrSWSeo6yE4SNClAhGvDWJAoBExyHPO3/M
 PugrHM1VkHW3JMcUgboaltvnYlevaK0mhr2LWRqBIjWKqlzzLgwrVNQ3WddvYgyZ590f
 EhOJfkNAkqMLFx8slzXRty6uvqQquUIPBM/qiVSwThzajXQpK2du4fa3QUrFH6uSuwiw
 w0rKl/E1ibiFUvV8qBI2200bkOB5w3Pa6/gAJnn7yIMSbqnGEL5kL5QKEghpUKm+Uin5
 /fxQ/rvydrg0/k7tj3penT6Yk7Wsvz1o47oE7V6wluUfG2Bz66AXSiCps8hDwWSTAkqK
 OklQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=tR8HWR8eyR6LK2Q8Pau54PB7Q0F7v08515rGGzIGLyo=;
 b=UXoPyDV0zA/9AO1jO3VbbBb8LcA1teTSmHvSpfBE4/5w/gCwUgnlOp/m8PjXwp98pe
 6ki/PF1RrEHAf5NrUrKoo0tzEaMGhGftdYlfKfPZIOFqz1XGZ2yz7oe4N+S2ejkF0TRI
 5K78yK+BUz0UuLfnfPNXJJTZF2gfRZddlAJ5SQjMBpStVY3PFFkiDQf71zl78d6i5qdD
 rGrZi9B+Lv+s0zZdHKfjEqxT2sSPtiA07bqw9/T9ES1s7AyUpZ9+FSd1X9HUilEQmzM2
 kew+EppU6BSE4WIQzDpey1Uk1ZpvC8ygkzJXBjvmvhem5J/f1T5HdgQmNfRDyty+3gQi
 5lzw==
X-Gm-Message-State: APjAAAWk0OFjO+EMIR7bg3aFGbHcgz4Y3yYiNmKh90jP01BSbJphuSw1
 THgOKRd20My2jHMclidev6HtcQWwm8Ky8PIWqNw=
X-Google-Smtp-Source: APXvYqxOXrqP7Hvugsa8IU49Lr4UDLSOLYebYtchIFGNM9hOXl0Twc3BrDAcc+jG4ELWfvylhcvwGTzbahuYoyApHyM=
X-Received: by 2002:a63:3d44:: with SMTP id k65mr4554387pga.349.1582070928011; 
 Tue, 18 Feb 2020 16:08:48 -0800 (PST)
Date: Tue, 18 Feb 2020 16:08:11 -0800
In-Reply-To: <20200219000817.195049-1-samitolvanen@google.com>
Message-Id: <20200219000817.195049-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v8 06/12] arm64: preserve x18 when CPU is suspended
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>,
 james.morse@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_160849_894703_B51551C3 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Masahiro Yamada <yamada.masahiro@socionext.com>, Marc Zyngier <maz@kernel.org>,
 kernel-hardening@lists.openwall.com,
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
index aafed6902411..7d37e3c70ff5 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -56,6 +56,8 @@
  * cpu_do_suspend - save CPU registers context
  *
  * x0: virtual address of context pointer
+ *
+ * This must be kept in sync with struct cpu_suspend_ctx in <asm/suspend.h>.
  */
 SYM_FUNC_START(cpu_do_suspend)
 	mrs	x2, tpidr_el0
@@ -80,6 +82,11 @@ alternative_endif
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
 
@@ -96,6 +103,13 @@ SYM_FUNC_START(cpu_do_resume)
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
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
