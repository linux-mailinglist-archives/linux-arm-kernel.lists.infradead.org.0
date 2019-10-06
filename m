Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DC1CCFB7
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 10:58:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e7qiQK/BB06TRHtDJUiJc5S9huPzNlDi+Okv5Iba9ro=; b=Hd1pSfK3SsvIWH
	bnju2uKdTpP9Zc/7sQNfyCTfxMfIC860CUpvaYmis4YpqiHcqNA26NCn/2dEom3b8VMhj3xuD8kVE
	z59bypDn8k6/kAto+1rvIrn9y6ThS3iSVD45iVcUpIdVVwvkPz6LV6f2fR7RAqrDTR/475Akuzu6/
	CWOBZ2E0cdgGInnAV1Mm95jl94VetIULzc3LySQG000tFxTq5cZPoyzeB8+t7Z7JjEhcTPYL6NNTD
	wyuRdZGzTQ/RebyaiqhyB38/Ux0LbNwNIve5fWBfqGp0UJ0Fiwlpp8TSoZen4vR4bE/fPchOcPVt7
	GHmwBBpg6SijaT5ZasXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH2NE-0000TK-4E; Sun, 06 Oct 2019 08:58:40 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH2MD-00088v-1p
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 08:57:39 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 12B75307D853;
 Sun,  6 Oct 2019 08:57:36 +0000 (UTC)
Received: from t460s.redhat.com (ovpn-116-58.ams2.redhat.com [10.36.116.58])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 488265B681;
 Sun,  6 Oct 2019 08:57:33 +0000 (UTC)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v6 07/10] mm/memory_hotplug: We always have a zone in
 find_(smallest|biggest)_section_pfn
Date: Sun,  6 Oct 2019 10:56:43 +0200
Message-Id: <20191006085646.5768-8-david@redhat.com>
In-Reply-To: <20191006085646.5768-1-david@redhat.com>
References: <20191006085646.5768-1-david@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Sun, 06 Oct 2019 08:57:36 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_015737_439269_C215DED3 
X-CRM114-Status: GOOD (  14.08  )
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
index bf5173e7913d..f294918f7211 100644
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
