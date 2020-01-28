Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CBC14C05C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 19:52:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BRvUN0kUZrfBaYHik0gXXl2jgISIzsgyPG4SjY1o+1o=; b=kffPnuEne16Fhh
	iTTXi/6a8XCv1YTMz+ABu4M72kO0iZVgjh2ZxC/GzRGByHkWmuSC/e9sVE2UC4UQB4s9Ou5FR5qNd
	Kfqz1aI7cyH/mLhMkmMxpMhtPyX3pmqNq+Xmp5jqb3z5lGAGNlFMBtmxADkvZdCCQxJ5+zEQGHHcO
	WoJsi0toHQSm2r3kb/RLNf3LlKMtjYENTIQ9fkldKgkPkb3ZuhhpEFrum5F4nwWpcGEhEfQGSxP1X
	1ykTPrCD3Xu8VCsmVJFhRtbI9G7Ua3HkyHxjet2KBt5e4nUx0D+k5DMnh/B6KYIouRnd6xuKqEP8f
	lzgz3WAsFV2ovFjJuxUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwVxy-00027q-VU; Tue, 28 Jan 2020 18:52:02 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwVvw-0007qR-5r
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 18:49:57 +0000
Received: by mail-qk1-x74a.google.com with SMTP id 24so8966671qka.16
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Jan 2020 10:49:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=7qZDsX8PGWVYt4iEMt/hEQ+wAm1UsjKf1d+2vHZ6hPI=;
 b=KS9unC98BEN8reSNsSatSdGOyj9rhjRIhLpWA4Oym2iRcIbRcgujukrAJVafuptIVG
 4EooaqgtRT4z7P+gwfQEa6aLMk1SNJwyZKwX2crlZuGyjCIlB019qhZdYW5KDGB7SEtd
 0PuR+pszsgeqyBZrTkpSnRyXr+6t67faREc4ZftAuETIwNEYKpHUPeqa0nonCQaAHyP2
 wD25AjVMJD2kosLIy8FOnX8wGleJoEeAginjYdtC6nC2di6uwR2ExHm37hyKDxKy72du
 p8OwOQ+2vYq84iwfEx6zX7e/LJhw9x1StdJnITGBGfd8VptfiMqFNL8peyNZv1qVoP+e
 +6qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=7qZDsX8PGWVYt4iEMt/hEQ+wAm1UsjKf1d+2vHZ6hPI=;
 b=FFsuR0uRm/eQQ6+mA/b0OmTh3XIXF7oJ4OQVQiKpLZvKkH3urHU8SPFnlwTrCJtIky
 RdzbmzvW005CZ4oUwt4H99ykO3ZT8TDFlOZqzSNgyEezIObrNml3WKLLiyNE5wXjX/Ii
 aG4uiYl0VTxh6l7msOvI5eQzl5MK8wOSI1IOcwy8AXXoXuKj8MC0fp994zEnH6qOQ2oX
 5Fadp7Pu+BcX7Yh/KQf8/hwV5u7Qqr10i1LywOHqZnSTSAWDKFhwio708GSU3NKsT+5o
 Y0D4x/jtTlcfJOpiWyLb3RLRFnGMQ07ksdWcO2NDIVwf591BrRbMKCSM5R6dR9lAShAg
 Frgw==
X-Gm-Message-State: APjAAAXFFH6dwJjPtel/Ox1G8ntrZoqnw+WJWBOXg2r+OOYDeRUUkNiC
 urHWhmn+5ULjpXfqKzywn45MC20ACnUa03lzP4E=
X-Google-Smtp-Source: APXvYqz1ANohbb/5vvdBoYWBYp5QONjn2Th3Usy5pRDWtLh7ROCJORzEP/CMHwmepkxfOG/b7sXyq/Vz+8AN5R27oWY=
X-Received: by 2002:a05:6214:965:: with SMTP id
 do5mr23635758qvb.202.1580237393882; 
 Tue, 28 Jan 2020 10:49:53 -0800 (PST)
Date: Tue, 28 Jan 2020 10:49:29 -0800
In-Reply-To: <20200128184934.77625-1-samitolvanen@google.com>
Message-Id: <20200128184934.77625-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v7 06/11] arm64: preserve x18 when CPU is suspended
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>,
 james.morse@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_104956_258137_C8B30F6C 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
