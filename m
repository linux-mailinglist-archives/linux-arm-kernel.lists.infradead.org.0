Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D7215E5D0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:44:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NfOm5yi8h9YsVk8HuaeM1vweQ3BUkny6ChAjj/kcnEs=; b=CPZe3FhHdlOMIN
	fAdoRvZUUP/YJRmRbvB7wCYE/j0KG1E3f7qi/7vosKLq5+gMg3Am3pmggE69SiG6Jwi64XjqwXCx9
	xSaRluwnhsk/kLjaP/NpYc3siMXq6un7gmngJ0qmVpfADqnEWgsVJZAL76nmwiBMUYtO/3oToNnpy
	dYov97eqLbEbKdHkJ+CYTHj6tr3+Oi1G59M0TRc/j5FxZPS7nHMxAzBSQqfg/if5dK94y/kwaXzp1
	Trk2s/CFDo79lPJhZHS7fFYZJAewHeXUlwzzWGUgzs73CN2P0WQzy8vBcDD31FQdl50P/2clXXzwr
	fiOl8sHxp/BmWm/2GZgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2e4i-0005JY-RX; Fri, 14 Feb 2020 16:44:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dcb-0007pT-KQ
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:15:34 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1440D246C3;
 Fri, 14 Feb 2020 16:15:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696917;
 bh=TBOsrmr/DXkvGft9h+7ko9BhhNlAYvV4cUeByn3hQ3U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DtCBPDQcOA8a1iuGj79sdJU5lyrJy9/r+vuuGGcOqDhsN3rkgVhxXrJ+bX+Mzj/q9
 x8fdmOw8Gz+g+AYH6JmLmwMLAU4wPJSTu8qRw9/K48qzVdzizgbBzmxmX8923fFJto
 Q4OoVGm5bblOq0A2BmTrMemDOov9htb4i5fBnMn0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 165/252] arm64: ptrace: nofpsimd: Fail FP/SIMD
 regset operations
Date: Fri, 14 Feb 2020 11:10:20 -0500
Message-Id: <20200214161147.15842-165-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161147.15842-1-sashal@kernel.org>
References: <20200214161147.15842-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_081517_775260_C557CEAA 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Sasha Levin <sashal@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

[ Upstream commit c9d66999f064947e6b577ceacc1eb2fbca6a8d3c ]

When fp/simd is not supported on the system, fail the operations
of FP/SIMD regsets.

Fixes: 82e0191a1aa11abf ("arm64: Support systems without FP/ASIMD")
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Will Deacon <will@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/kernel/ptrace.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
index 0211c3c7533b0..38aab5b34cc49 100644
--- a/arch/arm64/kernel/ptrace.c
+++ b/arch/arm64/kernel/ptrace.c
@@ -627,6 +627,13 @@ static int gpr_set(struct task_struct *target, const struct user_regset *regset,
 	return 0;
 }
 
+static int fpr_active(struct task_struct *target, const struct user_regset *regset)
+{
+	if (!system_supports_fpsimd())
+		return -ENODEV;
+	return regset->n;
+}
+
 /*
  * TODO: update fp accessors for lazy context switching (sync/flush hwstate)
  */
@@ -649,6 +656,9 @@ static int fpr_get(struct task_struct *target, const struct user_regset *regset,
 		   unsigned int pos, unsigned int count,
 		   void *kbuf, void __user *ubuf)
 {
+	if (!system_supports_fpsimd())
+		return -EINVAL;
+
 	if (target == current)
 		fpsimd_preserve_current_state();
 
@@ -688,6 +698,9 @@ static int fpr_set(struct task_struct *target, const struct user_regset *regset,
 {
 	int ret;
 
+	if (!system_supports_fpsimd())
+		return -EINVAL;
+
 	ret = __fpr_set(target, regset, pos, count, kbuf, ubuf, 0);
 	if (ret)
 		return ret;
@@ -990,6 +1003,7 @@ static const struct user_regset aarch64_regsets[] = {
 		 */
 		.size = sizeof(u32),
 		.align = sizeof(u32),
+		.active = fpr_active,
 		.get = fpr_get,
 		.set = fpr_set
 	},
@@ -1176,6 +1190,9 @@ static int compat_vfp_get(struct task_struct *target,
 	compat_ulong_t fpscr;
 	int ret, vregs_end_pos;
 
+	if (!system_supports_fpsimd())
+		return -EINVAL;
+
 	uregs = &target->thread.uw.fpsimd_state;
 
 	if (target == current)
@@ -1209,6 +1226,9 @@ static int compat_vfp_set(struct task_struct *target,
 	compat_ulong_t fpscr;
 	int ret, vregs_end_pos;
 
+	if (!system_supports_fpsimd())
+		return -EINVAL;
+
 	uregs = &target->thread.uw.fpsimd_state;
 
 	vregs_end_pos = VFP_STATE_SIZE - sizeof(compat_ulong_t);
@@ -1266,6 +1286,7 @@ static const struct user_regset aarch32_regsets[] = {
 		.n = VFP_STATE_SIZE / sizeof(compat_ulong_t),
 		.size = sizeof(compat_ulong_t),
 		.align = sizeof(compat_ulong_t),
+		.active = fpr_active,
 		.get = compat_vfp_get,
 		.set = compat_vfp_set
 	},
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
