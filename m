Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C71139D5C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 00:32:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xE0xnNnj/M2aiN6ER9RrP+J+leqlYP2ZCvhDx8f8Eyc=; b=SN4paQncLEgFrn
	Z76m+VUkjdgqPcRzmUJoz5BEpOatWnoqYorbBoMQnCUYPKjf1Qnv4lzBEyBJgu0EKYEDhfVHKhV+T
	DAbAKOu1A7Ide+4T7p2Px/vaLmQBxSOxTPOAV7A1x0A7pFL/Z+a1PHdHWzolLg6PPeIIsqItwf59C
	biFFV0qMotWjtFq7bpg3SctX2yjHNzoHspzT/fFeD69x3ZZvrqQ8FV7eaY23kOML3USzayAxFzWkV
	AbfqvzB7nlr21Y9ASITwtVvWjhzJA/7YXWB6cndLDIZ3Njp++uJk7Dqbzs2N5BgAT6dMUhI3BWBa6
	xlPxsb581ElWgp0iCvcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir9CG-0006iQ-AG; Mon, 13 Jan 2020 23:32:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir9B9-0005sf-Du
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 23:31:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 04E6F142F;
 Mon, 13 Jan 2020 15:31:27 -0800 (PST)
Received: from ewhatever.cambridge.arm.com (ewhatever.cambridge.arm.com
 [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DF5863F68E;
 Mon, 13 Jan 2020 15:31:25 -0800 (PST)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 6/7] arm64: signal: nofpsimd: Handle fp/simd context for
 signal frames
Date: Mon, 13 Jan 2020 23:30:22 +0000
Message-Id: <20200113233023.928028-7-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200113233023.928028-1-suzuki.poulose@arm.com>
References: <20200113233023.928028-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_153127_541521_A125E72A 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, ard.biesheuvel@linaro.org, maz@kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 catalin.marinas@arm.com, will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make sure we try to save/restore the vfp/fpsimd context for signal
handling only when the fp/simd support is available. Otherwise, skip
the frames.

Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
Changes since v2:
  - Remove WARN_ON() from static functions already checked for
    the presence of fpsmid.
---
 arch/arm64/kernel/signal.c   | 6 ++++--
 arch/arm64/kernel/signal32.c | 4 ++--
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
index dd2cdc0d5be2..339882db5a91 100644
--- a/arch/arm64/kernel/signal.c
+++ b/arch/arm64/kernel/signal.c
@@ -371,6 +371,8 @@ static int parse_user_sigframe(struct user_ctxs *user,
 			goto done;
 
 		case FPSIMD_MAGIC:
+			if (!system_supports_fpsimd())
+				goto invalid;
 			if (user->fpsimd)
 				goto invalid;
 
@@ -506,7 +508,7 @@ static int restore_sigframe(struct pt_regs *regs,
 	if (err == 0)
 		err = parse_user_sigframe(&user, sf);
 
-	if (err == 0) {
+	if (err == 0 && system_supports_fpsimd()) {
 		if (!user.fpsimd)
 			return -EINVAL;
 
@@ -623,7 +625,7 @@ static int setup_sigframe(struct rt_sigframe_user_layout *user,
 
 	err |= __copy_to_user(&sf->uc.uc_sigmask, set, sizeof(*set));
 
-	if (err == 0) {
+	if (err == 0 && system_supports_fpsimd()) {
 		struct fpsimd_context __user *fpsimd_ctx =
 			apply_user_offset(user, user->fpsimd_offset);
 		err |= preserve_fpsimd_context(fpsimd_ctx);
diff --git a/arch/arm64/kernel/signal32.c b/arch/arm64/kernel/signal32.c
index 12a585386c2f..82feca6f7052 100644
--- a/arch/arm64/kernel/signal32.c
+++ b/arch/arm64/kernel/signal32.c
@@ -223,7 +223,7 @@ static int compat_restore_sigframe(struct pt_regs *regs,
 	err |= !valid_user_regs(&regs->user_regs, current);
 
 	aux = (struct compat_aux_sigframe __user *) sf->uc.uc_regspace;
-	if (err == 0)
+	if (err == 0 && system_supports_fpsimd())
 		err |= compat_restore_vfp_context(&aux->vfp);
 
 	return err;
@@ -419,7 +419,7 @@ static int compat_setup_sigframe(struct compat_sigframe __user *sf,
 
 	aux = (struct compat_aux_sigframe __user *) sf->uc.uc_regspace;
 
-	if (err == 0)
+	if (err == 0 && system_supports_fpsimd())
 		err |= compat_preserve_vfp_context(&aux->vfp);
 	__put_user_error(0, &aux->end_magic, err);
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
