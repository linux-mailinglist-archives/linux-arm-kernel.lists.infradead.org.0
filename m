Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7354019E01C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 23:07:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W9NnSFP7TfPC3tL4iuBWfxNI/pTAWNHaxKRUjFHd2X0=; b=jVKLHcBF7D5EXK
	o5whlgZVJXb94qnVT54xF6bo+GuaHPOqb25RiVj1fIKPWZ3VWt1QaYb0uH5h6PVucQ+jl14WMRpdn
	SiC2gY+5j4KkyGMEAaAOmJXx7rJ1cLK28jXK3c5pC7yUOC91k+sm5sRY9GMguI6zjQ/Qpr84ZFLcR
	jXjcHSVvZw9lXg4+4usgpAMm0XcHhVTeCo63sQVe9j4sNEZ7/ICfvvY7WKdIO8C4cL4YDWg9cW0Hq
	fvrh68M5sq0s2sO8vUQAFb/zIr2LSQjhzcOM4jqCdfjUHbvWdogV+aqWRqvExLXOY+46ye3Haht9x
	/U1egVNKwNKUVQjZEwxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKTWu-0005wP-Ga; Fri, 03 Apr 2020 21:07:08 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKTWY-0005pN-Af
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 21:06:48 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 033KhVSm091512;
 Fri, 3 Apr 2020 21:05:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=9DGUT3ECh1QJLels8w7GVv0rEiuCwGN/Qh5NmQ7v+mQ=;
 b=NK+vrELGn6iUPbPNuPBmHZFSUMPHnNOuTgItTQ4HfVXe8hDnNIGW3ImBmfetD/6b/eLr
 UOzDYZrY1qAgo5wZNrVsYIks5Ry9U4csgkRWGIJ/0VvMXpWmvEVFybaha0swHkRQj878
 LdRIVJQBBjOdVf/Jji4E5bW694FIPEYt4MAiHyTUgJIsvrNx+2eaQbxqWR5C3nWmREyV
 aB3YeBy6uJRdMoWhxD/ceRYlfCC94SbT0fiCb9Vq3k7thcNzq6PJQtm+C7GhvDnX40up
 Qh1lQUNF5domwyU+IUISdWPxHDVXaThWd7gvxofpkv4Hczr0rvdPK/39iOlufF0xzR3n ow== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 303aqj3px6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Apr 2020 21:05:51 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 033KgEit047391;
 Fri, 3 Apr 2020 21:05:50 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 302ga5ve92-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Apr 2020 21:05:50 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 033L5g17020781;
 Fri, 3 Apr 2020 21:05:42 GMT
Received: from neelam.us.oracle.com (/10.152.128.16)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 03 Apr 2020 14:05:42 -0700
From: Alex Kogan <alex.kogan@oracle.com>
To: linux@armlinux.org.uk, peterz@infradead.org, mingo@redhat.com,
 will.deacon@arm.com, arnd@arndb.de, longman@redhat.com,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, bp@alien8.de,
 hpa@zytor.com, x86@kernel.org, guohanjun@huawei.com, jglauber@marvell.com
Subject: [PATCH v10 4/5] locking/qspinlock: Introduce starvation avoidance
 into CNA
