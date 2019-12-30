Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA7B12D424
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 20:54:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GVipBs6/+6TjKK7ICxHkrsZ0a6YjHfnZvgRkXHOp2to=; b=t98OzVB09gNkhx
	TJm1zxron8fGUZUNONmH9ppgqKxxKS2xN7zz3lBj/kcO5oHrF1mdGdDCh5XjgcyJWOUXvaKhUPUJD
	VWyruG1YwTM7S81Zf0i0FDuHdjh/X09Mzu0Nr2QNXbM9c3FNNJTLUtuq4s0kKYW9CIKbr2cw+1zI5
	7sm7iWn5tqikVEbgSt2UjukIy7sw5h8p3CtsXJOn9D1pYAgBIvSo+Y1wf2wdxYAUqLI7Oq0jgJ1+V
	qUxFP2E4BPVDZiTz6kWvoYae3eV5yXPv7x4ZR8kB9gz0VnNBnC5Ed6djiEOWRNytyRodQehSwy2P/
	3zVtDdFI/qwipFdIHfuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im16z-0005bg-GF; Mon, 30 Dec 2019 19:53:57 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im16o-0005a1-1L
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 19:53:47 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBUJn8jx140757;
 Mon, 30 Dec 2019 19:52:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=corp-2019-08-05;
 bh=q38WciEesnuRJRnd58/bcF+E8f7Yll8x5e78tHW7KKc=;
 b=dQS4kODD52nhn6IIkrqU9jLXPCHRyABE/SR/Y68eNu8jfTZHa8KQQKVhqMN+E2IIZnJf
 YmCy0iiTh2WJx512pTJ8nefrHbIQ5oS1FDhAUseV/FNtn3Zypb9f/2JqNsueNMl0TFyC
 FxCNjh3HH0Fwz81lDwFMIghuzusx+68ANNRms8HMmpzEBcohRI9Ek9SLowzqGt1plwM4
 qPtQ6LzVCAU5LEZBhFbz429aaQ7seygHdYAUYJHNDeOpfkycSfN+YuudNMpWAHZRPRrR
 r/yHTlvysx31iY4R2SJ34BkhLsvmXAi/qLxVq0uFDLNMS+OMIAAjJG298/WkPPumvxdh 3g== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2x5y0pexke-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 30 Dec 2019 19:52:48 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBUJmRih115107;
 Mon, 30 Dec 2019 19:52:47 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2x6gh94hdu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 30 Dec 2019 19:52:47 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xBUJqZMi009978;
 Mon, 30 Dec 2019 19:52:35 GMT
Received: from neelam.us.oracle.com (/10.152.128.16)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 30 Dec 2019 11:52:34 -0800
From: Alex Kogan <alex.kogan@oracle.com>
To: linux@armlinux.org.uk, peterz@infradead.org, mingo@redhat.com,
 will.deacon@arm.com, arnd@arndb.de, longman@redhat.com,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, bp@alien8.de,
 hpa@zytor.com, x86@kernel.org, guohanjun@huawei.com, jglauber@marvell.com
Subject: [PATCH v8 5/5] locking/qspinlock: Introduce the shuffle reduction
 optimization into CNA
Date: Mon, 30 Dec 2019 14:40:42 -0500
Message-Id: <20191230194042.67789-6-alex.kogan@oracle.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20191230194042.67789-1-alex.kogan@oracle.com>
References: <20191230194042.67789-1-alex.kogan@oracle.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9486
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912300178
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9486
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912300178
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_115346_174834_9F546B7B 
X-CRM114-Status: GOOD (  20.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
---
 kernel/locking/qspinlock_cna.h | 46 ++++++++++++++++++++++++++++++++--
 1 file changed, 44 insertions(+), 2 deletions(-)

diff --git a/kernel/locking/qspinlock_cna.h b/kernel/locking/qspinlock_cna.h
index 30feff02865d..f21056560104 100644
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
 int intra_node_handoff_threshold __ro_after_init = 1 << 16;
 
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
@@ -251,8 +281,11 @@ __always_inline u32 cna_pre_scan(struct qspinlock *lock,
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
@@ -266,6 +299,14 @@ static inline void cna_pass_lock(struct mcs_spinlock *node,
 
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
@@ -294,6 +335,7 @@ static inline void cna_pass_lock(struct mcs_spinlock *node,
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
