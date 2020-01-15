Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1ED613B8A8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 05:16:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I9bypQtLW6pHj+cuod29zQGW5oReZ15ZPRdz8B16Jyk=; b=MKUtDd6lmXfvQ1
	iWezTOTid+9z5QOtUeixmWlUy1hljAN4VXJCAG1UFQ5phO7pB+a8DSGcSiyNRjHDIkhWM87Qps9bb
	lRod7uEcWAdpYofqkfD0a6f1isohANVUDfFc9si9e/joWbJNTMPbZyEyAiJs6YZ+vggRC7RVqx6Wq
	MlFGwV6ccFal8OE7Y238I98KoTdLP5uAxMU4T1tJfx961KNf2QXadQ5DPZEyLmoi9JRZBuAoqlF+e
	2iHagaoASmsHZjPedzUYqSClznFOLGPKxLiE2PZRt/A/lcIo6nVJrcbgd8pgYnrZc9H399OOtdY61
	BQjwSea7JbGCzc4mbz6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ira6V-0007hM-VS; Wed, 15 Jan 2020 04:16:28 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ira5D-00069T-IH
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 04:15:13 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00F4D9vd040032;
 Wed, 15 Jan 2020 04:14:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=corp-2019-08-05;
 bh=1V6VZeJGrzQOCYLldvMM1iQjQEyNbOdkt3rO1R7tIb4=;
 b=InrzEw0hdMR66FA8zROGjgzXSYVw0Mo0M7RsBkY5S18CrrpqgetDERl4XZsE/x0R3w4G
 o/E8dGnD1V5YugAKGeJ0HJ7DQF9vOHZt9aya/CkXOIYJkabzWhFunSYrOk0FlTrpAOJ3
 fTg3IiQxUIp82HCkeXJaDM2NxTrf2voPqr1Rz0z7b1OFsdY0J+oUKLmhw5mqMA1qYTFd
 peHzMYMk+cy5EHMMv14UmdK5+W2IbcFyr99/SQSwD+U30RBabJj+lhEGh4SuBhsJrEaP
 x4Z9sDq2MEPSGRcb7tqIaD6U/kWQiWRJue80dvVytqkzJFQ5vFrbwz/zmFQULx8fd2QY yA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2xf74s9yum-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 15 Jan 2020 04:14:29 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00F4EKqk095387;
 Wed, 15 Jan 2020 04:14:28 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2xh315dbs9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 15 Jan 2020 04:14:27 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00F4D6YS015873;
 Wed, 15 Jan 2020 04:13:06 GMT
Received: from neelam.us.oracle.com (/10.152.128.16)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 14 Jan 2020 20:13:05 -0800
From: Alex Kogan <alex.kogan@oracle.com>
To: linux@armlinux.org.uk, peterz@infradead.org, mingo@redhat.com,
 will.deacon@arm.com, arnd@arndb.de, longman@redhat.com,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, bp@alien8.de,
 hpa@zytor.com, x86@kernel.org, guohanjun@huawei.com, jglauber@marvell.com
Subject: [PATCH v9 5/5] locking/qspinlock: Introduce the shuffle reduction
 optimization into CNA
