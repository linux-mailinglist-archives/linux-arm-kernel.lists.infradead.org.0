Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C892D5893
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 00:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AfgmHVuZaVD1uBNvmFAJ+ETLvyur1GTHI7Fn06leG2w=; b=K0CBISrse0As4i
	myD2IGqgXk+CJM7sdM3ZeHMT9SktJCUNei2tgGTSwmSNbW7NS9bEk5tX/jRpXMuPlrGOf1vDcPMN+
	PhQKIhf6IUros5K1qUlUUXb7jddYnB4CIhwv1S0rB3bLUukSl1MB9leYwmbVJhUzJ4BgfohVWQylz
	ygCS2sfBu5pfoEMSFc83kmpNwXRpSKNtcvzRlZQpziUEhHyx9C7nucUJUvVbkLJ+3TqiK63NU+5W4
	JJivJxHqjI5Ot2OUF58O/7DifkZSkrp0ZNRsAOazLBV7JWY+ihBX/fg+nwKLjPHPm3lri/eOl7O+N
	GEOpzHwgypP/Vmstrgow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJm91-0007Vz-P3; Sun, 13 Oct 2019 22:15:19 +0000
Received: from chamillionaire.breakpoint.cc ([2a0a:51c0:0:12e:520::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJm7o-0006VS-Ff
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 22:14:06 +0000
Received: from localhost ([127.0.0.1] helo=flow.W.breakpoint.cc)
 by Chamillionaire.breakpoint.cc with esmtp (Exim 4.92)
 (envelope-from <sebastian@breakpoint.cc>)
 id 1iJm7k-00089S-Un; Mon, 14 Oct 2019 00:14:02 +0200
From: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 6/6] ARM: Inline locking functions for !PREEMPTION
Date: Mon, 14 Oct 2019 00:13:10 +0200
Message-Id: <20191013221310.30748-7-sebastian@breakpoint.cc>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191013221310.30748-1-sebastian@breakpoint.cc>
References: <20191013221310.30748-1-sebastian@breakpoint.cc>
MIME-Version: 1.0
X-Breakpoint-Spam-Score: -0.2
X-Breakpoint-Spam-Level: /
X-Breakpoint-Spam-Status: No , -0.2 points, 5.0 required, ALL_TRUSTED=-1,
 UPPERCASE_50_75=0.791
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_151404_548505_CA92AEC6 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.5 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:520:0:0:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 Russell King <linux@armlinux.org.uk>,
 Sebastian Andrzej Siewior <sebastian@breakpoint.cc>,
 Ingo Molnar <mingo@redhat.com>, Waiman Long <longman@redhat.com>,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On non-preemptive kernels, the locking instruction is less than 64 bytes
and it makes sense to inline it. With PREEMPTION the kernel becomes very
big if the locks are inlined.

Signed-off-by: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
---
 arch/arm/Kconfig | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 4c780e7387208..21edc8e649261 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -26,6 +26,32 @@ config ARM
 	select ARCH_HAS_TICK_BROADCAST if GENERIC_CLOCKEVENTS_BROADCAST
 	select ARCH_HAVE_CUSTOM_GPIO_H
 	select ARCH_HAS_GCOV_PROFILE_ALL
+	select ARCH_INLINE_READ_LOCK if !PREEMPTION
+	select ARCH_INLINE_READ_LOCK_BH if !PREEMPTION
+	select ARCH_INLINE_READ_LOCK_IRQ if !PREEMPTION
+	select ARCH_INLINE_READ_LOCK_IRQSAVE if !PREEMPTION
+	select ARCH_INLINE_READ_UNLOCK if !PREEMPTION
+	select ARCH_INLINE_READ_UNLOCK_BH if !PREEMPTION
+	select ARCH_INLINE_READ_UNLOCK_IRQ if !PREEMPTION
+	select ARCH_INLINE_READ_UNLOCK_IRQRESTORE if !PREEMPTION
+	select ARCH_INLINE_WRITE_LOCK if !PREEMPTION
+	select ARCH_INLINE_WRITE_LOCK_BH if !PREEMPTION
+	select ARCH_INLINE_WRITE_LOCK_IRQ if !PREEMPTION
+	select ARCH_INLINE_WRITE_LOCK_IRQSAVE if !PREEMPTION
+	select ARCH_INLINE_WRITE_UNLOCK if !PREEMPTION
+	select ARCH_INLINE_WRITE_UNLOCK_BH if !PREEMPTION
+	select ARCH_INLINE_WRITE_UNLOCK_IRQ if !PREEMPTION
+	select ARCH_INLINE_WRITE_UNLOCK_IRQRESTORE if !PREEMPTION
+	select ARCH_INLINE_SPIN_TRYLOCK if !PREEMPTION
+	select ARCH_INLINE_SPIN_TRYLOCK_BH if !PREEMPTION
+	select ARCH_INLINE_SPIN_LOCK if !PREEMPTION
+	select ARCH_INLINE_SPIN_LOCK_BH if !PREEMPTION
+	select ARCH_INLINE_SPIN_LOCK_IRQ if !PREEMPTION
+	select ARCH_INLINE_SPIN_LOCK_IRQSAVE if !PREEMPTION
+	select ARCH_INLINE_SPIN_UNLOCK if !PREEMPTION
+	select ARCH_INLINE_SPIN_UNLOCK_BH if !PREEMPTION
+	select ARCH_INLINE_SPIN_UNLOCK_IRQ if !PREEMPTION
+	select ARCH_INLINE_SPIN_UNLOCK_IRQRESTORE if !PREEMPTION
 	select ARCH_KEEP_MEMBLOCK if HAVE_ARCH_PFN_VALID || KEXEC
 	select ARCH_MIGHT_HAVE_PC_PARPORT
 	select ARCH_NO_SG_CHAIN if !ARM_HAS_SG_CHAIN
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
