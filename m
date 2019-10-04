Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B206FCBA15
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:13:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+e3c0HUpPNMUMnupJ28n4HyiltSt1RmlHJsq74TLx4=; b=PFHHD7dVKVFHm/
	+oUPTzmAIHPUJ8/OlA9ZA7GFK69BMfI9A6ji+kfttW1VW6e3nEoXMDUTcJuxB/DG/4zAfGorkumzc
	H75CyDkwMnrpSvFbbhSKW7ciYU7J1JnjBljVyEB6EMz2Qv55BJUXxEri7c2ARSb2g56HZEP28lZDk
	z+i8xPSgqc4xK6sf9Co0o5+aCmQ12OgVSF7/H8DW16i8HsNPpM5lGcTMueoeE+x/uvyFpBezGhHAQ
	zU5MCapI9eivoxx+3weP8v5kPOPebmaOjpO4fFaRzkX+298rtSQ6dM5qXa67a3nAFAxpa034BGuPa
	qMlAr9QGmGXg0iv8XSMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMSS-0003Ba-8W; Fri, 04 Oct 2019 12:13:16 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMKR-0001zR-A0
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:05:01 +0000
Received: by mail-wr1-x441.google.com with SMTP id o18so6815294wrv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 05:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jyWUdEZangMl23Y/z3me7Cr0MiFTlQrstZmKMhID7pk=;
 b=b6HmhLqE8uHgPW6jON0IKeGRLW1JnxE7uzXTd56vV2r9hNXEN2nPAk9xU6t3FnU/26
 s6utKUdpAmBngrtJtuNqg9BT5Ew5nAbtZyxtr00b9BZUaOJ5FjDmXOi/NhBfvBe8v21s
 6QQOJLQjAYKtLzCF6waIbv5cv9YjLVY3wELravvDMD54fcSTdXFnJI8wqqqT+eNFs8bJ
 WfvbPoG2BcnPrXGbyB+TPVovkXnFeVtlI7BROXTGhcSE0RWZ/SxCzIV2q+tOZNTTRCoX
 dB0CSRAK4HseRvQEVaxnsl5gx63QuS91N3GrXQNy8wpCGHNS/FtcL69wPGF6nYvyeRVX
 bS2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jyWUdEZangMl23Y/z3me7Cr0MiFTlQrstZmKMhID7pk=;
 b=CBAzROyR4ZBB9PwHXiPZ8xW9pSTl/+AgHluuSmYDSAdNQql2stmOxkMaDa8zRJB29b
 lnNzopsden1HBTOYe3Ul5/MU8i4/GtVS+8Cg184uI1l8chqWT0cU/ccEZyZeTVtpuIrd
 uUQ70tJFyynhNLv7DeHLBrZa2W2CCbnIJgJxCNdM43E0cHOjq5hlJyLhzBs2mhZbflR2
 aBWFS2Kdm5zQFQgqSPAGOw8adYQ4UQszmWsClQbcZwrpHFa4KLTzzx8OZVJ0cKQauyPH
 xBBLOsJtgHRC7/3MZwnPGRjqFyCshT8Fsiuz0JCkiPHVs0qH7Pu6nbw3r1XVYzcCUFzU
 jAsg==
X-Gm-Message-State: APjAAAXrX9e/Mk7jc1itviWQFPXPbRmL/qxyV9dxWNIDPE01Rsg4SJ52
 rbOmwLRI7AD2WKijFPquQe+Khuxg7+g2yBeP
X-Google-Smtp-Source: APXvYqwmuV0mx2+B0zE37LPywhrk2AGREP1jeZdL8iymjsa9QhmU72CBjnEPBedm5vdsfPswjJczqw==
X-Received: by 2002:a5d:6a8b:: with SMTP id s11mr11294333wru.167.1570190697534; 
 Fri, 04 Oct 2019 05:04:57 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:b51e:3d9d:ec16:def5])
 by smtp.gmail.com with ESMTPSA id f8sm5019628wmb.37.2019.10.04.05.04.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 04 Oct 2019 05:04:56 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC/RFT PATCH 16/16] arm64: Force SSBS on context switch
Date: Fri,  4 Oct 2019 14:04:30 +0200
Message-Id: <20191004120430.11929-17-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
References: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_050459_394275_3B461009 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Jeremy Linton <jeremy.linton@arm.com>, Andre Przywara <andre.przywara@arm.com>,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marc Zyngier <marc.zyngier@arm.com>

