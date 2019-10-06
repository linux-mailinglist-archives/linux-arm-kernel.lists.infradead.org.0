Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 765FACCFB5
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 10:58:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iCt87D+qwKt5KX7n1AI6294r44skOOSHkN+kpHFHr9Q=; b=awrIhnqV7AiVMT
	fktDd0LIYaAmObZAm2SvB7E5f8F2FiDgeg7I5UF/Dxm9owhOh57beEhXSfqA8OFZbF8hJ/nnQnZNC
	NoV0dZ50Asax3RaNNbwhiNIrEtuM/x49xL7MQzeSi8lephYhecSDJ8yJNC2sHYLV9nji8ijzWEPwv
	w23QT8cRGbKEazV3LrE5MpTYFwhAkXhAk7okUMiZqRpx1foT1EzIwJ78aLHChDe2CWDAZHQaycttR
	BRGGpLDEarAgt6E8RP4hGAZpUhEMz+79uYNLfneiXsXSK4ia01C27ctYqOv/3iUw7KnBtMqdnD9Th
	bHq7GgSjXz+LzHj/ciWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH2Mi-0008SL-TW; Sun, 06 Oct 2019 08:58:08 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH2Lu-0007r7-CQ
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 08:57:20 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D72C6A44ADD;
 Sun,  6 Oct 2019 08:57:17 +0000 (UTC)
Received: from t460s.redhat.com (ovpn-116-58.ams2.redhat.com [10.36.116.58])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1B4E45B69A;
 Sun,  6 Oct 2019 08:57:14 +0000 (UTC)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v6 04/10] mm/memory_hotplug: Don't access uninitialized
 memmaps in shrink_zone_span()
Date: Sun,  6 Oct 2019 10:56:40 +0200
Message-Id: <20191006085646.5768-5-david@redhat.com>
In-Reply-To: <20191006085646.5768-1-david@redhat.com>
References: <20191006085646.5768-1-david@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.68]); Sun, 06 Oct 2019 08:57:18 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_015718_511373_8FCB1A20 
X-CRM114-Status: GOOD (  17.44  )
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
 linux-sh@vger.kernel.org, "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 x86@kernel.org, David Hildenbrand <david@redhat.com>, linux-mm@kvack.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Let's limit shrinking to !ZONE_DEVICE so we can fix the current code. We
should never try to touch the memmap of offline sections where we could
have uninitialized memmaps and could trigger BUGs when calling
page_to_nid() on poisoned pages.

There is no reliable way to distinguish an uninitialized memmap from an
initialized memmap that belongs to ZONE_DEVICE, as we don't have
anything like SECTION_IS_ONLINE we can use similar to
pfn_to_online_section() for !ZONE_DEVICE memory. E.g.,
set_zone_contiguous() similarly relies on pfn_to_online_section() and
will therefore never set a ZONE_DEVICE zone consecutive. Stopping to
shrink the ZONE_DEVICE therefore results in no observable changes,
besides /proc/zoneinfo indicating different boundaries - something we
can totally live with.

Before commit d0dc12e86b31 ("mm/memory_hotplug: optimize memory
hotplug"), the memmap was initialized with 0 and the node with the
right value. So the zone might be wrong but not garbage. After that
commit, both the zone and the node will be garbage when touching
uninitialized memmaps.

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Oscar Salvador <osalvador@suse.de>
Cc: David Hildenbrand <david@redhat.com>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Pavel Tatashin <pasha.tatashin@soleen.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Fixes: d0dc12e86b31 ("mm/memory_hotplug: optimize memory hotplug")
Reported-by: Aneesh Kumar K.V <aneesh.kumar@linux.ibm.com>
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 mm/memory_hotplug.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
index 86b4dc18e831..f96608d24f6a 100644
--- a/mm/memory_hotplug.c
+++ b/mm/memory_hotplug.c
@@ -331,7 +331,7 @@ static unsigned long find_smallest_section_pfn(int nid, struct zone *zone,
 				     unsigned long end_pfn)
 {
 	for (; start_pfn < end_pfn; start_pfn += PAGES_PER_SUBSECTION) {
-		if (unlikely(!pfn_valid(start_pfn)))
+		if (unlikely(!pfn_to_online_page(start_pfn)))
 			continue;
 
 		if (unlikely(pfn_to_nid(start_pfn) != nid))
@@ -356,7 +356,7 @@ static unsigned long find_biggest_section_pfn(int nid, struct zone *zone,
 	/* pfn is the end pfn of a memory section. */
 	pfn = end_pfn - 1;
 	for (; pfn >= start_pfn; pfn -= PAGES_PER_SUBSECTION) {
-		if (unlikely(!pfn_valid(pfn)))
+		if (unlikely(!pfn_to_online_page(pfn)))
 			continue;
 
 		if (unlikely(pfn_to_nid(pfn) != nid))
@@ -415,7 +415,7 @@ static void shrink_zone_span(struct zone *zone, unsigned long start_pfn,
 	 */
 	pfn = zone_start_pfn;
 	for (; pfn < zone_end_pfn; pfn += PAGES_PER_SUBSECTION) {
-		if (unlikely(!pfn_valid(pfn)))
+		if (unlikely(!pfn_to_online_page(pfn)))
 			continue;
 
 		if (page_zone(pfn_to_page(pfn)) != zone)
@@ -463,6 +463,16 @@ static void __remove_zone(struct zone *zone, unsigned long start_pfn,
 	struct pglist_data *pgdat = zone->zone_pgdat;
 	unsigned long flags;
 
+#ifdef CONFIG_ZONE_DEVICE
+	/*
+	 * Zone shrinking code cannot properly deal with ZONE_DEVICE. So
+	 * we will not try to shrink the zones - which is okay as
+	 * set_zone_contiguous() cannot deal with ZONE_DEVICE either way.
+	 */
+	if (zone_idx(zone) == ZONE_DEVICE)
+		return;
+#endif
+
 	pgdat_resize_lock(zone->zone_pgdat, &flags);
 	shrink_zone_span(zone, start_pfn, start_pfn + nr_pages);
 	update_pgdat_span(pgdat);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
