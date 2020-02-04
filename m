Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8247A1517CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 10:26:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s7ns94p2qZ2NS34tdOJ5PN188HJfHvGAL30Xr8/ZnmU=; b=uCP3MHkId/O0Tx
	M/GNGQQjOdt0hqgeecVaEjpyPRUZncUZiljMv5lKDDHtb5Hil/cBbWECGswQTia2S/bV4N3prIyKE
	fQxrG3Cbo/ijyd4WyCAC6tf7jGuL8t3Zn230L/gzhMhn59cq5gX+GEh2czUN0pSgCj3OpVwI95JTf
	boObOmPL4YNPvYSYwO7hWKtcClJK9t7TIw0jSvjsQD8FYLNpPEmsNO8rsqAQzZdT0Nz7CAK4xF71N
	OlNokgM/t+aSYIUh/Y0+7LxYnKdHURqJ/gWe2xio6Om1ucsMoi8ll4c/GwxftVKJDxuf2SGQQDbGC
	ZH77K0mYb51FHF5bWF2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyuTa-0001jc-V2; Tue, 04 Feb 2020 09:26:34 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyuTT-0001jG-Fr
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 09:26:29 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 195CDAC2C;
 Tue,  4 Feb 2020 09:26:25 +0000 (UTC)
Date: Tue, 4 Feb 2020 10:26:23 +0100
From: Oscar Salvador <osalvador@suse.de>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v6 09/10] mm/memory_hotplug: Drop local variables in
 shrink_zone_span()
Message-ID: <20200204092623.GD6494@linux>
References: <20191006085646.5768-1-david@redhat.com>
 <20191006085646.5768-10-david@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191006085646.5768-10-david@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_012627_819530_02C3DB45 
X-CRM114-Status: GOOD (  21.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-sh@vger.kernel.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Wei Yang <richardw.yang@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Oct 06, 2019 at 10:56:45AM +0200, David Hildenbrand wrote:
> Get rid of the unnecessary local variables.
> 
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Oscar Salvador <osalvador@suse.de>
> Cc: David Hildenbrand <david@redhat.com>
> Cc: Michal Hocko <mhocko@suse.com>
> Cc: Pavel Tatashin <pasha.tatashin@soleen.com>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Cc: Wei Yang <richardw.yang@linux.intel.com>
> Signed-off-by: David Hildenbrand <david@redhat.com>
> ---
>  mm/memory_hotplug.c | 15 ++++++---------
>  1 file changed, 6 insertions(+), 9 deletions(-)
> 
> diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
> index 8dafa1ba8d9f..843481bd507d 100644
> --- a/mm/memory_hotplug.c
> +++ b/mm/memory_hotplug.c
> @@ -374,14 +374,11 @@ static unsigned long find_biggest_section_pfn(int nid, struct zone *zone,
>  static void shrink_zone_span(struct zone *zone, unsigned long start_pfn,
>  			     unsigned long end_pfn)
>  {
> -	unsigned long zone_start_pfn = zone->zone_start_pfn;
> -	unsigned long z = zone_end_pfn(zone); /* zone_end_pfn namespace clash */
> -	unsigned long zone_end_pfn = z;
>  	unsigned long pfn;
>  	int nid = zone_to_nid(zone);

We could also remove the nid, right?
AFAICS, the nid is only used in find_{smallest/biggest}_section_pfn so we could
place there as well.

Anyway, nothing to nit-pick about:

Reviewed-by: Oscar Salvador <osalvador@suse.de>

>  
>  	zone_span_writelock(zone);
> -	if (zone_start_pfn == start_pfn) {
> +	if (zone->zone_start_pfn == start_pfn) {
>  		/*
>  		 * If the section is smallest section in the zone, it need
>  		 * shrink zone->zone_start_pfn and zone->zone_spanned_pages.
> @@ -389,25 +386,25 @@ static void shrink_zone_span(struct zone *zone, unsigned long start_pfn,
>  		 * for shrinking zone.
>  		 */
>  		pfn = find_smallest_section_pfn(nid, zone, end_pfn,
> -						zone_end_pfn);
> +						zone_end_pfn(zone));
>  		if (pfn) {
> +			zone->spanned_pages = zone_end_pfn(zone) - pfn;
>  			zone->zone_start_pfn = pfn;
> -			zone->spanned_pages = zone_end_pfn - pfn;
>  		} else {
>  			zone->zone_start_pfn = 0;
>  			zone->spanned_pages = 0;
>  		}
> -	} else if (zone_end_pfn == end_pfn) {
> +	} else if (zone_end_pfn(zone) == end_pfn) {
>  		/*
>  		 * If the section is biggest section in the zone, it need
>  		 * shrink zone->spanned_pages.
>  		 * In this case, we find second biggest valid mem_section for
>  		 * shrinking zone.
>  		 */
> -		pfn = find_biggest_section_pfn(nid, zone, zone_start_pfn,
> +		pfn = find_biggest_section_pfn(nid, zone, zone->zone_start_pfn,
>  					       start_pfn);
>  		if (pfn)
> -			zone->spanned_pages = pfn - zone_start_pfn + 1;
> +			zone->spanned_pages = pfn - zone->zone_start_pfn + 1;
>  		else {
>  			zone->zone_start_pfn = 0;
>  			zone->spanned_pages = 0;
> -- 
> 2.21.0
> 

-- 
Oscar Salvador
SUSE L3

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
