Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA686114696
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 19:07:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=N8u3ewcB0ZxC7+d5wBZt24nTrcu0l4KF4rpAGRErS44=; b=TFU2ROr9cxnQzEYsq1lGg+raPv
	v4Q0PzyaelyrlgeUpqwNwcDBfN4/WzYF191KcYh+CQl1yo1oCmfWkZJO1gKsPjzTXqxNI+znAcryP
	WSuu6QrTIsHPHLQ9wPNAgzrckTRQpdgSjFNZxXVHJp3lVIMhdcUR9VRAqD2XN1QfYK7dAQ5wrxcSK
	w4axeEkz6I57U3h9FtQLb+s1oxljuSUws+Mw5TT2MsEtPSCXsGouzHc/8KAVkSyzwmLau2vY6Irng
	SgO5Kzrv9xufopk76rFOU1SWbXlWkhwKc/KJkZekDsKFSzc2TNUA0amF33RRwt3NKsK0s06t5vrw3
	ZWD9LqmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icvXX-0003xf-Kg; Thu, 05 Dec 2019 18:07:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icvWp-0003WG-38
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 18:07:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D12C0DA7;
 Thu,  5 Dec 2019 10:07:00 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B74683F86C;
 Thu,  5 Dec 2019 10:06:59 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] kvm/arm64: sanely ratelimit sysreg messages
Date: Thu,  5 Dec 2019 18:06:51 +0000
Message-Id: <20191205180652.18671-2-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191205180652.18671-1-mark.rutland@arm.com>
References: <20191205180652.18671-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_100703_218817_192B79F0 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, maz@kernel.org,
 james.morse@arm.com, alexandru.elisei@arm.com, kvmarm@lists.cs.columbia.edu,
 julien.thierry.kdev@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently kvm_pr_unimpl() is ratelimited, so print_sys_reg_instr() won't
spam the console. However, someof its callers try to print some
contextual information with kvm_err(), which is not ratelimited. This
means that in some cases the context may be printed without the sysreg
encoding, which isn't all that useful.

Let's ensure that both are consistently printed together and
ratelimited, by refactoring print_sys_reg_instr() so that some callers
can provide it with an arbitrary format string.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Alexandru Elisei <alexandru.elisei@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: kvmarm@lists.cs.columbia.edu
---
 arch/arm64/kvm/sys_regs.c | 12 ++++++------
 arch/arm64/kvm/sys_regs.h | 17 +++++++++++++++--
 2 files changed, 21 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 46822afc57e0..d128abd38656 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -2098,9 +2098,9 @@ static void unhandled_cp_access(struct kvm_vcpu *vcpu,
 		WARN_ON(1);
 	}
 
-	kvm_err("Unsupported guest CP%d access at: %08lx [%08lx]\n",
-		cp, *vcpu_pc(vcpu), *vcpu_cpsr(vcpu));
-	print_sys_reg_instr(params);
+	print_sys_reg_msg(params,
+			  "Unsupported guest CP%d access at: %08lx [%08lx]\n",
+			  cp, *vcpu_pc(vcpu), *vcpu_cpsr(vcpu));
 	kvm_inject_undefined(vcpu);
 }
 
@@ -2249,9 +2249,9 @@ static int emulate_sys_reg(struct kvm_vcpu *vcpu,
 	if (likely(r)) {
 		perform_access(vcpu, params, r);
 	} else {
-		kvm_err("Unsupported guest sys_reg access at: %lx [%08lx]\n",
-			*vcpu_pc(vcpu), *vcpu_cpsr(vcpu));
-		print_sys_reg_instr(params);
+		print_sys_reg_msg(params,
+				  "Unsupported guest sys_reg access at: %lx [%08lx]\n",
+				  *vcpu_pc(vcpu), *vcpu_cpsr(vcpu));
 		kvm_inject_undefined(vcpu);
 	}
 	return 1;
diff --git a/arch/arm64/kvm/sys_regs.h b/arch/arm64/kvm/sys_regs.h
index 9bca0312d798..5a6fc30f5989 100644
--- a/arch/arm64/kvm/sys_regs.h
+++ b/arch/arm64/kvm/sys_regs.h
@@ -62,11 +62,24 @@ struct sys_reg_desc {
 #define REG_HIDDEN_USER		(1 << 0) /* hidden from userspace ioctls */
 #define REG_HIDDEN_GUEST	(1 << 1) /* hidden from guest */
 
-static inline void print_sys_reg_instr(const struct sys_reg_params *p)
+static __printf(2, 3)
+inline void print_sys_reg_msg(const struct sys_reg_params *p,
+				       char *fmt, ...)
 {
+	va_list va;
+
+	va_start(va, fmt);
 	/* Look, we even formatted it for you to paste into the table! */
-	kvm_pr_unimpl(" { Op0(%2u), Op1(%2u), CRn(%2u), CRm(%2u), Op2(%2u), func_%s },\n",
+	kvm_pr_unimpl("%pV { Op0(%2u), Op1(%2u), CRn(%2u), CRm(%2u), Op2(%2u), func_%s },\n",
+		      &(struct va_format){ fmt, &va },
 		      p->Op0, p->Op1, p->CRn, p->CRm, p->Op2, p->is_write ? "write" : "read");
+	va_end(va);
+}
+
+static inline void print_sys_reg_instr(const struct sys_reg_params *p)
+{
+	/* GCC warns on an empty format string */
+	print_sys_reg_msg(p, "%s", "");
 }
 
 static inline bool ignore_write(struct kvm_vcpu *vcpu,
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
