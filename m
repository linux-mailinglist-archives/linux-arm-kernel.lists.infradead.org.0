Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4A7441BF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:17:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lEHPbHHv4ZaojZo7cKWaS3s9UjPRJxbWItZYIC6ZliA=; b=lVXNOAyUjaox2b/2/jljDpXT2Z
	8je4UmXZWZgTCHtl7jz+XbEFd2DqsqU+1xyonfon0m6S+4h7XYu8XzxgprvPvRe/WdAEcuCfZQQKC
	IApQtUZAiEkyU0lFV6FzjRy1Plf6AGacncetuR8dFq+zl7meRixWDFGtrvcS3N9F45riTHTklxiyy
	NOPmvKlS20vDKdBSp9X7fCJLtx8lcGBB/PqiylUtsq+Ko5f9y42zQEV+K5LSu/Jj1Pv8Isiu55D3b
	X8PlDda4s/a3B3o19pyyzec4tZOm/6dwl9GI1FMcwCaQuEGQE25u0WrgOF4RKDmi2LiJuMb83oFqn
	Chai1VUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSQ6-0004PT-O5; Thu, 13 Jun 2019 16:17:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSPR-00043x-2U
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 16:17:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C555DA78;
 Thu, 13 Jun 2019 09:17:04 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7097F3F694;
 Thu, 13 Jun 2019 09:17:03 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH v2 1/8] arm64/fpsimd: Update documentation of do_sve_acc
Date: Thu, 13 Jun 2019 17:16:49 +0100
Message-Id: <20190613161656.20765-2-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190613161656.20765-1-julien.grall@arm.com>
References: <20190613161656.20765-1-julien.grall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_091705_154492_0252B061 
X-CRM114-Status: GOOD (  11.31  )
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

TIF_SVE is cleared by fpsimd_restore_current_state() not
task_fpsimd_load(). Update the documentation of do_sve_acc to reflect
this behavior.

Signed-off-by: Julien Grall <julien.grall@arm.com>

---
    Changes in v2:
        - Fix typo in the commit message
---
 arch/arm64/kernel/fpsimd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
index a38bf74bcca8..92f418e4f989 100644
--- a/arch/arm64/kernel/fpsimd.c
+++ b/arch/arm64/kernel/fpsimd.c
@@ -853,7 +853,7 @@ void fpsimd_release_task(struct task_struct *dead_task)
  * the SVE access trap will be disabled the next time this task
  * reaches ret_to_user.
  *
- * TIF_SVE should be clear on entry: otherwise, task_fpsimd_load()
+ * TIF_SVE should be clear on entry: otherwise, fpsimd_restore_current_state()
  * would have disabled the SVE access trap for userspace during
  * ret_to_user, making an SVE access trap impossible in that case.
  */
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
