Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD681528D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 11:07:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lTLGSqsTMHvt78aZ21Fek5F3yRtI78hFTQzRjXP+Z8o=; b=dkib14ACx4P6i4
	bdvnhjhnB0Qfk+ofbqeyEPHq4WHjqFv/lXpRgnMcS61PQ7LNLXole8tMlHx/xhnrrqhgIKDFUmIke
	d90wIFQqmHDNHiAqt62hY9/4s3fDprL58Q5Uv7XQvJA0ZDgq5pNzh5Ky3B/aEX2zfLbJ95AAIKKiv
	d9AmoxJSnsEWhOSahSACkXv5jwUENJPsjeJsmaUBNPZiku08vOR3ywk/2UpgO3ySTnkB/45AxnU4t
	weexQJamPsToe640hKJ+frZkdaGAjVnEcALS2VidTEyBCY3ywP+F8SRjCiqgOyxWvsoH1UQ1YESWW
	wxV+48KGUjFm4y3Olf0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izHab-0001Z0-J5; Wed, 05 Feb 2020 10:07:21 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izHaR-0001YG-TS
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 10:07:13 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 02:07:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,405,1574150400"; d="scan'208";a="279328278"
Received: from richard.sh.intel.com (HELO localhost) ([10.239.159.54])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Feb 2020 02:07:06 -0800
Date: Wed, 5 Feb 2020 18:07:23 +0800
From: Wei Yang <richardw.yang@linux.intel.com>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v6 09/10] mm/memory_hotplug: Drop local variables in
 shrink_zone_span()
Message-ID: <20200205100723.GD24162@richard>
References: <20191006085646.5768-1-david@redhat.com>
 <20191006085646.5768-10-david@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191006085646.5768-10-david@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_020711_997489_78F1E8DC 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Reply-To: Wei Yang <richardw.yang@linux.intel.com>
Cc: linux-s390@vger.kernel.org, Michal Hocko <mhocko@suse.com>,
 linux-ia64@vger.kernel.org, Pavel Tatashin <pasha.tatashin@soleen.com>,
 linux-sh@vger.kernel.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Wei Yang <richardw.yang@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Oct 06, 2019 at 10:56:45AM +0200, David Hildenbrand wrote:
>Get rid of the unnecessary local variables.
>
>Cc: Andrew Morton <akpm@linux-foundation.org>
>Cc: Oscar Salvador <osalvador@suse.de>
>Cc: David Hildenbrand <david@redhat.com>
>Cc: Michal Hocko <mhocko@suse.com>
>Cc: Pavel Tatashin <pasha.tatashin@soleen.com>
>Cc: Dan Williams <dan.j.williams@intel.com>
>Cc: Wei Yang <richardw.yang@linux.intel.com>
>Signed-off-by: David Hildenbrand <david@redhat.com>

Looks reasonable.

Reviewed-by: Wei Yang <richardw.yang@linux.intel.com>

>---
> mm/memory_hotplug.c | 15 ++++++---------
> 1 file changed, 6 insertions(+), 9 deletions(-)
>
>diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
>index 8dafa1ba8d9f..843481bd507d 100644
>--- a/mm/memory_hotplug.c
>+++ b/mm/memory_hotplug.c
>@@ -374,14 +374,11 @@ static unsigned long find_biggest_section_pfn(int nid, struct zone *zone,
> static void shrink_zone_span(struct zone *zone, unsigned long start_pfn,
> 			     unsigned long end_pfn)
> {
>-	unsigned long zone_start_pfn = zone->zone_start_pfn;
>-	unsigned long z = zone_end_pfn(zone); /* zone_end_pfn namespace clash */
>-	unsigned long zone_end_pfn = z;
> 	unsigned long pfn;
> 	int nid = zone_to_nid(zone);
> 
> 	zone_span_writelock(zone);
>-	if (zone_start_pfn == start_pfn) {
>+	if (zone->zone_start_pfn == start_pfn) {
> 		/*
> 		 * If the section is smallest section in the zone, it need
> 		 * shrink zone->zone_start_pfn and zone->zone_spanned_pages.
>@@ -389,25 +386,25 @@ static void shrink_zone_span(struct zone *zone, unsigned long start_pfn,
> 		 * for shrinking zone.
> 		 */
> 		pfn = find_smallest_section_pfn(nid, zone, end_pfn,
>-						zone_end_pfn);
>+						zone_end_pfn(zone));
> 		if (pfn) {
>+			zone->spanned_pages = zone_end_pfn(zone) - pfn;
> 			zone->zone_start_pfn = pfn;
>-			zone->spanned_pages = zone_end_pfn - pfn;
> 		} else {
> 			zone->zone_start_pfn = 0;
> 			zone->spanned_pages = 0;
> 		}
>-	} else if (zone_end_pfn == end_pfn) {
>+	} else if (zone_end_pfn(zone) == end_pfn) {
> 		/*
> 		 * If the section is biggest section in the zone, it need
> 		 * shrink zone->spanned_pages.
> 		 * In this case, we find second biggest valid mem_section for
> 		 * shrinking zone.
> 		 */
>-		pfn = find_biggest_section_pfn(nid, zone, zone_start_pfn,
>+		pfn = find_biggest_section_pfn(nid, zone, zone->zone_start_pfn,
> 					       start_pfn);
> 		if (pfn)
>-			zone->spanned_pages = pfn - zone_start_pfn + 1;
>+			zone->spanned_pages = pfn - zone->zone_start_pfn + 1;
> 		else {
> 			zone->zone_start_pfn = 0;
> 			zone->spanned_pages = 0;
>-- 
>2.21.0

-- 
Wei Yang
Help you, Help me

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
