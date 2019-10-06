Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA36ACCFBB
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 10:59:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ySIAAUdFwHB4/tzjUcKrmLYC2wdGkMml8yh9lboeOmw=; b=du0itjmBsUpbeS
	ZqARq9LbfeaPbzirN+/HjrIMq+mmnlG+8vzR7Pi21yvjhE80P54/969Rzlz2Xdo+g/QLEzbA2yyp4
	HreLCTcLayQXHrs0OhrnUSeks69Kdvi11ePwjPLBaMZSUdlqWHyOe6UMMFRch9uD7pmIRUrL296HY
	g+FsbUdHGvqhIOY2fHNt8OEK7Fa4hSl+Md/epKB/nDS+OrN36tZX4EjN2voJyusfNF3IYnrgA7P8/
	m+iPt0CEnj6mUFOrmsWoWxShBcodM3Ew58RuMMjSCC8h5QyQXzH1Zp2W4fcK6iH9TKZUdIkUb/97t
	JzjM4llleV1Sme7q16Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH2O6-0001E6-DE; Sun, 06 Oct 2019 08:59:34 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH2MM-0008IS-3b
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 08:57:47 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 75465368CF;
 Sun,  6 Oct 2019 08:57:45 +0000 (UTC)
Received: from t460s.redhat.com (ovpn-116-58.ams2.redhat.com [10.36.116.58])
 by smtp.corp.redhat.com (Postfix) with ESMTP id ABE055EE1D;
 Sun,  6 Oct 2019 08:57:42 +0000 (UTC)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v6 10/10] mm/memory_hotplug: Cleanup __remove_pages()
Date: Sun,  6 Oct 2019 10:56:46 +0200
Message-Id: <20191006085646.5768-11-david@redhat.com>
In-Reply-To: <20191006085646.5768-1-david@redhat.com>
References: <20191006085646.5768-1-david@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Sun, 06 Oct 2019 08:57:45 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_015746_208538_E36EAB34 
X-CRM114-Status: GOOD (  14.54  )
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
Cc: linux-s390@vger.kernel.org, Michal Hocko <mhocko@suse.com>,
 linux-ia64@vger.kernel.org, Pavel Tatashin <pasha.tatashin@soleen.com>,
 linux-sh@vger.kernel.org, x86@kernel.org, David Hildenbrand <david@redhat.com>,
 linux-mm@kvack.org, Wei Yang <richardw.yang@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Let's drop the basically unused section stuff and simplify.

Also, let's use a shorter variant to calculate the number of pages to
the next section boundary.

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Oscar Salvador <osalvador@suse.de>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Pavel Tatashin <pasha.tatashin@soleen.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Wei Yang <richardw.yang@linux.intel.com>
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 mm/memory_hotplug.c | 17 ++++++-----------
 1 file changed, 6 insertions(+), 11 deletions(-)

diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
index 843481bd507d..2275240cfa10 100644
--- a/mm/memory_hotplug.c
+++ b/mm/memory_hotplug.c
@@ -490,25 +490,20 @@ static void __remove_section(unsigned long pfn, unsigned long nr_pages,
 void __remove_pages(unsigned long pfn, unsigned long nr_pages,
 		    struct vmem_altmap *altmap)
 {
+	const unsigned long end_pfn = pfn + nr_pages;
+	unsigned long cur_nr_pages;
 	unsigned long map_offset = 0;
-	unsigned long nr, start_sec, end_sec;
 
 	map_offset = vmem_altmap_offset(altmap);
 
 	if (check_pfn_span(pfn, nr_pages, "remove"))
 		return;
 
-	start_sec = pfn_to_section_nr(pfn);
-	end_sec = pfn_to_section_nr(pfn + nr_pages - 1);
-	for (nr = start_sec; nr <= end_sec; nr++) {
-		unsigned long pfns;
-
+	for (; pfn < end_pfn; pfn += cur_nr_pages) {
 		cond_resched();
-		pfns = min(nr_pages, PAGES_PER_SECTION
-				- (pfn & ~PAGE_SECTION_MASK));
-		__remove_section(pfn, pfns, map_offset, altmap);
-		pfn += pfns;
-		nr_pages -= pfns;
+		/* Select all remaining pages up to the next section boundary */
+		cur_nr_pages = min(end_pfn - pfn, -(pfn | PAGE_SECTION_MASK));
+		__remove_section(pfn, cur_nr_pages, map_offset, altmap);
 		map_offset = 0;
 	}
 }
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
