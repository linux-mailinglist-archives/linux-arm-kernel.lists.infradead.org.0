Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 087E6379F8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 18:45:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Oq32T1HayDBrjkoqyQIxBWw3cJShco4c6ssF/fcMmWk=; b=Sk5qAIVjM6GmH4kwXsVkhIEtss
	/ZLruTpa4XOHstnNalVO5hp6/LpqtyQ48Q9NMIGwITVDLvaba7iIu+KCSGO8u80NeKZG+4SrIPrbI
	NGc4OovCmdqWV6f6bLHWX8xO+qk0/gMrrXzVVpHqGPyMlSFKvY1zHulX4YzbYoRVdo7xTJOQCNkuW
	qKXMsaYzC3vuOT2Wh680AmR4cQklwDfFgiLwe2vZppx5mlFxbkH5+TvRyScgT71Uja1ki0WFTUdAI
	fQPSkGX04BvmQtV/sYc38L2bE5hdOt+DexFsrNCw+mku9Yoe2v12lvfYTSVw5Y4WzGw8mK/1VmKC3
	xdgMAjwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYvWS-000886-4d; Thu, 06 Jun 2019 16:45:52 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYvWL-00087V-2U
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 16:45:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9B1D9374;
 Thu,  6 Jun 2019 09:45:44 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 446B03F690;
 Thu,  6 Jun 2019 09:45:43 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] arm64/sve: Factor out FPSIMD to SVE state conversion
Date: Thu,  6 Jun 2019 17:44:54 +0100
Message-Id: <1559839495-22315-2-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1559839495-22315-1-git-send-email-Dave.Martin@arm.com>
References: <1559839495-22315-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_094545_114398_EC31BE4B 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Peter Maydell <peter.maydell@linaro.org>, gdb@sourceware.org,
 Will Deacon <will.deacon@arm.com>, Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Julien Grall <julien.grall@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently we convert from FPSIMD to SVE register state in memory in
two places.

We are about to amend the way this works, so factor this operation
out so that subsequent changes only have to be made in one place.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 arch/arm64/kernel/fpsimd.c | 21 ++++++++++++---------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
index a38bf74..61ceeb9 100644
--- a/arch/arm64/kernel/fpsimd.c
+++ b/arch/arm64/kernel/fpsimd.c
@@ -352,6 +352,16 @@ static int __init sve_sysctl_init(void) { return 0; }
 #define ZREG(sve_state, vq, n) ((char *)(sve_state) +		\
 	(SVE_SIG_ZREG_OFFSET(vq, n) - SVE_SIG_REGS_OFFSET))
 
+static void __fpsimd_to_sve(void *sst, struct user_fpsimd_state const *fst,
+			    unsigned int vq)
+{
+	unsigned int i;
+
+	for (i = 0; i < 32; ++i)
+		memcpy(ZREG(sst, vq, i), &fst->vregs[i],
+		       sizeof(fst->vregs[i]));
+}
+
 /*
  * Transfer the FPSIMD state in task->thread.uw.fpsimd_state to
  * task->thread.sve_state.
@@ -368,15 +378,12 @@ static void fpsimd_to_sve(struct task_struct *task)
 	unsigned int vq;
 	void *sst = task->thread.sve_state;
 	struct user_fpsimd_state const *fst = &task->thread.uw.fpsimd_state;
-	unsigned int i;
 
 	if (!system_supports_sve())
 		return;
 
 	vq = sve_vq_from_vl(task->thread.sve_vl);
-	for (i = 0; i < 32; ++i)
-		memcpy(ZREG(sst, vq, i), &fst->vregs[i],
-		       sizeof(fst->vregs[i]));
+	__fpsimd_to_sve(sst, fst, vq);
 }
 
 /*
@@ -490,7 +497,6 @@ void sve_sync_from_fpsimd_zeropad(struct task_struct *task)
 	unsigned int vq;
 	void *sst = task->thread.sve_state;
 	struct user_fpsimd_state const *fst = &task->thread.uw.fpsimd_state;
-	unsigned int i;
 
 	if (!test_tsk_thread_flag(task, TIF_SVE))
 		return;
@@ -498,10 +504,7 @@ void sve_sync_from_fpsimd_zeropad(struct task_struct *task)
 	vq = sve_vq_from_vl(task->thread.sve_vl);
 
 	memset(sst, 0, SVE_SIG_REGS_SIZE(vq));
-
-	for (i = 0; i < 32; ++i)
-		memcpy(ZREG(sst, vq, i), &fst->vregs[i],
-		       sizeof(fst->vregs[i]));
+	__fpsimd_to_sve(sst, fst, vq);
 }
 
 int sve_set_vector_length(struct task_struct *task,
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
