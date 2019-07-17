Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DD96B87B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:44:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QBBX192oDGMOD6M4FSEJHhJe29YPPAL+jiiHq0gVlR4=; b=CXYEfZOS46c5FI
	63FbAt4DJ7MWjlLfEJviVB0HdDbAenN3OoXHd7P3r4p1jsJArYDhZS38R6RTRN7r1Z+Pqn1KvUIVa
	gCM4jWlhAPGjdSPy0PpFuYVik3XhL+QG0pMJe/jMJLUcAc80mA6rEGc6tJYlrhchPp7EQQ7ktGi86
	6iHYqsnrrnlGH0gYS1WPZph7x2ruJPV4maXClakPdd3L20+yYOikoyWqyLfnejMPzjYeEKNamv6Wh
	1tR076bVzT2lJl0lCi0Z39H3EpO8ZIwL4X75cAivw+MhnlVAw7K9YU2FwXPthWZYmQsuhkdnnESh7
	kZzT61/0MT2hmeAiKGTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnfXw-00038I-1Q; Wed, 17 Jul 2019 08:44:20 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnfXh-0002wC-DU
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 08:44:07 +0000
Received: from pd9ef1cb8.dip0.t-ipconnect.de ([217.239.28.184] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hnfXc-0000rM-8D; Wed, 17 Jul 2019 10:44:00 +0200
Date: Wed, 17 Jul 2019 10:43:59 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: LAK <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] arm64: Avoid pointless schedule_preempt_irq() invocations
Message-ID: <alpine.DEB.2.21.1907171036490.1767@nanos.tec.linutronix.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_014405_599756_63EE4A50 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_HDRS_LCASE           Odd capitalization of message header
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When preempt_count is zero on return from interrupt then
schedule_preempt_irq() is invoked even if TIF_NEED_RESCHED is not set.

That does not make sense because schedule_preempt_irq() has to go through a
full __schedule() for nothing in that case.

Check TIF_NEED_RESCHED and invoke schedule_preempt_irq() only if set.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
Found while staring at some RT wrecakge in that area.
---
 arch/arm64/kernel/entry.S |    4 ++++
 1 file changed, 4 insertions(+)

--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -680,6 +680,10 @@ alternative_if ARM64_HAS_IRQ_PRIO_MASKIN
 	orr	x24, x24, x0
 alternative_else_nop_endif
 	cbnz	x24, 1f				// preempt count != 0 || NMI return path
+
+	ldr	x0, [tsk, #TSK_TI_FLAGS]        // get flags
+	tbz	x0, #TIF_NEED_RESCHED, 1f      	// needs rescheduling?
+
 	bl	preempt_schedule_irq		// irq en/disable is done inside
 1:
 #endif

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
