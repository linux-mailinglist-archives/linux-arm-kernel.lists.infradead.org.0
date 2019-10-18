Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3A9DCA7D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:12:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7IMJt5X46oYRI/DJCzkyO+xEdPUlvNHd8v3xADNBqtE=; b=ZVZYxW+0zOUbLU
	Yw9fOTcZgMbeIbMxbEpTbanzuwwCV+/aFnEHDs1JyHnF3SHXTRZZU4sZTkJ/n4gySZfxZPzaW+LMp
	TOfw962/gYJz4jYFurF8PVKhK5dwLH5LPwRvDj4Ap1lvwZtN3EnrGBm04K/l7e7GsZsaGL6fbgsAb
	+gZ3dktFG2SM2r5OL0SKXHCPGKFk2bl2oMN1a1DDzTfktqR873Y94FMzLFVS+rpO/qaxQWeSKvWMY
	fiHJzwViAv9OxvztCfjQoUbWAniVT4u8zrKieOvyveB0sbeEaCrHEqjZ6QOzGba7Q0Nt6IKRP1UDG
	iKEFFC/67DoBotmb7XhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUrb-0002bn-M4; Fri, 18 Oct 2019 16:12:27 +0000
Received: from mail-yb1-xb4a.google.com ([2607:f8b0:4864:20::b4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUq9-0001Y1-LO
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:10:59 +0000
Received: by mail-yb1-xb4a.google.com with SMTP id m18so4791047ybf.20
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 09:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=72rGRuWFiviz942NA6zVkn9gcWlAdBMK2y71uV80e5M=;
 b=ZvzQdFSzTLbEjP4zxdusVf3ReL3ljnpZzJfPdrbpnE9rMeefuhQHID/ee1FAoqvYLH
 O+/PdDLy+eoWqhA9UIEIUFRCMC5xqhNowPZWx2ww/HoS+63BhQ5I1HOf+y5t9GV4AlzB
 4wvvMPqaOkuUSsDFHTVS6xJHhNUp3s1c9Y1ghonvzQD2ZPiXv5LmNp53Biqgoh9GKiCJ
 afEukw6/WMLv2boh6kNWUds4TgOnVVcCplvVwI02NOYpPnoOVZxpUv2JWmCC5FcJjdP9
 qyuCgJgGG2jATFBKXIAZK/fXaf2KYXXK+X2rgvP6lspQZZSv0gH/6LOEhAEKe42LtQC+
 cKeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=72rGRuWFiviz942NA6zVkn9gcWlAdBMK2y71uV80e5M=;
 b=Dm/Lan5oCY3KLzYQw/x9mq6a0I6sCXogFKBCvFY0rhVAKyz2nEGyl3xuS6/lNVEzk3
 Xhdn08IrI4lYQBHC2/A1rG1dN4iJlHPo7bXs5oEKnXlWtNluBOt3Lsm1IzYwvTzggnsV
 8Ve9q3bEVBS07fL4bTc5BTBgC7Pn4gw7FoCD6kw7aPTSuQtII+XbPJCoI+RGvOoBpBCh
 6gIa3+JgukQKOi+Cqeqmt5QrBSpFJz2VhjtMG33EHFOrekSFz8NhFl1Y+Iqeb09p1Mx7
 47GCZA+ZZML7ywzCR9tq8NqRzGFcFpM625E8ljJA6fw3H1oqTPx5cx+0Si0exaTgOrZQ
 4K8g==
X-Gm-Message-State: APjAAAUwlCCzaqCmnwUplxb90UBEQBzQrSC39PUDiHAjE7f7sLettPTz
 ZvYur8VOCIG15bKpHweDrKAgN1lPYOdFeQRA7Ao=
X-Google-Smtp-Source: APXvYqxINkQeafZ9JYtVaWg+qUXlNkxSB5ctm2wREg/j/aMT/J4ez6ebkhDJlYmKEc3YyNUDF8Zxh7j2jKVxFaFkVRU=
X-Received: by 2002:a0d:d804:: with SMTP id a4mr7899178ywe.454.1571415054615; 
 Fri, 18 Oct 2019 09:10:54 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:18 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 03/18] arm64: kvm: stop treating register x18 as caller save
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_091057_766835_AA348EA5 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b4a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

In preparation of using x18 as a task struct pointer register when
running in the kernel, stop treating it as caller save in the KVM
guest entry/exit code. Currently, the code assumes there is no need
to preserve it for the host, given that it would have been assumed
clobbered anyway by the function call to __guest_enter(). Instead,
preserve its value and restore it upon return.

Link: https://patchwork.kernel.org/patch/9836891/
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/kvm/hyp/entry.S | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/kvm/hyp/entry.S b/arch/arm64/kvm/hyp/entry.S
index e5cc8d66bf53..20bd9a20ea27 100644
--- a/arch/arm64/kvm/hyp/entry.S
+++ b/arch/arm64/kvm/hyp/entry.S
@@ -23,6 +23,7 @@
 	.pushsection	.hyp.text, "ax"
 
 .macro save_callee_saved_regs ctxt
+	str	x18,      [\ctxt, #CPU_XREG_OFFSET(18)]
 	stp	x19, x20, [\ctxt, #CPU_XREG_OFFSET(19)]
 	stp	x21, x22, [\ctxt, #CPU_XREG_OFFSET(21)]
 	stp	x23, x24, [\ctxt, #CPU_XREG_OFFSET(23)]
@@ -38,6 +39,7 @@
 	ldp	x25, x26, [\ctxt, #CPU_XREG_OFFSET(25)]
 	ldp	x27, x28, [\ctxt, #CPU_XREG_OFFSET(27)]
 	ldp	x29, lr,  [\ctxt, #CPU_XREG_OFFSET(29)]
+	ldr	x18,      [\ctxt, #CPU_XREG_OFFSET(18)]
 .endm
 
 /*
@@ -87,12 +89,9 @@ alternative_else_nop_endif
 	ldp	x14, x15, [x18, #CPU_XREG_OFFSET(14)]
 	ldp	x16, x17, [x18, #CPU_XREG_OFFSET(16)]
 
-	// Restore guest regs x19-x29, lr
+	// Restore guest regs x18-x29, lr
 	restore_callee_saved_regs x18
 
-	// Restore guest reg x18
-	ldr	x18,      [x18, #CPU_XREG_OFFSET(18)]
-
 	// Do not touch any register after this!
 	eret
 	sb
@@ -114,7 +113,7 @@ ENTRY(__guest_exit)
 	// Retrieve the guest regs x0-x1 from the stack
 	ldp	x2, x3, [sp], #16	// x0, x1
 
-	// Store the guest regs x0-x1 and x4-x18
+	// Store the guest regs x0-x1 and x4-x17
 	stp	x2, x3,   [x1, #CPU_XREG_OFFSET(0)]
 	stp	x4, x5,   [x1, #CPU_XREG_OFFSET(4)]
 	stp	x6, x7,   [x1, #CPU_XREG_OFFSET(6)]
@@ -123,9 +122,8 @@ ENTRY(__guest_exit)
 	stp	x12, x13, [x1, #CPU_XREG_OFFSET(12)]
 	stp	x14, x15, [x1, #CPU_XREG_OFFSET(14)]
 	stp	x16, x17, [x1, #CPU_XREG_OFFSET(16)]
-	str	x18,      [x1, #CPU_XREG_OFFSET(18)]
 
-	// Store the guest regs x19-x29, lr
+	// Store the guest regs x18-x29, lr
 	save_callee_saved_regs x1
 
 	get_host_ctxt	x2, x3
-- 
2.23.0.866.gb869b98d4c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
