Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1901F191B1F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 21:34:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lBwmX6m8RZxjD1zr1ZU86KFvj4Yx4LxjWtVsHo9i6h0=; b=UW5sT42FjisypD
	nTA9TwobqADBgiCRzisB/k4EnoElrAs1lnjijns0xSqIyzxx85PWpzPwm9tfikgzeOAdzhEtKIP45
	OUPXoE5+6hBczZbypIQEOJpYwA/E6hCISC9wl/oIhEDlPC0U8lxpmY9X41jcRLxfUhQtNqfGHBU7Q
	klX72t9RVccL8cVEtyVP3msqSV6RbnaeI2NEuj9N/cNpu4solwxVTw6QS1vIKzrCGubVf+Fy8fbPp
	9CjeGuD9Jjcek0dQVeDVk0JE8zYcebMzquRvlalQEqxJuSmROIs7hRIw1z7TjC7AgitZK8A/tXypu
	xt9WsHnUyZedUMhRzesg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGqFT-0003Hw-6U; Tue, 24 Mar 2020 20:34:07 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGqE8-0001xW-3i
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 20:32:45 +0000
Received: by mail-pl1-x642.google.com with SMTP id w3so7900893plz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 13:32:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=c3b1sjWFJGWk+HhbHvBn4evu301M7fqA/kMQ4pyC4tI=;
 b=S9Srk3vtm/u5AWxb5Lq0VLBe/+/+CUvcc/nWuriifzbcDxo3ZwBkLe8Zpl+BamGg/O
 HO1v1zWZwiU7plLhdxR37s1Jaqc0uJSA8G7tsY4VxqWCO/G2fiHTxNvERagnEIgId99M
 jOOdb0wJUrZaXGZR5SVzv7rR8cyPHnbBh6gDc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=c3b1sjWFJGWk+HhbHvBn4evu301M7fqA/kMQ4pyC4tI=;
 b=J+TFYYZVpYtdpHKV+7bYUJLrNRgCAcJs3XJWmNprnnkmQrckHKd3CMpfQsGuAcXEJf
 7f8VovNlzu9p5s+1L3kqhEfNv2IgOPKfX2OeKRBltwpI2OnAQCNrPcuDn0asur00CCW7
 sWHuGkJwbMYmjZ/K2wyvLpF3844cnhmmimEpjLiAwO79zjXJ21GQTg+oPth1waI30omt
 Y6Ovr88Y4ExaOpUKQV0yh5LIpYVsBQQG3NuOcn1EdYYer+NtZUgf/WMhdTd9RJ4T56/u
 e165RD8RFrfHw/Bg9kNg+0fP/a6sMgIvlUzlKUmBnRZaXlsWRj9a5dtnHeXzBuwRwdpt
 ujIQ==
X-Gm-Message-State: ANhLgQ2meKgQS2P7GEbYsZa6rpz5o9DHPsDwyExeKJddf6BJm6fsm+Pn
 Uhhnr+89CkrXdZLOQXXEjblJZw==
X-Google-Smtp-Source: ADFU+vtXBHEgdg26RkMBmCkSMYW4AGLyko9MzjPWEETXma0en8jpa6fm5D16S9175yT7TTEUnSU+xQ==
X-Received: by 2002:a17:90a:1911:: with SMTP id 17mr205762pjg.65.1585081963230; 
 Tue, 24 Mar 2020 13:32:43 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id v26sm3813241pfn.51.2020.03.24.13.32.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 13:32:41 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH v2 5/5] arm64: entry: Enable random_kstack_offset support
Date: Tue, 24 Mar 2020 13:32:31 -0700
Message-Id: <20200324203231.64324-6-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200324203231.64324-1-keescook@chromium.org>
References: <20200324203231.64324-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_133244_192085_1766C480 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Jann Horn <jannh@google.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Andy Lutomirski <luto@kernel.org>, kernel-hardening@lists.openwall.com, "Perla,
 Enrico" <enrico.perla@intel.com>, Will Deacon <will@kernel.org>,
 Elena Reshetova <elena.reshetova@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allow for a randomized stack offset on a per-syscall basis, with roughly
5 bits of entropy.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Kconfig          |  1 +
 arch/arm64/kernel/syscall.c | 10 ++++++++++
 2 files changed, 11 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 0b30e884e088..4d5aa4959f72 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -127,6 +127,7 @@ config ARM64
 	select HAVE_ARCH_MMAP_RND_BITS
 	select HAVE_ARCH_MMAP_RND_COMPAT_BITS if COMPAT
 	select HAVE_ARCH_PREL32_RELOCATIONS
+	select HAVE_ARCH_RANDOMIZE_KSTACK_OFFSET
 	select HAVE_ARCH_SECCOMP_FILTER
 	select HAVE_ARCH_STACKLEAK
 	select HAVE_ARCH_THREAD_STRUCT_WHITELIST
diff --git a/arch/arm64/kernel/syscall.c b/arch/arm64/kernel/syscall.c
index a12c0c88d345..238dbd753b44 100644
--- a/arch/arm64/kernel/syscall.c
+++ b/arch/arm64/kernel/syscall.c
@@ -5,6 +5,7 @@
 #include <linux/errno.h>
 #include <linux/nospec.h>
 #include <linux/ptrace.h>
+#include <linux/randomize_kstack.h>
 #include <linux/syscalls.h>
 
 #include <asm/daifflags.h>
@@ -42,6 +43,8 @@ static void invoke_syscall(struct pt_regs *regs, unsigned int scno,
 {
 	long ret;
 
+	add_random_kstack_offset();
+
 	if (scno < sc_nr) {
 		syscall_fn_t syscall_fn;
 		syscall_fn = syscall_table[array_index_nospec(scno, sc_nr)];
@@ -51,6 +54,13 @@ static void invoke_syscall(struct pt_regs *regs, unsigned int scno,
 	}
 
 	regs->regs[0] = ret;
+
+	/*
+	 * Since the compiler chooses a 4 bit alignment for the stack,
+	 * let's save one additional bit (9 total), which gets us up
+	 * near 5 bits of entropy.
+	 */
+	choose_random_kstack_offset(get_random_int() & 0x1FF);
 }
 
 static inline bool has_syscall_work(unsigned long flags)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
