Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 023C0F0AC1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 00:59:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ouav4OqpqthsNR1kqp2/EerXc25lrd15w+uP7AERr/I=; b=uO/1FAWFrPivB1
	6Tx0WgJ9GsL3iw3wNQqbS4R24qq5Sm4Pi5eVuQ0EC1EqQtdgDBl/i+rLrgAsMISjuvMOHJxLiF8Mu
	WZfPXVD4OX3ptSFHImhRB/hjjbenJ8AxvnZIHWNIJsyN3bnMCP2RPSCSRUt9HsjpdcBfShuHyeKD9
	BImml9A10ml1CtmOgDN0mBVgKJHZEtkTQPx+S1lAtZ4qBDUj34tQlv4zrEZipbVNp7ai7VWyo7muk
	WLce0e4AFCM+wQGhOd0NUIAf6qcD/NRGdG9i5G5kTbRl+iZRnV5bIz8AwnWuSH92Zlzjgvawr1T2v
	VoVWmfGAxIVBcaVcAGUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS8jA-0001sd-Ok; Tue, 05 Nov 2019 23:59:12 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS8gn-00085O-Cu
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 23:56:47 +0000
Received: by mail-pl1-x64a.google.com with SMTP id k8so5358293plt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 15:56:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=uzQ8cGBP/iiy1dmy29qxsrkA2y8A3VyyoGWk/X1qxUc=;
 b=jWGQrW7gYc6D9nJteHiWYUXaoKd47FGvgCnUcq1RN0FNUvS12DXoQv/Qs2ZSsEmdsr
 KIrZA7BzUYt42AyztGMVcz/QumFEYK2cJY5/FcPWOE01nPlBEr1XYQMmzvlCuOtePFHy
 BrO2pUitDMPbbMwQ+djW4zvLYrFatsGxSZFpwthI0l0tEUjCd15qBB7CofGFXzjONnIJ
 qdmdd/w16M48KK0143WbpUnJCYAPG0RUwEwhRL4ts3yhMXpE4SQA62x4WivBRaT/AZDF
 1NajHEvW01XhI1VvxrXdeiyPREGJ54AL4BUaLlFQCeTXTsDjryTGcoQgi5Pmte9ZuS+r
 +4hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=uzQ8cGBP/iiy1dmy29qxsrkA2y8A3VyyoGWk/X1qxUc=;
 b=AYChcfEdp3Lp6D8aHGjTJQOAaWRq13QyvJd0iRvYhktJTY0G7d/u5Fmya9WRS6LUCk
 +SHhywMJrHa5INJrHZrAnk4kN4cM9gZaEDYXntIQjpC/LlVvqmYa6j91tN+TNbFY5Ixn
 XlZAuddppmJCceQ8irEitI3HF1/W3N4g1gS1liVFzRvDT63yZP/CpwHeyth27KJdeqFR
 Edc6r5dXM4rjPCBlEOIlQk7PPHBz0eu/lFf1o3JULqW7Yq1ZDNHc/7WBWQD2ZLHuKohl
 v1Cf8CKvIYWVB5F6prc+3lw2L/2uSbOw23NnY53jHFxZKDJff3br4hpAo+OQG4JkBkyb
 D5nA==
X-Gm-Message-State: APjAAAV3xp2UIezZLNuXi4x9uiMTCF6TFr6Lg/S6HXMmel6IoySIqsAK
 kQx6ihf9KZJKgSbiK0GHBE9qAPdsyl1Y6YR3t0Q=
X-Google-Smtp-Source: APXvYqzhnl/od1+4wqmG+HB56zcHmEodlg2M4/tt0l0rrKjOHl/n60b0sUyw2UaMRpO3OuPN2c7IjdKlcyCGNq68Qz4=
X-Received: by 2002:a65:5382:: with SMTP id x2mr1469482pgq.420.1572998202872; 
 Tue, 05 Nov 2019 15:56:42 -0800 (PST)
Date: Tue,  5 Nov 2019 15:56:04 -0800
In-Reply-To: <20191105235608.107702-1-samitolvanen@google.com>
Message-Id: <20191105235608.107702-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 10/14] arm64: preserve x18 when CPU is suspended
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_155645_558816_1DC157F0 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Don't lose the current task's shadow stack when the CPU is suspended.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
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
index fdabf40a83c8..5c8219c55948 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -49,6 +49,8 @@
  * cpu_do_suspend - save CPU registers context
  *
  * x0: virtual address of context pointer
+ *
+ * This must be kept in sync with struct cpu_suspend_ctx in <asm/suspend.h>.
  */
 ENTRY(cpu_do_suspend)
 	mrs	x2, tpidr_el0
@@ -73,6 +75,11 @@ alternative_endif
 	stp	x8, x9, [x0, #48]
 	stp	x10, x11, [x0, #64]
 	stp	x12, x13, [x0, #80]
+	/*
+	 * Save x18 as it may be used as a platform register, e.g. by shadow
+	 * call stack.
+	 */
+	str	x18, [x0, #96]
 	ret
 ENDPROC(cpu_do_suspend)
 
@@ -89,6 +96,13 @@ ENTRY(cpu_do_resume)
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
2.24.0.rc1.363.gb1bccd3e3d-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
