Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1202CCFB8
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 10:59:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FJ04AibEFjt2wci8mvGS1GxLThvjn6JsWGqmyfSqe6A=; b=qAbNXWiBoOz9v2
	tganCGfuNu6vKSwSekAjqBqEcCCBwegkK+UiI4HIFStToM6SV/AzdPMaGZ4X+4+AHXRy66QSpf1P2
	M31bFfRlpHyKkcI5qfG7T0dSHeuX0T9mSEXRuH7X4KncnQIu9LyQvQyKj/UZxp1z2p7gV5ZbcMRG+
	VfK1tLZimH9Xd7C7qrFXOKN4ODvI+sRYoHVis7/loVpWFn6rxHRHz5b/U5u7nCs6IW8Ve/68UobIn
	4QQNIv/uDPrU5B9TkayF6MHVxpUz6+3t8aOhWbapDMxBjPZookjxFUisGuyqQPIy5MjHRMZ6a/cw0
	5HKRPetPi9KJElrp/HgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH2NX-0000mQ-GP; Sun, 06 Oct 2019 08:58:59 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH2MF-0008Bu-Tv
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 08:57:41 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2CB58C057EC0;
 Sun,  6 Oct 2019 08:57:39 +0000 (UTC)
Received: from t460s.redhat.com (ovpn-116-58.ams2.redhat.com [10.36.116.58])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 60EC55EE1D;
 Sun,  6 Oct 2019 08:57:36 +0000 (UTC)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v6 08/10] mm/memory_hotplug: Don't check for "all holes" in
 shrink_zone_span()
Date: Sun,  6 Oct 2019 10:56:44 +0200
Message-Id: <20191006085646.5768-9-david@redhat.com>
In-Reply-To: <20191006085646.5768-1-david@redhat.com>
References: <20191006085646.5768-1-david@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Sun, 06 Oct 2019 08:57:39 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_015740_021005_6879CCAE 
X-CRM114-Status: GOOD (  17.80  )
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

If we have holes, the holes will automatically get detected and removed
once we remove the next bigger/smaller section. The extra checks can
go.

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Oscar Salvador <osalvador@suse.de>
Cc: Michal Hocko <mhocko@suse.com>
Cc: David Hildenbrand <david@redhat.com>
Cc: Pavel Tatashin <pasha.tatashin@soleen.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Wei Yang <richardw.yang@linux.intel.com>
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 mm/memory_hotplug.c | 34 +++++++---------------------------
 1 file changed, 7 insertions(+), 27 deletions(-)

diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
index f294918f7211..8dafa1ba8d9f 100644
--- a/mm/memory_hotplug.c
+++ b/mm/memory_hotplug.c
@@ -393,6 +393,9 @@ static void shrink_zone_span(struct zone *zone, unsigned long start_pfn,
 		if (pfn) {
 			zone->zone_start_pfn = pfn;
 			zone->spanned_pages = zone_end_pfn - pfn;
+		} else {
+			zone->zone_start_pfn = 0;
+			zone->spanned_pages = 0;
 		}
 	} else if (zone_end_pfn == end_pfn) {
 		/*
@@ -405,34 +408,11 @@ static void shrink_zone_span(struct zone *zone, unsigned long start_pfn,
 					       start_pfn);
 		if (pfn)
 			zone->spanned_pages = pfn - zone_start_pfn + 1;
+		else {
+			zone->zone_start_pfn = 0;
+			zone->spanned_pages = 0;
+		}
 	}
-
-	/*
-	 * The section is not biggest or smallest mem_section in the zone, it
-	 * only creates a hole in the zone. So in this case, we need not
-	 * change the zone. But perhaps, the zone has only hole data. Thus
-	 * it check the zone has only hole or not.
-	 */
-	pfn = zone_start_pfn;
-	for (; pfn < zone_end_pfn; pfn += PAGES_PER_SUBSECTION) {
-		if (unlikely(!pfn_to_online_page(pfn)))
-			continue;
-
-		if (page_zone(pfn_to_page(pfn)) != zone)
-			continue;
-
-		/* Skip range to be removed */
-		if (pfn >= start_pfn && pfn < end_pfn)
-			continue;
-
-		/* If we find valid section, we have nothing to do */
-		zone_span_writeunlock(zone);
-		return;
-	}
-
-	/* The zone has no valid section */
-	zone->zone_start_pfn = 0;
-	zone->spanned_pages = 0;
 	zone_span_writeunlock(zone);
 }
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
