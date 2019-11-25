Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE061094FC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 22:16:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZElEAQtiBkQq6VbFNSpt+guUgekwh7dEW2wgBkvXb5A=; b=BWPgle4zpdfeiH
	wIqrXtfjHO3kOy5WUosDqfVkEClv+TohysGVfjqA/wmxfjCnicm2Anw0jhdiTL8PgPyBh/f4rW+tv
	N/7YuwQYAIXrxhghXR2els7JB6dVeTBRw2lToFwgUmecl7ezWBJxLjK0KeYRuOndbVr0ChPLuRlH0
	38r3AdCVP6TaACeIKcK0hYnMDr1L8eZqe6TZpxcVi8NW3SQdHB8uwF8Vau/OafXMcl4AdZSQ2Jrjr
	oKh2OZxn/y1LH6V2ujwKsLWMTqN41yBF2wReYrYe1KDdH6tpn67KkyZumV5LGko7YcAvyCFFlYeeu
	WwbSvsR2i89uAyDvA+wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZLic-00013F-Lv; Mon, 25 Nov 2019 21:16:26 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZLiS-000128-Pe
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 21:16:18 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAPL9Ymc180598;
 Mon, 25 Nov 2019 21:15:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=corp-2019-08-05;
 bh=p3Wi/BFyCUYN/k/NNDN0T1rUQO/lWb4IED/Qx7zwXdM=;
 b=PNT826XBGRHtmPF2ttXEKmRIiNpIlDlmRjbleYvfDhZTAjhTK9jvoz8jOZMm1l0kktkF
 YQ8qW28/2UN6+tvTkWdMIbFvxTqotuFio3yw9eNBsJujBH1vl4woBbPfuLNzEb7ZUTOB
 +YffBh9zoFHGbjLBagtAXnpCD9qSKLaDSz8tkjEukTNaEF2luvo/9XDZ8a3pRIE09SlO
 C6PHpOTJS6/R/fkfE261rBWlIvF0Qo+isBdxAK3MrZ/4jku6OCpEzo4PemUoGuZPUhui
 BaDmaP0vo2NJpi98++Z+P0rI+TWcLRig+z7ry1JqUyVyItKzRK6ogTAT3jnjKXaiU1AQ CQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2wevqq2c6h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 25 Nov 2019 21:15:22 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAPL8Rtl041317;
 Mon, 25 Nov 2019 21:15:21 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2wfewb4m08-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 25 Nov 2019 21:15:21 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xAPLFI2O027507;
 Mon, 25 Nov 2019 21:15:18 GMT
Received: from neelam.us.oracle.com (/10.152.128.16)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 25 Nov 2019 13:15:18 -0800
From: Alex Kogan <alex.kogan@oracle.com>
To: linux@armlinux.org.uk, peterz@infradead.org, mingo@redhat.com,
 will.deacon@arm.com, arnd@arndb.de, longman@redhat.com,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, bp@alien8.de,
 hpa@zytor.com, x86@kernel.org, guohanjun@huawei.com, jglauber@marvell.com
Subject: [PATCH v7 5/5] locking/qspinlock: Introduce the shuffle reduction
 optimization into CNA
Date: Mon, 25 Nov 2019 16:07:09 -0500
Message-Id: <20191125210709.10293-6-alex.kogan@oracle.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20191125210709.10293-1-alex.kogan@oracle.com>
References: <20191125210709.10293-1-alex.kogan@oracle.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9452
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1911250171
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9452
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1911250171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_131616_922732_F9CFAB54 
X-CRM114-Status: GOOD (  23.01  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alex.kogan@oracle.com, dave.dice@oracle.com, rahul.x.yadav@oracle.com,
 steven.sistare@oracle.com, daniel.m.jordan@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This optimization reduces the probability threads will be shuffled between
the main and secondary queues when the secondary queue is empty.
It is helpful when the lock is only lightly contended.

Signed-off-by: Alex Kogan <alex.kogan@oracle.com>
Reviewed-by: Steve Sistare <steven.sistare@oracle.com>
---
 kernel/locking/qspinlock_cna.h | 50 ++++++++++++++++++++++++++++------
 1 file changed, 42 insertions(+), 8 deletions(-)

diff --git a/kernel/locking/qspinlock_cna.h b/kernel/locking/qspinlock_cna.h
index dcb2bcfd2d94..f1eef6bece7b 100644
--- a/kernel/locking/qspinlock_cna.h
+++ b/kernel/locking/qspinlock_cna.h
@@ -4,6 +4,7 @@
 #endif
 
 #include <linux/topology.h>
+#include <linux/random.h>
 
 /*
  * Implement a NUMA-aware version of MCS (aka CNA, or compact NUMA-aware lock).
@@ -50,7 +51,7 @@ struct cna_node {
 	struct mcs_spinlock	mcs;
 	int			numa_node;
 	u32			encoded_tail;
-	u32			pre_scan_result; /* 0, 1 or encoded tail */
+	u32			pre_scan_result; /* 0, 1, 2 or encoded tail */
 	u32			intra_count;
 };
 
@@ -60,6 +61,34 @@ struct cna_node {
  */
 extern int intra_node_handoff_threshold;
 
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
@@ -72,11 +101,11 @@ static void __init cna_init_nodes_per_cpu(unsigned int cpu)
 		cn->numa_node = numa_node;
 		cn->encoded_tail = encode_tail(cpu, i);
 		/*
-		 * @encoded_tail has to be larger than 1, so we do not confuse
+		 * @encoded_tail has to be larger than 2, so we do not confuse
 		 * it with other valid values for @locked or @pre_scan_result
-		 * (0 or 1)
+		 * (0, 1 or 2)
 		 */
-		WARN_ON(cn->encoded_tail <= 1);
+		WARN_ON(cn->encoded_tail <= 2);
 	}
 }
 
@@ -234,12 +263,13 @@ __always_inline u32 cna_pre_scan(struct qspinlock *lock,
 	struct cna_node *cn = (struct cna_node *)node;
 
 	/*
-	 * setting @pre_scan_result to 1 indicates that no post-scan
+	 * setting @pre_scan_result to 1 or 2 indicates that no post-scan
 	 * should be made in cna_pass_lock()
 	 */
 	cn->pre_scan_result =
-		cn->intra_count == intra_node_handoff_threshold ?
-			1 : cna_scan_main_queue(node, node);
+		(node->locked <= 1 && probably(SHUFFLE_REDUCTION_PROB_ARG)) ?
+			1 : cn->intra_count == intra_node_handoff_threshold ?
+			2 : cna_scan_main_queue(node, node);
 
 	return 0;
 }
@@ -253,12 +283,15 @@ static inline void cna_pass_lock(struct mcs_spinlock *node,
 
 	u32 scan = cn->pre_scan_result;
 
+	if (scan == 1)
+		goto pass_lock;
+
 	/*
 	 * check if a successor from the same numa node has not been found in
 	 * pre-scan, and if so, try to find it in post-scan starting from the
 	 * node where pre-scan stopped (stored in @pre_scan_result)
 	 */
-	if (scan > 1)
+	if (scan > 2)
 		scan = cna_scan_main_queue(node, decode_tail(scan));
 
 	if (!scan) { /* if found a successor from the same numa node */
@@ -281,5 +314,6 @@ static inline void cna_pass_lock(struct mcs_spinlock *node,
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
