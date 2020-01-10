Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3ACA1365AF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 04:09:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZP7wCgMMHlOb2zN5eB2YpPocP7vUwh7gPM1V1rebmtI=; b=ROaBsV2jfyGuhYxh+sFQTko6qH
	/LDHKvxXg1QAkqK4pj9EL3Lm9baU5JjE5AlsXTfIxZ/FShRqw48rwBOzyWEP7SGqCO2apKWDJpPBP
	tZKxsmhVgmSCmNmYo4NVRZad07xp96Jx3yad02kSHDv7M9aqjIErUG1wHKhUnO3bnEeL1MDmg2ssO
	ILuRr2fVrgWIoOrua2eu0QBaQG1uxrjFsl478fIZaRGPdBeKSikTUfbSJ0lHB8+WwQN+WD83e9l3E
	bzmsPp/rcJ0YorjTGfEsT5S4fdU/AhWr6TLnjuVn7xfnnhBs8M18jDuznZFgmptKiQQLOyL/hfbxR
	DuMY0MtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipkfW-0000ps-6T; Fri, 10 Jan 2020 03:09:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipkfJ-0000p1-MM
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 03:08:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C8D211007;
 Thu,  9 Jan 2020 19:08:48 -0800 (PST)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.42.128])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 064CB3F703;
 Thu,  9 Jan 2020 19:08:40 -0800 (PST)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, akpm@linux-foundation.org,
 catalin.marinas@arm.com, will@kernel.org
Subject: [PATCH V11 1/5] mm/hotplug: Introduce arch callback validating the
 hot remove range
Date: Fri, 10 Jan 2020 08:39:11 +0530
Message-Id: <1578625755-11792-2-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578625755-11792-1-git-send-email-anshuman.khandual@arm.com>
References: <1578625755-11792-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_190849_818254_12D516C4 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, ira.weiny@intel.com, david@redhat.com,
 mgorman@techsingularity.net, steve.capper@arm.com, Robin.Murphy@arm.com,
 steven.price@arm.com, broonie@kernel.org, cai@lca.pw, ard.biesheuvel@arm.com,
 cpandya@codeaurora.org, arunks@codeaurora.org, dan.j.williams@intel.com,
 Anshuman Khandual <anshuman.khandual@arm.com>, logang@deltatee.com,
 valentin.schneider@arm.com, suzuki.poulose@arm.com, osalvador@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently there are two interfaces to initiate memory range hot removal i.e
remove_memory() and __remove_memory() which then calls try_remove_memory().
Platform gets called with arch_remove_memory() to tear down required kernel
page tables and other arch specific procedures. But there are platforms
like arm64 which might want to prevent removal of certain specific memory
ranges irrespective of their present usage or movability properties.

Current arch call back arch_remove_memory() is too late in the process to
abort memory hot removal as memory block devices and firmware memory map
entries would have already been removed. Platforms should be able to abort
the process before taking the mem_hotplug_lock with mem_hotplug_begin().
This essentially requires a new arch callback for memory range validation.

This differentiates memory range validation between memory hot add and hot
remove paths before carving out a new helper check_hotremove_memory_range()
which incorporates a new arch callback. This call back provides platforms
an opportunity to refuse memory removal at the very onset. In future the
same principle can be extended for memory hot add path if required.

Platforms can choose to override this callback in order to reject specific
memory ranges from removal or can just fallback to a default implementation
which allows removal of all memory ranges.

Cc: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 include/linux/memory_hotplug.h |  7 +++++++
 mm/memory_hotplug.c            | 21 ++++++++++++++++++++-
 2 files changed, 27 insertions(+), 1 deletion(-)

diff --git a/include/linux/memory_hotplug.h b/include/linux/memory_hotplug.h
index ba0dca6..f661bd5 100644
--- a/include/linux/memory_hotplug.h
+++ b/include/linux/memory_hotplug.h
@@ -305,6 +305,13 @@ static inline void pgdat_resize_init(struct pglist_data *pgdat) {}
 
 #ifdef CONFIG_MEMORY_HOTREMOVE
 
+#ifndef arch_memory_removable
+static inline bool arch_memory_removable(u64 base, u64 size)
+{
+	return true;
+}
+#endif
+
 extern bool is_mem_section_removable(unsigned long pfn, unsigned long nr_pages);
 extern void try_offline_node(int nid);
 extern int offline_pages(unsigned long start_pfn, unsigned long nr_pages);
diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
index a91a072..7cdf800 100644
--- a/mm/memory_hotplug.c
+++ b/mm/memory_hotplug.c
@@ -1014,6 +1014,23 @@ static int check_hotplug_memory_range(u64 start, u64 size)
 	return 0;
 }
 
+static int check_hotremove_memory_range(u64 start, u64 size)
+{
+	int rc;
+
+	BUG_ON(check_hotplug_memory_range(start, size));
+
+	/*
+	 * First check if the platform is willing to have this
+	 * memory range removed else just abort.
+	 */
+	rc = arch_memory_removable(start, size);
+	if (!rc)
+		return -EINVAL;
+
+	return 0;
+}
+
 static int online_memory_block(struct memory_block *mem, void *arg)
 {
 	return device_online(&mem->dev);
@@ -1762,7 +1779,9 @@ static int __ref try_remove_memory(int nid, u64 start, u64 size)
 {
 	int rc = 0;
 
-	BUG_ON(check_hotplug_memory_range(start, size));
+	rc = check_hotremove_memory_range(start, size);
+	if (rc)
+		return rc;
 
 	mem_hotplug_begin();
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
