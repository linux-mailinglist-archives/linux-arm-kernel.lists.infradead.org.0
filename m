Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EA7483D0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 15:23:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=05S0luhusdOdwSithPylDRQLnesfTki3wNPwWx/dqyY=; b=AVnv3dJMeR4bj8
	M+upRCh/BtZWfE8qi7XrrmoUuv1d/g9I8FrYvUJ401DeUDqtLUVuzeCyAICtnO6T2EUr+Urh6ETz1
	/D0HDxrk88Id6jlBPsEZkI0VRcB7nxrWBWgEcOXu+AlV3fTYf8mfUNIMjxTnfpi9tlcUS/VfC47rR
	8YJhevzPTXfdQH9LvGEl6jbuLy/f+2TlWqRvF1WHPBWSxey+avSHGw49qbJHgP/PJOx0lRb0xlY/r
	D6Qt35lDB1OeEEa0jLABrDK6Q85ypGeZlWECtc4K7/nZG6GmJ/G0HqUXHIHJ9nYfBJyXgnED1s2kl
	L/sGQrwbfGSsBj//WwNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrbE-00053p-7j; Mon, 17 Jun 2019 13:23:04 +0000
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrb5-00052o-GO
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 13:22:57 +0000
Received: from anisse-station.iliad.local (unknown [213.36.7.13])
 by smtp3-g21.free.fr (Postfix) with ESMTPS id 6347313F8DA;
 Mon, 17 Jun 2019 15:22:22 +0200 (CEST)
From: Anisse Astier <aastier@freebox.fr>
To: Will Deacon <will.deacon@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/2] arm64: ssbd: explicitly depend on <linux/prctl.h>
Date: Mon, 17 Jun 2019 15:22:21 +0200
Message-Id: <20190617132222.32182-1-aastier@freebox.fr>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190617084545.GA38959@anisse-station>
References: <20190617084545.GA38959@anisse-station>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_062255_695453_975C0925 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:e0c:1:1599:0:0:0:12 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
 Anisse Astier <aastier@freebox.fr>, Catalin Marinas <catalin.marinas@arm.com>,
 Rich Felker <dalias@aerifal.cx>, linux-kernel@vger.kernel.org,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 "Dmitry V . Levin" <ldv@altlinux.org>, Ricardo Salveti <ricardo@foundries.io>,
 Richard Henderson <richard.henderson@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix ssbd.c which depends implicitly on asm/ptrace.h including
linux/prctl.h (through for example linux/compat.h, then linux/time.h,
linux/seqlock.h, linux/spinlock.h and linux/irqflags.h), and uses
PR_SPEC* defines.

This is an issue since we'll remove the include in the next commit.

Fixes: 9cdc0108baa8 ("arm64: ssbd: Add prctl interface for per-thread mitigation")
Cc: stable@vger.kernel.org
Signed-off-by: Anisse Astier <aastier@freebox.fr>
---
Contrary to what I said in the previous email, I can reproduce the build
error on Linus' master when ARM64_SSBD is enabled.

Changes since v2:
 - fix build when ARM64_SSBD is enabled with additionnal patch
Changes since v1:
 - made a bit more explicit that we copied defined symbols, in commit
   and code.
 - Use Fixes: tag in commit message

Thanks to Dave Martin and Will Deacon for the review, and Sasha Levin
for the auto-build bot.
---
 arch/arm64/kernel/ssbd.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/kernel/ssbd.c b/arch/arm64/kernel/ssbd.c
index 885f13e58708..52cfc6148355 100644
--- a/arch/arm64/kernel/ssbd.c
+++ b/arch/arm64/kernel/ssbd.c
@@ -5,6 +5,7 @@
 
 #include <linux/compat.h>
 #include <linux/errno.h>
+#include <linux/prctl.h>
 #include <linux/sched.h>
 #include <linux/sched/task_stack.h>
 #include <linux/thread_info.h>
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
