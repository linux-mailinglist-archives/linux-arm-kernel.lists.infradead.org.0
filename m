Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1D1F3635
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 18:52:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ire8Wx1HXSUiyPM4LVFewKa0OEvgMXdKpQemIDb5f/I=; b=fvkMUnbSqoe3Zl
	ER/PruGYjYo4wEyfFDfCifhzN6Wocvq7TIpvAQu+7Tcw8wMv0qSeOfQnmFtZAUdlXbegQgrBN0tGy
	r9JMLwvlHlPgHLx/VNq68Qu5ooeaEp1g7RMuuby/Dw0GAFre50ePeMbSkjn0sIPX57nSLWowIPI+T
	v5iXXDo7rmCUwK1jotNNOWsOdJpwK0LXMKdMiwEw/tN8UcMZIwDPuiW5z1kNi4LwIL/ww1yrLeOrW
	hKiZa0WUbx1hW8Gxlbsd0WEdOUxNaNBMW3PGxBP3gtfnYg92F2iOvm1vK3DFAuGX46m1jLdTIXrtR
	TORIKInfbnAhrmSngqWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSlxU-0006jE-6j; Thu, 07 Nov 2019 17:52:36 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSlxG-0006hb-Bo
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 17:52:23 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA7Hj7Oj017955;
 Thu, 7 Nov 2019 17:51:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=corp-2019-08-05;
 bh=DX9DFf/HY7vk9f13qe15xehZI9+6yjZTBWm+Qe2Uzng=;
 b=GRWGRYxAJg8Rf/zPF3Q00kVmgeOjTvZHwdA2rFf8Fu8QhnuDuh/IgtTpJAJQf0vE7VNB
 RLWvdlExgUpdneCqtEbIInev9ww3EmVGfK3nyCMxbrlzWrgZ/L8XPXvzd69w6rLBPc0p
 DYxl2vwvHw5z229j1aBTQmJbA/TrIuUud1f7/0b2mr8VSHM9wCYOxX5DyzeYsddfqGOk
 mqQ2Xc+yXBy8pyOQPDsCMww3MDhVTbIBoIM8KOUZxynkAuespAVQDjqV1b2wIPtk9MMo
 9U+FBfetrd7GdIl1mxw+/K1zWcQ6z0T9bRiwfr4MUjn8PT3oAKMAGzqMHMwmku+LGHaD Jw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2w41w0yxh4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 Nov 2019 17:51:29 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA7Hj6Zs076877;
 Thu, 7 Nov 2019 17:51:28 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2w41wacfmk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 Nov 2019 17:51:27 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xA7HpN3Y007850;
 Thu, 7 Nov 2019 17:51:23 GMT
Received: from neelam.us.oracle.com (/10.152.128.16)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 07 Nov 2019 09:51:22 -0800
From: Alex Kogan <alex.kogan@oracle.com>
To: linux@armlinux.org.uk, peterz@infradead.org, mingo@redhat.com,
 will.deacon@arm.com, arnd@arndb.de, longman@redhat.com,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, bp@alien8.de,
 hpa@zytor.com, x86@kernel.org, guohanjun@huawei.com, jglauber@marvell.com
Subject: [PATCH v6 4/5] locking/qspinlock: Introduce starvation avoidance into
 CNA
Date: Thu,  7 Nov 2019 12:46:21 -0500
Message-Id: <20191107174622.61718-5-alex.kogan@oracle.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20191107174622.61718-1-alex.kogan@oracle.com>
References: <20191107174622.61718-1-alex.kogan@oracle.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9434
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1910280000 definitions=main-1911070165
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9434
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1910280000
 definitions=main-1911070165
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_095222_494126_71DA1514 
X-CRM114-Status: GOOD (  25.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alex.kogan@oracle.com, dave.dice@oracle.com, rahul.x.yadav@oracle.com,
 steven.sistare@oracle.com, daniel.m.jordan@oracle.com
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
---
 Documentation/admin-guide/kernel-parameters.txt |  8 ++++++++
 arch/x86/kernel/alternative.c                   | 27 +++++++++++++++++++++++++
 kernel/locking/qspinlock.c                      |  3 +++
 kernel/locking/qspinlock_cna.h                  | 27 ++++++++++++++++++++++---
 4 files changed, 62 insertions(+), 3 deletions(-)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index a2fd0c669dba..07913c7da351 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -3158,6 +3158,14 @@
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
diff --git a/arch/x86/kernel/alternative.c b/arch/x86/kernel/alternative.c
index 6a4ccbf4e09c..28552e0491b5 100644
--- a/arch/x86/kernel/alternative.c
+++ b/arch/x86/kernel/alternative.c
@@ -723,6 +723,33 @@ static int __init numa_spinlock_setup(char *str)
 
 __setup("numa_spinlock=", numa_spinlock_setup);
 
+/*
+ * Controls the threshold for the number of intra-node lock hand-offs before
+ * the NUMA-aware variant of spinlock is forced to be passed to a thread on
+ * another NUMA node. By default, the chosen value provides reasonable
+ * long-term fairness without sacrificing performance compared to a lock
+ * that does not have any fairness guarantees.
+ */
+int intra_node_handoff_threshold = 1 << 16;
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
+
+__setup("numa_spinlock_threshold=", numa_spinlock_threshold_setup);
+
 #endif
 
 void __init alternative_instructions(void)
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
index 0cf5a6a2709c..916c9083e8ec 100644
--- a/kernel/locking/qspinlock_cna.h
+++ b/kernel/locking/qspinlock_cna.h
@@ -50,9 +50,16 @@ struct cna_node {
 	struct mcs_spinlock	mcs;
 	int			numa_node;
 	u32			encoded_tail;
-	u32			pre_scan_result; /* 0 or encoded tail */
+	u32			pre_scan_result; /* 0, 1 or encoded tail */
+	u32			intra_count;
 };
 
+/*
+ * Controls the threshold for the number of intra-node lock hand-offs.
+ * See arch/x86/kernel/alternative.c for details.
+ */
+extern int intra_node_handoff_threshold;
+
 static void __init cna_init_nodes_per_cpu(unsigned int cpu)
 {
 	struct mcs_spinlock *base = per_cpu_ptr(&qnodes[0].mcs, cpu);
@@ -88,6 +95,11 @@ static int __init cna_init_nodes(void)
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
@@ -217,7 +229,13 @@ __always_inline u32 cna_pre_scan(struct qspinlock *lock,
 {
 	struct cna_node *cn = (struct cna_node *)node;
 
-	cn->pre_scan_result = cna_scan_main_queue(node, node);
+	/*
+	 * setting @pre_scan_result to 1 indicates that no post-scan
+	 * should be made in cna_pass_lock()
+	 */
+	cn->pre_scan_result =
+		cn->intra_count == intra_node_handoff_threshold ?
+			1 : cna_scan_main_queue(node, node);
 
 	return 0;
 }
@@ -236,7 +254,7 @@ static inline void cna_pass_lock(struct mcs_spinlock *node,
 	 * pre-scan, and if so, try to find it in post-scan starting from the
 	 * node where pre-scan stopped (stored in @pre_scan_result)
 	 */
-	if (scan > 0)
+	if (scan > 1)
 		scan = cna_scan_main_queue(node, decode_tail(scan));
 
 	if (!scan) { /* if found a successor from the same numa node */
@@ -247,6 +265,9 @@ static inline void cna_pass_lock(struct mcs_spinlock *node,
 		 * if we acquired the MCS lock when its queue was empty
 		 */
 		val = node->locked ? node->locked : 1;
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
