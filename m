Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 765A1634E4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 13:26:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JFReb/TKep5YqVmWSlWuzS8aTD/VjPHgun3suPCZivM=; b=Jyy
	7OS52C5zydcpVRaPVgDPMSZXvBi582xHwQyYY9spn5Gx7cvjxDqLPa0atDEuACLPxTzYjc/gn5kdg
	s7xV4q7f3el03wiA2RNoQeVrdHWvazztbZsvsDDBxHxBgU8qrEXm79xeGTl7KLXN0kTtdK9VI8wrd
	E+Rn/FmUETqSpFeMge2PfQ9w9ORlfy6Dd1PSS7dHrZ+mD18NBJeoFggABw44C9LmwLc05y55BEFCZ
	S3iDNwaK9KnMOrEKx1I0MAOpWIbZKGTuvoDvtpmMJJO5QNt6ZiEaVDJ7gO8QE5eO6mSYvPVW7zNPN
	uCFiag9ablMtGO8UNj/pbkz5NLiP6bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkoGF-0002hp-LW; Tue, 09 Jul 2019 11:26:15 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkoG3-0002hU-DA
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 11:26:04 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 93EC560AD1; Tue,  9 Jul 2019 11:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1562671562;
 bh=uKSWUAXdnQaxp8dsA2ymp5mDBfLzuxXNVt3rRqgqkp4=;
 h=From:To:Cc:Subject:Date:From;
 b=IkyJcM65zanwIs65zgg0OLmPOtdx8k0Kl1mIgrSkheulGVfq4LenSHX7rcjGHMORM
 AmZHiu2xluCdtweGY5lm8EDVzA71w8BodrgLDLkIrnPjQTwURdH5lel3+qDRdRCPeR
 MXGFKZpVu4n+uD7o4qAVfo8pPQGJttzXzMRKoV8E=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from neeraju-linux.qualcomm.com
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: neeraju@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1EAEB605A5;
 Tue,  9 Jul 2019 11:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1562671561;
 bh=uKSWUAXdnQaxp8dsA2ymp5mDBfLzuxXNVt3rRqgqkp4=;
 h=From:To:Cc:Subject:Date:From;
 b=jmG13T43GS/jFFdWzpUPiTLAFjmuznX7vquZYQSgRyvq5ihId4Omat8c3SPw2CFOY
 LCEP1Fh6r/oHcryqnkxc17mbCVS6DtujcF9WPa5QSm92Xxxzp5Pbs8aq05PF2hszrp
 Ad+CC20LrH3FalYL+kGITs5PFlequiZ/tTaxeowM=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 1EAEB605A5
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=neeraju@codeaurora.org
From: Neeraj Upadhyay <neeraju@codeaurora.org>
To: will@kernel.org, mark.rutland@arm.com, marc.zyngier@arm.com,
 julien.thierry@arm.com, tglx@linutronix.de
Subject: [PATCH] arm64: Explicitly set pstate.ssbs for el0 on kernel entry
Date: Tue,  9 Jul 2019 16:52:13 +0530
Message-Id: <1562671333-3563-1-git-send-email-neeraju@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_042603_480004_38E12E72 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: parthd@codeaurora.org, gkohli@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Neeraj Upadhyay <neeraju@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For cpus which do not support pstate.ssbs feature, el0
might not retain spsr.ssbs. This is problematic, if this
task migrates to a cpu supporting this feature, thus
relying on its state to be correct. On kernel entry,
explicitly set spsr.ssbs, so that speculation is enabled
for el0, when this task migrates to a cpu supporting
ssbs feature. Restoring state at kernel entry ensures
that el0 ssbs state is always consistent while we are
in el1.

As alternatives are applied by boot cpu, at the end of smp
init, presence/absence of ssbs feature on boot cpu, is used
for deciding, whether the capability is uniformly provided.

Signed-off-by: Neeraj Upadhyay <neeraju@codeaurora.org>
---
 arch/arm64/kernel/cpu_errata.c | 16 ++++++++++++++++
 arch/arm64/kernel/entry.S      | 26 +++++++++++++++++++++++++-
 2 files changed, 41 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index ca11ff7..c84a56d 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -336,6 +336,22 @@ void __init arm64_enable_wa2_handling(struct alt_instr *alt,
 		*updptr = cpu_to_le32(aarch64_insn_gen_nop());
 }
 
+void __init arm64_restore_ssbs_state(struct alt_instr *alt,
+				     __le32 *origptr, __le32 *updptr,
+				     int nr_inst)
+{
+	BUG_ON(nr_inst != 1);
+	/*
+	 * Only restore EL0 SSBS state on EL1 entry if cpu does not
+	 * support the capability and capability is present for at
+	 * least one cpu and if the SSBD state allows it to
+	 * be changed.
+	 */
+	if (!this_cpu_has_cap(ARM64_SSBS) && cpus_have_cap(ARM64_SSBS) &&
+	    arm64_get_ssbd_state() != ARM64_SSBD_FORCE_ENABLE)
+		*updptr = cpu_to_le32(aarch64_insn_gen_nop());
+}
+
 void arm64_set_ssbd_mitigation(bool state)
 {
 	if (!IS_ENABLED(CONFIG_ARM64_SSBD)) {
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 9cdc459..7e79305 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -143,6 +143,25 @@ alternative_cb_end
 #endif
 	.endm
 
+	// This macro updates spsr. It also corrupts the condition
+	// codes state.
+	.macro	restore_ssbs_state, saved_spsr, tmp
+#ifdef CONFIG_ARM64_SSBD
+alternative_cb	arm64_restore_ssbs_state
+	b	.L__asm_ssbs_skip\@
+alternative_cb_end
+	ldr	\tmp, [tsk, #TSK_TI_FLAGS]
+	tbnz	\tmp, #TIF_SSBD, .L__asm_ssbs_skip\@
+	tst	\saved_spsr, #PSR_MODE32_BIT	// native task?
+	b.ne	.L__asm_ssbs_compat\@
+	orr	\saved_spsr, \saved_spsr, #PSR_SSBS_BIT
+	b	.L__asm_ssbs_skip\@
+.L__asm_ssbs_compat\@:
+	orr	\saved_spsr, \saved_spsr, #PSR_AA32_SSBS_BIT
+.L__asm_ssbs_skip\@:
+#endif
+	.endm
+
 	.macro	kernel_entry, el, regsize = 64
 	.if	\regsize == 32
 	mov	w0, w0				// zero upper 32 bits of x0
@@ -182,8 +201,13 @@ alternative_cb_end
 	str	x20, [tsk, #TSK_TI_ADDR_LIMIT]
 	/* No need to reset PSTATE.UAO, hardware's already set it to 0 for us */
 	.endif /* \el == 0 */
-	mrs	x22, elr_el1
 	mrs	x23, spsr_el1
+
+	.if	\el == 0
+	restore_ssbs_state x23, x22
+	.endif
+
+	mrs	x22, elr_el1
 	stp	lr, x21, [sp, #S_LR]
 
 	/*
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a
member of the Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
