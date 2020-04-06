Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 819C619FA84
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 18:43:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ce6IEjEzvGlbVuM56iizHyiDRs3WJrCTuY9wIrztmBQ=; b=sdFoHSclSQKz7S
	pIJ/DYHyzYkXDN5D9yxPaI6cBvyKAsl3hu1eTpIWZ8ZITWO7y1uoyJEIPa1UbCAt/Gdgq8DHkwrBO
	2RPgZzGjglSBJs0VbA6HizQ/vXd1Nmd1ItIIh3h+2DlV1rHE9CZz7zc85FntaC79nwjd+w+bbuUGv
	sAPeECX9+8eHa2LCeGs0/YztQmlME4ojpx8QbIBZwM6o5Xt774eB6P7NJoP/0lVt7hQPTXu40ekuA
	VCV3b0qPxoorG7kV412/FObKjBON1itrBPA+l8/JeRxHPXVfSfA9B/Jf5gZ1NIvLl7OXBUctVgiW4
	NQ3FMgBYTft9sw+acF9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLUqU-0005W5-LN; Mon, 06 Apr 2020 16:43:34 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLUoo-000494-Kw
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 16:41:52 +0000
Received: by mail-pg1-x54a.google.com with SMTP id o18so3729144pgh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 09:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=FvIJZaGomfz5bQTqJN2U0Xo4/dMI8mtkhTC7egpm8RA=;
 b=sZgUXhLMxuUZHoqYFcqJQyMtRrVeB4vbIJgZfI8vPE3ap9A/9BT16xYBgEZfJZwzHb
 p/Xb5EGHwP5/CHALYTdDgmSLbcPrGZxAna83nSg6gIywsrUh7VegvbRlWKSidmTZaduL
 JkIi3FLIB3RLFCMs8/R2AIvOjODoY4FM+pu6UiLLtsoUZ4FIpMSRZZd/sl1DrxuOHLRs
 qsTLwGT7TZOTmsB4zwdErv1k7eKdBWOhQ0UgfSaLWeBzdHI/14RLXcoxTbmTmzGS4PJz
 S1BSe2jfOXJpexnv2HjTJdH928LuWNUeCfCevn3GUQ3kWhph4qWJWBu706wq7G4VUNsy
 Vq+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=FvIJZaGomfz5bQTqJN2U0Xo4/dMI8mtkhTC7egpm8RA=;
 b=Pt+UUa+hJcTq6IQ6W42CEpPnO/Fm6E78T3vV1J9NtbLCSFoQJGkN8HpLTMshKYwVr7
 dzgtra2v3qiX2nub5UPstBqLwXNKq2oETn6ZEhnFDf1oJtlmwBxNbyHJ9zyyfbSHPgn1
 S6X1LjZF9noTsyMVjnhV36r66G6bUeTlidah0z3LyuahpWpSMVZtxkkuXSuxNl5xDprk
 aW50ef6I9yo6YPnsavEFsflJCl+ArTK9UePAp1FvelRR2A28gQcmusp73LtvlOWmZblX
 fxRun3cVxfDZHOU6OP16dHfl3LIWkY7mkqqc3vMZCdGNOq0t0MXu1yyAiPN0yH7Mscwd
 Gbhg==
X-Gm-Message-State: AGi0PuanIKUXVLXi1NNOA2mHjtmFdU1D3iFlf69ppEzWAoHnGc6OrCPi
 Ye3ccGWuxS0/J+FcWL+SrUSNeJU1eb+v7vf220M=
X-Google-Smtp-Source: APiQypIFwmNrjKh1lQZCso9eQPW5DK0TW2vYCZpfEPndLBGmeeUElj0RyNkfI+/Jw0+mhfmcbtmfQfN+X3LYM4MOsRg=
X-Received: by 2002:a63:9550:: with SMTP id t16mr19437932pgn.300.1586191308872; 
 Mon, 06 Apr 2020 09:41:48 -0700 (PDT)
Date: Mon,  6 Apr 2020 09:41:15 -0700
In-Reply-To: <20200406164121.154322-1-samitolvanen@google.com>
Message-Id: <20200406164121.154322-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200406164121.154322-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
Subject: [PATCH v10 06/12] arm64: preserve x18 when CPU is suspended
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
 Masami Hiramatsu <mhiramat@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
 Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_094150_716222_0E280BD1 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
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

Don't lose the current task's shadow stack when the CPU is suspended.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Acked-by: Will Deacon <will@kernel.org>
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
index 197a9ba2d5ea..ed15be0f8103 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -58,6 +58,8 @@
  * cpu_do_suspend - save CPU registers context
  *
  * x0: virtual address of context pointer
+ *
+ * This must be kept in sync with struct cpu_suspend_ctx in <asm/suspend.h>.
  */
 SYM_FUNC_START(cpu_do_suspend)
 	mrs	x2, tpidr_el0
@@ -82,6 +84,11 @@ alternative_endif
 	stp	x8, x9, [x0, #48]
 	stp	x10, x11, [x0, #64]
 	stp	x12, x13, [x0, #80]
+	/*
+	 * Save x18 as it may be used as a platform register, e.g. by shadow
+	 * call stack.
+	 */
+	str	x18, [x0, #96]
 	ret
 SYM_FUNC_END(cpu_do_suspend)
 
@@ -98,6 +105,13 @@ SYM_FUNC_START(cpu_do_resume)
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
2.26.0.292.g33ef6b2f38-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
