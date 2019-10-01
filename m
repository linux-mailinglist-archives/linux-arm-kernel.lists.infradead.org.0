Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F902C37DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 16:42:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MeJTcYsFd5i6+Z5Tl1PAMYNi+vomdRxf+vhCAwhg30I=; b=ZE3t2Dw887MITm
	pPsDFkCZy5pSY+rUIuaT5uEATaAFGSp3S9WP+/YluxUvZuf7euHYmyi/HMjQtGCoSI1sx5+MqeIqR
	1qetckhvk8MQMAFREH9JQgpCzTQony3reepRWW4YP7xtQgeRGCj+7zNWtMGUEoCMHQLOAzmwNVSmx
	L1nj7MPIxWyeie1Mil3I/ka4Q6zFL1BzvDQIs68TPi/W3rJhdKxq5HZGB7wzTavPpnquT+GHd2Xtu
	U3LSf0LzDSGL5KM05cf3c03G7337cq+rKeqBbT203wMYO4q9bhQ4SCsl7z0Tu/PlWOMXjP19E+uKt
	9UBs4JZ+bm4jpE6laRZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFJMC-0003NY-Gm; Tue, 01 Oct 2019 14:42:28 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFJLJ-0002eW-88
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 14:41:34 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B529210CC20A;
 Tue,  1 Oct 2019 14:41:32 +0000 (UTC)
Received: from t460s.redhat.com (ovpn-116-54.ams2.redhat.com [10.36.116.54])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1A8275D9C9;
 Tue,  1 Oct 2019 14:41:29 +0000 (UTC)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v5 07/10] mm/memory_hotplug: We always have a zone in
 find_(smallest|biggest)_section_pfn
Date: Tue,  1 Oct 2019 16:40:08 +0200
Message-Id: <20191001144011.3801-8-david@redhat.com>
In-Reply-To: <20191001144011.3801-1-david@redhat.com>
References: <20191001144011.3801-1-david@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.65]); Tue, 01 Oct 2019 14:41:32 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_074133_354556_32104829 
X-CRM114-Status: GOOD (  14.05  )
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
 linux-sh@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 linux-mm@kvack.org, Wei Yang <richardw.yang@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With shrink_pgdat_span() out of the way, we now always have a valid
zone.

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Oscar Salvador <osalvador@suse.de>
Cc: David Hildenbrand <david@redhat.com>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Pavel Tatashin <pasha.tatashin@soleen.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Wei Yang <richardw.yang@linux.intel.com>
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 mm/memory_hotplug.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
index 640309236a58..273833612774 100644
--- a/mm/memory_hotplug.c
+++ b/mm/memory_hotplug.c
@@ -337,7 +337,7 @@ static unsigned long find_smallest_section_pfn(int nid, struct zone *zone,
 		if (unlikely(pfn_to_nid(start_pfn) != nid))
 			continue;
 
-		if (zone && zone != page_zone(pfn_to_page(start_pfn)))
+		if (zone != page_zone(pfn_to_page(start_pfn)))
 			continue;
 
 		return start_pfn;
@@ -362,7 +362,7 @@ static unsigned long find_biggest_section_pfn(int nid, struct zone *zone,
 		if (unlikely(pfn_to_nid(pfn) != nid))
 			continue;
 
-		if (zone && zone != page_zone(pfn_to_page(pfn)))
+		if (zone != page_zone(pfn_to_page(pfn)))
 			continue;
 
 		return pfn;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
