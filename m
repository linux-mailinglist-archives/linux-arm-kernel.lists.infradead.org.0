Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CB042BA6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 18:02:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EV1krLCx/OFkwNCzv++mqpCw/j/xnsZtiykw73ToV2w=; b=UFI0qnqzL/+y+L0LN3kEsnqCH8
	R822T6/aYFlAkt/CSjxNQXl/CU22KD4HeZyhFMPs7uzS/ptQ8sfms9aMl/J20DwHcYkOtxbmGJBeT
	ZqZjZgCKhqNEisgVQFTgw4/4939qMV1misqs2ryQFz2KLUsE2KXaYzDZRVJ93Uzxr7Z7VVO8ENTWG
	ynEgmlhhb0FHYquabLH6amViQ5DNwhWxIO984QfLUIgJFyaD9hqn/m/trVPMLK+lkM0ZH5odzGU8a
	bqmM/u8mykgHYJRJMwF5mBoWyBhoShod1Z0QEiqpcsgPTKHXJL1iWvHRh/OoNOnxUepfrDT7UKLfX
	YZOrkCtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb5hJ-0007yA-Gx; Wed, 12 Jun 2019 16:02:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb5gi-0007gC-ED
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 16:01:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F269EA5E;
 Wed, 12 Jun 2019 09:01:23 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D2E693F73C;
 Wed, 12 Jun 2019 09:01:22 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/3] arm64/sve: Factor out FPSIMD to SVE state conversion
Date: Wed, 12 Jun 2019 17:00:33 +0100
Message-Id: <1560355234-25516-3-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1560355234-25516-1-git-send-email-Dave.Martin@arm.com>
References: <1560355234-25516-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_090124_532325_E2C81A0A 
X-CRM114-Status: GOOD (  10.97  )
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
Cc: Peter Maydell <peter.maydell@linaro.org>, gdb@sourceware.org,
 Alan Hayward <alan.hayward@arm.com>, Will Deacon <will.deacon@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>, Julien Grall <julien.grall@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently we convert from FPSIMD to SVE register state in memory in
two places.

To ease future maintenance, let's consolidate this in one place.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 arch/arm64/kernel/fpsimd.c | 27 ++++++++++++++-------------
 1 file changed, 14 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
index bb42cd0..d2f7544 100644
--- a/arch/arm64/kernel/fpsimd.c
+++ b/arch/arm64/kernel/fpsimd.c
@@ -370,6 +370,18 @@ static __uint128_t arm64_cpu_to_le128(__uint128_t x)
 
 #define arm64_le128_to_cpu(x) arm64_cpu_to_le128(x)
 
+static void __fpsimd_to_sve(void *sst, struct user_fpsimd_state const *fst,
+			    unsigned int vq)
+{
+	unsigned int i;
+	__uint128_t *p;
+
+	for (i = 0; i < 32; ++i) {
+		p = (__uint128_t *)ZREG(sst, vq, i);
+		*p = arm64_cpu_to_le128(fst->vregs[i]);
+	}
+}
+
 /*
  * Transfer the FPSIMD state in task->thread.uw.fpsimd_state to
  * task->thread.sve_state.
@@ -386,17 +398,12 @@ static void fpsimd_to_sve(struct task_struct *task)
 	unsigned int vq;
 	void *sst = task->thread.sve_state;
 	struct user_fpsimd_state const *fst = &task->thread.uw.fpsimd_state;
-	unsigned int i;
-	__uint128_t *p;
 
 	if (!system_supports_sve())
 		return;
 
 	vq = sve_vq_from_vl(task->thread.sve_vl);
-	for (i = 0; i < 32; ++i) {
-		p = (__uint128_t *)ZREG(sst, vq, i);
-		*p = arm64_cpu_to_le128(fst->vregs[i]);
-	}
+	__fpsimd_to_sve(sst, fst, vq);
 }
 
 /*
@@ -512,8 +519,6 @@ void sve_sync_from_fpsimd_zeropad(struct task_struct *task)
 	unsigned int vq;
 	void *sst = task->thread.sve_state;
 	struct user_fpsimd_state const *fst = &task->thread.uw.fpsimd_state;
-	unsigned int i;
-	__uint128_t *p;
 
 	if (!test_tsk_thread_flag(task, TIF_SVE))
 		return;
@@ -521,11 +526,7 @@ void sve_sync_from_fpsimd_zeropad(struct task_struct *task)
 	vq = sve_vq_from_vl(task->thread.sve_vl);
 
 	memset(sst, 0, SVE_SIG_REGS_SIZE(vq));
-
-	for (i = 0; i < 32; ++i) {
-		p = (__uint128_t *)ZREG(sst, vq, i);
-		*p = arm64_cpu_to_le128(fst->vregs[i]);
-	}
+	__fpsimd_to_sve(sst, fst, vq);
 }
 
 int sve_set_vector_length(struct task_struct *task,
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
