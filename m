Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1359ECB1B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 23:13:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=htD+YRumA84apyX9xMQdnM59eCvTrGrZy+Qb/HO4ETw=; b=UGG1lk5GJdooQA
	OYrZuPRUP9TsaGulAqWbWwg3hKssdHC0LtRgZtUfhCSb/DZqtOz1l188py9u7tZI8fSo1KQrz9Lg/
	8QovTmde6VlJQxf775VLKkqFqFvRez9UBuQjyrXYXqFV61gTmkAbmPyNQquK8StzKd7Wtt0w/d0/R
	Xi6QJ2KNY70j82uVIRILHuB7SxEowQzgNsvkkRM/vr67qOsUO+sYOBsQ57wLdYjeXbRjHIkId8KEq
	TLJYn6y6bWg5Sn8gpzGwJ0cLILLncJfKVlmGzukZitpgXqBp56R5yC3UQONMeV9JOo40Hl38pMnTO
	LGSLYscvX4qAfOFwS41Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQfAa-0000Nx-SP; Fri, 01 Nov 2019 22:13:24 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQf9I-0007gU-7H
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 22:12:05 +0000
Received: by mail-pf1-x449.google.com with SMTP id i187so8440154pfc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 15:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=LP5ER91yDYZoiG1DiO5iJutGGta/8W2YsIEILYrERFw=;
 b=bzUzyeY2Pb66Afq/YuWOrvYc+P88+Nov5leW00IV55yTXjsAAsOwV4Veo8X/xOJcJ4
 ondoceMK37epaHyC4iXnp3iV0xW9o37xNMNCS5+YnzUPDYInCBHdGEQVAgM4EFYIvsze
 U0KH0R+6LV4HKtRGQKKP/z9BhLOXnUh8+dXJh8b3NCoa0aWnVe395JzHp4ESMni67Vsa
 qx0mjSBtsBjrh+oThuzhLBL/bX8C2DLD9Oj+4ukb7J9N50N4TT7aG68H5rehFDpazui3
 jPyL0/ZCDdN1GkSNCkwcVAq/qh9aaSMW7e8c/YGajhmaqVmrnJc5oqhERJW4y1q7jziQ
 Z3bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=LP5ER91yDYZoiG1DiO5iJutGGta/8W2YsIEILYrERFw=;
 b=kRtymGO4bh/sNjjN+5z8ynD38egpYkqStvG97IRs8gfjD9gogjgx4oxfTzX3RjujkN
 qkX5GkDiO4CzVeC3n/Okri+cWVtMZQizKJHoUXClRUI3KRwA8rArAuY+fTcuRLB4LVkD
 kJe7GDHNLnCOxCuAtyd/bqGhB7sEPffDIiA9senUC3j+rn46JQfyYQkF/u8dty/U/dtU
 gOHHZTYOY05Oyws9h/ld7dNF69oVQARuC79yY56WU3Kz097RahlpF+DKAyEyUxbOpL9Q
 SlPJoJnI09Adgh+VYp+11kxJdS5H3WXF/5vI6AshzaKWn5grXGLAnnJPBGIAt6SlSQvn
 MivA==
X-Gm-Message-State: APjAAAUx//f3KhWJGZq1zDXI2cPDP8yCEwpV/UFbXzPc14j5rJomBI7J
 6p1wJMLFNcoHNQLGBXrquB9CS1rAnMRtcSnXSRw=
X-Google-Smtp-Source: APXvYqz206FfV2E+48L9X7nVID4/AGCaj0CfUa7XJhd+U2VCpij5TxmcTYypesImIHmvjNsozEEINFqmvJRBmlZOaoA=
X-Received: by 2002:a63:535c:: with SMTP id t28mr6291818pgl.173.1572646322264; 
 Fri, 01 Nov 2019 15:12:02 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:36 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 03/17] arm64: kvm: stop treating register x18 as caller save
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_151204_277765_17E84DAA 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
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

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

In preparation of reserving x18, stop treating it as caller save in
the KVM guest entry/exit code. Currently, the code assumes there is
no need to preserve it for the host, given that it would have been
assumed clobbered anyway by the function call to __guest_enter().
Instead, preserve its value and restore it upon return.

Link: https://patchwork.kernel.org/patch/9836891/
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
[Sami: updated commit message, switched from x18 to x29 for the guest context]
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kvm/hyp/entry.S | 41 +++++++++++++++++++-------------------
 1 file changed, 20 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/kvm/hyp/entry.S b/arch/arm64/kvm/hyp/entry.S
index e5cc8d66bf53..c3c2d842c609 100644
--- a/arch/arm64/kvm/hyp/entry.S
+++ b/arch/arm64/kvm/hyp/entry.S
@@ -23,6 +23,7 @@
 	.pushsection	.hyp.text, "ax"
 
 .macro save_callee_saved_regs ctxt
