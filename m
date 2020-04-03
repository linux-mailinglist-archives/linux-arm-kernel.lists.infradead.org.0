Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0922F19E024
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 23:09:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pY04OUcJmw723AYLI3b1qgWcxpQ5cknsSct700cYZgM=; b=c3mFRv+6eZYA1o
	eq5tM4YPSgCB9GAgY4mxrEwRSmUkYm72uj8OalzjNStiUh0M9PglTVxm3L8ruKR4sf0KGzqhmTeLE
	JqO+h+UPGlEgTdw84SqWZ2lGF/H10AP6Bvj/KPIDmSxS4rsywOO3e+Y/hLYAAcSfdET0OCaQ1cXmK
	+Aamo5FMk1SnSoTsSrVdXwSKuH1gFekPUIod0SvrywQh2HPpiEefe1SqvFYa3Xvz1t1Oo6Hlk4GQD
	AVg91T6/Qe7DJbYrKJZUvJsEwjMbyYUyNvyinEeXLG7FVj2Y4Sudz0cpnyracM31j1WcWCAfxiAvp
	XNJe/h/3Iwfezm+Cq/Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKTYz-0007JL-ES; Fri, 03 Apr 2020 21:09:17 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKTYV-00074z-76
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 21:08:48 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 033KhhTt091836;
 Fri, 3 Apr 2020 21:05:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=TtLHzm/fAavdPCwUfplzv3vaOlv84S3xZrjh4mR8mjc=;
 b=jIIolrsDC46mFqnqJVL9yEGmUNpcxm91Qixwo8+RJME7MI9r6AwGwNblvDFefTkh9Gh6
 RGAJYJh9Imt6l62gYtYJvAx4sG8hLzH0231QsQScA/hXPn0wHSFr8QJCSfoNXji1qps8
 PpozIsaeuvaOSoan5NFi26neI2LooglDKXdYqTGT7lIgiP5AyngG9Rck2dYIgeXrGjQj
 kykm/eklnaBxAXCo+PYGG8apFmaU5tErcz8VZLJGHfcGFKK1YKqdkoPV4YC1MCqOlCiA
 dOWngs594LmEs7LXysU5L0aWCHm1Hg11DqfxJpwn4bjn2Hjn6MbWopFA96C+zL4dRSoQ vA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 303aqj3px2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Apr 2020 21:05:50 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 033Kh2k9187961;
 Fri, 3 Apr 2020 21:05:50 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 302g2nxnht-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Apr 2020 21:05:50 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 033L5hdS031747;
 Fri, 3 Apr 2020 21:05:43 GMT
Received: from neelam.us.oracle.com (/10.152.128.16)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 03 Apr 2020 14:05:43 -0700
From: Alex Kogan <alex.kogan@oracle.com>
To: linux@armlinux.org.uk, peterz@infradead.org, mingo@redhat.com,
 will.deacon@arm.com, arnd@arndb.de, longman@redhat.com,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, bp@alien8.de,
 hpa@zytor.com, x86@kernel.org, guohanjun@huawei.com, jglauber@marvell.com
Subject: [PATCH v10 5/5] locking/qspinlock: Avoid moving certain threads
 between waiting queues in CNA
Date: Fri,  3 Apr 2020 16:59:30 -0400
Message-Id: <20200403205930.1707-6-alex.kogan@oracle.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200403205930.1707-1-alex.kogan@oracle.com>
References: <20200403205930.1707-1-alex.kogan@oracle.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9580
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0 mlxscore=0
 adultscore=0 phishscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004030165
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9580
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 phishscore=0 clxscore=1015
 malwarescore=0 impostorscore=0 mlxlogscore=999 spamscore=0 mlxscore=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004030165
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_140847_341456_024AEBE1 
X-CRM114-Status: GOOD (  23.21  )
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

Prohibit moving certain threads (e.g., in irq and nmi contexts)
to the secondary queue. Those prioritized threads will always stay
in the primary queue, and so will have a shorter wait time for the lock.

