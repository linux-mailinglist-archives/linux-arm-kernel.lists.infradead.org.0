Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D751F1B474C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 16:27:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LvxLdN8if83wpr6nn9TntW32HItFWw/OLmljc4r7bCY=; b=hENhUXrtDpXonv
	U8fVLX+RLhZbO6Sqv+VS2QsuNoZXb+n+imm+T5QfA7sbPUmVIELy3QsmgMp577594CFRUtSmdBSW7
	vXe7tOO6P6tgWPSm7oLcYR+mgn7JjYFdl6i2LJTknamlb7Dqo0Cz/Y8IWF9h1WwvG3Jjv0s4e4HCP
	hBIVWMKugcPRs/LshNHsVhdjNEyfXx5AC06wrOTCQe8CNr72D5pEoU/movGYublHnraGqNaMBinkp
	ZzzOfkLYMQoqsoLInAYvxWFLbpDWkXXH3KWXapYGr6X01c5mHbmkFlBF/AJ5MId2txag6R18DnM3m
	Mq7oQuIy/2Sqr+0+QhPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRGL5-0001aU-TZ; Wed, 22 Apr 2020 14:26:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRGJw-0000fy-Cm
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 14:25:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 036B91042;
 Wed, 22 Apr 2020 07:25:48 -0700 (PDT)
Received: from e112269-lin.arm.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8D26A3F68F;
 Wed, 22 Apr 2020 07:25:46 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-mm@kvack.org
Subject: [PATCH 4/4] arm64: mte: Save tags when hibernating
Date: Wed, 22 Apr 2020 15:25:30 +0100
Message-Id: <20200422142530.32619-5-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200422142530.32619-1-steven.price@arm.com>
References: <20200422142530.32619-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_072548_562541_C1ED4E1E 
X-CRM114-Status: GOOD (  14.60  )
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Hugh Dickins <hughd@google.com>,
 Steven Price <steven.price@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When hibernating the contents of all pages in the system are written to
disk, however the MTE tags are not visible to the generic hibernation
code. So just before the hibernation image is created copy the tags out
of the physical tag storage into standard memory so they will be
included in the hibernation image. After hibernation apply the tags back
into the physical tag storage.

Signed-off-by: Steven Price <steven.price@arm.com>
---
 arch/arm64/kernel/hibernate.c | 116 ++++++++++++++++++++++++++++++++++
 1 file changed, 116 insertions(+)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 5b73e92c99e3..b89429778b5d 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -31,6 +31,7 @@
 #include <asm/kexec.h>
 #include <asm/memory.h>
 #include <asm/mmu_context.h>
+#include <asm/mte.h>
 #include <asm/pgalloc.h>
 #include <asm/pgtable.h>
 #include <asm/pgtable-hwdef.h>
@@ -277,6 +278,115 @@ static int create_safe_exec_page(void *src_start, size_t length,
 
 #define dcache_clean_range(start, end)	__flush_dcache_area(start, (end - start))
 
+#ifdef CONFIG_ARM64_MTE
+
+static DEFINE_XARRAY(mte_pages);
+
+static int save_tags(struct page *page, unsigned long pfn)
+{
+	void *tag_storage, *ret;
+
+	tag_storage = mte_allocate_tag_storage();
+	if (!tag_storage)
+		return -ENOMEM;
+
+	mte_save_page_tags(page_address(page), tag_storage);
+
+	ret = xa_store(&mte_pages, pfn, tag_storage, GFP_KERNEL);
+	if (WARN(xa_is_err(ret), "Failed to store MTE tags")) {
+		mte_free_tag_storage(tag_storage);
+		return xa_err(ret);
+	} else if (WARN(ret, "swsusp: %s: Duplicate entry", __func__)) {
+		mte_free_tag_storage(ret);
+	}
+
+	return 0;
+}
+
+static void swsusp_mte_free_storage(void)
+{
+	XA_STATE(xa_state, &mte_pages, 0);
+	void *tags;
+
+	xa_lock(&mte_pages);
+	xas_for_each(&xa_state, tags, ULONG_MAX) {
+		mte_free_tag_storage(tags);
+	}
+	xa_unlock(&mte_pages);
+
+	xa_destroy(&mte_pages);
+}
+
+static int swsusp_mte_save_tags(void)
+{
+	struct zone *zone;
+	unsigned long pfn, max_zone_pfn;
+	int ret = 0;
+	int n = 0;
+
+	if (!system_supports_mte())
+		return 0;
+
+	for_each_populated_zone(zone) {
+		max_zone_pfn = zone_end_pfn(zone);
+		for (pfn = zone->zone_start_pfn; pfn < max_zone_pfn; pfn++) {
+			struct page *page = pfn_to_online_page(pfn);
+
+			if (!page)
+				continue;
+
+			if (!test_bit(PG_mte_tagged, &page->flags))
+				continue;
+
+			ret = save_tags(page, pfn);
+			n++;
+
+			if (ret) {
+				swsusp_mte_free_storage();
+				goto out;
+			}
+		}
+	}
+
+	pr_info("Saved %d MTE pages\n", n);
+
+out:
+	return ret;
+}
+
+static void swsusp_mte_restore_tags(void)
+{
+	XA_STATE(xa_state, &mte_pages, 0);
+	int n = 0;
+	void *tags;
+
+	xa_lock(&mte_pages);
+	xas_for_each(&xa_state, tags, ULONG_MAX) {
+		unsigned long pfn = xa_state.xa_index;
+		struct page *page = pfn_to_online_page(pfn);
+
+		mte_restore_page_tags(page_address(page), tags);
+
+		mte_free_tag_storage(tags);
+		n++;
+	}
+	xa_unlock(&mte_pages);
+
+	pr_info("Restored %d MTE pages\n", n);
+
+	xa_destroy(&mte_pages);
+}
+#else
+static int swsusp_mte_save_tags(void)
+{
+	return 0;
+}
+
+static void swsusp_mte_restore_tags(void)
+{
+}
+#endif
+
 int swsusp_arch_suspend(void)
 {
 	int ret = 0;
@@ -294,6 +404,10 @@ int swsusp_arch_suspend(void)
 		/* make the crash dump kernel image visible/saveable */
 		crash_prepare_suspend();
 
+		ret = swsusp_mte_save_tags();
+		if (ret)
+			return ret;
+
 		sleep_cpu = smp_processor_id();
 		ret = swsusp_save();
 	} else {
@@ -307,6 +421,8 @@ int swsusp_arch_suspend(void)
 			dcache_clean_range(__hyp_text_start, __hyp_text_end);
 		}
 
+		swsusp_mte_restore_tags();
+
 		/* make the crash dump kernel image protected again */
 		crash_post_resume();
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
