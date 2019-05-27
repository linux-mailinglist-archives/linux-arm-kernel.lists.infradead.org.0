Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E82492B2E7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 13:13:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hsk2OOYq4c4lvIwe9pbcS/ioMoGeMUlGVoFAKA3dux0=; b=Oj8GPNVcvdyv/0
	+aBw4GpEL2sOK1ECzJmswZYLhkkGv5dJsht8+QSO03BFq4KtF4W++9/kOE0B1hXF+iM1+oeQ7PNQZ
	1V5kQazmca3qUHe6RQojZ1TlINP+40kHnPpQhP4B0RCWHTBGvTccgtZEx/8XiC0OlojdxYJO4j6WE
	KyyQQrS9XoF+npbdr+C6Okq+XdN5pI9Zs46MsZwuhEQViIIhtg+RnvFa+t/C5sDvrk852gN1Q59sZ
	ve7STTXKWr8Rrf1g0gazbwpkT7sFtSvMfiSNv6pdlbCu4Uzbjta+l5IzmKjtfow+sKlY4c0hNF2w6
	uu1LTwnjDwzczHFsxKYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVDZ8-00007Y-GG; Mon, 27 May 2019 11:13:18 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVDYK-0007r6-8W
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 11:12:43 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AADC387621;
 Mon, 27 May 2019 11:12:27 +0000 (UTC)
Received: from t460s.redhat.com (ovpn-117-89.ams2.redhat.com [10.36.117.89])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B59CC2AA83;
 Mon, 27 May 2019 11:12:23 +0000 (UTC)
From: David Hildenbrand <david@redhat.com>
To: linux-mm@kvack.org
Subject: [PATCH v3 04/11] arm64/mm: Add temporary arch_remove_memory()
 implementation
Date: Mon, 27 May 2019 13:11:45 +0200
Message-Id: <20190527111152.16324-5-david@redhat.com>
In-Reply-To: <20190527111152.16324-1-david@redhat.com>
References: <20190527111152.16324-1-david@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Mon, 27 May 2019 11:12:27 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_041228_635748_D45ED353 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, linux-s390@vger.kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-ia64@vger.kernel.org,
 Yu Zhao <yuzhao@google.com>, Anshuman Khandual <anshuman.khandual@arm.com>,
 linux-sh@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 David Hildenbrand <david@redhat.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Wei Yang <richard.weiyang@gmail.com>,
 Jun Yao <yaojun8558363@gmail.com>, Chintan Pandya <cpandya@codeaurora.org>,
 Igor Mammedov <imammedo@redhat.com>, akpm@linux-foundation.org,
 Mike Rapoport <rppt@linux.ibm.com>, linuxppc-dev@lists.ozlabs.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A proper arch_remove_memory() implementation is on its way, which also
cleanly removes page tables in arch_add_memory() in case something goes
wrong.

As we want to use arch_remove_memory() in case something goes wrong
during memory hotplug after arch_add_memory() finished, let's add
a temporary hack that is sufficient enough until we get a proper
implementation that cleans up page table entries.

We will remove CONFIG_MEMORY_HOTREMOVE around this code in follow up
patches.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Chintan Pandya <cpandya@codeaurora.org>
Cc: Mike Rapoport <rppt@linux.ibm.com>
Cc: Jun Yao <yaojun8558363@gmail.com>
Cc: Yu Zhao <yuzhao@google.com>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Anshuman Khandual <anshuman.khandual@arm.com>
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 arch/arm64/mm/mmu.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index a1bfc4413982..e569a543c384 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -1084,4 +1084,23 @@ int arch_add_memory(int nid, u64 start, u64 size,
 	return __add_pages(nid, start >> PAGE_SHIFT, size >> PAGE_SHIFT,
 			   restrictions);
 }
+#ifdef CONFIG_MEMORY_HOTREMOVE
+void arch_remove_memory(int nid, u64 start, u64 size,
+			struct vmem_altmap *altmap)
+{
+	unsigned long start_pfn = start >> PAGE_SHIFT;
+	unsigned long nr_pages = size >> PAGE_SHIFT;
+	struct zone *zone;
+
+	/*
+	 * FIXME: Cleanup page tables (also in arch_add_memory() in case
+	 * adding fails). Until then, this function should only be used
+	 * during memory hotplug (adding memory), not for memory
+	 * unplug. ARCH_ENABLE_MEMORY_HOTREMOVE must not be
+	 * unlocked yet.
+	 */
+	zone = page_zone(pfn_to_page(start_pfn));
+	__remove_pages(zone, start_pfn, nr_pages, altmap);
+}
+#endif
 #endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
