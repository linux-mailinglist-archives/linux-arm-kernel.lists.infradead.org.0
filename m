Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA261D57AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 19:24:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JqSRqZax0t83/RoNnL+fonX5lVU3NLu2SeZGaTmXj44=; b=vA3cUmL0bvIZaf
	Cwi2/rSheuhl54ijnpbxbjEh8qBInn9WkKkOW4KOoAt4fptqM9++UVBjB9siVx9XQlYmPEMCtKdO8
	+bJ0i1x/s6GptPY5Qa3yImtgGJ2rmNUudVAKJr/ALbGGJEFasiHGCBLPBWw5hc5mQHc72WOb6BLs4
	A1Z/DraQVR4cfv/ztKYY1U7y+UQf4gLyDCaLR2w7Yj/rMKe/vYoHO/EDRkVN+1ujU4BazukHyZV06
	O1/fyBw/CzsW01kMB2eMV41650eFcmiURHkx8I0hAmoNjeOoGgGRzeAg4zAcWqNNjDRsh6BcGv9PH
	yTmnhK0OaCbjoAYW06Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZe4B-0002ff-Nv; Fri, 15 May 2020 17:24:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdxK-0002jM-Qn
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 17:17:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C1FD71042;
 Fri, 15 May 2020 10:17:05 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id F119A3F305;
 Fri, 15 May 2020 10:17:03 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 22/26] arm64: mte: Save tags when hibernating
Date: Fri, 15 May 2020 18:16:08 +0100
Message-Id: <20200515171612.1020-23-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200515171612.1020-1-catalin.marinas@arm.com>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_101707_014046_F1C4A880 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Steven Price <steven.price@arm.com>,
 Peter Collingbourne <pcc@google.com>, linux-mm@kvack.org,
 James Morse <james.morse@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave P Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Steven Price <steven.price@arm.com>

When hibernating the contents of all pages in the system are written to
disk, however the MTE tags are not visible to the generic hibernation
code. So just before the hibernation image is created copy the tags out
of the physical tag storage into standard memory so they will be
included in the hibernation image. After hibernation apply the tags back
into the physical tag storage.

Signed-off-by: Steven Price <steven.price@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/hibernate.c | 118 ++++++++++++++++++++++++++++++++++
 1 file changed, 118 insertions(+)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 5b73e92c99e3..d042ea325417 100644
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
@@ -277,6 +278,117 @@ static int create_safe_exec_page(void *src_start, size_t length,
 
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
+			if (ret) {
+				swsusp_mte_free_storage();
+				goto out;
+			}
+
+			n++;
+		}
+	}
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
+
+#else	/* CONFIG_ARM64_MTE */
+
+static int swsusp_mte_save_tags(void)
+{
+	return 0;
+}
+
+static void swsusp_mte_restore_tags(void)
+{
+}
+
+#endif	/* CONFIG_ARM64_MTE */
+
 int swsusp_arch_suspend(void)
 {
 	int ret = 0;
@@ -294,6 +406,10 @@ int swsusp_arch_suspend(void)
 		/* make the crash dump kernel image visible/saveable */
 		crash_prepare_suspend();
 
+		ret = swsusp_mte_save_tags();
+		if (ret)
+			return ret;
+
 		sleep_cpu = smp_processor_id();
 		ret = swsusp_save();
 	} else {
@@ -307,6 +423,8 @@ int swsusp_arch_suspend(void)
 			dcache_clean_range(__hyp_text_start, __hyp_text_end);
 		}
 
+		swsusp_mte_restore_tags();
+
 		/* make the crash dump kernel image protected again */
 		crash_post_resume();
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
