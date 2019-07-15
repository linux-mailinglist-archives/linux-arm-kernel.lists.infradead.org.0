Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC2F69B61
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 21:28:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+SG/I2OLX70UM8M1JvqJsRUD6aGlY2e9yEuMCRczb0I=; b=dr/HSnhkKg8yNTXDmfchsBTDjA
	4iu01cv5rdQtpdffACEqPtggX0pbpVnoeNCEShtL8k2mM66yToDBxZhrdYD04I7uNU1qhwGoWujIU
	rTp2EqrWzmfj9qsPNvDBhKw7YwrUSGWF/XFiki5WNMkCQNiVJXFziae8SXiQHNBymbMeSyHix0+wh
	mx+dIqgB/0+g1z4Y1/GpyfDYL3BAxJkAQQjA5KhRNLu6X+ldzjrksF1m9jofIYyPd072ARIlm3n9a
	x6cNFyebAQzwen50AaiK8w6Ph8Aj0dyZC9xrsMN6xaGIPxX8PS8hVr3S3+59VefrxukehD4Pxfavw
	FKcym44g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn6e2-0005q4-CQ; Mon, 15 Jul 2019 19:28:18 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn6cj-0004tC-Eu
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 19:27:01 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6FJOT4w106808;
 Mon, 15 Jul 2019 19:26:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=corp-2018-07-02;
 bh=aDvb8SEbbOlnwNLHWpSIBhbNm5CEtj5cdWoJxu2r7QM=;
 b=Pao/RAk1c9LOSoAJTR/qYo/j3d7WAEUW2Yi9jCmQ+pyzN9J7c1xxRbxOCWwdZb03ijss
 vDX9r6iADQZiZG94TTck3K6sglz2uYV9FrEZ/2E7VL3M2L4Ikz4OFiuyx1NQKA40b75N
 9+FYaJCZarQ0EwuPRVUvK2jPFBZOua0WevOuVgFLEDJ2Xi04ZyDl8R3Qp32Jb3FWsRH+
 vkazd7KMW6PmgJqs5T8GodEEvaWkZC1N5Qhh09YNmI5WoC1FvB8bJvwcnyEQsdHYh9p8
 xDMxZw5qbQT3/QcBf7y4v8woT7aNYbVMRCBZ4S0fTbxopOeuKyMZB98HwgVVpda/KT/p Ew== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2tq78pgecq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 15 Jul 2019 19:26:01 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6FJMeTN099569;
 Mon, 15 Jul 2019 19:26:01 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2tq5bbyssu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 15 Jul 2019 19:26:00 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x6FJPtwZ031330;
 Mon, 15 Jul 2019 19:25:55 GMT
Received: from ol-bur-x5-4.us.oracle.com (/10.152.128.37)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 15 Jul 2019 12:25:55 -0700
From: Alex Kogan <alex.kogan@oracle.com>
To: linux@armlinux.org.uk, peterz@infradead.org, mingo@redhat.com,
 will.deacon@arm.com, arnd@arndb.de, longman@redhat.com,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, bp@alien8.de,
 hpa@zytor.com, x86@kernel.org, guohanjun@huawei.com, jglauber@marvell.com
Subject: [PATCH v3 3/5] locking/qspinlock: Introduce CNA into the slow path of
 qspinlock
