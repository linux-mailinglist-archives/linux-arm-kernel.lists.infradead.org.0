Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8483A1ACD25
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 18:15:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9WWv9x9FAqHlHG3YwKhb/RvxWNA70ActaENUVA1lExk=; b=aH+qrcgpxHtqmJ
	gM/9Xa6C6PdDsUToWonTnxdcgQxFbdNtULUnSYW0x5maABvynK1cix0NguGY1vduCfB0hBU6FgEoL
	5ZQasi5wWHoSbW2pDWk3xMhDzWZVcpxYTlHGLur58wV7FIR0/AZDVeemal2llHbP2/3SKHJXbQCjP
	Qk2bTzjULsF8HAxH24OL+zWSmJasqppJbdoGXtprkvO43ZDGYQlsX5TNMrqo3T40RpYI48KULm2VI
	x3opWzv8x31AMfsJ31rWJMk8szrAg024/zF6wiBKT4AGsq3mWSHf+0t9+sLZa9ReZwfm2e9eQYji0
	nMGLUy0Gek+ywo9jjIKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP7Ai-0005Km-9t; Thu, 16 Apr 2020 16:15:24 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP78U-0003ie-MV
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 16:13:08 +0000
Received: by mail-pg1-x54a.google.com with SMTP id h16so3513667pgb.16
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 09:13:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=Kugk+73vmOylC3TFtzHwjlOoaJ/Fe5NzWOKKOj4AXU4=;
 b=W5q7QBjkw4JghTfPUShlkXNs2sDNOGOuiYOGElC1wAONEdOLPNJ/uNyxDMDXjlRLf4
 Pa2+Zrq7EyaDCJp1Sp3AVQn9w8BtLyDEdMdL2575OXgi5fxdIK+8sv379QKTbap2WvC+
 NiN0Q+AVLm5GD6wuH4dSCDO0b66W2nLZ0Xzrofc/J1m+UZX9J2yLmiCSxELYozVXH1uQ
 vVBs/CwtxyA+WTpTHf3NFy3LgZlj4g/kbXfkm3SRVstHLiNAqtUgbanoiYUosQNk9PUW
 zvsM3kOiPbsMtH3WUpHwLBRuJopu9sSmI6vIv47ooOAFB9l9KFuPLGhVXV6robI3fW4H
 ch8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=Kugk+73vmOylC3TFtzHwjlOoaJ/Fe5NzWOKKOj4AXU4=;
 b=LVRB/UGaC0jh3TTu6FTtBgFUU6LtHEJxh7M/BKvk61gVSHUjysXfHL7o+PZtDXr43w
 wz7b775nTMgg+9HuUehjVsqy5SLyTUF0BBwIK21qWbr0K1AmMtDHzbrCzCg4PJfHJdRZ
 hZ3Rfk8Rwvsyrj6N4p9FljC/5GoVNnqF/bKsAhUHRjwR4Bggz5DexQg9BjLL+01r757d
 CQRPGdkXspyLhzC1y86sLeJV+20Ph4bG6cPSQ7f5w8qXNHaA0HkRqq2irU/BnapOtISH
 Ax0P3aeDTAPass1iPlcp8Y0hNvE0OpS+whW51CleWnA8WBV+JuMjF9MPk4h24xpsQV61
 fRVQ==
X-Gm-Message-State: AGi0PuaS2k/zLO0kAqHNNrB6vU5ZSaAt0VPGoL5p2UOPpfImNDlKEEzY
 VczrPhIVnLdYiMxtY9ssr8rAhAimgBv1sX9HZNU=
X-Google-Smtp-Source: APiQypItSg+rLQgEmLkTBr9HxWTvnV3rSuRsTSpO5mKzGKaJOiL7a4R9QX9rkJEWAZiMSzM5JWs5mbOwhT82CTPYKHg=
X-Received: by 2002:a63:9e54:: with SMTP id r20mr8539917pgo.301.1587053584336; 
 Thu, 16 Apr 2020 09:13:04 -0700 (PDT)
Date: Thu, 16 Apr 2020 09:12:39 -0700
In-Reply-To: <20200416161245.148813-1-samitolvanen@google.com>
Message-Id: <20200416161245.148813-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v11 06/12] arm64: preserve x18 when CPU is suspended
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
X-CRM114-CacheID: sfid-20200416_091306_952308_349D60C5 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
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
2.26.1.301.g55bc3eb7cb9-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
