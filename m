Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4AEBAE62A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 10:59:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mgjB5ksR045YOHXRBO1pHmzzCPWoFizPqb3AlvAi21o=; b=W5qpmIqVM9/9tG
	2+Rj4/R6/am3vG3qciMWXbcSssQd5vl/GdsH4wOLUjNffTC0pOZXmwkck7/5e9iafMZMZr6TaOQwG
	G7fnfun3c7OL4NgM9pPDnvznxTb8+r/kW9NAk1+Gu2ajlUdujJb4b13MuREH5K14aL15n6U6TV2YT
	aFfviwXZ8u1vBP4RCgzx/fKrtLUYYFa4vWT+Ffo4sa00JkJi+kl8Z/bRWptOM0N2alc4mHmGt8tpm
	+ZVzs9Jfr5NvVaepq0/kqPR5GIha4fczz6/QRHOslSGkCHIGvJ5dhosSxTv9iKJr1jNWo8Yw1+OOA
	i7lO8lLRezTs8j6FkHlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7bzt-0000gV-8l; Tue, 10 Sep 2019 08:59:37 +0000
Received: from mail01.preh.com ([80.149.130.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7bze-0000Wo-Dh
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 08:59:24 +0000
From: Hubert Ralf <Ralf.Hubert@preh.de>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] aarch64/mm: speedup memory initialisation
Thread-Topic: [PATCH] aarch64/mm: speedup memory initialisation
Thread-Index: AQHVZ7YAP7sn04V7oEKvWrPakQZn3w==
Date: Tue, 10 Sep 2019 08:59:07 +0000
Message-ID: <20190910085822.27072-1-ralf.hubert@preh.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-exclaimer-md-config: 142fe46c-4d13-4ac1-9970-1f36f118897a
x-tm-snts-smtp: 29A4DFD2463991CF26566DF8F9750910A5F115C5AF61C40ABB217900848476AE2000:8
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; d=preh.de; s=key1;
 c=relaxed/relaxed; 
 h=from:to:cc:subject:date:message-id:content-type:mime-version;
 bh=Wbh/ZDD+k16MN3jriSAmSRjpZIsvAL2B86WzIuGKZCg=;
 b=etlO9jET/5k+Jl8l9mY5AIlGWfPaWTXgfhmDB9WPJRuUAPPYIZYupUy85UuSf9WP9hyCwI9U+j5D
 AEYkU0PQ25enEVwqnX9Hb3/gLbLU7iaJ0vc9zubAGeoS507P/3d6ZiaeECEs9+n6OOWHXSyTR2Ye
 vTUty3dBSZWUI+FJkS5oBKopSN+ZNBRWBJ5kY7NwmOmmv8AvG8fqUtKhfVnqg63K84M48/eE4rC0
 mvAa58mPiNdO+qBgJUaePcyIhLxA7F4SGt88vSrIqEFgxWQFJ7oYK5epMoIGcT+pzNX7n15ZaAjs
 Ja4eUR0LkdKsGXW3FIiLlq9PTl4pBMWtPdEevA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_015922_804300_DCF409B1 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.149.130.22 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Hubert Ralf <Ralf.Hubert@preh.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On ARM64 memmap_init_zone is used during bootmem_init, which iterates over
all pages in the memory starting at the lowest address until the highest
address is reached. On arm64 this ends up in searching a memmory region
containing for each single page between lowest and highest available
physicall address.

Having a sparse memory system there may be some big holes in the
memory map. For each page in this holes a lookup is done, which is
implemented as a binary search on the available memory blocks.

Adding a memmap_init for aarch64 to do the init only for the available
memory areas reduces the time needed for initialising memory on startup.
On a Renesas R-CAR M3 based system with a total hole of 20GB bootmem_init
execution time is reduced from 378ms to 84ms.

Signed-off-by: Ralf Hubert <ralf.hubert@preh.de>
---
 arch/arm64/include/asm/pgtable.h |  7 +++++++
 arch/arm64/mm/init.c             | 24 ++++++++++++++++++++++++
 2 files changed, 31 insertions(+)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index e09760ece844..8c6eefc08b0b 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -298,6 +298,13 @@ static inline int pte_same(pte_t pte_a, pte_t pte_b)
 	return (lhs == rhs);
 }
 
+#ifdef CONFIG_SPARSEMEM
+/* arch mem_map init routine is needed due to holes in a memmap */
+#   define __HAVE_ARCH_MEMMAP_INIT
+	void memmap_init(unsigned long size, int nid, unsigned long zone,
+			 unsigned long start_pfn);
+#endif /* CONFIG_SPARSEMEM */
+
 /*
  * Huge pte definitions.
  */
diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index f3c795278def..206b28310872 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -250,6 +250,30 @@ int pfn_valid(unsigned long pfn)
 }
 EXPORT_SYMBOL(pfn_valid);
 
+#ifdef CONFIG_SPARSEMEM
+void __meminit
+memmap_init(unsigned long size, int nid, unsigned long zone,
+	    unsigned long start_pfn)
+{
+	struct memblock_region *reg;
+
+	for_each_memblock(memory, reg) {
+		unsigned long start = memblock_region_memory_base_pfn(reg);
+		unsigned long end = memblock_region_memory_end_pfn(reg);
+
+		if (start < start_pfn)
+			start = start_pfn;
+		if (end > start_pfn + size)
+			end = start_pfn + size;
+
+		if (start < end) {
+			memmap_init_zone(end - start, nid, zone, start,
+					 MEMMAP_EARLY, NULL);
+		}
+	}
+}
+#endif /* CONFIG_SPARSEMEM */
+
 static phys_addr_t memory_limit = PHYS_ADDR_MAX;
 
 /*
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
