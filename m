Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A16D8784
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 06:33:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qadPyU4L8x5DMbqqhb7zgstqAC6i5x+SmqwkditPPf0=; b=rSMBAaCwlBvT92
	9pVUdtQuRlBf5XrfsYQnXNk/OG93nQlGI10a9NPUsf+n6ThIpiYOn9KjxabcWAAwukq0o6zqJu73G
	P06dhzZcO1Ly+rpKQhYBFjKccLTyApdJNyNp8JsoNdNfF2NbdxVjYKPl0BaSquuw9ehC3CEA9sXG3
	OmjZHyhr7ZM0oYkcdZiAXsDpRkrjq6MrU3vmTDqXziq1hslkrs2WcJDHsz03z/0rxWzS6W935HyWk
	F9U+d1Aa/0XKvE5A0o1z/n4Fxlvz2pyJzCwQhsy/uf5kZkjk8p0CkNxpZDZrrMR9jbXZvCKYXW6Gs
	9hWumXDgV/txWSsPzzsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKazp-0003Dv-Ag; Wed, 16 Oct 2019 04:33:13 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKayy-0002ib-V5
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 04:32:23 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9G4SZUS166019;
 Wed, 16 Oct 2019 04:31:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=corp-2019-08-05;
 bh=nwli1ZwecEZzyJZyU9LI7xjeU0hbh0ChVjhSfnDI9y8=;
 b=hPw37+d8AUUGAbIpgXQ1KErxr79V7RZ0r/ZJGX1VDHEqmimB7cYBh3BuTuoe5SFAsgIM
 qOpD7Q83domlfvcFgbgK25TkxIjUw5drjeQ7eucGJKn5Nr+VVB6E9tovh+WyoQpqL2nh
 qdXTR6ZjU6yFyW0xHa109cQMfPypafj7CL6VDiqd5Upv8gHkV82SuXvkIEW2eqJt0uhu
 ErojsBMDPx4YQT1x3BF3oyfC1y+bjWYw+JRHk0s+p9J2ZXwSONX3ILleHuRXJ3jGgr9b
 Ia8n9QOb+wki5R7NR34SEqn56+bYSYZenIEMcbXO/O4JiBYgqgP4s04ynvaL96QOF088 Kw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2vk7frbxgv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 16 Oct 2019 04:31:24 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9G4RfS5042717;
 Wed, 16 Oct 2019 04:31:24 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2vn8epsv7a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 16 Oct 2019 04:31:24 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9G4VB8N028634;
 Wed, 16 Oct 2019 04:31:11 GMT
Received: from neelam.us.oracle.com (/10.152.128.16)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 15 Oct 2019 21:31:11 -0700
From: Alex Kogan <alex.kogan@oracle.com>
To: linux@armlinux.org.uk, peterz@infradead.org, mingo@redhat.com,
 will.deacon@arm.com, arnd@arndb.de, longman@redhat.com,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, bp@alien8.de,
 hpa@zytor.com, x86@kernel.org, guohanjun@huawei.com, jglauber@marvell.com
Subject: [PATCH v5 4/5] locking/qspinlock: Introduce starvation avoidance into
 CNA
