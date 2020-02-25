Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AACB016ECE2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 18:42:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mta+urjKXaKaOHv9z8GNkMB6pw1+rO5EkXIdJGgl3Pk=; b=K3MOfkvYPhEcBq
	6HxRvrEh0Y3bQcS1qpKRIORj22Ftrx0TkinMAB4fDBSt1gt6oKz0CXpRR9lSnWPcUHOXOb1F/r6Yp
	hdL2cLUCq5fdQMxA7WtOm3DKKbQiz4OGfEwpZC/76DiZ7zpWmbnTO/34ZPyREYdDm0qK4ZykfyIOK
	4azJejmDceFfiRbe+0uE9JtOfOVlW4Tg+h525Vg9a9mtnMyYUB/dIZLCzWFXSOhTKi9eFwPYPgvXi
	pBx9AIkH+/b8+IK6KMRvQ3dfxp2USkHKzOQGbwMOQCEeav1fk7qpHtcPiJH5/ljorVqI/Apb50+k7
	K4mopxhsTtJvS6sDjGWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6eE9-0004pS-By; Tue, 25 Feb 2020 17:42:37 +0000
Received: from mail-pj1-x1049.google.com ([2607:f8b0:4864:20::1049])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6eBn-0001y0-Ai
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 17:40:16 +0000
Received: by mail-pj1-x1049.google.com with SMTP id i3so26804pjx.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 09:40:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=QniVckAJWtqLmmFgAWqtQvDUqGmhiEDDkK5Atd0uI+w=;
 b=B7ASfSbr6PJI1PNYuMw4AeQl2rfrBE18p50aZHmoTWWjcghaevDSqsyUvYLaGuvGEV
 wwBpIUOA2JHt7hx+G+Ornny4GKtz9v4Eypp4NgPZ3xEK3rgMRBRBuNUqNS+ox6ACh+ZC
 6cWbkc8+i4jYfG+umapz9k/Bm3qSztOLHJyMg8JMXVQHlKA9VuWwhJw3cIfwhzFXI03b
 UEh9pcFUZQVWnOG6NbIAR+vAckRKiK94vNJZQ4ldnB79ldCEHyc60gKr6pHwkSc3vVOl
 SlY8HCGuRiNp4u0S5QuDxi4DnFctp1zaF1wh2WUSCaV9cRZWkMvslEfisyUwfEbN9k+G
 Kagg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=QniVckAJWtqLmmFgAWqtQvDUqGmhiEDDkK5Atd0uI+w=;
 b=ezNAjHOY+KrzZn3Ru3/8E/NeBdiPbU/sCvj71rah52K5l/rZv0LcqE9e71vLBU94Lt
 CyP4AgVUci1RzSrWzOfaOrs4lLNkNR+fFdOhVye49k8nOWIWG3VDeg9R1e9eE1EHGeCn
 HjptN+5wY/nNMeMVmmHpkTk6dseBcexE1TXrHDiGkLoZr9N48NIUXM0dS8dd6nO7vyS9
 qOESNkPQw1EyoQqt9WloTdYEtZTmqqLQPHQKDcvqvn4G2XBWjpC7n6QUmsrs0jglEqMh
 vmh0RCnnk2p33S7QsKpnfRB1GgeofRs8XFKKM2osHN2gGSP1DqvdBiGXEAswrNIITzAR
 hZSA==
X-Gm-Message-State: APjAAAXqgos0PN4fI2cIZ9Xs3Epn3Ekoki0sv/QFFqZXRVzjZPhNeZ7C
 CK6QMHV3d2VEBB5WocWxNHJzCNKcB2xNUnOO+JE=
X-Google-Smtp-Source: APXvYqw22kkM3bH9wLjSIFkgjo4U46Ik1liYbPY7ppLoTBG5p4rEwIGlGJAnCM7FSLJOm8bUadpuV5p12hkwZ3bHzak=
X-Received: by 2002:a63:d244:: with SMTP id t4mr15492036pgi.241.1582652406574; 
 Tue, 25 Feb 2020 09:40:06 -0800 (PST)
Date: Tue, 25 Feb 2020 09:39:28 -0800
In-Reply-To: <20200225173933.74818-1-samitolvanen@google.com>
Message-Id: <20200225173933.74818-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200225173933.74818-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v9 07/12] arm64: efi: restore x18 if it was corrupted
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
 Masami Hiramatsu <mhiramat@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
 Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_094011_473351_71785C8D 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