Date: Mon, 15 Jul 2019 15:25:34 -0400
Message-Id: <20190715192536.104548-4-alex.kogan@oracle.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715192536.104548-1-alex.kogan@oracle.com>
References: <20190715192536.104548-1-alex.kogan@oracle.com>
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9319
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1907150221
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9319
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1907150222
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_122657_620443_2657ED77 
X-CRM114-Status: GOOD (  34.06  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: alex.kogan@oracle.com, dave.dice@oracle.com, rahul.x.yadav@oracle.com,
 steven.sistare@oracle.com, daniel.m.jordan@oracle.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In CNA, spinning threads are organized in two queues, a main queue for
threads running on the same node as the current lock holder, and a
secondary queue for threads running on other nodes. At the unlock time,
the lock holder scans the main queue looking for a thread running on
the same node. If found (call it thread T), all threads in the main queue
between the current lock holder and T are moved to the end of the
secondary queue, and the lock is passed to T. If such T is not found, the
lock is passed to the first node in the secondary queue. Finally, if the
secondary queue is empty, the lock is passed to the next thread in the
main queue. For more details, see https://arxiv.org/abs/1810.05600.

Note that this variant of CNA may introduce starvation by continuously
passing the lock to threads running on the same node. This issue
will be addressed later in the series.

Enabling CNA is controlled via a new configuration option
(NUMA_AWARE_SPINLOCKS). The CNA variant is patched in
at the boot time only if we run a multi-node machine, and the new
config is enabled. For the time being, the patching requires
CONFIG_PARAVIRT_SPINLOCKS to be enabled as well.
However, this should be resolved once static_call() is available.

Signed-off-by: Alex Kogan <alex.kogan@oracle.com>
Reviewed-by: Steve Sistare <steven.sistare@oracle.com>
---
 arch/x86/Kconfig                 |  18 +++++
 arch/x86/include/asm/qspinlock.h |   4 +
 arch/x86/kernel/alternative.c    |  12 +++
 kernel/locking/mcs_spinlock.h    |   2 +-
 kernel/locking/qspinlock.c       |  41 +++++++---
 kernel/locking/qspinlock_cna.h   | 164 +++++++++++++++++++++++++++++++++++++++
 6 files changed, 229 insertions(+), 12 deletions(-)
 create mode 100644 kernel/locking/qspinlock_cna.h

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 2bbbd4d1ba31..1d8f80c47687 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -1548,6 +1548,24 @@ config NUMA
 
 	  Otherwise, you should say N.
 
+config NUMA_AWARE_SPINLOCKS
+	bool "Numa-aware spinlocks"
+	depends on NUMA
+	# For now, we depend on PARAVIRT_SPINLOCKS to make the patching work.
+	# This is awkward, but hopefully would be resolved once static_call()
+	# is available.
+	depends on PARAVIRT_SPINLOCKS
+	default y
+	help
+	  Introduce NUMA (Non Uniform Memory Access) awareness into
+	  the slow path of spinlocks.
+
+	  The kernel will try to keep the lock on the same node,
+	  thus reducing the number of remote cache misses, while
+	  trading some of the short term fairness for better performance.
+
+	  Say N if you want absolute first come first serve fairness.
+
 config AMD_NUMA
 	def_bool y
 	prompt "Old style AMD Opteron NUMA detection"
diff --git a/arch/x86/include/asm/qspinlock.h b/arch/x86/include/asm/qspinlock.h
index bd5ac6cc37db..d9b6c34d5eb4 100644
--- a/arch/x86/include/asm/qspinlock.h
+++ b/arch/x86/include/asm/qspinlock.h
@@ -27,6 +27,10 @@ static __always_inline u32 queued_fetch_set_pending_acquire(struct qspinlock *lo
 	return val;
 }
 
+#ifdef CONFIG_NUMA_AWARE_SPINLOCKS
+extern void __cna_queued_spin_lock_slowpath(struct qspinlock *lock, u32 val);
+#endif
+
 #ifdef CONFIG_PARAVIRT_SPINLOCKS
 extern void native_queued_spin_lock_slowpath(struct qspinlock *lock, u32 val);
 extern void __pv_init_lock_hash(void);
diff --git a/arch/x86/kernel/alternative.c b/arch/x86/kernel/alternative.c
index 0d57015114e7..1c25f0505ec0 100644
--- a/arch/x86/kernel/alternative.c
+++ b/arch/x86/kernel/alternative.c
@@ -649,6 +649,18 @@ void __init alternative_instructions(void)
 				(unsigned long)__smp_locks_end);
 #endif
 
+#if defined(CONFIG_NUMA_AWARE_SPINLOCKS)
+	/*
+	 * If we have multiple NUMA nodes, switch from native
+	 * to the NUMA-friendly slow path for spin locks.
+	 */
+	if (nr_node_ids > 1 && pv_ops.lock.queued_spin_lock_slowpath ==
+			native_queued_spin_lock_slowpath) {
+		pv_ops.lock.queued_spin_lock_slowpath =
+			__cna_queued_spin_lock_slowpath;
+	}
+#endif
+
 	apply_paravirt(__parainstructions, __parainstructions_end);
 
 	restart_nmi();
diff --git a/kernel/locking/mcs_spinlock.h b/kernel/locking/mcs_spinlock.h
index bc6d3244e1af..36b802babc88 100644
--- a/kernel/locking/mcs_spinlock.h
+++ b/kernel/locking/mcs_spinlock.h
@@ -17,7 +17,7 @@
 
 struct mcs_spinlock {
 	struct mcs_spinlock *next;
-	int locked; /* 1 if lock acquired */
+	u64 locked; /* 1 if lock acquired */
 	int count;  /* nesting count, see qspinlock.c */
 };
 
diff --git a/kernel/locking/qspinlock.c b/kernel/locking/qspinlock.c
index 5668466b3006..1ba38f85d0ae 100644
--- a/kernel/locking/qspinlock.c
+++ b/kernel/locking/qspinlock.c
@@ -20,7 +20,7 @@
  *          Peter Zijlstra <peterz@infradead.org>
  */
 
-#ifndef _GEN_PV_LOCK_SLOWPATH
+#if !defined(_GEN_PV_LOCK_SLOWPATH) && !defined(_GEN_CNA_LOCK_SLOWPATH)
 
 #include <linux/smp.h>
 #include <linux/bug.h>
