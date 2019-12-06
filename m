Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 986CD115942
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 23:17:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oLX38zoksuvccyyh6X181QXVMpElk1CAfADXMHILyTc=; b=qC/L2TkVfgoDmQ
	SFpFPJatbzcljD4Gce2ZmIPsmA/6Y5JJECUl1Z/HtCDpIU61+yqKDinGCHjSFWhsG3uF7i/0a87j6
	N1D7Ao+00hDQmYRf3eofMX8ybBoDzgvqHhCRiKI/3J3GVDPULv/OALccYjiI62Pxx2vjpD7UXIh30
	rEMbeYZqVTATd4P/fmbe7uPPZvfRLPqOJ52MnqZL7owq2w3D9ca+NKtY9x2Le1fMKLcq9L+uymH8i
	r4KU26Y8BJ1WLDib/cOkLls3IsEcqMKT0xUUeGeUEk+MxUzfoQkcRR07TS9tozE2V3o4k7+RwskbY
	MfIjDG95hQcxY7fwmjRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idLuV-0001zk-1o; Fri, 06 Dec 2019 22:17:15 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idLrn-0006lb-Fr
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 22:14:31 +0000
Received: by mail-pf1-x44a.google.com with SMTP id s25so4802206pfd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 14:14:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=q0VCePxuQrqw4BBZGnamleajd+Jt3fiHSwLdib7c23k=;
 b=XpQfC+MeF/x/58JAAU0Gq9P6sK3UThDbiX4tokqcmE5W2JlFjupWk3t7S6fJEl7bmQ
 uG77IKQKNCjwNeXL5gKTK4hYsXwcw3IEb3xYsQMThtapSpkH/6n8NZA1P7BK9GoJvjlv
 gjsgrx6f2M8YtuUoFz6xW2/sVs3avmftC2FD9rLUg7uPIxxu1nky1tI+067SAycFIIZv
 I5Ox0b34VKtUQTfOqlCtC7ANi+wPbCIGo5s06hQc0p9ToPPN7U2DDRK+8/gr5u99Ip8U
 6665xOHYKE53S80IzppbeI1PtBJzI2Bw2DR42y5FZrTsuJwM4wsLA+y323NiZkNZTWXF
 YfbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=q0VCePxuQrqw4BBZGnamleajd+Jt3fiHSwLdib7c23k=;
 b=r/jGupWifEbGdRmrcAvlbOhB+j19S63sJraG/Wv9haVJicNXxzjjveBdoLeGwH0st+
 RJg0LWMOOuDq7Mhzrn/VfPu6fg5POe/89OCGzOqWmY6mxMluTbnpwLfaK3UaV/srfW/P
 emIG+BV4kVg8OkiP4yeqgrygzJac8Ee0Kqfn3EnKurMO6/8DYglgSJd0LBln5fP/8Kmf
 BkbkyYsHtLIqatM1cgWPyKqx42dQsGXxyTWw58Bn+7Fkz9Remh4bItoBow2y8W0nrpul
 dtg4yvAVIdycDux/VYK+pHndvt0h2lE2IPGVX5iYRRdk89AlEZgNvvi9D2kk1gCZruKj
 uHXQ==
X-Gm-Message-State: APjAAAXKbXRmtp4K2Dmj8+bZaV9a1CeBrTXHTqEg0o3BWOWKzUsP31U1
 VpKc2MoJ/RlJJlL4oRKSoA+hu0sPlhPzPYBavpY=
X-Google-Smtp-Source: APXvYqxcGyciG3MMD7PbQn8IKkK3yA7MJ/fwU2YEUvmtPTk2dDChHbcnuIxBvmADPyGDroBjAeLdoXj34UKB4SrRjVg=
X-Received: by 2002:a63:d543:: with SMTP id v3mr5881958pgi.285.1575670461425; 
 Fri, 06 Dec 2019 14:14:21 -0800 (PST)
Date: Fri,  6 Dec 2019 14:13:46 -0800
In-Reply-To: <20191206221351.38241-1-samitolvanen@google.com>
Message-Id: <20191206221351.38241-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH v6 10/15] arm64: preserve x18 when CPU is suspended
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_141427_596522_5EB503FA 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
2.24.0.393.g34dc348eaf-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
