Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCA41A9361
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 08:40:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KDYZFwCtN5sBBWVwSqFXnt4gJnncBOdVsvSJvT+vMm8=; b=er+rlZ/p6q482ePCF24A2taWmJ
	l0rRmNghXcjf3Wxjg2wbILt6yJdiQbzaVmQQSy3YR93kwjnas91jivE8hrRfzW308jx7RoroGkt/R
	cOREm7dRxMbDu9bEFcQyqeOT/WJltdpCuRJbQoVpHSLOuQR7CO3U2WLjiJN89zdRQ7pZ1bCH2Xjhj
	pxjeaqFywazAp9KGJ4QuciIbkSnOguXmV4ThaSj2R2POsBk0MeWw1bMh0fPjPAN2b+aG6pS8U6dZt
	kxnst46Lkf5dK/X4AWuHj093MV0nMt72SjxZj/j3x+pPC9rmkdh4Phr4s+bJimLwdqxcMk7WFm4XX
	MmZClTwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jObj5-0000Iv-PQ; Wed, 15 Apr 2020 06:40:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jObif-0000EY-Ps
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 06:40:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F234F101E;
 Tue, 14 Apr 2020 23:40:20 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 049363F73D;
 Tue, 14 Apr 2020 23:44:28 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] mm/hotplug: Enumerate memory range offlining failure
 reasons
Date: Wed, 15 Apr 2020 12:09:43 +0530
Message-Id: <1586932784-16315-2-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586932784-16315-1-git-send-email-anshuman.khandual@arm.com>
References: <1586932784-16315-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_234021_993842_056F6B83 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, Michal Hocko <mhocko@suse.com>, will@kernel.com,
 David Hildenbrand <david@redhat.com>, catalin.marinas@arm.com,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 akpm@linux-foundation.org, Dan Williams <dan.j.williams@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently just a debug message is shown describing the reason during memory
range offline failure. Even though just sufficient for debugging purpose,
these messages can not be used in registered memory event notifiers that
might be interested in MEM_CANCEL_OFFLINE event and it's possible reasons.

This enumerates all existing memory range offline failure reason codes thus
enabling their further effective utilization. It also adds a new element in
memory notifier structure (void *data) that will carry this offline failure
reason code into all registered notifiers when offlining process fails and
MEM_CANCEL_OFFLINE is triggered.

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: David Hildenbrand <david@redhat.com>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: linux-mm@kvack.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 drivers/base/memory.c  |  9 +++++++++
 include/linux/memory.h | 27 +++++++++++++++++++++++++++
 mm/memory_hotplug.c    | 24 ++++++++++++++++--------
 3 files changed, 52 insertions(+), 8 deletions(-)

