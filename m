Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EFCF1ACD3C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 18:16:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m6TCsK+1j1uXcB39Ra/ToHMdhQBgLoOyyF61hntHH+w=; b=V3KtH7ytF/3brd
	GSLYNrV4EtGafk12d983ezeAkcLl0ZnmweAzlRoNRpnk9BLPFhPiHHDU9wK4aDh0Pona9iT49EHbE
	lVSGJGc5ug3yioLR3JnfYXxj7LUsT4hFQoBCrQ3nS8BjWwkLr4/hMI9ne5K+ny0a6fVBZrofY16qu
	X6XZ+7Rul8zxh87g+QAYpr0a1LGYaqzBVpvMH4k3JDdaZB7D4DfwV3ivT0vRTe4DyzPAWj9497z42
	ILakWtITJqVZl+OJmhtKE5iPtoZVIdr+feFjDD7sMSUG63tcRw0InXuLraSvXgP8JPCSz3GydWPuO
	hsOPYADV1fvaBhChmdtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP7BV-0000P5-Bn; Thu, 16 Apr 2020 16:16:13 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP78X-0003l0-Iw
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 16:13:18 +0000
Received: by mail-pf1-x44a.google.com with SMTP id y84so3445632pfb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 09:13:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=ir6AMcU/LNJfVmH7TAbfuSTmLjnaQbzCZFrLbu9sicg=;
 b=PfLQtJvAzz5yI91olwSgmzdmwgdtJxdSpUwDBUqAfM/Qj4X8PTnr8pe6M1E9q+SxMQ
 9DuGyRyHutXrki59bdmwIERRsNZo12qtXtT7YTGaQUvErlBRD5mI0A9o3BWgwYogesFw
 pJQazMuF7VSg8nXXNbbuwnalk1A8GI2siOE+gzAVLDi5SEfj4qBjBhPGSFAFigx0XT27
 2J6qu4mUgNZPuqq+yi7V5b3R7FRrHRFEL+uzZRZfJJCkuZ3Y9YcoQ6IkCgna/0CQ22Jg
 qGjnRtJiwEZAIC0v5v+CcPVf8e5pwqpO5XgzgToKbUlUPQ54YIcNjAxSzrtDUK8hBIAD
 0GIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=ir6AMcU/LNJfVmH7TAbfuSTmLjnaQbzCZFrLbu9sicg=;
 b=sd1F8ztoKhk3AuSKBpZImdAmF3X8gzU9SCrFMbG8rXLE1mbMMb2GX01kQW4yr2xMsV
 tEYRxQZtFgUBVxCm6IU+Gz48Y5qozCZPIj7hrBJ5o/XldbEhDJlPXUqDlUgbh2ftL0qt
 L5hNBzk83UcyZcb7ofcJQI/SO8LdFZbpzp2u8tP6PxPav9dWYGZJw438ocXIMHAzJ6RR
 CRO7nyM0taVFKRMf+/7HUcajrcIAFCoxKN3KZZxTT+9zhS45PnYDdk63227s4PhhkA92
 /hAVLS/ys3j5pn7onu8hhk7q+mZz7SxTpjtd9YxgjffTReQAjWB03KaQ5oI8X1e8m9tv
 94wA==
X-Gm-Message-State: AGi0PuYsx3q6o8IXwnCQMZkp5F1RnlKFGg4p3MIglb9bJVoLAfka6GTQ
 6ZZyWI3J+Hhg5C7mb3kN3v58U9VFR9k/w/TVS1k=
X-Google-Smtp-Source: APiQypLtd8ftrhqgq/6RnJ5qnFSnfzNaIUqdmQcwCsxZfxvN3FzC3GYwf1kFiAS1IaIXQEFXlhjHe+bl82oElgHqTYg=
X-Received: by 2002:a17:90a:cc10:: with SMTP id
 b16mr5944791pju.29.1587053586616; 
 Thu, 16 Apr 2020 09:13:06 -0700 (PDT)
Date: Thu, 16 Apr 2020 09:12:40 -0700
In-Reply-To: <20200416161245.148813-1-samitolvanen@google.com>
Message-Id: <20200416161245.148813-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v11 07/12] arm64: efi: restore x18 if it was corrupted
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
X-CRM114-CacheID: sfid-20200416_091309_651951_C9BB9FFB 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

If we detect a corrupted x18, restore the register before jumping back
to potentially SCS instrumented code. This is safe, because the wrapper
is called with preemption disabled and a separate shadow stack is used
for interrupt handling.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/efi-rt-wrapper.S | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/efi-rt-wrapper.S b/arch/arm64/kernel/efi-rt-wrapper.S
index 3fc71106cb2b..6ca6c0dc11a1 100644
--- a/arch/arm64/kernel/efi-rt-wrapper.S
+++ b/arch/arm64/kernel/efi-rt-wrapper.S
@@ -34,5 +34,14 @@ ENTRY(__efi_rt_asm_wrapper)
 	ldp	x29, x30, [sp], #32
 	b.ne	0f
 	ret
-0:	b	efi_handle_corrupted_x18	// tail call
+0:
+	/*
+	 * With CONFIG_SHADOW_CALL_STACK, the kernel uses x18 to store a
+	 * shadow stack pointer, which we need to restore before returning to
+	 * potentially instrumented code. This is safe because the wrapper is
+	 * called with preemption disabled and a separate shadow stack is used
+	 * for interrupts.
+	 */
+	mov	x18, x2
+	b	efi_handle_corrupted_x18	// tail call
 ENDPROC(__efi_rt_asm_wrapper)
-- 
2.26.1.301.g55bc3eb7cb9-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
