Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 316C242BAB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 18:02:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vbzP07ohX9NUgdciwzXnUN0ulaemGsYkNVi1tUC6OFY=; b=di3ReMXp3lmA1jYriy7wH3oug8
	YdNlWViVR/rx6YWSFT0uVvePo1bfIPePJpV+PswQDMlRQKR3JAaPPmuuFMUwx9CR8WcXsSSHQ56PP
	jgNAC7CCm9C/W4FH8ng6HXug7y0kEwjHtuooWpmzJlNV6vIHtg0nC9b7YZ+Zqc5rsqIzNSl5zJIJL
	u8saHaukCsbVpugz3VXySNDBdtipZBzB00uIcEd1IjNfaZXVJrYSZGgwIUjJ1zA9t1cbh7eyAwLzE
	BQRcJCuWgbSQlt/tigW7I9+4WQJa8s00DNQDQEQWjMdrHqCjT7VLja2r9gUh+apfjCBRhw7BY3NH1
	lKSK7lGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb5hc-0008E5-CR; Wed, 12 Jun 2019 16:02:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb5gj-0007hy-W9
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 16:01:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6EE98337;
 Wed, 12 Jun 2019 09:01:25 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 33E763F73C;
 Wed, 12 Jun 2019 09:01:24 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/3] arm64/sve: Fix a couple of magic numbers for the Z-reg
 count
Date: Wed, 12 Jun 2019 17:00:34 +0100
Message-Id: <1560355234-25516-4-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1560355234-25516-1-git-send-email-Dave.Martin@arm.com>
References: <1560355234-25516-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_090126_088771_500220CC 
X-CRM114-Status: GOOD (  10.18  )
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

There are some hand-written instances of "32" to express the number
of SVE Z-registers.

Since this code was written a #define was added for this, so
convert trivial instances of this magic number as appropriate.

No functional change.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 arch/arm64/kernel/fpsimd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
index d2f7544..a5702c3 100644
--- a/arch/arm64/kernel/fpsimd.c
+++ b/arch/arm64/kernel/fpsimd.c
@@ -376,7 +376,7 @@ static void __fpsimd_to_sve(void *sst, struct user_fpsimd_state const *fst,
 	unsigned int i;
 	__uint128_t *p;
 
-	for (i = 0; i < 32; ++i) {
+	for (i = 0; i < SVE_NUM_ZREGS; ++i) {
 		p = (__uint128_t *)ZREG(sst, vq, i);
 		*p = arm64_cpu_to_le128(fst->vregs[i]);
 	}
@@ -428,7 +428,7 @@ static void sve_to_fpsimd(struct task_struct *task)
 		return;
 
 	vq = sve_vq_from_vl(task->thread.sve_vl);
-	for (i = 0; i < 32; ++i) {
+	for (i = 0; i < SVE_NUM_ZREGS; ++i) {
 		p = (__uint128_t const *)ZREG(sst, vq, i);
 		fst->vregs[i] = arm64_le128_to_cpu(*p);
 	}
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
