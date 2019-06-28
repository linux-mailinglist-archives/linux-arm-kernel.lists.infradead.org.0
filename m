Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 061E359F5B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 17:47:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3mC5f42dpwf5fDNWM0FIP3jV8Evdm4fm6dI+sE9xdtI=; b=Ay0QbrnX10uFAcUE0ZsKUWgHKI
	4RMJm9gpCyn9xH5VqjlPds420B0afh9WbrF0zDdEfrnwfYL6UN4F611OEE/R80WX7Vd5ZQI7ZL+Dm
	QrnYxIvIX3085DmIvHN3RleEB6vGrvn+F/DHzWGrLPgy0wchyE8gIgJrQofbtd/W2oEBJcc9ggdDW
	0O6VMTpBxdx13YBZizDgDLa50q9+Zm0nmMJd9U14HcYhwhcbllQq2w0tj649YlXPeOapC8VqSdlPl
	Yi8IKMcbxpqGVUz1xf/Kef6+/a7K27AbUoPQ3V9F4m7mCMK8sGcHeB0eGJCOtYOszf1QHY2x43Wcc
	JGlJw6fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgt5s-0008Bj-LN; Fri, 28 Jun 2019 15:47:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgt5M-00080C-BA
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 15:46:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A58C3EBD;
 Fri, 28 Jun 2019 08:46:47 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8774C3F706;
 Fri, 28 Jun 2019 08:46:46 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCHv2 1/3] arm64: stacktrace: Constify stacktrace.h functions
Date: Fri, 28 Jun 2019 16:46:37 +0100
Message-Id: <20190628154639.5308-2-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190628154639.5308-1-mark.rutland@arm.com>
References: <20190628154639.5308-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_084648_448418_E21FA5FA 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
