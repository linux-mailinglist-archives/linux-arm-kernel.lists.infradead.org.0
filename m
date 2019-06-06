Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D2C3748C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 14:54:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3mC5f42dpwf5fDNWM0FIP3jV8Evdm4fm6dI+sE9xdtI=; b=t+R/6M8Io13OYTuE+9rsuXz4iV
	md/dWlthgWtzJIYHBprryA3pnpwuxYqtoCSkd7wxtH9N+zJYCfwiFzRYgtcnlrlML/exnUx/FC/+h
	aPS3EyqUwnmaG1/wldE1WYtOCz9+Xs7o8iZGrFDfPLIiyTA1SUQUcwRs0Nktlrp+1/z3QloSeKj57
	DF1uqYMX+sz+SlUBQvUBYEidDxVgoT4fmH+4bsq5tVLmVls3GgRCO5ZyF9o5LI7u58fwZ7tzNkerD
	kWa3+P/4Tc+XK8DiRwyCwaGrfADGcev6xMZ2Xz3uU9mFxl41Ry813YU7iANu7TB73bl3hPIJYjYqW
	iyAYSlsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYruY-0002gI-Jr; Thu, 06 Jun 2019 12:54:30 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYruO-0002dP-VO
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 12:54:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A5BB2374;
 Thu,  6 Jun 2019 05:54:20 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 257413F5AF;
 Thu,  6 Jun 2019 05:54:19 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] arm64: stacktrace: Constify stacktrace.h functions
Date: Thu,  6 Jun 2019 13:54:00 +0100
Message-Id: <20190606125402.10229-2-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190606125402.10229-1-mark.rutland@arm.com>
References: <20190606125402.10229-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_055421_018677_65DC25CD 
X-CRM114-Status: GOOD (  12.43  )
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
Cc: mark.rutland@arm.com, tengfeif@codeaurora.org, catalin.marinas@arm.com,
 will.deacon@arm.com, james.morse@arm.com, Dave Martin <Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Martin <Dave.Martin@arm.com>

on_accessible_stack() and on_task_stack() shouldn't (and don't)
modify their task argument, so it can be const.

This patch adds the appropriate modifiers. Whitespace violations in the
parameter lists are fixed at the same time.

No functional change.

Signed-off-by: Dave Martin <dave.martin@arm.com>
[Mark: fixup const location, whitespace]
Signed-off-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/include/asm/stacktrace.h | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/include/asm/stacktrace.h b/arch/arm64/include/asm/stacktrace.h
index e86737b7c924..4dd569592e65 100644
--- a/arch/arm64/include/asm/stacktrace.h
+++ b/arch/arm64/include/asm/stacktrace.h
@@ -75,8 +75,9 @@ static inline bool on_irq_stack(unsigned long sp,
 	return true;
 }
 
-static inline bool on_task_stack(struct task_struct *tsk, unsigned long sp,
-				struct stack_info *info)
+static inline bool on_task_stack(const struct task_struct *tsk,
+				 unsigned long sp,
+				 struct stack_info *info)
 {
 	unsigned long low = (unsigned long)task_stack_page(tsk);
 	unsigned long high = low + THREAD_SIZE;
@@ -123,9 +124,9 @@ static inline bool on_overflow_stack(unsigned long sp,
  * We can only safely access per-cpu stacks from current in a non-preemptible
  * context.
  */
-static inline bool on_accessible_stack(struct task_struct *tsk,
-					unsigned long sp,
-					struct stack_info *info)
+static inline bool on_accessible_stack(const struct task_struct *tsk,
+				       unsigned long sp,
+				       struct stack_info *info)
 {
 	if (on_task_stack(tsk, sp, info))
 		return true;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
