Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D587B123508
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 19:36:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AWKqRcR+4UhQ6auPE8aLAQXwoj7DtwK+MpJFUzJijiM=; b=nK+J1JKbT0wzMp
	xdxnAlc2hd+WIEDIhFXycQ6XuDFZQ4QkOU1lSJn+mXLJ5TVxf7N4hhdJgJXMGQhvxxFSIrsQk36xC
	u8j5+FmG6RUweLg3VS7/3Uru9NHiRCI234VpalNkjeN1sWDI6endkh4c6irxZM9QCnyfFeteAW1J1
	U0lNee6lGtkLgWcr5EY9msk5dWFjyMm++CZ6QuGyREmcOIwjp2qeIsxietedOEBpfdz2x5dqYxxoI
	urQaWP3785BsdM7GrPIF/GWKcPW9sugFVj8+XljSFBIHJ8VN05E//aqi6487pSOf/WOzC2sKAcD00
	nXrknDdDTUOuiQ+atWqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihHhW-0001zh-4u; Tue, 17 Dec 2019 18:36:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihHfu-0007cw-W6
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 18:34:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5426D30E;
 Tue, 17 Dec 2019 10:34:26 -0800 (PST)
Received: from ewhatever.cambridge.arm.com (ewhatever.cambridge.arm.com
 [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DF1B43F67D;
 Tue, 17 Dec 2019 10:34:24 -0800 (PST)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 6/7] arm64: signal: nofpsimd: Handle fp/simd context for
 signal frames
Date: Tue, 17 Dec 2019 18:34:01 +0000
Message-Id: <20191217183402.2259904-7-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191217183402.2259904-1-suzuki.poulose@arm.com>
References: <20191217183402.2259904-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_103427_131369_93E69FC2 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, christoffer.dall@arm.com,
 catalin.marinas@arm.com, will@kernel.org, dave.martin@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make sure we try to save/restore the vfp/fpsimd context for signal
handling only when the fp/simd support is available. Otherwise, skip
the frames.

Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 arch/arm64/kernel/signal.c   | 17 +++++++++++++++--
 arch/arm64/kernel/signal32.c | 11 +++++++++--
 2 files changed, 24 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
index dd2cdc0d5be2..c648f7627035 100644
--- a/arch/arm64/kernel/signal.c
+++ b/arch/arm64/kernel/signal.c
@@ -173,6 +173,10 @@ static int preserve_fpsimd_context(struct fpsimd_context __user *ctx)
 		&current->thread.uw.fpsimd_state;
 	int err;
 
+	/* This must not be called when FP/SIMD support is missing */
+	if (WARN_ON(!system_supports_fpsimd()))
+		return -EINVAL;
+
 	/* copy the FP and status/control registers */
 	err = __copy_to_user(ctx->vregs, fpsimd->vregs, sizeof(fpsimd->vregs));
 	__put_user_error(fpsimd->fpsr, &ctx->fpsr, err);
@@ -191,6 +195,10 @@ static int restore_fpsimd_context(struct fpsimd_context __user *ctx)
 	__u32 magic, size;
 	int err = 0;
 
+	/* This must not be called when FP/SIMD support is missing */
+	if (WARN_ON(!system_supports_fpsimd()))
+		return -EINVAL;
+
 	/* check the magic/size information */
 	__get_user_error(magic, &ctx->head.magic, err);
 	__get_user_error(size, &ctx->head.size, err);
@@ -261,6 +269,9 @@ static int restore_sve_fpsimd_context(struct user_ctxs *user)
 	struct user_fpsimd_state fpsimd;
 	struct sve_context sve;
 
+	if (WARN_ON(!system_supports_fpsimd()))
+		return -EINVAL;
+
 	if (__copy_from_user(&sve, user->sve, sizeof(sve)))
 		return -EFAULT;
 
@@ -371,6 +382,8 @@ static int parse_user_sigframe(struct user_ctxs *user,
 			goto done;
 
 		case FPSIMD_MAGIC:
+			if (!system_supports_fpsimd())
+				goto invalid;
 			if (user->fpsimd)
 				goto invalid;
 
@@ -506,7 +519,7 @@ static int restore_sigframe(struct pt_regs *regs,
 	if (err == 0)
 		err = parse_user_sigframe(&user, sf);
 
-	if (err == 0) {
+	if (err == 0 && system_supports_fpsimd()) {
 		if (!user.fpsimd)
 			return -EINVAL;
 
@@ -623,7 +636,7 @@ static int setup_sigframe(struct rt_sigframe_user_layout *user,
 
 	err |= __copy_to_user(&sf->uc.uc_sigmask, set, sizeof(*set));
 
-	if (err == 0) {
+	if (err == 0 && system_supports_fpsimd()) {
 		struct fpsimd_context __user *fpsimd_ctx =
 			apply_user_offset(user, user->fpsimd_offset);
 		err |= preserve_fpsimd_context(fpsimd_ctx);
diff --git a/arch/arm64/kernel/signal32.c b/arch/arm64/kernel/signal32.c
index 12a585386c2f..97ace6919bc2 100644
--- a/arch/arm64/kernel/signal32.c
+++ b/arch/arm64/kernel/signal32.c
@@ -100,6 +100,9 @@ static int compat_preserve_vfp_context(struct compat_vfp_sigframe __user *frame)
 	compat_ulong_t fpscr, fpexc;
 	int i, err = 0;
 
+	/* This must not be called when the FP/SIMD is missing */
+	if (WARN_ON(!system_supports_fpsimd()))
+		return -EINVAL;
 	/*
 	 * Save the hardware registers to the fpsimd_state structure.
 	 * Note that this also saves V16-31, which aren't visible
@@ -149,6 +152,10 @@ static int compat_restore_vfp_context(struct compat_vfp_sigframe __user *frame)
 	compat_ulong_t fpscr;
 	int i, err = 0;
 
+	/* This must not be called when the FP/SIMD is missing */
+	if (WARN_ON(!system_supports_fpsimd()))
+		return -EINVAL;
+
 	__get_user_error(magic, &frame->magic, err);
 	__get_user_error(size, &frame->size, err);
 
@@ -223,7 +230,7 @@ static int compat_restore_sigframe(struct pt_regs *regs,
 	err |= !valid_user_regs(&regs->user_regs, current);
 
 	aux = (struct compat_aux_sigframe __user *) sf->uc.uc_regspace;
-	if (err == 0)
+	if (err == 0 && system_supports_fpsimd())
 		err |= compat_restore_vfp_context(&aux->vfp);
 
 	return err;
@@ -419,7 +426,7 @@ static int compat_setup_sigframe(struct compat_sigframe __user *sf,
 
 	aux = (struct compat_aux_sigframe __user *) sf->uc.uc_regspace;
 
-	if (err == 0)
+	if (err == 0 && system_supports_fpsimd())
 		err |= compat_preserve_vfp_context(&aux->vfp);
 	__put_user_error(0, &aux->end_magic, err);
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
