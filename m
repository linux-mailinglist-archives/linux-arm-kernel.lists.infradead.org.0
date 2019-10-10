Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 821C3D2F6C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 19:16:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IUGIZcirVPlIRqs2rAwiuq4/sHhVpP8ZBSfXgLQZ1N4=; b=NNb4UZsLjMWKU1
	br0d/PoKvdpAHy1a6CJadpisbBar7nUpWw+bhrjxHtyCZJBHVHq8JKU+Zyjkqu+r6BkoHHPQa7eVB
	6hLCHKhjvpV6TNxbXhwuT7yo6pd6+s1eQ5gHO7ONPL2OL5xbnx8oC0yWDx0X8JDOWmxIE3f5o9cxs
	pDtIwaPn3UXzZW5EcHVWd5aFcl7pXm10C/GciVAENDNr7JXsXwDo6qeAkDPpDspRCUOJBWOfX7pmy
	kHGV5k/VSj5j4XXgMF0Oa9m/1+vp/X4yl9n2SgQbpnpD65vcjMqjrYIFfNOSLbCai/n75/qzPfimf
	X86W82+d10wQ9cW2u42Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIc2z-0007yF-4s; Thu, 10 Oct 2019 17:16:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIc2L-0007Ud-8Z
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 17:15:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AC89C1570;
 Thu, 10 Oct 2019 10:15:36 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id AA6B13F71A;
 Thu, 10 Oct 2019 10:15:35 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] arm64: nofpsmid: Clear TIF_FOREIGN_FPSTATE flag for early
 tasks
Date: Thu, 10 Oct 2019 18:15:16 +0100
Message-Id: <20191010171517.28782-3-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191010171517.28782-1-suzuki.poulose@arm.com>
References: <20191010171517.28782-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_101537_341629_801C6E34 
X-CRM114-Status: GOOD (  12.71  )
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
Cc: mark.rutland@arm.com, Suzuki K Poulose <suzuki.poulose@arm.com>,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, will@kernel.org,
 dave.martin@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We detect the absence of FP/SIMD after we boot the SMP CPUs, and by then
we have kernel threads running already with TIF_FOREIGN_FPSTATE set which
could be inherited by early userspace applications (e.g, modprobe triggered
from initramfs). This could end up in the applications stuck in
do_nofity_resume() as we never clear the TIF flag, once we now know that
we don't support FP.

Fix this by making sure that we clear the TIF_FOREIGN_FPSTATE flag
for tasks which may have them set, as we would have done in the normal
case, but avoiding touching the hardware state (since we don't support any).

Fixes: 82e0191a1aa11abf ("arm64: Support systems without FP/ASIMD")
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 arch/arm64/kernel/fpsimd.c | 26 ++++++++++++++++----------
 1 file changed, 16 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
index 37d3912cfe06..dfcdd077aeca 100644
--- a/arch/arm64/kernel/fpsimd.c
+++ b/arch/arm64/kernel/fpsimd.c
@@ -1128,12 +1128,19 @@ void fpsimd_bind_state_to_cpu(struct user_fpsimd_state *st, void *sve_state,
  */
 void fpsimd_restore_current_state(void)
 {
-	if (!system_supports_fpsimd())
-		return;
-
 	get_cpu_fpsimd_context();
-
-	if (test_and_clear_thread_flag(TIF_FOREIGN_FPSTATE)) {
+	/*
+	 * For the tasks that were created before we detected the absence of
+	 * FP/SIMD, the TIF_FOREIGN_FPSTATE could be set via fpsimd_thread_switch()
+	 * and/or could be inherited from the parent(init_task has this set). Even
+	 * though userspace has not run yet, this could be inherited by the
+	 * processes forked from one of those tasks (e.g, modprobe from initramfs).
+	 * If the system doesn't support FP/SIMD, we must clear the flag for the
+	 * tasks mentioned above, to indicate that the FPSTATE is clean (as we
+	 * can't have one) to avoid looping for ever to clear the flag.
+	 */
+	if (test_and_clear_thread_flag(TIF_FOREIGN_FPSTATE) &&
+	    system_supports_fpsimd()) {
 		task_fpsimd_load();
 		fpsimd_bind_task_to_cpu();
 	}
@@ -1148,17 +1155,16 @@ void fpsimd_restore_current_state(void)
  */
 void fpsimd_update_current_state(struct user_fpsimd_state const *state)
 {
-	if (!system_supports_fpsimd())
-		return;
-
 	get_cpu_fpsimd_context();
 
 	current->thread.uw.fpsimd_state = *state;
 	if (system_supports_sve() && test_thread_flag(TIF_SVE))
 		fpsimd_to_sve(current);
 
-	task_fpsimd_load();
-	fpsimd_bind_task_to_cpu();
+	if (system_supports_fpsimd()) {
+		task_fpsimd_load();
+		fpsimd_bind_task_to_cpu();
+	}
 
 	clear_thread_flag(TIF_FOREIGN_FPSTATE);
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