Date: Tue, 14 Jan 2020 22:59:20 -0500
Message-Id: <20200115035920.54451-6-alex.kogan@oracle.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200115035920.54451-1-alex.kogan@oracle.com>
References: <20200115035920.54451-1-alex.kogan@oracle.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9500
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001150033
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9500
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001150033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_201507_697581_4252C732 
X-CRM114-Status: GOOD (  21.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This performance optimization reduces the probability threads will be
shuffled between the main and secondary queues when the secondary queue
is empty. It is helpful when the lock is only lightly contended.

Signed-off-by: Alex Kogan <alex.kogan@oracle.com>
Reviewed-by: Steve Sistare <steven.sistare@oracle.com>
Reviewed-by: Waiman Long <longman@redhat.com>
---
 kernel/locking/qspinlock_cna.h | 46 ++++++++++++++++++++++++++++++++--
 1 file changed, 44 insertions(+), 2 deletions(-)

diff --git a/kernel/locking/qspinlock_cna.h b/kernel/locking/qspinlock_cna.h
index a2b65f87e6f8..f0b0c15dcf9d 100644
--- a/kernel/locking/qspinlock_cna.h
+++ b/kernel/locking/qspinlock_cna.h
@@ -4,6 +4,7 @@
 #endif
 
 #include <linux/topology.h>
+#include <linux/random.h>
 
 /*
  * Implement a NUMA-aware version of MCS (aka CNA, or compact NUMA-aware lock).
@@ -57,6 +58,7 @@ struct cna_node {
 enum {
 	LOCAL_WAITER_FOUND = 2,	/* 0 and 1 are reserved for @locked */
 	FLUSH_SECONDARY_QUEUE = 3,
+	PASS_LOCK_IMMEDIATELY = 4,
 	MIN_ENCODED_TAIL
 };
 
@@ -70,6 +72,34 @@ enum {
  */
 unsigned int intra_node_handoff_threshold __ro_after_init = 1 << 16;
 
+/*
+ * Controls the probability for enabling the scan of the main queue when
+ * the secondary queue is empty. The chosen value reduces the amount of
+ * unnecessary shuffling of threads between the two waiting queues when
+ * the contention is low, while responding fast enough and enabling
+ * the shuffling when the contention is high.
+ */
+#define SHUFFLE_REDUCTION_PROB_ARG  (7)
+
+/* Per-CPU pseudo-random number seed */
+static DEFINE_PER_CPU(u32, seed);
+
+/*
+ * Return false with probability 1 / 2^@num_bits.
+ * Intuitively, the larger @num_bits the less likely false is to be returned.
+ * @num_bits must be a number between 0 and 31.
+ */
+static bool probably(unsigned int num_bits)
+{
+	u32 s;
+
+	s = this_cpu_read(seed);
+	s = next_pseudo_random32(s);
+	this_cpu_write(seed, s);
+
+	return s & ((1 << num_bits) - 1);
+}
+
 static void __init cna_init_nodes_per_cpu(unsigned int cpu)
 {
 	struct mcs_spinlock *base = per_cpu_ptr(&qnodes[0].mcs, cpu);
@@ -250,8 +280,11 @@ __always_inline u32 cna_pre_scan(struct qspinlock *lock,
 	struct cna_node *cn = (struct cna_node *)node;
 
 	cn->pre_scan_result =
-		cn->intra_count == intra_node_handoff_threshold ?
-			FLUSH_SECONDARY_QUEUE : cna_scan_main_queue(node, node);
+		(node->locked <= 1 && probably(SHUFFLE_REDUCTION_PROB_ARG)) ?
+			PASS_LOCK_IMMEDIATELY :
+			cn->intra_count == intra_node_handoff_threshold ?
+				FLUSH_SECONDARY_QUEUE :
+				cna_scan_main_queue(node, node);
 
 	return 0;
 }
@@ -265,6 +298,14 @@ static inline void cna_pass_lock(struct mcs_spinlock *node,
 
 	u32 scan = cn->pre_scan_result;
 
+	/*
+	 * perf. optimization - check if we can skip the logic of triaging
+	 * through other possible values in @scan (helps under light lock
+	 * contention)
+	 */
+	if (scan == PASS_LOCK_IMMEDIATELY)
+		goto pass_lock;
+
 	/*
 	 * check if a successor from the same numa node has not been found in
 	 * pre-scan, and if so, try to find it in post-scan starting from the
@@ -293,6 +334,7 @@ static inline void cna_pass_lock(struct mcs_spinlock *node,
 		tail_2nd->next = next;
 	}
 
+pass_lock:
 	arch_mcs_pass_lock(&next_holder->locked, val);
 }
 
-- 
2.21.0 (Apple Git-122.2)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
