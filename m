Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D98F3636
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 18:52:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1uuhnMaFNcPnU1TeixRo4NhKsZeJFA9ieIGtbqWPn4Y=; b=LUnu+vSx5rmZiP
	Biwl4lMRNes0hOsmX7xU3hWfhmEkq9kpaLqa4EKrLlEpKkxkbgn9IIx4g7AjA7NumwE/TarfHsZZM
	BFnZ2ovW75d7VKJsQz7N+FVs4C8UcPnyWfYGl/1xAa/CmmnI11ZM/MO8mxZXdp3B1Ki3152zqDwVz
	j0S7gWDx7Z+JP0qioLSzSazjrJ2BEVDHBuEpexvEzNlfSnsZuKSnvWdredqchRNU8Plcn2xyw3NrM
	ZiLx3DL3KVJeoXfp9hDh9KYn5mvPDQa8R+SRfSmMM77VMzqc70tJb1UwyBpnZpiSRiYK6jz5Jc3iS
	boT0HkmgAPRJCIjtM19w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSlxi-0006tg-7j; Thu, 07 Nov 2019 17:52:50 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSlxG-0006hd-Hh
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 17:52:23 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA7Hj4pe030207;
 Thu, 7 Nov 2019 17:51:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=corp-2019-08-05;
 bh=R/fl3/e/tumWGOl5RHojvBvQAbaC+/s8svgyi4+7QQE=;
 b=IkSZJ7LjDeXHhL69M8xJ1VI8qKK4fDWGntUFwllKOKdt0l5n6Wajn+3AKw5Y2+hItWGz
 N654qokWH89wYyrDpZChgIo0EyZ1GuFkTNtbesNPJkhX+eUrsUSLMA9zqI5hMmt0S9dd
 gHjkQatl9DumgaMrYc8WftedoFbTpIdq8Q7V1W2j3zBd+ZhKy6RdIZpftl6pPugPCZhD
 6ix1fgekERNzGAQAcWs2JVznCECtkW1iX/Vk/2EUz86KCn0icVpXsDni3gBAAdaC1mb1
 mZi/Qrs4SQcz5ha/C/k7xTis7rTZkpt3ipllC9UhqYMKxOnG5hl2SP8Bwozilb4egu8z kg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2w41w17xu5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 Nov 2019 17:51:28 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA7Hj2Ux083867;
 Thu, 7 Nov 2019 17:51:28 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2w4k2w56h5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 Nov 2019 17:51:27 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xA7HpKHp007794;
 Thu, 7 Nov 2019 17:51:20 GMT
Received: from neelam.us.oracle.com (/10.152.128.16)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 07 Nov 2019 09:51:20 -0800
From: Alex Kogan <alex.kogan@oracle.com>
To: linux@armlinux.org.uk, peterz@infradead.org, mingo@redhat.com,
 will.deacon@arm.com, arnd@arndb.de, longman@redhat.com,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, bp@alien8.de,
 hpa@zytor.com, x86@kernel.org, guohanjun@huawei.com, jglauber@marvell.com
Subject: [PATCH v6 2/5] locking/qspinlock: Refactor the qspinlock slow path
Date: Thu,  7 Nov 2019 12:46:19 -0500
Message-Id: <20191107174622.61718-3-alex.kogan@oracle.com>
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
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1910280000
 definitions=main-1911070165
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_095222_713699_71C9FC4D 
X-CRM114-Status: GOOD (  16.79  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
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

Move some of the code manipulating the spin lock into separate functions.
This would allow easier integration of alternative ways to manipulate
that lock.

Signed-off-by: Alex Kogan <alex.kogan@oracle.com>
Reviewed-by: Steve Sistare <steven.sistare@oracle.com>
---
 kernel/locking/qspinlock.c | 38 ++++++++++++++++++++++++++++++++++++--
 1 file changed, 36 insertions(+), 2 deletions(-)

diff --git a/kernel/locking/qspinlock.c b/kernel/locking/qspinlock.c
index 804c0fbd6328..c06d1e8075d9 100644
--- a/kernel/locking/qspinlock.c
+++ b/kernel/locking/qspinlock.c
@@ -288,6 +288,34 @@ static __always_inline u32  __pv_wait_head_or_lock(struct qspinlock *lock,
 #define queued_spin_lock_slowpath	native_queued_spin_lock_slowpath
 #endif
 
+/*
+ * __try_clear_tail - try to clear tail by setting the lock value to
+ * _Q_LOCKED_VAL.
+ * @lock: Pointer to the queued spinlock structure
+ * @val: Current value of the lock
+ * @node: Pointer to the MCS node of the lock holder
+ */
+static __always_inline bool __try_clear_tail(struct qspinlock *lock,
+						   u32 val,
+						   struct mcs_spinlock *node)
+{
+	return atomic_try_cmpxchg_relaxed(&lock->val, &val, _Q_LOCKED_VAL);
+}
+
+/*
+ * __mcs_pass_lock - pass the MCS lock to the next waiter
+ * @node: Pointer to the MCS node of the lock holder
+ * @next: Pointer to the MCS node of the first waiter in the MCS queue
+ */
+static __always_inline void __mcs_pass_lock(struct mcs_spinlock *node,
+					    struct mcs_spinlock *next)
+{
+	arch_mcs_pass_lock(&next->locked, 1);
+}
+
+#define try_clear_tail	__try_clear_tail
+#define mcs_pass_lock		__mcs_pass_lock
+
 #endif /* _GEN_PV_LOCK_SLOWPATH */
 
 /**
@@ -532,7 +560,7 @@ void queued_spin_lock_slowpath(struct qspinlock *lock, u32 val)
 	 *       PENDING will make the uncontended transition fail.
 	 */
 	if ((val & _Q_TAIL_MASK) == tail) {
-		if (atomic_try_cmpxchg_relaxed(&lock->val, &val, _Q_LOCKED_VAL))
+		if (try_clear_tail(lock, val, node))
 			goto release; /* No contention */
 	}
 
@@ -549,7 +577,7 @@ void queued_spin_lock_slowpath(struct qspinlock *lock, u32 val)
 	if (!next)
 		next = smp_cond_load_relaxed(&node->next, (VAL));
 
-	arch_mcs_pass_lock(&next->locked, 1);
+	mcs_pass_lock(node, next);
 	pv_kick_node(lock, next);
 
 release:
@@ -574,6 +602,12 @@ EXPORT_SYMBOL(queued_spin_lock_slowpath);
 #undef pv_kick_node
 #undef pv_wait_head_or_lock
 
+#undef try_clear_tail
+#define try_clear_tail		__try_clear_tail
+
+#undef mcs_pass_lock
+#define mcs_pass_lock			__mcs_pass_lock
+
 #undef  queued_spin_lock_slowpath
 #define queued_spin_lock_slowpath	__pv_queued_spin_lock_slowpath
 
-- 
2.11.0 (Apple Git-81)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
