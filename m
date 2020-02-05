Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A8B1528C1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 10:59:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LiCsxcURh06RitN3cfuYaR8TgYBUROLfXPPEUBEVZW8=; b=uV7gF6bl26LR3w
	KrK4hGtstLatGOEv8r08O/4gPvKWNljMoSZlWzJEb+sCyI9aRbsaOztoX+jwpOt0pELeKxzf1FqQW
	jafKQcZDdz+QNT1lISE5h866CXxWmrgU+hozxo7TgDaxhBaXVNu9OplSeq7n2GzCdT5f3kOgj6nyp
	3ivmiVtvm7FWk8iOXa4k2ZU8PhhRUsDb2OEOgVM/hBR+m//eb/6PJ/1Vi+VDCY9xTrveHeIpbna66
	zcPYboR8giNaeQY3sUmLYrUMmJwUCrt6G8BoHfpRshq3QdMIg+cI+SvN3lS8pmiw4Vdspcc0g62QO
	Z9FnHnA/YvORVPgCKtkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izHSn-000692-Si; Wed, 05 Feb 2020 09:59:17 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izHSh-00068e-Co
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 09:59:12 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 01:59:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,405,1574150400"; d="scan'208";a="343395725"
Received: from richard.sh.intel.com (HELO localhost) ([10.239.159.54])
 by fmsmga001.fm.intel.com with ESMTP; 05 Feb 2020 01:59:07 -0800
Date: Wed, 5 Feb 2020 17:59:24 +0800
From: Wei Yang <richardw.yang@linux.intel.com>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v6 08/10] mm/memory_hotplug: Don't check for "all holes"
 in shrink_zone_span()
Message-ID: <20200205095924.GC24162@richard>
References: <20191006085646.5768-1-david@redhat.com>
 <20191006085646.5768-9-david@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191006085646.5768-9-david@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_015911_486050_03DE9E5F 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Sun, Oct 06, 2019 at 10:56:44AM +0200, David Hildenbrand wrote:
>If we have holes, the holes will automatically get detected and removed
>once we remove the next bigger/smaller section. The extra checks can
>go.
>
>Cc: Andrew Morton <akpm@linux-foundation.org>
>Cc: Oscar Salvador <osalvador@suse.de>
>Cc: Michal Hocko <mhocko@suse.com>
>Cc: David Hildenbrand <david@redhat.com>
>Cc: Pavel Tatashin <pasha.tatashin@soleen.com>
>Cc: Dan Williams <dan.j.williams@intel.com>
>Cc: Wei Yang <richardw.yang@linux.intel.com>
>Signed-off-by: David Hildenbrand <david@redhat.com>
>---
> mm/memory_hotplug.c | 34 +++++++---------------------------
> 1 file changed, 7 insertions(+), 27 deletions(-)
>
>diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
>index f294918f7211..8dafa1ba8d9f 100644
>--- a/mm/memory_hotplug.c
>+++ b/mm/memory_hotplug.c
>@@ -393,6 +393,9 @@ static void shrink_zone_span(struct zone *zone, unsigned long start_pfn,
> 		if (pfn) {
> 			zone->zone_start_pfn = pfn;
> 			zone->spanned_pages = zone_end_pfn - pfn;
>+		} else {
>+			zone->zone_start_pfn = 0;
>+			zone->spanned_pages = 0;
> 		}
> 	} else if (zone_end_pfn == end_pfn) {
> 		/*
>@@ -405,34 +408,11 @@ static void shrink_zone_span(struct zone *zone, unsigned long start_pfn,
> 					       start_pfn);
> 		if (pfn)
> 			zone->spanned_pages = pfn - zone_start_pfn + 1;
>+		else {
>+			zone->zone_start_pfn = 0;
>+			zone->spanned_pages = 0;
>+		}
> 	}

If it is me, I would like to take out these two similar logic out.

For example:

	if () {
	} else if () {
	} else {
		goto out;
	}


	/* The zone has no valid section */
	if (!pfn) {
			zone->zone_start_pfn = 0;
			zone->spanned_pages = 0;
	}

out:
	zone_span_writeunlock(zone);

Well, this is just my personal taste :-)

>-
>-	/*
>-	 * The section is not biggest or smallest mem_section in the zone, it
>-	 * only creates a hole in the zone. So in this case, we need not
>-	 * change the zone. But perhaps, the zone has only hole data. Thus
>-	 * it check the zone has only hole or not.
>-	 */
>-	pfn = zone_start_pfn;
>-	for (; pfn < zone_end_pfn; pfn += PAGES_PER_SUBSECTION) {
>-		if (unlikely(!pfn_to_online_page(pfn)))
>-			continue;
>-
>-		if (page_zone(pfn_to_page(pfn)) != zone)
>-			continue;
>-
>-		/* Skip range to be removed */
>-		if (pfn >= start_pfn && pfn < end_pfn)
>-			continue;
>-
>-		/* If we find valid section, we have nothing to do */
>-		zone_span_writeunlock(zone);
>-		return;
>-	}
>-
>-	/* The zone has no valid section */
>-	zone->zone_start_pfn = 0;
>-	zone->spanned_pages = 0;
> 	zone_span_writeunlock(zone);
> }
> 
>-- 
>2.21.0

-- 
Wei Yang
Help you, Help me

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