Date: Fri,  3 Apr 2020 16:59:29 -0400
Message-Id: <20200403205930.1707-5-alex.kogan@oracle.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200403205930.1707-1-alex.kogan@oracle.com>
References: <20200403205930.1707-1-alex.kogan@oracle.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9580
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 mlxlogscore=999 bulkscore=0 mlxscore=0 spamscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004030165
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9580
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 phishscore=0 clxscore=1015
 malwarescore=0 impostorscore=0 mlxlogscore=999 spamscore=0 mlxscore=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004030165
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_140646_494704_F45A3A9D 
X-CRM114-Status: GOOD (  29.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alex.kogan@oracle.com, dave.dice@oracle.com, steven.sistare@oracle.com,
 daniel.m.jordan@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Keep track of the number of intra-node lock handoffs, and force
inter-node handoff once this number reaches a preset threshold.
The default value for the threshold can be overridden with
the new kernel boot command-line option "numa_spinlock_threshold".

Signed-off-by: Alex Kogan <alex.kogan@oracle.com>
Reviewed-by: Steve Sistare <steven.sistare@oracle.com>
Reviewed-by: Waiman Long <longman@redhat.com>
---
 .../admin-guide/kernel-parameters.txt         |  8 +++
 kernel/locking/qspinlock.c                    |  3 +
 kernel/locking/qspinlock_cna.h                | 55 ++++++++++++++++---
 3 files changed, 59 insertions(+), 7 deletions(-)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index cf3ede858e01..c23bbf49024b 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -3249,6 +3249,14 @@
 			Not specifying this option is equivalent to
 			numa_spinlock=auto.
 
+	numa_spinlock_threshold=	[NUMA, PV_OPS]
+			Set the threshold for the number of intra-node
+			lock hand-offs before the NUMA-aware spinlock
+			is forced to be passed to a thread on another NUMA node.
+			Valid values are in the [0..31] range. Smaller values
+			result in a more fair, but less performant spinlock, and
+			vice versa. The default value is 16.
+
 	cpu0_hotplug	[X86] Turn on CPU0 hotplug feature when
 			CONFIG_BOOTPARAM_HOTPLUG_CPU0 is off.
 			Some features depend on CPU0. Known dependencies are:
diff --git a/kernel/locking/qspinlock.c b/kernel/locking/qspinlock.c
index 5b01ab0cc944..29e480235cce 100644
--- a/kernel/locking/qspinlock.c
+++ b/kernel/locking/qspinlock.c
@@ -598,6 +598,9 @@ EXPORT_SYMBOL(queued_spin_lock_slowpath);
 #if !defined(_GEN_CNA_LOCK_SLOWPATH) && defined(CONFIG_NUMA_AWARE_SPINLOCKS)
 #define _GEN_CNA_LOCK_SLOWPATH
 
+#undef pv_init_node
+#define pv_init_node			cna_init_node
+
 #undef pv_wait_head_or_lock
 #define pv_wait_head_or_lock		cna_wait_head_or_lock
 
diff --git a/kernel/locking/qspinlock_cna.h b/kernel/locking/qspinlock_cna.h
index 619883f3dfd3..e3180f6f5cdc 100644
--- a/kernel/locking/qspinlock_cna.h
+++ b/kernel/locking/qspinlock_cna.h
@@ -38,7 +38,9 @@
  * when unlocking the MCS lock (post-scan), starting at the node where pre-scan
  * stopped. If both scans fail to find such T, the MCS lock is passed to the
  * first thread in the secondary queue. If the secondary queue is empty, the
- * lock is passed to the next thread in the primary queue.
+ * lock is passed to the next thread in the primary queue. To avoid starvation
+ * of threads in the secondary queue, those threads are moved back to the head
+ * of the primary queue after a certain number of intra-node lock hand-offs.
  *
  * For more details, see https://arxiv.org/abs/1810.05600.
  *
@@ -51,13 +53,23 @@ struct cna_node {
 	int			numa_node;
 	u32			encoded_tail;	/* self */
 	u32			partial_order;	/* encoded tail or enum val */
+	u32			intra_count;
 };
 
 enum {
 	LOCAL_WAITER_FOUND = 2,	/* 0 and 1 are reserved for @locked */
+	FLUSH_SECONDARY_QUEUE = 3,
 	MIN_ENCODED_TAIL
 };
 
+/*
+ * Controls the threshold for the number of intra-node lock hand-offs before
+ * the NUMA-aware variant of spinlock is forced to be passed to a thread on
+ * another NUMA node. The default setting can be changed with the
+ * "numa_spinlock_threshold" boot option.
+ */
+unsigned int intra_node_handoff_threshold __ro_after_init = 1 << 16;
+
 static void __init cna_init_nodes_per_cpu(unsigned int cpu)
 {
 	struct mcs_spinlock *base = per_cpu_ptr(&qnodes[0].mcs, cpu);
@@ -96,6 +108,11 @@ static int __init cna_init_nodes(void)
 	return 0;
 }
 
+static __always_inline void cna_init_node(struct mcs_spinlock *node)
+{
+	((struct cna_node *)node)->intra_count = 0;
+}
+
 /*
  * cna_splice_head -- splice the entire secondary queue onto the head of the
  * primary queue.
@@ -250,11 +267,15 @@ static __always_inline u32 cna_wait_head_or_lock(struct qspinlock *lock,
 {
 	struct cna_node *cn = (struct cna_node *)node;
 
-	/*
-	 * Try and put the time otherwise spent spin waiting on
-	 * _Q_LOCKED_PENDING_MASK to use by sorting our lists.
-	 */
-	cn->partial_order = cna_order_queue(node, node);
+	if (cn->intra_count < intra_node_handoff_threshold) {
+		/*
+		 * Try and put the time otherwise spent spin waiting on
+		 * _Q_LOCKED_PENDING_MASK to use by sorting our lists.
+		 */
+		cn->partial_order = cna_order_queue(node, node);
+	} else {
+		cn->partial_order = FLUSH_SECONDARY_QUEUE;
+	}
 
 	return 0; /* we lied; we didn't wait, go do so now */
 }
@@ -281,8 +302,11 @@ static inline void cna_lock_handoff(struct mcs_spinlock *node,
 		 * cna_order_queue() above.
 		 */
 		next = node->next;
-		if (node->locked > 1)
+		if (node->locked > 1) {
 			val = node->locked;	/* preseve secondary queue */
+			((struct cna_node *)next)->intra_count =
+				cn->intra_count + 1;
+		}
 	} else if (node->locked > 1) {
 		/*
 		 * When there are no local waiters on the primary queue, splice
@@ -342,3 +366,20 @@ void __init cna_configure_spin_lock_slowpath(void)
 
 	pr_info("Enabling CNA spinlock\n");
 }
+
+static int __init numa_spinlock_threshold_setup(char *str)
+{
+	int new_threshold_param;
+
+	if (get_option(&str, &new_threshold_param)) {
+		/* valid value is between 0 and 31 */
+		if (new_threshold_param < 0 || new_threshold_param > 31)
+			return 0;
+
+		intra_node_handoff_threshold = 1 << new_threshold_param;
+		return 1;
+	}
+
+	return 0;
+}
+__setup("numa_spinlock_threshold=", numa_spinlock_threshold_setup);
-- 
2.21.1 (Apple Git-122.3)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
