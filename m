Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCB51388FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 00:59:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8Zt3H1ZBlYEpGi5suk2+IuKEvAp350r4u3oqT5C8WYo=; b=pHM
	1vrReo+9UwgI8tyofWFw6WPvBEIRC2Mp8MBak91IjZ61qIDt3qX8cecttS7EU7+9UGSUYVpTjMrs3
	9ZqT7oy078F7s3iy6fZ9uVun/PdTmf3kFwSDap9vcnDAMOVtAHvtE08HrvsM58oZmVQeaDX9RALOS
	T6OS4rjLqZ5p6xAgcDDNExnVuLqS2fZAe3Hivt6WRY8DorpcqgAJGpP93QvHeii+h3CgRqiAGtSUr
	6fjvaehfqe5+2pU0hHhajknxKE7FskQJfR5ecveKmMMXEtbtrSXRgmZ6wJ2u5ySP9eOgTmUtphnGo
	u8em0SmWU76kvUdEV6M6YBjo+DUae3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqn8n-0004AT-6e; Sun, 12 Jan 2020 23:59:33 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqn8f-00049e-2y
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 23:59:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578873561;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc; bh=shjAXqX0XtuUm3vvQnDz2Q/Zb3ofWUI9QTq2ZaDFd1Y=;
 b=Yn6uC4+C25vgWx4W/mwOGgaKLP4dmSlwt9Siu94PbKN652lPmglrPodHADxiiN0rmcn2UI
 flDt5KSMzBFK2ggTBgWO5LhbYQnUKOoZYTGxC2+N1jbE7cbrBE9UpMStHWCol+GwdV/vCr
 4Mapsgw7wOPdS7e365YJGi2okEwInYQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-122-bDP-4MxGMTqtPa2ekniHGw-1; Sun, 12 Jan 2020 18:59:18 -0500
X-MC-Unique: bDP-4MxGMTqtPa2ekniHGw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4B175477;
 Sun, 12 Jan 2020 23:59:17 +0000 (UTC)
Received: from llong.com (ovpn-121-25.rdu2.redhat.com [10.10.121.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CE6FE60BE2;
 Sun, 12 Jan 2020 23:59:13 +0000 (UTC)
From: Waiman Long <longman@redhat.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Will Deacon <will.deacon@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v2] locking/osq: Use optimized spinning loop for arm64
Date: Sun, 12 Jan 2020 18:58:54 -0500
Message-Id: <20200112235854.32089-1-longman@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_155925_427428_F6994EA7 
X-CRM114-Status: GOOD (  17.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Waiman Long <longman@redhat.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arm64 has a more optimized spinning loop (atomic_cond_read_acquire)
for spinlock that can boost performance of sibling threads by putting
the current cpu to a shallow sleep state that is woken up only when
the monitored variable changes or an external event happens.

OSQ has a more complicated spinning loop. Besides the lock value, it
also checks for need_resched() and vcpu_is_preempted(). The check for
need_resched() is not a problem as it is only set by the tick interrupt
handler. That will be detected by the spinning cpu right after iret.

The vcpu_is_preempted() check, however, is a problem as changes to the
preempt state of of previous node will not affect the sleep state. For
ARM64, vcpu_is_preempted is not defined and so is a no-op. To guard
against future addition of vcpu_is_preempted() to arm64, code is added
to cause build error when vcpu_is_preempted becomes defined in arm64
without the corresponding changes in the OSQ spinning code.

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
 arch/arm64/include/asm/barrier.h | 10 ++++++++++
 kernel/locking/osq_lock.c        | 25 ++++++++++++-------------
 2 files changed, 22 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/include/asm/barrier.h b/arch/arm64/include/asm/barrier.h
index 7d9cc5ec4971..8eb5f1239885 100644
--- a/arch/arm64/include/asm/barrier.h
+++ b/arch/arm64/include/asm/barrier.h
@@ -152,6 +152,16 @@ do {									\
 	VAL;								\
 })
 
+/*
+ * In osq_lock(), smp_cond_load_relaxed() is called with a condition
+ * that includes vcpu_is_preempted(). For arm64, vcpu_is_preempted is not
+ * currently defined. So it is a no-op. If vcpu_is_preempted is defined in
+ * the future, smp_cond_load_relaxed() will not response to changes in the
+ * preempt state in a timely manner. So code changes will have to be made
+ * to address this deficiency.
+ */
+#define vcpu_is_preempted_not_used
+
 #define smp_cond_load_acquire(ptr, cond_expr)				\
 ({									\
 	typeof(ptr) __PTR = (ptr);					\
diff --git a/kernel/locking/osq_lock.c b/kernel/locking/osq_lock.c
index 6ef600aa0f47..69ec5161c3cc 100644
--- a/kernel/locking/osq_lock.c
+++ b/kernel/locking/osq_lock.c
@@ -13,6 +13,14 @@
  */
 static DEFINE_PER_CPU_SHARED_ALIGNED(struct optimistic_spin_node, osq_node);
 
+/*
+ * The optimized smp_cond_load_relaxed() spin loop should not be used with
+ * vcpu_is_preempted defined.
+ */
+#if defined(vcpu_is_preempted) && defined(vcpu_is_preempted_not_used)
+#error "vcpu_is_preempted() inside smp_cond_load_relaxed() may not work!"
+#endif
+
 /*
  * We use the value 0 to represent "no CPU", thus the encoded value
  * will be the CPU number incremented by 1.
@@ -134,20 +142,11 @@ bool osq_lock(struct optimistic_spin_queue *lock)
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
