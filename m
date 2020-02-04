Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B328B151788
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 10:13:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y/SeWwBozaF0dVGck44sEbAdBqXV3YD1irPAd7V49Hg=; b=DjCn4Vxx2mD7Ha
	qVG/dq7irkSXwdM4Ops8AB9RMwv4WR4geNzKR5xYXCVXGGSpRUJ4Iv+NSm+AztDWrraZg3JfTy7dJ
	Vq692kGgmKFLomvMR3LQBq6Ot2Sx1i208+Pv86KFl8bAsLoz1p1h50Zr2dbFIRIz+ub9ECTRebu6b
	VJ/U+8bLPMEpSwl8j7nrHEVT+Ap1Wj/liIQjs3Z1A7odgmNBOzAekJt5iYINKogb6xJj4aDM1I79r
	NzldOmcuFMMSULPTkZI79LlZAd6fxaHQz93McTsjfBa/7Gy9k3HENuExIS9U78KpQw5ggd/Y5fv4w
	nlfYhrevnuvlSFc7K0QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyuH2-0004CM-MT; Tue, 04 Feb 2020 09:13:36 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyuGj-000499-9A
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 09:13:18 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id A8FB2B020;
 Tue,  4 Feb 2020 09:13:15 +0000 (UTC)
Date: Tue, 4 Feb 2020 10:13:12 +0100
From: Oscar Salvador <osalvador@suse.de>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v6 08/10] mm/memory_hotplug: Don't check for "all holes"
 in shrink_zone_span()
Message-ID: <20200204091312.GC6494@linux>
References: <20191006085646.5768-1-david@redhat.com>
 <20191006085646.5768-9-david@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191006085646.5768-9-david@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_011317_482041_FE03A2E2 
X-CRM114-Status: GOOD (  22.56  )
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

On Sun, Oct 06, 2019 at 10:56:44AM +0200, David Hildenbrand wrote:
> If we have holes, the holes will automatically get detected and removed
> once we remove the next bigger/smaller section. The extra checks can
> go.
> 
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Oscar Salvador <osalvador@suse.de>
> Cc: Michal Hocko <mhocko@suse.com>
> Cc: David Hildenbrand <david@redhat.com>
> Cc: Pavel Tatashin <pasha.tatashin@soleen.com>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Cc: Wei Yang <richardw.yang@linux.intel.com>
> Signed-off-by: David Hildenbrand <david@redhat.com>

Heh, I have been here before.
I have to confess that when I wrote my version of this I was not really 100%
about removing it, because hotplug was a sort of a "catchall" for all sort of weird
and corner-cases configurations, but thinking more about it, I cannot think of
any situation that would make this blow up.

Reviewed-by: Oscar Salvador <osalvador@suse.de>

> ---
>  mm/memory_hotplug.c | 34 +++++++---------------------------
>  1 file changed, 7 insertions(+), 27 deletions(-)
> 
> diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
> index f294918f7211..8dafa1ba8d9f 100644
> --- a/mm/memory_hotplug.c
> +++ b/mm/memory_hotplug.c
> @@ -393,6 +393,9 @@ static void shrink_zone_span(struct zone *zone, unsigned long start_pfn,
>  		if (pfn) {
>  			zone->zone_start_pfn = pfn;
>  			zone->spanned_pages = zone_end_pfn - pfn;
> +		} else {
> +			zone->zone_start_pfn = 0;
> +			zone->spanned_pages = 0;
>  		}
>  	} else if (zone_end_pfn == end_pfn) {
>  		/*
> @@ -405,34 +408,11 @@ static void shrink_zone_span(struct zone *zone, unsigned long start_pfn,
>  					       start_pfn);
>  		if (pfn)
>  			zone->spanned_pages = pfn - zone_start_pfn + 1;
> +		else {
> +			zone->zone_start_pfn = 0;
> +			zone->spanned_pages = 0;
> +		}
>  	}
> -
> -	/*
> -	 * The section is not biggest or smallest mem_section in the zone, it
> -	 * only creates a hole in the zone. So in this case, we need not
> -	 * change the zone. But perhaps, the zone has only hole data. Thus
> -	 * it check the zone has only hole or not.
> -	 */
> -	pfn = zone_start_pfn;
> -	for (; pfn < zone_end_pfn; pfn += PAGES_PER_SUBSECTION) {
> -		if (unlikely(!pfn_to_online_page(pfn)))
> -			continue;
> -
> -		if (page_zone(pfn_to_page(pfn)) != zone)
> -			continue;
> -
> -		/* Skip range to be removed */
> -		if (pfn >= start_pfn && pfn < end_pfn)
> -			continue;
> -
> -		/* If we find valid section, we have nothing to do */
> -		zone_span_writeunlock(zone);
> -		return;
> -	}
> -
> -	/* The zone has no valid section */
> -	zone->zone_start_pfn = 0;
> -	zone->spanned_pages = 0;
>  	zone_span_writeunlock(zone);
>  }
>  
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
