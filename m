Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3924713944D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 16:08:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1k+up68LbfWc0TJV7DsFFlklRhTwYBsaWVuRGBlqWHA=; b=LgD
	haDL2MzHw6jL0TH81Ipf8tF4H7kwg4O0BK0yvt3PEvd4o6c43sURHC+P3DN+NMMVnUOPSM9V9004w
	Xg+Gq3p3doi/0tys/vLLrZ0qxaEdWZ/X/YWVhOPuvshQc53Mp86VEKIU0/mN3wn4WT8KlO6UdeSHn
	846Ztx8Pqk2wyf92ec79EpI9RrtPkAsQhNRAQMm+Luqpa+lCVRGFUh3/fkahF8rsawFXtAMYbSEbe
	mvyZlj0/yBO+qZuA9R7EH0CrS1duXY27oc7QEBZNUbWd7W64DAbH86I5J8HT9vGy4H3hvGrr+iXnC
	a6NoNXo6nx66QTMyvzgwyx/KM6RuArw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir1K1-0000YZ-4Q; Mon, 13 Jan 2020 15:08:05 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir1Jt-0000UD-73
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 15:07:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578928072;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc; bh=j0msucI64dJuIAu2X81lzy2WWfJxmhNNupBdmcu4cNw=;
 b=gn2fbQNnr0bp0lJFAvVND0nfW5E5klo99eJTi3jM8v8SAXF00xt825uTcro+eaZn82BoV5
 5Q/9NujeCyK0XQ76yZLAZ/tArCWWGDbYvTFCE3aavSNyagBSghLumYF7PtE7dHfNksJscF
 LfN0sUpa95TlS9kZe8qq6vvHaA39H2U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-228-17KnZeizOzqCtpqsnADSdg-1; Mon, 13 Jan 2020 10:07:48 -0500
X-MC-Unique: 17KnZeizOzqCtpqsnADSdg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BF5A210054E3;
 Mon, 13 Jan 2020 15:07:46 +0000 (UTC)
Received: from llong.com (dhcp-17-59.bos.redhat.com [10.18.17.59])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 325425C21B;
 Mon, 13 Jan 2020 15:07:43 +0000 (UTC)
From: Waiman Long <longman@redhat.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Will Deacon <will.deacon@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v3] locking/osq: Use optimized spinning loop for arm64
Date: Mon, 13 Jan 2020 10:07:35 -0500
Message-Id: <20200113150735.21956-1-longman@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_070757_330451_3E7F7523 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Waiman Long <longman@redhat.com>, maz@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 yezengruan <yezengruan@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arm64 has a more optimized spinning loop (atomic_cond_read_acquire)
using wfe for spinlock that can boost performance of sibling threads
by putting the current cpu to a wait state that is broken only when
the monitored variable changes or an external event happens.

OSQ has a more complicated spinning loop. Besides the lock value, it
also checks for need_resched() and vcpu_is_preempted(). The check for
need_resched() is not a problem as it is only set by the tick interrupt
handler. That will be detected by the spinning cpu right after iret.

The vcpu_is_preempted() check, however, is a problem as changes to the
preempt state of of previous node will not affect the wait state. For
ARM64, vcpu_is_preempted is not currently defined and so is a no-op.
Will has indicated that he is planning to para-virtualize wfe instead
of defining vcpu_is_preempted for PV support. So just add a comment in
arch/arm64/include/asm/spinlock.h to indicate that vcpu_is_preempted()
should not be defined as suggested.

On a 2-socket 56-core 224-thread ARM64 system, a kernel mutex locking
microbenchmark was run for 10s with and without the patch. The
performance numbers before patch were:

Running locktest with mutex [runtime = 10s, load = 1]
Threads = 224, Min/Mean/Max = 316/123,143/2,121,269
Threads = 224, Total Rate = 2,757 kop/s; Percpu Rate = 12 kop/s

After patch, the numbers were:

Running locktest with mutex [runtime = 10s, load = 1]
Threads = 224, Min/Mean/Max = 334/147,836/1,304,787
Threads = 224, Total Rate = 3,311 kop/s; Percpu Rate = 15 kop/s

So there was about 20% performance improvement.

Signed-off-by: Waiman Long <longman@redhat.com>
---
 arch/arm64/include/asm/spinlock.h |  9 +++++++++
 kernel/locking/osq_lock.c         | 17 ++++-------------
 2 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/include/asm/spinlock.h b/arch/arm64/include/asm/spinlock.h
index b093b287babf..102404dc1e13 100644
--- a/arch/arm64/include/asm/spinlock.h
+++ b/arch/arm64/include/asm/spinlock.h
@@ -11,4 +11,13 @@
 /* See include/linux/spinlock.h */
 #define smp_mb__after_spinlock()	smp_mb()
 
+/*
+ * Changing this will break osq_lock() thanks to the call inside
+ * smp_cond_load_relaxed().
+ *
+ * See:
+ * https://lore.kernel.org/lkml/20200110100612.GC2827@hirez.programming.kicks-ass.net
+ */
+#define vcpu_is_preempted(cpu)	false
+
 #endif /* __ASM_SPINLOCK_H */
diff --git a/kernel/locking/osq_lock.c b/kernel/locking/osq_lock.c
index 6ef600aa0f47..e42893f2fcbc 100644
--- a/kernel/locking/osq_lock.c
+++ b/kernel/locking/osq_lock.c
@@ -134,20 +134,11 @@ bool osq_lock(struct optimistic_spin_queue *lock)
 	 * cmpxchg in an attempt to undo our queueing.
 	 */
 
-	while (!READ_ONCE(node->locked)) {
-		/*
-		 * If we need to reschedule bail... so we can block.
-		 * Use vcpu_is_preempted() to avoid waiting for a preempted
-		 * lock holder:
-		 */
-		if (need_resched() || vcpu_is_preempted(node_cpu(node->prev)))
-			goto unqueue;
-
-		cpu_relax();
-	}
-	return true;
+	if (smp_cond_load_relaxed(&node->locked, VAL || need_resched() ||
+				  vcpu_is_preempted(node_cpu(node->prev))))
+		return true;
 
-unqueue:
+	/* unqueue */
 	/*
 	 * Step - A  -- stabilize @prev
 	 *
-- 
2.18.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
