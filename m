Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE15CEE3C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 23:14:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+kO0w5mxMLx6g/8IPKa9VxWp0q5Hlsed2iA1mRJoJnQ=; b=q7rJIjgMATaF9q
	XU9IsdTVYo0kRQTozux3iRugG6Rswwoc7Nz08vYJVHBbwzzbJRqRpOCP0VCCISm8GXKIZ0NHoUezH
	O3UE6g95oGUKfhy7fmVqPStQx5OIlfFtoxtUDbStvkZlixwwuAKQU8PtOc75xnrNgJf2cmMfelB7G
	ddRXs2sv9qGUT+JG5I735QkHHmM3fY4NThjTdf+3TvouqYsNYziMsvopXg5aAWFxttlYhOPubFjAS
	lgpN5UzKUWVBDkYWzXyJ0wD2/rd3Smj+sVVQVHG+XRljW0+BBhRFcFds6yMVaBIjEeWjA7iF1SNq/
	KdgI7Qka8gewSn3UPpwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHaKw-0004D3-Gx; Mon, 07 Oct 2019 21:14:34 +0000
Received: from mail-vk1-xa49.google.com ([2607:f8b0:4864:20::a49])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHaKp-0004C9-AC
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 21:14:29 +0000
Received: by mail-vk1-xa49.google.com with SMTP id q187so5563861vkq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 14:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=fBfJjWCRhUxG21Ng89HEbOaecnd7jMgx3odQFdBCxJ0=;
 b=LCERyyEkhTVAeNgqdkbiDeOz17qS0c6prgo+IvWGSyIjN8hlkJkU4bQhVGDLEkrtt/
 9OL9NgQsbq9SBZUzrNmTqIsk7KMbjS2osBcrPpAD7ZuIqgqpzDPWuGVaZQsQHtjm34+0
 /K3CKdKSNK+SxDcnbtLwnZRbwKLxrTVfQUjkcEWQcwKZQwH6A8t73p44wUFGJA89Vkvv
 /cMpjXtjzgqNIhBnYpUe9ZUO5yChcsmOGIxU8VIpVzlPzwL4nkzgZ/VkY8kIqJbC8G6Q
 iFyskXJpjfzO0ifcz1tB7LWzOMwxadjuaVOwwfpv9GZsbjwIL+05pwr/ypfjwDcmW5Qm
 xB2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=fBfJjWCRhUxG21Ng89HEbOaecnd7jMgx3odQFdBCxJ0=;
 b=QZ9cqHhCCMk8sqIeo3/4gSvTXlTZlxks/Zd7x5biVcGS0FiRXi3gzyOOxPciLF0got
 wXA2akCzDOes7c2nRnCDho6JoCtpAt7RiIAINJF29FnnG1M7wcfelE4sC6bqgcn9a6j7
 X6GoMufvsq1qrP2Ez6Z2HrfXbbYZN9zsxNl7GB4S7g6Za09I45tONMOOprlP8CQv/Bak
 icIacslXogjOT0Wb4zrqJdid8fS43QhvXdJXF2u//QTPdxER9xMq0rulRBeqXOQ/8uG5
 Zact7VEAKt0CF/iDYt3jtBR4RTLhSWBVvvrlGp6jBXHa9vh0d9GG2UzCKx+jemvlCLWL
 Xzpg==
X-Gm-Message-State: APjAAAU4L/QkqgLWn72wOtxTlVAr8UTo3kq0oWWvchusDxZftc+9cjHR
 xLVB0rBnvPXxHl7uq9DUMreKD6jj8uDzIJSvSys=
X-Google-Smtp-Source: APXvYqxF+3FXrWI0F1JhQsVjGtNovxca74xNOx0v6Tym1VjSkx5iVmESuRaQIaxUUjlmnakmGlvpseIpPCngOR9kjVw=
X-Received: by 2002:a67:2e01:: with SMTP id u1mr17012140vsu.44.1570482862813; 
 Mon, 07 Oct 2019 14:14:22 -0700 (PDT)
Date: Mon,  7 Oct 2019 14:14:18 -0700
Message-Id: <20191007211418.30321-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH] arm64: fix alternatives with LLVM's integrated assembler
From: Sami Tolvanen <samitolvanen@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_141427_378498_479A9186 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a49 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>,
 Kees Cook <keescook@chromium.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

LLVM's integrated assembler fails with the following error when
building KVM:

  <inline asm>:12:6: error: expected absolute expression
   .if kvm_update_va_mask == 0
       ^
  <inline asm>:21:6: error: expected absolute expression
   .if kvm_update_va_mask == 0
       ^
  <inline asm>:24:2: error: unrecognized instruction mnemonic
          NOT_AN_INSTRUCTION
          ^
  LLVM ERROR: Error parsing inline asm