+	str	x18,      [\ctxt, #CPU_XREG_OFFSET(18)]
 	stp	x19, x20, [\ctxt, #CPU_XREG_OFFSET(19)]
 	stp	x21, x22, [\ctxt, #CPU_XREG_OFFSET(21)]
 	stp	x23, x24, [\ctxt, #CPU_XREG_OFFSET(23)]
@@ -32,6 +33,8 @@
 .endm
 
 .macro restore_callee_saved_regs ctxt
+	// We assume \ctxt is not x18-x28
+	ldr	x18,      [\ctxt, #CPU_XREG_OFFSET(18)]
 	ldp	x19, x20, [\ctxt, #CPU_XREG_OFFSET(19)]
 	ldp	x21, x22, [\ctxt, #CPU_XREG_OFFSET(21)]
 	ldp	x23, x24, [\ctxt, #CPU_XREG_OFFSET(23)]
@@ -48,7 +51,7 @@ ENTRY(__guest_enter)
 	// x0: vcpu
 	// x1: host context
 	// x2-x17: clobbered by macros
-	// x18: guest context
+	// x29: guest context
 
 	// Store the host regs
 	save_callee_saved_regs x1
@@ -67,31 +70,28 @@ alternative_else_nop_endif
 	ret
 
 1:
-	add	x18, x0, #VCPU_CONTEXT
+	add	x29, x0, #VCPU_CONTEXT
 
 	// Macro ptrauth_switch_to_guest format:
 	// 	ptrauth_switch_to_guest(guest cxt, tmp1, tmp2, tmp3)
 	// The below macro to restore guest keys is not implemented in C code
 	// as it may cause Pointer Authentication key signing mismatch errors
 	// when this feature is enabled for kernel code.
-	ptrauth_switch_to_guest x18, x0, x1, x2
+	ptrauth_switch_to_guest x29, x0, x1, x2
 
 	// Restore guest regs x0-x17
-	ldp	x0, x1,   [x18, #CPU_XREG_OFFSET(0)]
-	ldp	x2, x3,   [x18, #CPU_XREG_OFFSET(2)]
-	ldp	x4, x5,   [x18, #CPU_XREG_OFFSET(4)]
-	ldp	x6, x7,   [x18, #CPU_XREG_OFFSET(6)]
-	ldp	x8, x9,   [x18, #CPU_XREG_OFFSET(8)]
-	ldp	x10, x11, [x18, #CPU_XREG_OFFSET(10)]
-	ldp	x12, x13, [x18, #CPU_XREG_OFFSET(12)]
-	ldp	x14, x15, [x18, #CPU_XREG_OFFSET(14)]
-	ldp	x16, x17, [x18, #CPU_XREG_OFFSET(16)]
-
-	// Restore guest regs x19-x29, lr
-	restore_callee_saved_regs x18
-
-	// Restore guest reg x18
-	ldr	x18,      [x18, #CPU_XREG_OFFSET(18)]
+	ldp	x0, x1,   [x29, #CPU_XREG_OFFSET(0)]
+	ldp	x2, x3,   [x29, #CPU_XREG_OFFSET(2)]
+	ldp	x4, x5,   [x29, #CPU_XREG_OFFSET(4)]
+	ldp	x6, x7,   [x29, #CPU_XREG_OFFSET(6)]
+	ldp	x8, x9,   [x29, #CPU_XREG_OFFSET(8)]
+	ldp	x10, x11, [x29, #CPU_XREG_OFFSET(10)]
+	ldp	x12, x13, [x29, #CPU_XREG_OFFSET(12)]
+	ldp	x14, x15, [x29, #CPU_XREG_OFFSET(14)]
+	ldp	x16, x17, [x29, #CPU_XREG_OFFSET(16)]
+
+	// Restore guest regs x18-x29, lr
+	restore_callee_saved_regs x29
 
 	// Do not touch any register after this!
 	eret
@@ -114,7 +114,7 @@ ENTRY(__guest_exit)
 	// Retrieve the guest regs x0-x1 from the stack
 	ldp	x2, x3, [sp], #16	// x0, x1
 
-	// Store the guest regs x0-x1 and x4-x18
+	// Store the guest regs x0-x1 and x4-x17
 	stp	x2, x3,   [x1, #CPU_XREG_OFFSET(0)]
 	stp	x4, x5,   [x1, #CPU_XREG_OFFSET(4)]
 	stp	x6, x7,   [x1, #CPU_XREG_OFFSET(6)]
@@ -123,9 +123,8 @@ ENTRY(__guest_exit)
 	stp	x12, x13, [x1, #CPU_XREG_OFFSET(12)]
 	stp	x14, x15, [x1, #CPU_XREG_OFFSET(14)]
 	stp	x16, x17, [x1, #CPU_XREG_OFFSET(16)]
-	str	x18,      [x1, #CPU_XREG_OFFSET(18)]
 
-	// Store the guest regs x19-x29, lr
+	// Store the guest regs x18-x29, lr
 	save_callee_saved_regs x1
 
 	get_host_ctxt	x2, x3
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