@@ -77,18 +77,14 @@
 #define MAX_NODES	4
 
 /*
- * On 64-bit architectures, the mcs_spinlock structure will be 16 bytes in
- * size and four of them will fit nicely in one 64-byte cacheline. For
- * pvqspinlock, however, we need more space for extra data. To accommodate
- * that, we insert two more long words to pad it up to 32 bytes. IOW, only
- * two of them can fit in a cacheline in this case. That is OK as it is rare
- * to have more than 2 levels of slowpath nesting in actual use. We don't
- * want to penalize pvqspinlocks to optimize for a rare case in native
- * qspinlocks.
+ * On 64-bit architectures, the mcs_spinlock structure will be 20 bytes in
+ * size. For pvqspinlock or the NUMA-aware variant, however, we need more
+ * space for extra data. To accommodate that, we insert two more long words
+ * to pad it up to 36 bytes.
  */
 struct qnode {
 	struct mcs_spinlock mcs;
-#ifdef CONFIG_PARAVIRT_SPINLOCKS
+#if defined(CONFIG_PARAVIRT_SPINLOCKS) || defined(CONFIG_NUMA_AWARE_SPINLOCKS)
 	long reserved[2];
 #endif
 };
@@ -327,7 +323,7 @@ static __always_inline void __pass_mcs_lock(struct mcs_spinlock *node,
 #define set_locked_empty_mcs	__set_locked_empty_mcs
 #define pass_mcs_lock		__pass_mcs_lock
 
-#endif /* _GEN_PV_LOCK_SLOWPATH */
+#endif /* _GEN_PV_LOCK_SLOWPATH && _GEN_CNA_LOCK_SLOWPATH */
 
 /**
  * queued_spin_lock_slowpath - acquire the queued spinlock
@@ -600,6 +596,29 @@ void queued_spin_lock_slowpath(struct qspinlock *lock, u32 val)
 EXPORT_SYMBOL(queued_spin_lock_slowpath);
 
 /*
+ * Generate the code for NUMA-aware spin locks
+ */
+#if !defined(_GEN_CNA_LOCK_SLOWPATH) && defined(CONFIG_NUMA_AWARE_SPINLOCKS)
+#define _GEN_CNA_LOCK_SLOWPATH
+
+#undef pv_init_node
+#define pv_init_node cna_init_node
+
+#undef set_locked_empty_mcs
+#define set_locked_empty_mcs		cna_set_locked_empty_mcs
+
+#undef pass_mcs_lock
+#define pass_mcs_lock			cna_pass_mcs_lock
+
+#undef  queued_spin_lock_slowpath
+#define queued_spin_lock_slowpath	__cna_queued_spin_lock_slowpath
+
+#include "qspinlock_cna.h"
+#include "qspinlock.c"
+
+#endif
+
+/*
  * Generate the paravirt code for queued_spin_unlock_slowpath().
  */
 #if !defined(_GEN_PV_LOCK_SLOWPATH) && defined(CONFIG_PARAVIRT_SPINLOCKS)
diff --git a/kernel/locking/qspinlock_cna.h b/kernel/locking/qspinlock_cna.h
new file mode 100644
index 000000000000..efb9b12b2f9b
--- /dev/null
+++ b/kernel/locking/qspinlock_cna.h
@@ -0,0 +1,164 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _GEN_CNA_LOCK_SLOWPATH
+#error "do not include this file"
+#endif
+
+#include <linux/topology.h>
+
+/*
+ * Implement a NUMA-aware version of MCS (aka CNA, or compact NUMA-aware lock).
+ *
+ * In CNA, spinning threads are organized in two queues, a main queue for
+ * threads running on the same node as the current lock holder, and a
+ * secondary queue for threads running on other nodes. At the unlock time,
+ * the lock holder scans the main queue looking for a thread running on
+ * the same node. If found (call it thread T), all threads in the main queue
+ * between the current lock holder and T are moved to the end of the
+ * secondary queue, and the lock is passed to T. If such T is not found, the
+ * lock is passed to the first node in the secondary queue. Finally, if the
+ * secondary queue is empty, the lock is passed to the next thread in the
+ * main queue. To avoid starvation of threads in the secondary queue,
+ * those threads are moved back to the head of the main queue
+ * after a certain expected number of intra-node lock hand-offs.
+ *
+ * For more details, see https://arxiv.org/abs/1810.05600.
+ *
+ * Authors: Alex Kogan <alex.kogan@oracle.com>
+ *          Dave Dice <dave.dice@oracle.com>
+ */
+
+struct cna_node {
+	struct	mcs_spinlock mcs;
+	u32	numa_node;
+	u32	encoded_tail;
+	struct	cna_node *tail;    /* points to the secondary queue tail */
+};
+
+#define CNA_NODE(ptr) ((struct cna_node *)(ptr))
+
+static void cna_init_node(struct mcs_spinlock *node)
+{
+	struct cna_node *cn = CNA_NODE(node);
+	struct mcs_spinlock *base_node;
+	int cpuid;
+
+	BUILD_BUG_ON(sizeof(struct cna_node) > sizeof(struct qnode));
+	/* we store a pointer in the node's @locked field */
+	BUILD_BUG_ON(sizeof(uintptr_t) > sizeof_field(struct mcs_spinlock, locked));
+
+	cpuid = smp_processor_id();
+	cn->numa_node = cpu_to_node(cpuid);
+
+	base_node = this_cpu_ptr(&qnodes[0].mcs);
+	cn->encoded_tail = encode_tail(cpuid, base_node->count - 1);
+}
+
+/**
+ * find_successor - Scan the main waiting queue looking for the first
+ * thread running on the same node as the lock holder. If found (call it
+ * thread T), move all threads in the main queue between the lock holder
+ * and T to the end of the secondary queue and return T; otherwise, return NULL.
+ */
+static struct cna_node *find_successor(struct mcs_spinlock *me)
+{
+	struct cna_node *me_cna = CNA_NODE(me);
+	struct cna_node *head_other, *tail_other, *cur;
+	struct cna_node *next = CNA_NODE(READ_ONCE(me->next));
+	int my_node;
+
+	/* @next should be set, else we would not be calling this function. */
+	WARN_ON_ONCE(next == NULL);
+
+	my_node = me_cna->numa_node;
+
+	/*
+	 * Fast path - check whether the immediate successor runs on
+	 * the same node.
+	 */
+	if (next->numa_node == my_node)
+		return next;
+
+	head_other = next;
+	tail_other = next;
+
+	/*
+	 * Traverse the main waiting queue starting from the successor of my
+	 * successor, and look for a thread running on the same node.
+	 */
+	cur = CNA_NODE(READ_ONCE(next->mcs.next));
+	while (cur) {
+		if (cur->numa_node == my_node) {
+			/*
+			 * Found a thread on the same node. Move threads
+			 * between me and that node into the secondary queue.
+			 */
+			if (me->locked > 1)
+				CNA_NODE(me->locked)->tail->mcs.next =
+					(struct mcs_spinlock *)head_other;
+			else
+				me->locked = (uintptr_t)head_other;
+			tail_other->mcs.next = NULL;
+			CNA_NODE(me->locked)->tail = tail_other;
+			return cur;
+		}
+		tail_other = cur;
+		cur = CNA_NODE(READ_ONCE(cur->mcs.next));
+	}
+	return NULL;
+}
+
+static inline bool cna_set_locked_empty_mcs(struct qspinlock *lock, u32 val,
+					struct mcs_spinlock *node)
+{
+	/* Check whether the secondary queue is empty. */
+	if (node->locked <= 1) {
+		if (atomic_try_cmpxchg_relaxed(&lock->val, &val,
+				_Q_LOCKED_VAL))
+			return true; /* No contention */
+	} else {
+		/*
+		 * Pass the lock to the first thread in the secondary
+		 * queue, but first try to update the queue's tail to
+		 * point to the last node in the secondary queue.
+		 */
+		struct cna_node *succ = CNA_NODE(node->locked);
+		u32 new = succ->tail->encoded_tail + _Q_LOCKED_VAL;
+
+		if (atomic_try_cmpxchg_relaxed(&lock->val, &val, new)) {
+			arch_mcs_spin_unlock_contended(&succ->mcs.locked, 1);
+			return true;
+		}
+	}
+
+	return false;
+}
+
+static inline void cna_pass_mcs_lock(struct mcs_spinlock *node,
+				     struct mcs_spinlock *next)
+{
+	struct cna_node *succ = NULL;
+	u64 *var = &next->locked;
+	u64 val = 1;
+
+	succ = find_successor(node);
+
+	if (succ) {
+		var = &succ->mcs.locked;
+		/*
+		 * We unlock a successor by passing a non-zero value,
+		 * so set @val to 1 iff @locked is 0, which will happen
+		 * if we acquired the MCS lock when its queue was empty
+		 */
+		val = node->locked + (node->locked == 0);
+	} else if (node->locked > 1) { /* if the secondary queue is not empty */
+		/* pass the lock to the first node in that queue */
+		succ = CNA_NODE(node->locked);
+		succ->tail->mcs.next = next;
+		var = &succ->mcs.locked;
+	}	/*
+		 * Otherwise, pass the lock to the immediate successor
+		 * in the main queue.
+		 */
+
+	arch_mcs_spin_unlock_contended(var, val);
+}
-- 
2.11.0 (Apple Git-81)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