diff --git a/drivers/base/memory.c b/drivers/base/memory.c
index dbec3a05590a..2a6d52984803 100644
--- a/drivers/base/memory.c
+++ b/drivers/base/memory.c
@@ -159,6 +159,15 @@ static ssize_t state_show(struct device *dev, struct device_attribute *attr,
 
 int memory_notify(unsigned long val, void *v)
 {
+	struct memory_notify *arg = v;
+
+	/*
+	 * arg->data should be available and processed only for
+	 * MEM_CANCEL_OFFLINE event. Drop this warning when it's
+	 * usage goes beyond MEM_CANCEL_OFFLINE.
+	 */
+	WARN_ON((val != MEM_CANCEL_OFFLINE) && arg->data);
+
 	return blocking_notifier_call_chain(&memory_chain, val, v);
 }
 
diff --git a/include/linux/memory.h b/include/linux/memory.h
index 439a89e758d8..7914b0dbd4bb 100644
--- a/include/linux/memory.h
+++ b/include/linux/memory.h
@@ -44,12 +44,39 @@ int set_memory_block_size_order(unsigned int order);
 #define	MEM_CANCEL_ONLINE	(1<<4)
 #define	MEM_CANCEL_OFFLINE	(1<<5)
 
+/*
+ * Memory offline failure reasons
+ */
+enum offline_failure_reason {
+	OFFLINE_FAILURE_MEMHOLES,
+	OFFLINE_FAILURE_MULTIZONE,
+	OFFLINE_FAILURE_ISOLATE,
+	OFFLINE_FAILURE_NOTIFIER,
+	OFFLINE_FAILURE_SIGNAL,
+	OFFLINE_FAILURE_DISSOLVE,
+};
+
+static const char *const offline_failure_names[] = {
+	[OFFLINE_FAILURE_MEMHOLES]	= "memory holes",
+	[OFFLINE_FAILURE_MULTIZONE]	= "multizone range",
+	[OFFLINE_FAILURE_ISOLATE]	= "failure to isolate range",
+	[OFFLINE_FAILURE_NOTIFIER]	= "notifier failure",
+	[OFFLINE_FAILURE_SIGNAL]	= "signal backoff",
+	[OFFLINE_FAILURE_DISSOLVE]	= "failure to dissolve huge pages",
+};
+
+static inline const char *offline_failure(int reason)
+{
+	return offline_failure_names[reason];
+}
+
 struct memory_notify {
 	unsigned long start_pfn;
 	unsigned long nr_pages;
 	int status_change_nid_normal;
 	int status_change_nid_high;
 	int status_change_nid;
+	void *data;
 };
 
 struct notifier_block;
diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
index fc0aad0bc1f5..2b733902dfcf 100644
--- a/mm/memory_hotplug.c
+++ b/mm/memory_hotplug.c
@@ -787,6 +787,7 @@ int __ref online_pages(unsigned long pfn, unsigned long nr_pages,
 
 	arg.start_pfn = pfn;
 	arg.nr_pages = nr_pages;
+	arg.data = NULL;
 	node_states_check_changes_online(nr_pages, zone, &arg);
 
 	ret = memory_notify(MEM_GOING_ONLINE, &arg);
@@ -1466,7 +1467,7 @@ static int __ref __offline_pages(unsigned long start_pfn,
 	unsigned long flags;
 	struct zone *zone;
 	struct memory_notify arg;
-	char *reason;
+	enum offline_failure_reason reason;
 
 	mem_hotplug_begin();
 
@@ -1482,7 +1483,7 @@ static int __ref __offline_pages(unsigned long start_pfn,
 			      count_system_ram_pages_cb);
 	if (nr_pages != end_pfn - start_pfn) {
 		ret = -EINVAL;
-		reason = "memory holes";
+		reason = OFFLINE_FAILURE_MEMHOLES;
 		goto failed_removal;
 	}
 
@@ -1491,7 +1492,7 @@ static int __ref __offline_pages(unsigned long start_pfn,
 	zone = test_pages_in_a_zone(start_pfn, end_pfn);
 	if (!zone) {
 		ret = -EINVAL;
-		reason = "multizone range";
+		reason = OFFLINE_FAILURE_MULTIZONE;
 		goto failed_removal;
 	}
 	node = zone_to_nid(zone);
@@ -1501,19 +1502,20 @@ static int __ref __offline_pages(unsigned long start_pfn,
 				       MIGRATE_MOVABLE,
 				       MEMORY_OFFLINE | REPORT_FAILURE);
 	if (ret < 0) {
-		reason = "failure to isolate range";
+		reason = OFFLINE_FAILURE_ISOLATE;
 		goto failed_removal;
 	}
 	nr_isolate_pageblock = ret;
 
 	arg.start_pfn = start_pfn;
 	arg.nr_pages = nr_pages;
+	arg.data = NULL;
 	node_states_check_changes_offline(nr_pages, zone, &arg);
 
 	ret = memory_notify(MEM_GOING_OFFLINE, &arg);
 	ret = notifier_to_errno(ret);
 	if (ret) {
-		reason = "notifier failure";
+		reason = OFFLINE_FAILURE_NOTIFIER;
 		goto failed_removal_isolated;
 	}
 
@@ -1521,7 +1523,7 @@ static int __ref __offline_pages(unsigned long start_pfn,
 		for (pfn = start_pfn; pfn;) {
 			if (signal_pending(current)) {
 				ret = -EINTR;
-				reason = "signal backoff";
+				reason = OFFLINE_FAILURE_SIGNAL;
 				goto failed_removal_isolated;
 			}
 
@@ -1545,7 +1547,7 @@ static int __ref __offline_pages(unsigned long start_pfn,
 		 */
 		ret = dissolve_free_huge_pages(start_pfn, end_pfn);
 		if (ret) {
-			reason = "failure to dissolve huge pages";
+			reason = OFFLINE_FAILURE_DISSOLVE;
 			goto failed_removal_isolated;
 		}
 		/* check again */
@@ -1599,12 +1601,18 @@ static int __ref __offline_pages(unsigned long start_pfn,
 
 failed_removal_isolated:
 	undo_isolate_page_range(start_pfn, end_pfn, MIGRATE_MOVABLE);
+
+	/*
+	 * Send the offline failure reason to all registered
+	 * notifiers for MEM_CANCEL_OFFLINE.
+	 */
+	arg.data = &reason;
 	memory_notify(MEM_CANCEL_OFFLINE, &arg);
 failed_removal:
 	pr_debug("memory offlining [mem %#010llx-%#010llx] failed due to %s\n",
 		 (unsigned long long) start_pfn << PAGE_SHIFT,
 		 ((unsigned long long) end_pfn << PAGE_SHIFT) - 1,
-		 reason);
+		 offline_failure(reason));
 	/* pushback to free area */
 	mem_hotplug_done();
 	return ret;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
