Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B000013B8A9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 05:16:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KBGq5JR08hMnkvbWecIbKqSkzDllDGqOaPWQqv16VTI=; b=R52sv1rEEPM8KJ
	UG4JSWKYb0cfiYP53OieQbWAnDZFFjTkBCeCUlI9PzVvg6lQHihzU0Jb+k3NlfbFlckz82WCJZeop
	gRLSn3ZMhlhpDgPRoNqSKEINrYVNM5WrzTzg5J1g3Plx5HhNdv5CC6O60rBGWF/m9ikAzdtm7i96M
	T0PBX8hNR2o1fSMxbIJJ2o2yVkNC0db+m9Y5OaD5BtUIRB2ZbrOdZiiFTe4divl+If0GzQOQT6Bur
	aFSkbF8V1ymzioHfEHEbCo9hPDdcPDcTnczq/zemM+tbTg6A4oIT+uDO9XXelOpBJ4QkdHgh5oriL
	TmpwZ56FKHXSYpy9vVXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ira6o-00084H-5D; Wed, 15 Jan 2020 04:16:46 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ira6I-0007nf-V4
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 04:16:17 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00F4DFIF016291;
 Wed, 15 Jan 2020 04:15:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=corp-2019-08-05;
 bh=R1jC6iDaJJutPHuZ46tT3notbeL7TppokOIERW1zCps=;
 b=Tr9uLu1P/iR1YD5JVLHzsuLN9K89bFmeOa6Jjae5L7MHL107kGGf2sDfe4LPtwEnW1g6
 xs7DoCr6+tnhnjZx/DRy2N5eqhn3JymlLezimxzUqZSRJkDvqPTxsxPao+6Ve6lzZy4X
 NDm/P5B97dgrQxMocKi0Fmb+zp/8oSSBjnftAGXPotX2HvwfojtCwsSiF4D1n7aBc7Hp
 ldgyhwZS5dOnh945cU0ZtNixlm79Y3/lIdJDcAzSVFNLkKoKAwdQupr4Y7EoemKEV2lS
 sf1ZGf0h9oZEP7Im20Qj+NXSz3nR0S4EDEcFz8NZ34ocJ/OCvVNc0WQZPLRX+Y3bAY9D EA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2xf73yhyt6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 15 Jan 2020 04:15:46 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00F4EKvC095397;
 Wed, 15 Jan 2020 04:15:45 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2xh315dbs3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 15 Jan 2020 04:15:44 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 00F4D1Tr003498;
 Wed, 15 Jan 2020 04:13:01 GMT
Received: from neelam.us.oracle.com (/10.152.128.16)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 14 Jan 2020 20:13:00 -0800
From: Alex Kogan <alex.kogan@oracle.com>
To: linux@armlinux.org.uk, peterz@infradead.org, mingo@redhat.com,
 will.deacon@arm.com, arnd@arndb.de, longman@redhat.com,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, bp@alien8.de,
 hpa@zytor.com, x86@kernel.org, guohanjun@huawei.com, jglauber@marvell.com
Subject: [PATCH v9 1/5] locking/qspinlock: Rename mcs lock/unlock macros and
 make them more generic