These errors come from ALTERNATIVE_CB and __ALTERNATIVE_CFG,
which test for the existence of the callback parameter in inline
assembly using the following expression:

  " .if " __stringify(cb) " == 0\n"

This works with GNU as, but isn't supported by LLVM. This change
splits __ALTERNATIVE_CFG and ALTINSTR_ENTRY into separate macros
to fix the LLVM build.

Link: https://github.com/ClangBuiltLinux/linux/issues/472
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/include/asm/alternative.h | 32 ++++++++++++++++++----------
 1 file changed, 21 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/include/asm/alternative.h b/arch/arm64/include/asm/alternative.h
index b9f8d787eea9..324e7d5ab37e 100644
--- a/arch/arm64/include/asm/alternative.h
+++ b/arch/arm64/include/asm/alternative.h
@@ -35,13 +35,16 @@ void apply_alternatives_module(void *start, size_t length);
 static inline void apply_alternatives_module(void *start, size_t length) { }
 #endif
 
-#define ALTINSTR_ENTRY(feature,cb)					      \
+#define ALTINSTR_ENTRY(feature)					              \
 	" .word 661b - .\n"				/* label           */ \
-	" .if " __stringify(cb) " == 0\n"				      \
 	" .word 663f - .\n"				/* new instruction */ \
-	" .else\n"							      \
+	" .hword " __stringify(feature) "\n"		/* feature bit     */ \
+	" .byte 662b-661b\n"				/* source len      */ \
+	" .byte 664f-663f\n"				/* replacement len */
+
+#define ALTINSTR_ENTRY_CB(feature, cb)					      \
+	" .word 661b - .\n"				/* label           */ \
 	" .word " __stringify(cb) "- .\n"		/* callback */	      \
-	" .endif\n"							      \
 	" .hword " __stringify(feature) "\n"		/* feature bit     */ \
 	" .byte 662b-661b\n"				/* source len      */ \
 	" .byte 664f-663f\n"				/* replacement len */
@@ -62,15 +65,14 @@ static inline void apply_alternatives_module(void *start, size_t length) { }
  *
  * Alternatives with callbacks do not generate replacement instructions.
  */
-#define __ALTERNATIVE_CFG(oldinstr, newinstr, feature, cfg_enabled, cb)	\
+#define __ALTERNATIVE_CFG(oldinstr, newinstr, feature, cfg_enabled)	\
 	".if "__stringify(cfg_enabled)" == 1\n"				\
 	"661:\n\t"							\
 	oldinstr "\n"							\
 	"662:\n"							\
 	".pushsection .altinstructions,\"a\"\n"				\
-	ALTINSTR_ENTRY(feature,cb)					\
+	ALTINSTR_ENTRY(feature)						\
 	".popsection\n"							\
-	" .if " __stringify(cb) " == 0\n"				\
 	".pushsection .altinstr_replacement, \"a\"\n"			\
 	"663:\n\t"							\
 	newinstr "\n"							\
@@ -78,17 +80,25 @@ static inline void apply_alternatives_module(void *start, size_t length) { }
 	".popsection\n\t"						\
 	".org	. - (664b-663b) + (662b-661b)\n\t"			\
 	".org	. - (662b-661b) + (664b-663b)\n"			\
-	".else\n\t"							\
+	".endif\n"
+
+#define __ALTERNATIVE_CFG_CB(oldinstr, feature, cfg_enabled, cb)	\
+	".if "__stringify(cfg_enabled)" == 1\n"				\
+	"661:\n\t"							\
+	oldinstr "\n"							\
+	"662:\n"							\
+	".pushsection .altinstructions,\"a\"\n"				\
+	ALTINSTR_ENTRY_CB(feature, cb)					\
+	".popsection\n"							\
 	"663:\n\t"							\
 	"664:\n\t"							\
-	".endif\n"							\
 	".endif\n"
 
 #define _ALTERNATIVE_CFG(oldinstr, newinstr, feature, cfg, ...)	\
-	__ALTERNATIVE_CFG(oldinstr, newinstr, feature, IS_ENABLED(cfg), 0)
+	__ALTERNATIVE_CFG(oldinstr, newinstr, feature, IS_ENABLED(cfg))
 
 #define ALTERNATIVE_CB(oldinstr, cb) \
-	__ALTERNATIVE_CFG(oldinstr, "NOT_AN_INSTRUCTION", ARM64_CB_PATCH, 1, cb)
+	__ALTERNATIVE_CFG_CB(oldinstr, ARM64_CB_PATCH, 1, cb)
 #else
 
 #include <asm/assembler.h>
-- 
2.23.0.581.g78d2f28ef7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