Signed-off-by: Alex Kogan <alex.kogan@oracle.com>
Reviewed-by: Steve Sistare <steven.sistare@oracle.com>
Reviewed-by: Waiman Long <longman@redhat.com>
---
 kernel/locking/qspinlock_cna.h | 30 ++++++++++++++++++++++++++----
 1 file changed, 26 insertions(+), 4 deletions(-)

diff --git a/kernel/locking/qspinlock_cna.h b/kernel/locking/qspinlock_cna.h
index e3180f6f5cdc..b004ce6882b6 100644
--- a/kernel/locking/qspinlock_cna.h
+++ b/kernel/locking/qspinlock_cna.h
@@ -4,6 +4,7 @@
 #endif
 
 #include <linux/topology.h>
+#include <linux/sched/rt.h>
 
 /*
  * Implement a NUMA-aware version of MCS (aka CNA, or compact NUMA-aware lock).
@@ -41,6 +42,9 @@
  * lock is passed to the next thread in the primary queue. To avoid starvation
  * of threads in the secondary queue, those threads are moved back to the head
  * of the primary queue after a certain number of intra-node lock hand-offs.
+ * Lastly, certain threads (e.g., in irq and nmi contexts) are given
+ * preferential treatment -- the scan stops when such a thread is found,
+ * effectively never moving those threads into the secondary queue.
  *
  * For more details, see https://arxiv.org/abs/1810.05600.
  *
@@ -50,7 +54,7 @@
 
 struct cna_node {
 	struct mcs_spinlock	mcs;
-	int			numa_node;
+	int			numa_node;	/* use LSB for priority */
 	u32			encoded_tail;	/* self */
 	u32			partial_order;	/* encoded tail or enum val */
 	u32			intra_count;
@@ -79,7 +83,7 @@ static void __init cna_init_nodes_per_cpu(unsigned int cpu)
 	for (i = 0; i < MAX_NODES; i++) {
 		struct cna_node *cn = (struct cna_node *)grab_mcs_node(base, i);
 
-		cn->numa_node = numa_node;
+		cn->numa_node = numa_node << 1;
 		cn->encoded_tail = encode_tail(cpu, i);
 		/*
 		 * make sure @encoded_tail is not confused with other valid
@@ -110,6 +114,14 @@ static int __init cna_init_nodes(void)
 
 static __always_inline void cna_init_node(struct mcs_spinlock *node)
 {
+	/*
+	 * Set the priority bit in @numa_node for threads that should not
+	 * be moved to the secondary queue.
+	 */
+	bool priority = !in_task() || irqs_disabled() || rt_task(current);
+	((struct cna_node *)node)->numa_node =
+		(((struct cna_node *)node)->numa_node & ~1) | priority;
+
 	((struct cna_node *)node)->intra_count = 0;
 }
 
@@ -243,12 +255,16 @@ static u32 cna_order_queue(struct mcs_spinlock *node,
 {
 	struct cna_node *cni = (struct cna_node *)READ_ONCE(iter->next);
 	struct cna_node *cn = (struct cna_node *)node;
-	int nid = cn->numa_node;
+	int nid = cn->numa_node >> 1;
 	struct cna_node *last;
 
 	/* find any next waiter on 'our' NUMA node */
 	for (last = cn;
-	     cni && cni->numa_node != nid;
+		 /*
+		  * iterate as long as the current node is not priorizied and
+		  * does not run on 'our' NUMA node
+		  */
+	     cni && !(cni->numa_node & 0x1) && (cni->numa_node >> 1) != nid;
 	     last = cni, cni = (struct cna_node *)READ_ONCE(cni->mcs.next))
 		;
 
@@ -258,6 +274,12 @@ static u32 cna_order_queue(struct mcs_spinlock *node,
 	if (last != cn)	/* did we skip any waiters? */
 		cna_splice_tail(node, node->next, (struct mcs_spinlock *)last);
 
+	/*
+	 * We return LOCAL_WAITER_FOUND here even if we stopped the scan because
+	 * of a prioritized waiter. That waiter will get the lock next even if
+	 * it runs on a different NUMA node, but this is what we wanted when we
+	 * prioritized it.
+	 */
 	return LOCAL_WAITER_FOUND;
 }
 
-- 
2.21.1 (Apple Git-122.3)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