On a CPU that doesn't support SSBS, PSTATE[12] is RES0.  In a system
where only some of the CPUs implement SSBS, we end-up losing track of
the SSBS bit across task migration.

To address this issue, let's force the SSBS bit on context switch.

Fixes: 8f04e8e6e29c ("arm64: ssbd: Add support for PSTATE.SSBS rather than trapping to EL3")
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
[will: inverted logic and added comments]
Signed-off-by: Will Deacon <will@kernel.org>
(cherry picked from commit cbdf8a189a66001c36007bf0f5c975d0376c5c3a)
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm64/include/asm/processor.h | 14 ++++++++--
 arch/arm64/kernel/process.c        | 29 +++++++++++++++++++-
 2 files changed, 40 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index ad208bd402f7..773ea8e0e442 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -177,6 +177,16 @@ static inline void start_thread_common(struct pt_regs *regs, unsigned long pc)
 	regs->pc = pc;
 }
 
+static inline void set_ssbs_bit(struct pt_regs *regs)
+{
+	regs->pstate |= PSR_SSBS_BIT;
+}
+
+static inline void set_compat_ssbs_bit(struct pt_regs *regs)
+{
+	regs->pstate |= PSR_AA32_SSBS_BIT;
+}
+
 static inline void start_thread(struct pt_regs *regs, unsigned long pc,
 				unsigned long sp)
 {
@@ -184,7 +194,7 @@ static inline void start_thread(struct pt_regs *regs, unsigned long pc,
 	regs->pstate = PSR_MODE_EL0t;
 
 	if (arm64_get_ssbd_state() != ARM64_SSBD_FORCE_ENABLE)
-		regs->pstate |= PSR_SSBS_BIT;
+		set_ssbs_bit(regs);
 
 	regs->sp = sp;
 }
@@ -203,7 +213,7 @@ static inline void compat_start_thread(struct pt_regs *regs, unsigned long pc,
 #endif
 
 	if (arm64_get_ssbd_state() != ARM64_SSBD_FORCE_ENABLE)
-		regs->pstate |= PSR_AA32_SSBS_BIT;
+		set_compat_ssbs_bit(regs);
 
 	regs->compat_sp = sp;
 }
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index ce99c58cd1f1..bc2226608e13 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -360,7 +360,7 @@ int copy_thread(unsigned long clone_flags, unsigned long stack_start,
 			childregs->pstate |= PSR_UAO_BIT;
 
 		if (arm64_get_ssbd_state() == ARM64_SSBD_FORCE_DISABLE)
-			childregs->pstate |= PSR_SSBS_BIT;
+			set_ssbs_bit(childregs);
 
 		p->thread.cpu_context.x19 = stack_start;
 		p->thread.cpu_context.x20 = stk_sz;
@@ -401,6 +401,32 @@ void uao_thread_switch(struct task_struct *next)
 	}
 }
 
+/*
+ * Force SSBS state on context-switch, since it may be lost after migrating
+ * from a CPU which treats the bit as RES0 in a heterogeneous system.
+ */
+static void ssbs_thread_switch(struct task_struct *next)
+{
+	struct pt_regs *regs = task_pt_regs(next);
+
+	/*
+	 * Nothing to do for kernel threads, but 'regs' may be junk
+	 * (e.g. idle task) so check the flags and bail early.
+	 */
+	if (unlikely(next->flags & PF_KTHREAD))
+		return;
+
+	/* If the mitigation is enabled, then we leave SSBS clear. */
+	if ((arm64_get_ssbd_state() == ARM64_SSBD_FORCE_ENABLE) ||
+	    test_tsk_thread_flag(next, TIF_SSBD))
+		return;
+
+	if (compat_user_mode(regs))
+		set_compat_ssbs_bit(regs);
+	else if (user_mode(regs))
+		set_ssbs_bit(regs);
+}
+
 /*
  * We store our current task in sp_el0, which is clobbered by userspace. Keep a
  * shadow copy so that we can restore this upon entry from userspace.
@@ -429,6 +455,7 @@ __notrace_funcgraph struct task_struct *__switch_to(struct task_struct *prev,
 	contextidr_thread_switch(next);
 	entry_task_switch(next);
 	uao_thread_switch(next);
+	ssbs_thread_switch(next);
 
 	/*
 	 * Complete any pending TLB or cache maintenance on this CPU in case
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
