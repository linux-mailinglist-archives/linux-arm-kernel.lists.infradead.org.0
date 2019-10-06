Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D23CCF97
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 10:57:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kwOqnpkvnTWV0wBLqw0kKXr2BpfwFzs9uNrAtqdbA9U=; b=V5wS5CpCNJf8Ja
	J98Q0NP9Wr7P1kzLEUN+H3Yn1lk/7W355KAgMui5SsL4/EynFnEOVb3wFRyfXtqDVVFyuaTUg77A8
	OmZq0NELQJyzBqryqavyROkY7jDqDPDdjYPendZcLd3NJYMYh3O14Fov9/QtILw3irkidnjCZgMdQ
	Jo/+0ApXaehkAmNAaRr+sVN+ZDxyInBpp9MqbXzUlif2DzVI86zzuFyqo7kFwGfu1n8fNUl+WZ1Lo
	uw5ZspYmstRMsG27NXNoGm6hWC5WIVO1fbxUTmjqQn71opybuL/ci1soI4j7lamm7CFnX/dd/gQwt
	pY22KTRY5sedaACk4nZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH2Lr-0007fy-VC; Sun, 06 Oct 2019 08:57:15 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH2Lh-0007fK-9A
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 08:57:06 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D1E313082A6C;
 Sun,  6 Oct 2019 08:57:04 +0000 (UTC)
Received: from t460s.redhat.com (ovpn-116-58.ams2.redhat.com [10.36.116.58])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 090595B681;
 Sun,  6 Oct 2019 08:57:01 +0000 (UTC)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v6 01/10] mm/memunmap: Don't access uninitialized memmap in
 memunmap_pages()
Date: Sun,  6 Oct 2019 10:56:37 +0200
Message-Id: <20191006085646.5768-2-david@redhat.com>
In-Reply-To: <20191006085646.5768-1-david@redhat.com>
References: <20191006085646.5768-1-david@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Sun, 06 Oct 2019 08:57:05 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_015705_358709_A51D6185 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-s390@vger.kernel.org, linux-ia64@vger.kernel.org,
 Ira Weiny <ira.weiny@intel.com>, linux-sh@vger.kernel.org,
 Jason Gunthorpe <jgg@ziepe.ca>,
 "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>, x86@kernel.org,
 David Hildenbrand <david@redhat.com>, linux-mm@kvack.org,
 Logan Gunthorpe <logang@deltatee.com>, Dan Williams <dan.j.williams@intel.com>,
 linuxppc-dev@lists.ozlabs.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>

With an altmap, the memmap falling into the reserved altmap space are
not initialized and, therefore, contain a garbage NID and a garbage
zone. Make sure to read the NID/zone from a memmap that was initialzed.

This fixes a kernel crash that is observed when destroying a namespace:

[   81.356173] kernel BUG at include/linux/mm.h:1107!
cpu 0x1: Vector: 700 (Program Check) at [c000000274087890]
    pc: c0000000004b9728: memunmap_pages+0x238/0x340
    lr: c0000000004b9724: memunmap_pages+0x234/0x340
...
    pid   = 3669, comm = ndctl
kernel BUG at include/linux/mm.h:1107!
[c000000274087ba0] c0000000009e3500 devm_action_release+0x30/0x50
[c000000274087bc0] c0000000009e4758 release_nodes+0x268/0x2d0
[c000000274087c30] c0000000009dd144 device_release_driver_internal+0x174/0x240
[c000000274087c70] c0000000009d9dfc unbind_store+0x13c/0x190
[c000000274087cb0] c0000000009d8a24 drv_attr_store+0x44/0x60
[c000000274087cd0] c0000000005a7470 sysfs_kf_write+0x70/0xa0
[c000000274087d10] c0000000005a5cac kernfs_fop_write+0x1ac/0x290
[c000000274087d60] c0000000004be45c __vfs_write+0x3c/0x70
[c000000274087d80] c0000000004c26e4 vfs_write+0xe4/0x200
[c000000274087dd0] c0000000004c2a6c ksys_write+0x7c/0x140
[c000000274087e20] c00000000000bbd0 system_call+0x5c/0x68

Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Logan Gunthorpe <logang@deltatee.com>
Cc: Ira Weiny <ira.weiny@intel.com>
Signed-off-by: Aneesh Kumar K.V <aneesh.kumar@linux.ibm.com>
[ minimze code changes, rephrase description ]
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 mm/memremap.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/mm/memremap.c b/mm/memremap.c
index 557e53c6fb46..8c2fb44c3b4d 100644
--- a/mm/memremap.c
+++ b/mm/memremap.c
@@ -123,6 +123,7 @@ static void dev_pagemap_cleanup(struct dev_pagemap *pgmap)
 void memunmap_pages(struct dev_pagemap *pgmap)
 {
 	struct resource *res = &pgmap->res;
+	struct page *first_page;
 	unsigned long pfn;
 	int nid;
 
@@ -131,14 +132,16 @@ void memunmap_pages(struct dev_pagemap *pgmap)
 		put_page(pfn_to_page(pfn));
 	dev_pagemap_cleanup(pgmap);
 
+	/* make sure to access a memmap that was actually initialized */
+	first_page = pfn_to_page(pfn_first(pgmap));
+
 	/* pages are dead and unused, undo the arch mapping */
-	nid = page_to_nid(pfn_to_page(PHYS_PFN(res->start)));
+	nid = page_to_nid(first_page);
 
 	mem_hotplug_begin();
 	if (pgmap->type == MEMORY_DEVICE_PRIVATE) {
-		pfn = PHYS_PFN(res->start);
-		__remove_pages(page_zone(pfn_to_page(pfn)), pfn,
-				 PHYS_PFN(resource_size(res)), NULL);
+		__remove_pages(page_zone(first_page), PHYS_PFN(res->start),
+			       PHYS_PFN(resource_size(res)), NULL);
 	} else {
 		arch_remove_memory(nid, res->start, resource_size(res),
 				pgmap_altmap(pgmap));
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
