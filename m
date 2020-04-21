Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C303A1B1BC0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 04:17:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m6TCsK+1j1uXcB39Ra/ToHMdhQBgLoOyyF61hntHH+w=; b=O2yNMfd/G2IKUS
	IacEJuFVE1qDIoCzyxtirflV9xlPgVzDqBk/bYcGQoHnERXlNYPSYzHjMuWlql5pP91Anv21u7TIa
	AF1N18eNMuNBxd/4VwWsMWajEi+SaxoSom6Hqbl05eyggnF/bzG67lLElUp0wUu6YDDeUeMDPLRUw
	zqkhHgOFw2Vn6cZU3qcaRZnSid+JyRyKoASOoZIRU2FlzEQEfwiiyP3TU85e9lB+7PcrwLIFZ1R/8
	lf1Z6lBrYbuPTlCpp0ofDK5brk/HXpOJaOt2RDotFZKZyoN6GZ5Fhv3cJpa/VrArgN0uskpU9i7sv
	aZgaltabW1XWNBOtpmAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQiTi-00033Y-OD; Tue, 21 Apr 2020 02:17:38 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQiRS-0000mb-MI
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 02:15:21 +0000
Received: by mail-pf1-x449.google.com with SMTP id r28so11833531pfl.23
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 19:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=ir6AMcU/LNJfVmH7TAbfuSTmLjnaQbzCZFrLbu9sicg=;
 b=QTHCdrmFKIB/Tam+WFnqNp4+O7lTnQjXDzPLeYJW2nLi3p+F4yQ2Y8DZVDTCwVRq6Q
 eg8pdSDyHTrZJWVleCGpiYE0vBCBADyPgfeKL1jvUz5cl/63rDlPkhYZnLXW5EcGpcVc
 pGcRb8ehfFrcc+H5YuR9BWePyIpoc+Vh39Y0pRIm/lqCuz8hiPmNAnaY/unezPdgbiZP
 aHELlMunluzusfymqfmKV5EfIa6lRfT+Z0m5QxDzworuJTMbhuOj3XfNh6JSDitvM/N4
 JBIil9L4mq7qW2pE/kvzNUPF2wkyIiMJhDxbq4fEsxBUku7c0NKWZZiO2wMtwmErocuJ
 aZCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=ir6AMcU/LNJfVmH7TAbfuSTmLjnaQbzCZFrLbu9sicg=;
 b=r+yDHE/9d5e/mNiKqIFAtVresPcp+X0WvmarAkMUXQhbNj5PztGFe3+TTy0xLhjoNY
 leCqWTyIbBl7lNDUOcRaxp6LMu/rQ62RLjGzkiZCM58NpGEKkp1a+uoSqq9ZYUcROU5b
 FGFu8A2gRzNvkJb4kaDWcqTQs/Z3CUnfSWDflwbVHkr0TraMl+raqvDQMT1bHEzUIGCf
 MzZ1+fgvJKh6DAwGWTRx/GZ9dRsovInAaOJynamNrcx3G2HEHzo3CINAsEsPH/CWcEhP
 UA7qDGOu3wFc1XqqUixneCxklwPb1tyqiHMl8YkuxQufyy4jOqBGAA76XKCLtgGOnA1h
 /t4w==
X-Gm-Message-State: AGi0PuaMpPUfkMyvJ3g4v5w84S6m8mBJo0+a6nWqDL3bn1vkTD1PG82C
 luUrxeV/QcETOtDX6Ja7NbbtjLB+kUzsHINmCi8=
X-Google-Smtp-Source: APiQypKMZMqfx/OcrcbDtzjGTijQl3YSQFjckDxyglhj7d6MnhDSddDwRZznsOSEAJZMqEO9LCcVx9cM4EOpbzh+h/U=
X-Received: by 2002:a65:498f:: with SMTP id r15mr19453163pgs.345.1587435314416; 
 Mon, 20 Apr 2020 19:15:14 -0700 (PDT)
Date: Mon, 20 Apr 2020 19:14:48 -0700
In-Reply-To: <20200421021453.198187-1-samitolvanen@google.com>
Message-Id: <20200421021453.198187-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200421021453.198187-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v12 07/12] arm64: efi: restore x18 if it was corrupted
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
X-CRM114-CacheID: sfid-20200420_191518_766130_9B58CC31 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
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
