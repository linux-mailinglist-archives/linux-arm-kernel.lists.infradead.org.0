Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54268EB568
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:53:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zn5jANRNr4Mdjne4PTPmgf0r4BQyaC13SaScdL2cf0Y=; b=M4eRsbyhjLY31Z
	aMdSG+AJzCf9P5Be699nreuC3/1Qv+XwHmZluMA8J7HIwKxDzXPrYzhE1rwdk3gOnX7Kz/6mIA6om
	LvFSPwDARSKpXkVuyJyWx+qXDzQZBZpxS90/41fhLc2JsRBOKbgdBai+Pv/aw0gmT6mAMrcIjs+WR
	1kclnWI7AEWgMpZ9icNrC1PJBD1slt7Kxwncrnr626zNr/QyO/txSij6dR6l2NpjVQyV4pZ53mwP7
	6oJyDVzhh6yE/qwA9k7+T9De46rAGDWHdUvzIYogTbfcYeZNaPly2opQI+YRuzw0S4NxQX8OKBGrH
	ikhACx/YthKGK4huYw6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDhA-0003eJ-JR; Thu, 31 Oct 2019 16:53:12 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDbY-0007EG-QQ
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 16:47:37 +0000
Received: by mail-pl1-x649.google.com with SMTP id f10so4276585plr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 09:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=+uiLq+iUoKYbKnLFQDjwDIIzqGudQy8o1UFEOkmkrHU=;
 b=kjwr8ND7m1cv4iSNuEZOGhNW0Jvsmvr2aFrQFvCwGpKkkbxdVb8El383SJnvJL4kdI
 iUDB/VVToctJt6509RMF+oFsBcmbyjOjvFn9KZDRf7pUssUIl1plh0aaN7R1AxB1fYrG
 hVxnJ8tSwgg+2SqSgKWSR+qrYYrzF4/c+dAi5buVvIC0R4crMHKtWJhzr9H5KMHgiHKt
 Yi8bhEI9jYa9tcUZiNkBfQ5fzHUOBy9Tpz2CR4BwPRaTdxRCiczEcBH+q/e/DZVOR+5O
 j3GZxAU0PHjXfHImzbELWB2v0FfyOuNABYuHhuZD/+DaNds085oMgYh3IsgJGrFnX19+
 vt8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=+uiLq+iUoKYbKnLFQDjwDIIzqGudQy8o1UFEOkmkrHU=;
 b=KbTYw5HZLixS0q80QNZUxf2et4oRDDPnh9pwMTKPphwWNCR6CL6LtlojRmze6PqZ+k
 wDDC5DAu4Sq0I+JSWo0O525MWZwqS4pZBZoY/t+9rjS8EMhiW8g4q4R3+CzV4Bp0jViK
 nm+EGpnOgWuStnLQCpGbkZUjwOGduD0dK0gAutEPr3Aap+dFS6zjCiL08iK1y7r7ZFAY
 DeMmvz72OwJQnurFjZuFWB++CRtcCk9CU/+aMEZXwHdAk2weYdAFVijSzhpuTrFGKIHp
 iPtr8/oJG94k60ditoQnh2cM1jRFQZGeKmHgaOV2Px75uPa60dxu5tRYt32uOh8eFF9F
 5Yig==
X-Gm-Message-State: APjAAAUkQL1j/XjVFf2kTg7CG7KA3aETysTZEtHjek3PlE4zHWnFPeJx
 s8dkpElmpO+Q/BSYbR5trTpR/uNoAlSlS7r92aI=
X-Google-Smtp-Source: APXvYqzlFxyF121CIe85RASYbsEhGryD+IkK99FgQ3Ziz6Hy8dGPnJj8WzzVEyeNtwDP9s/uUld1eg/MwcrX7ost1fA=
X-Received: by 2002:a63:64c4:: with SMTP id y187mr1758578pgb.150.1572540440772; 
 Thu, 31 Oct 2019 09:47:20 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:34 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-15-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 14/17] arm64: efi: restore x18 if it was corrupted
From: samitolvanen@google.com
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_094732_899219_2C16051B 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>,
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

If we detect a corrupted x18 and SCS is enabled, restore the register
before jumping back to instrumented code. This is safe, because the
wrapper is called with preemption disabled and a separate shadow stack
is used for interrupt handling.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/kernel/efi-rt-wrapper.S | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/efi-rt-wrapper.S b/arch/arm64/kernel/efi-rt-wrapper.S
index 3fc71106cb2b..945744f16086 100644
--- a/arch/arm64/kernel/efi-rt-wrapper.S
+++ b/arch/arm64/kernel/efi-rt-wrapper.S
@@ -34,5 +34,10 @@ ENTRY(__efi_rt_asm_wrapper)
 	ldp	x29, x30, [sp], #32
 	b.ne	0f
 	ret
-0:	b	efi_handle_corrupted_x18	// tail call
+0:
+#ifdef CONFIG_SHADOW_CALL_STACK
+	/* Restore x18 before returning to instrumented code. */
+	mov	x18, x2
+#endif
+	b	efi_handle_corrupted_x18	// tail call
 ENDPROC(__efi_rt_asm_wrapper)
-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
