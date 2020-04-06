Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A76519FAA8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 18:44:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2DqVLGclOtOxPiIn2HGLYphWQcvI+J4xcwhh4WwNL/4=; b=bL9OP0o/MW+hT7
	6gzfYLT/3oRbSrzuqG7kVTFKA5t+/PCm0B60xypk4A2CIf8rgIyKjfx5Gzqk0IC/nTknDD1g9pJSY
	PnfoPxoO/HsLxk3l/FqKDj+ZciOLVyR92bKXRjtv7QDyB5lebhak96iQNwgpyO0/e3hfiHXyb1vLu
	UhcJpjBYFBcWW42dSSsK/KiDURA16ypzoZE9VYwRZdTczYPai2t+nNm7YoyA5jsm6sH9pvhEwq+yL
	ZMjawPe3UjBWQVbd79cN665/bXoDX1YXqvhmB9muCnVVdq9uZO5N+dwby/SvjwpbZDQWcj2MVHVxx
	c/4ylcETkreEG3TRn8gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLUr1-000673-Cq; Mon, 06 Apr 2020 16:44:07 +0000
Received: from mail-vs1-xe49.google.com ([2607:f8b0:4864:20::e49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLUot-0004De-Q0
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 16:42:02 +0000
Received: by mail-vs1-xe49.google.com with SMTP id l8so914298vsb.22
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 09:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=P7tRJ6/bRwi2I74AEfEJ7NL6sovvq6Ksezb3luMLZ/I=;
 b=I6aOOb4F+m585U3+RTjXCgdA35wkhP1CN3Uhmh+0KXvkwJcQQrkknIVKYFc21EGa9T
 gXREpmuKmKvxZJQyHbkni+ojnnrEUvsfKtX9CGOGZlTJmkKexDQDF2et3kSeqToQRiKo
 Wt+3R+N5GtS2ABYhkNEB3tNvZvXgtf9rP6ZYtHP7qsABnpKM8zORokraX7ZOWpN6zase
 7NeHFG/CLonjoUheDOHlw7LzXo3Z6KjdaB9CNgPtQJRi3+pdaP4ZaWGXm8Emnc+boObD
 Up/eCuQFeygzhdH7a2SHIC/Eb6fhV//t/0cYReB1Mak0oksza68jY0Bqyf5hZJG0QQMh
 gQVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=P7tRJ6/bRwi2I74AEfEJ7NL6sovvq6Ksezb3luMLZ/I=;
 b=Rjlwa4i683C9dwmakCYCAIEErjsKV8d336mPD4paVfQULKuokxCEqlEGsNvsM/rkSt
 epYADbW5WspYXsLviZvJqFsF88VijmLCMJg4NE8vBa+xvhjEhi7SHCbsYassl5dd9c5U
 xvWd0uJ0P6wDjzgCjhastkymUK/ARrDGSmXnHkDVN/L2r6msfo8iVFcZXpp1tuVNCio4
 vtA1dH4tX81HA0YytG/8SOje6kBaNadk1YJk7b7kvK2eCfVDh4D+Dth51IXQSqDLT0RT
 29dZrlRooSFHOwjl8VBfUB90oT4BJZoec1YadfGrUZZ0ftpwAqQRnePg5GkfonqOQqpl
 a0Zg==
X-Gm-Message-State: AGi0PuYvfCCetf1kxRhon5KFu3PcRV0WrkV3Td74buyl4A6Hq5d5N+Fx
 2coGg/1GkxXrX5yjAWqGdI3FL2W/H0MK4/hwWrA=
X-Google-Smtp-Source: APiQypJJ2vW2BCKCiSZ+xIRCi6v70yfbRRHeakQcdO++WZV928etab2mQBvVqnKPYnI22hBzW364z/buE5ZaeQqgJWo=
X-Received: by 2002:a67:fb0f:: with SMTP id d15mr471360vsr.88.1586191313260;
 Mon, 06 Apr 2020 09:41:53 -0700 (PDT)
Date: Mon,  6 Apr 2020 09:41:16 -0700
In-Reply-To: <20200406164121.154322-1-samitolvanen@google.com>
Message-Id: <20200406164121.154322-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200406164121.154322-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
Subject: [PATCH v10 07/12] arm64: efi: restore x18 if it was corrupted
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
 Masami Hiramatsu <mhiramat@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
 Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_094155_877938_A1FC543F 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e49 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
2.26.0.292.g33ef6b2f38-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