Date: Wed, 16 Oct 2019 00:29:02 -0400
Message-Id: <20191016042903.61081-5-alex.kogan@oracle.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20191016042903.61081-1-alex.kogan@oracle.com>
References: <20191016042903.61081-1-alex.kogan@oracle.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9411
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910160040
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9411
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910160040
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_213221_084583_252A63FD 
X-CRM114-Status: GOOD (  24.01  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alex.kogan@oracle.com, dave.dice@oracle.com, rahul.x.yadav@oracle.com,
 steven.sistare@oracle.com, daniel.m.jordan@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Keep track of the number of intra-node lock handoffs, and force
inter-node handoff once this number reaches a preset threshold.

Signed-off-by: Alex Kogan <alex.kogan@oracle.com>
Reviewed-by: Steve Sistare <steven.sistare@oracle.com>
---
 kernel/locking/qspinlock.c     |  3 +++
 kernel/locking/qspinlock_cna.h | 30 +++++++++++++++++++++++++++---
 2 files changed, 30 insertions(+), 3 deletions(-)

diff --git a/kernel/locking/qspinlock.c b/kernel/locking/qspinlock.c
index 6d8c4a52e44e..1d0d884308ef 100644
--- a/kernel/locking/qspinlock.c
+++ b/kernel/locking/qspinlock.c
@@ -597,6 +597,9 @@ EXPORT_SYMBOL(queued_spin_lock_slowpath);
 #if !defined(_GEN_CNA_LOCK_SLOWPATH) && defined(CONFIG_NUMA_AWARE_SPINLOCKS)
 #define _GEN_CNA_LOCK_SLOWPATH
 
+#undef pv_init_node
+#define pv_init_node			cna_init_node
+
 #undef pv_wait_head_or_lock
 #define pv_wait_head_or_lock		cna_pre_scan
 
diff --git a/kernel/locking/qspinlock_cna.h b/kernel/locking/qspinlock_cna.h
index 4d095f742d31..b92a6f9a19db 100644
--- a/kernel/locking/qspinlock_cna.h
+++ b/kernel/locking/qspinlock_cna.h
@@ -50,9 +50,19 @@ struct cna_node {
 	struct mcs_spinlock	mcs;
 	int			numa_node;
 	u32			encoded_tail;
-	u32			pre_scan_result; /* 0 or an encoded tail */
+	u32			pre_scan_result; /* 0, 1 or an encoded tail */
+	u32			intra_count;
 };
 
+/*
+ * Controls the threshold for the number of intra-node lock hand-offs. It can
+ * be tuned and depend, e.g., on the number of CPUs per node. For now,
+ * choose a value that provides reasonable long-term fairness without
+ * sacrificing performance compared to a version that does not have any
+ * fairness guarantees.
+ */
+#define INTRA_NODE_HANDOFF_THRESHOLD (1 << 16)
+
 static void __init cna_init_nodes_per_cpu(unsigned int cpu)
 {
 	struct mcs_spinlock *base = per_cpu_ptr(&qnodes[0].mcs, cpu);
@@ -86,6 +96,11 @@ static void __init cna_init_nodes(void)
 }
 early_initcall(cna_init_nodes);
 
+static __always_inline void cna_init_node(struct mcs_spinlock *node)
+{
+	((struct cna_node *)node)->intra_count = 0;
+}
+
 static inline bool cna_try_change_tail(struct qspinlock *lock, u32 val,
 				       struct mcs_spinlock *node)
 {
@@ -215,7 +230,13 @@ __always_inline u32 cna_pre_scan(struct qspinlock *lock,
 {
 	struct cna_node *cn = (struct cna_node *)node;
 
-	cn->pre_scan_result = cna_scan_main_queue(node, node);
+	/*
+	 * setting @pre_scan_result to 1 indicates that no post-scan
+	 * should be made in cna_pass_lock()
+	 */
+	cn->pre_scan_result =
+		cn->intra_count == INTRA_NODE_HANDOFF_THRESHOLD ?
+			1 : cna_scan_main_queue(node, node);
 
 	return 0;
 }
@@ -234,7 +255,7 @@ static inline void cna_pass_lock(struct mcs_spinlock *node,
 	 * pre-scan, and if so, try to find it in post-scan starting from the
 	 * node where pre-scan stopped (stored in @pre_scan_result)
 	 */
-	if (scan > 0)
+	if (scan > 1)
 		scan = cna_scan_main_queue(node, decode_tail(scan));
 
 	if (!scan) { /* if found a successor from the same numa node */
@@ -245,6 +266,9 @@ static inline void cna_pass_lock(struct mcs_spinlock *node,
 		 * to pass the lock
 		 */
 		val = node->locked + (node->locked == 0);
+		/* inc @intra_count if the secondary queue is not empty */
+		((struct cna_node *)next_holder)->intra_count =
+			cn->intra_count + (node->locked > 1);
 	} else if (node->locked > 1) {	  /* if secondary queue is not empty */
 		/* next holder will be the first node in the secondary queue */
 		tail_2nd = decode_tail(node->locked);
-- 
2.11.0 (Apple Git-81)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
