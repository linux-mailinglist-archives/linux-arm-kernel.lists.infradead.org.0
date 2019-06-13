Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B56441C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:19:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=q/8Qc3ncrQw+MngcZ4gIaznbet4GzLkkqpHMV0FKdLY=; b=aBD1n8BxRC3OyXbqzLCsHlD5Mc
	a2GF2CPfujUK6rXex1NH5JVjkwOUNUyKQggjdejrsecqYeARtybLUE7RbcshrsCjE8tIBTjAu31BS
	DJHxDq7qRBquFAXFfg5JYx1zZagykUA8uOI/H9EFv33tMLv5xKqtah5uoJnK0cD6jpuFVMlwpgMSI
	GPixj8GPJTo/muNidHZk7mkpc7N6m8vf8j4wnQ3lS/Wb0BBgf8ADeTlAXWyvZxCBk1Ytc1f0dB7sk
	rDBeSJwFGi5x2OCeVusWPoaopbDkwYWx7W2Vfcf9/ixlA9ENlkYsxdZ9Lpr+e+rmkVq0s5uEZXSDf
	seRrD0lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSS0-0006SF-Nx; Thu, 13 Jun 2019 16:19:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSPc-0004Bq-0K
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 16:17:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C9A6411D4;
 Thu, 13 Jun 2019 09:17:15 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 757033F694;
 Thu, 13 Jun 2019 09:17:14 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH v2 8/8] arm64/sve: Rework SVE trap access to use
 TIF_SVE_NEEDS_FLUSH
Date: Thu, 13 Jun 2019 17:16:56 +0100
Message-Id: <20190613161656.20765-9-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190613161656.20765-1-julien.grall@arm.com>
References: <20190613161656.20765-1-julien.grall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_091716_472456_87E125FE 
X-CRM114-Status: GOOD (  18.73  )
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
Cc: Anton.Kirilov@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 oleg@redhat.com, zhang.lei@jp.fujitsu.com, Julien Grall <julien.grall@arm.com>,
 alex.bennee@linaro.org, Dave.Martin@arm.com, Daniel.Kiss@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SVE state will be flushed on the first SVE access trap. At the moment,
the SVE state will be generated from the FPSIMD state in software and
then loaded in memory.

It is possible to use the newly introduce flag TIF_SVE_NEEDS_FLUSH to
avoid a lot of memory access.

If the FPSIMD state is in memory, the SVE state will be loaded on return
to userspace from the FPSIMD state.

If the FPSIMD state is loaded, then we need to set the vector-length before
relying on return to userspace to flush the SVE registers. This is
because the vector-length is only set when loading from memory. We also
need to rebind the task to the CPU so the newly allocated SVE state is
used when the task is saved.

Signed-off-by: Julien Grall <julien.grall@arm.com>

---
    Changes in v2:
        - Rebind the task to the CPU if loaded in memory
---
 arch/arm64/include/asm/fpsimd.h  |  2 ++
 arch/arm64/kernel/entry-fpsimd.S |  5 +++++
 arch/arm64/kernel/fpsimd.c       | 33 ++++++++++++++++++++++-----------
 3 files changed, 29 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/include/asm/fpsimd.h b/arch/arm64/include/asm/fpsimd.h
index f07a88552588..200c1fce52b6 100644
--- a/arch/arm64/include/asm/fpsimd.h
+++ b/arch/arm64/include/asm/fpsimd.h
@@ -91,6 +91,8 @@ extern void sve_load_from_fpsimd_state(struct user_fpsimd_state const *state,
 
 extern unsigned int sve_get_vl(void);
 
+extern void sve_set_vq(unsigned long vq_minus_1);
+
 struct arm64_cpu_capabilities;
 extern void sve_kernel_enable(const struct arm64_cpu_capabilities *__unused);
 
diff --git a/arch/arm64/kernel/entry-fpsimd.S b/arch/arm64/kernel/entry-fpsimd.S
index 35c21a707730..e3ec566d7335 100644
--- a/arch/arm64/kernel/entry-fpsimd.S
+++ b/arch/arm64/kernel/entry-fpsimd.S
@@ -58,6 +58,11 @@ ENTRY(sve_get_vl)
 	ret
 ENDPROC(sve_get_vl)
 
+ENTRY(sve_set_vq)
+	sve_load_vq x0, x1, x2
+	ret
+ENDPROC(sve_set_vq)
+
 /*
  * Load SVE state from FPSIMD state.
  *
diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
index 41ab73b12f4a..0a517ee93134 100644
--- a/arch/arm64/kernel/fpsimd.c
+++ b/arch/arm64/kernel/fpsimd.c
@@ -869,10 +869,8 @@ void fpsimd_release_task(struct task_struct *dead_task)
 /*
  * Trapped SVE access
  *
- * Storage is allocated for the full SVE state, the current FPSIMD
- * register contents are migrated across, and TIF_SVE is set so that
- * the SVE access trap will be disabled the next time this task
- * reaches ret_to_user.
+ * Storage is allocated for the full SVE state and rely on the return
+ * code to actually convert the FPSIMD state to SVE state.
  *
  * TIF_SVE should be clear on entry: otherwise, fpsimd_restore_current_state()
  * would have disabled the SVE access trap for userspace during
@@ -890,14 +888,24 @@ asmlinkage void do_sve_acc(unsigned int esr, struct pt_regs *regs)
 
 	local_bh_disable();
 
-	fpsimd_save();
-
-	/* Force ret_to_user to reload the registers: */
-	fpsimd_flush_task_state(current);
+	set_thread_flag(TIF_SVE_NEEDS_FLUSH);
+	/*
+	 * We should not be here with SVE enabled. TIF_SVE will be set
+	 * before returning to userspace by fpsimd_restore_current_state().
+	 */
+	WARN_ON(test_thread_flag(TIF_SVE));
 
-	fpsimd_to_sve(current);
-	if (test_and_set_thread_flag(TIF_SVE))
-		WARN_ON(1); /* SVE access shouldn't have trapped */
+	/*
+	 * When the FPSIMD state is loaded:
+	 *	- The return path (see fpsimd_restore_current_state) requires
+	 *	the Vector-Length t be loaded beforehand.
+	 *	- We need to rebind the task to the CPU so the newly allocated
+	 *	SVE state is used when the task is saved.
+	 */
+	if (!test_thread_flag(TIF_FOREIGN_FPSTATE)) {
+		sve_set_vq(sve_vq_from_vl(current->thread.sve_vl) - 1);
+		fpsimd_bind_task_to_cpu();
+	}
 
 	local_bh_enable();
 }
@@ -1096,6 +1104,9 @@ void fpsimd_restore_current_state(void)
 		/*
 		 * The userspace had SVE enabled on entry to the kernel
 		 * and requires the state to be flushed.
+		 *
+		 * We rely on the Vector-Length to be set correctly before-hand
+		 * when converting a loaded FPSIMD state to SVE state.
 		 */
 		sve_flush_live();
 		sve_user_enable();
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
