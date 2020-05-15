Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D48C1D5771
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 19:19:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6LUfFsQQXdTjVANPgz0+5Bb81Wg0nRQOLpl8hxxuvDw=; b=fmLRzMWjo1YqFe
	dJNcWivbLVCNQLWceej4rp5djayHJQ+mg+CEm3pG5Npw+ypixT6w0+ML7aN5lLPv/XvK3oOoSbOx1
	Rl3mz1AH7oHo1TqLSPgYXNxkeRArYWfK8WzHMaBCjLQbPAFhrs8+/cRqDD0ENoKopiDdBY3wqU3Iq
	5SJP42Z/Mq2dkvCG1ciq5OiLCWKrSBjlbTd91ZLFNx5NKn5LICgvdCcUbkNkI/aN2JtjsI/iQc0wY
	VH6FvbNtTlJsLiYJpH4CfPt6fJqZDTWM3JNSKR49gigxwC8hCrgxU6iNuyeIGG7GxYIQUr63fwzQc
	rvF75FXBF8VHC41zgsGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZdzk-0004pc-Gx; Fri, 15 May 2020 17:19:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdwu-00025U-GO
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 17:16:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 512231042;
 Fri, 15 May 2020 10:16:40 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A9C103F305;
 Fri, 15 May 2020 10:16:38 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 09/26] arm64: mte: Tags-aware aware memcmp_pages()
 implementation
Date: Fri, 15 May 2020 18:15:55 +0100
Message-Id: <20200515171612.1020-10-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200515171612.1020-1-catalin.marinas@arm.com>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_101640_606718_B87652DA 
X-CRM114-Status: GOOD (  15.10  )
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
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave P Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the Memory Tagging Extension is enabled, two pages are identical
only if both their data and tags are identical.

Make the generic memcmp_pages() a __weak function and add an
arm64-specific implementation which returns non-zero if any of the two
pages contain valid MTE tags (PG_mte_tagged set). There isn't much
benefit in comparing the tags of two pages since these are normally used
for heap allocations and likely to differ anyway.

Co-developed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
---

Notes:
    v4:
    - Remove page tag comparison. This is not very useful to detect
      identical pages as long as set_pte_at() can zero the tags on a page
      without copy-on-write if mapped with PROT_MTE. This can be improved
      if a real case appears but it's unlikely for heap pages to be
      identical across multiple processes.
    - Move the memcmp_pages() function to mte.c.

 arch/arm64/kernel/mte.c | 26 ++++++++++++++++++++++++++
 mm/util.c               |  2 +-
 2 files changed, 27 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/mte.c b/arch/arm64/kernel/mte.c
index 65a2f8490d18..da2d70178a4b 100644
--- a/arch/arm64/kernel/mte.c
+++ b/arch/arm64/kernel/mte.c
@@ -5,6 +5,7 @@
 
 #include <linux/bitops.h>
 #include <linux/mm.h>
+#include <linux/string.h>
 #include <linux/thread_info.h>
 
 #include <asm/cpufeature.h>
@@ -23,6 +24,31 @@ void mte_sync_tags(pte_t *ptep, pte_t pte)
 	mte_clear_page_tags(page_address(page), page_size(page));
 }
 
+int memcmp_pages(struct page *page1, struct page *page2)
+{
+	char *addr1, *addr2;
+	int ret;
+
+	addr1 = page_address(page1);
+	addr2 = page_address(page2);
+	ret = memcmp(addr1, addr2, PAGE_SIZE);
+
+	if (!system_supports_mte() || ret)
+		return ret;
+
+	/*
+	 * If the page content is identical but at least one of the pages is
+	 * tagged, return non-zero to avoid KSM merging. If only one of the
+	 * pages is tagged, set_pte_at() may zero or change the tags of the
+	 * other page via mte_sync_tags().
+	 */
+	if (test_bit(PG_mte_tagged, &page1->flags) ||
+	    test_bit(PG_mte_tagged, &page2->flags))
+		return addr1 != addr2;
+
+	return ret;
+}
+
 void flush_mte_state(void)
 {
 	if (!system_supports_mte())
diff --git a/mm/util.c b/mm/util.c
index 988d11e6c17c..662fb3da6d01 100644
--- a/mm/util.c
+++ b/mm/util.c
@@ -899,7 +899,7 @@ int get_cmdline(struct task_struct *task, char *buffer, int buflen)
 	return res;
 }
 
-int memcmp_pages(struct page *page1, struct page *page2)
+int __weak memcmp_pages(struct page *page1, struct page *page2)
 {
 	char *addr1, *addr2;
 	int ret;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