Date: Tue, 14 Jan 2020 22:59:16 -0500
Message-Id: <20200115035920.54451-2-alex.kogan@oracle.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200115035920.54451-1-alex.kogan@oracle.com>
References: <20200115035920.54451-1-alex.kogan@oracle.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9500
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=725
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001150033
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9500
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=789 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001150033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_201615_367495_4C8199B0 
X-CRM114-Status: GOOD (  21.42  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
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

The mcs unlock macro (arch_mcs_pass_lock) should accept the value to be
stored into the lock argument as another argument. This allows using the
same macro in cases where the value to be stored when passing the lock is
different from 1.

Signed-off-by: Alex Kogan <alex.kogan@oracle.com>
Reviewed-by: Steve Sistare <steven.sistare@oracle.com>
Reviewed-by: Waiman Long <longman@redhat.com>
---
 arch/arm/include/asm/mcs_spinlock.h |  6 +++---
 include/asm-generic/mcs_spinlock.h  |  4 ++--
 kernel/locking/mcs_spinlock.h       | 18 +++++++++---------
 kernel/locking/qspinlock.c          |  4 ++--
 kernel/locking/qspinlock_paravirt.h |  2 +-
 5 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/arch/arm/include/asm/mcs_spinlock.h b/arch/arm/include/asm/mcs_spinlock.h
index 529d2cf4d06f..693fe6ce3c43 100644
--- a/arch/arm/include/asm/mcs_spinlock.h
+++ b/arch/arm/include/asm/mcs_spinlock.h
@@ -6,7 +6,7 @@
 #include <asm/spinlock.h>
 
 /* MCS spin-locking. */
-#define arch_mcs_spin_lock_contended(lock)				\
+#define arch_mcs_spin_lock(lock)				\
 do {									\
 	/* Ensure prior stores are observed before we enter wfe. */	\
 	smp_mb();							\
@@ -14,9 +14,9 @@ do {									\
 		wfe();							\
 } while (0)								\
 
-#define arch_mcs_spin_unlock_contended(lock)				\
+#define arch_mcs_pass_lock(lock, val)					\
 do {									\
-	smp_store_release(lock, 1);					\
+	smp_store_release((lock), (val));				\
 	dsb_sev();							\
 } while (0)
 
diff --git a/include/asm-generic/mcs_spinlock.h b/include/asm-generic/mcs_spinlock.h
index 10cd4ffc6ba2..868da43dba7c 100644
--- a/include/asm-generic/mcs_spinlock.h
+++ b/include/asm-generic/mcs_spinlock.h
@@ -4,8 +4,8 @@
 /*
  * Architectures can define their own:
  *
- *   arch_mcs_spin_lock_contended(l)
- *   arch_mcs_spin_unlock_contended(l)
+ *   arch_mcs_spin_lock(l)
+ *   arch_mcs_pass_lock(l, val)
  *
  * See kernel/locking/mcs_spinlock.c.
  */
diff --git a/kernel/locking/mcs_spinlock.h b/kernel/locking/mcs_spinlock.h
index 5e10153b4d3c..52d06ec6f525 100644
--- a/kernel/locking/mcs_spinlock.h
+++ b/kernel/locking/mcs_spinlock.h
@@ -21,7 +21,7 @@ struct mcs_spinlock {
 	int count;  /* nesting count, see qspinlock.c */
 };
 
-#ifndef arch_mcs_spin_lock_contended
+#ifndef arch_mcs_spin_lock
 /*
  * Using smp_cond_load_acquire() provides the acquire semantics
  * required so that subsequent operations happen after the
@@ -29,20 +29,20 @@ struct mcs_spinlock {
  * ARM64 would like to do spin-waiting instead of purely
  * spinning, and smp_cond_load_acquire() provides that behavior.
  */
-#define arch_mcs_spin_lock_contended(l)					\
-do {									\
-	smp_cond_load_acquire(l, VAL);					\
+#define arch_mcs_spin_lock(l)					\
+do {								\
+	smp_cond_load_acquire(l, VAL);				\
 } while (0)
 #endif
 
-#ifndef arch_mcs_spin_unlock_contended
+#ifndef arch_mcs_spin_unlock
 /*
  * smp_store_release() provides a memory barrier to ensure all
  * operations in the critical section has been completed before
  * unlocking.
  */
-#define arch_mcs_spin_unlock_contended(l)				\
-	smp_store_release((l), 1)
+#define arch_mcs_pass_lock(l, val)				\
+	smp_store_release((l), (val))
 #endif
 
 /*
@@ -91,7 +91,7 @@ void mcs_spin_lock(struct mcs_spinlock **lock, struct mcs_spinlock *node)
 	WRITE_ONCE(prev->next, node);
 
 	/* Wait until the lock holder passes the lock down. */
-	arch_mcs_spin_lock_contended(&node->locked);
+	arch_mcs_spin_lock(&node->locked);
 }
 
 /*
@@ -115,7 +115,7 @@ void mcs_spin_unlock(struct mcs_spinlock **lock, struct mcs_spinlock *node)
 	}
 
 	/* Pass lock to next waiter. */
-	arch_mcs_spin_unlock_contended(&next->locked);
+	arch_mcs_pass_lock(&next->locked, 1);
 }
 
 #endif /* __LINUX_MCS_SPINLOCK_H */
diff --git a/kernel/locking/qspinlock.c b/kernel/locking/qspinlock.c
index 2473f10c6956..804c0fbd6328 100644
--- a/kernel/locking/qspinlock.c
+++ b/kernel/locking/qspinlock.c
@@ -470,7 +470,7 @@ void queued_spin_lock_slowpath(struct qspinlock *lock, u32 val)
 		WRITE_ONCE(prev->next, node);
 
 		pv_wait_node(node, prev);
-		arch_mcs_spin_lock_contended(&node->locked);
+		arch_mcs_spin_lock(&node->locked);
 
 		/*
 		 * While waiting for the MCS lock, the next pointer may have
@@ -549,7 +549,7 @@ void queued_spin_lock_slowpath(struct qspinlock *lock, u32 val)
 	if (!next)
 		next = smp_cond_load_relaxed(&node->next, (VAL));
 
-	arch_mcs_spin_unlock_contended(&next->locked);
+	arch_mcs_pass_lock(&next->locked, 1);
 	pv_kick_node(lock, next);
 
 release:
diff --git a/kernel/locking/qspinlock_paravirt.h b/kernel/locking/qspinlock_paravirt.h
index e84d21aa0722..e98079414671 100644
--- a/kernel/locking/qspinlock_paravirt.h
+++ b/kernel/locking/qspinlock_paravirt.h
@@ -368,7 +368,7 @@ static void pv_kick_node(struct qspinlock *lock, struct mcs_spinlock *node)
 	 *
 	 * Matches with smp_store_mb() and cmpxchg() in pv_wait_node()
 	 *
-	 * The write to next->locked in arch_mcs_spin_unlock_contended()
+	 * The write to next->locked in arch_mcs_pass_lock()
 	 * must be ordered before the read of pn->state in the cmpxchg()
 	 * below for the code to work correctly. To guarantee full ordering
 	 * irrespective of the success or failure of the cmpxchg(),
-- 
2.21.0 (Apple Git-122.2)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
