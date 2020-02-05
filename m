Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 715A815335A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 15:48:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g//Vbfu1IuTcwxBC0ul7eJHHU5rxIZmfOgR3zjVBtOc=; b=XpFPxsyzfpFVx7
	Ckea+2d2rQe6kZJVyLfG5Ac6r0erK91dvmnHEUHltfQSkL9VInWekawAtPspICbpArpyFfsoRtYkr
	zfUd43gVJet9PVr61yIIoo8aNHAd0NBm+p7ANOnxKTtgOTt+R7AMRUv36ezv3S7c2jahTn666VbVN
	iU2bsQnwpHcKHDY4W9kd/vr23Phl6pFfoZRNbYwvtFCbHnHZVYRRj5l8e+D2nkGpvpjDWxDFhFc0S
	MkP5jx6Vwks5jksdA5usX8z+naoYPH/H1P3wno4nwGfTEDZD2s0EjqKLDCc62Asev6zgZ4iw27hR8
	l3uBSpwBmQyIIbOEl5LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izLyt-0008Nn-7w; Wed, 05 Feb 2020 14:48:43 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izLyk-0008MJ-VR
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 14:48:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580914113;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=95aJqeVITxcGTfX0TCyAquXczebVTrMMk8jxCMfrdaA=;
 b=csholPklvLJoEHzFfu9LFT9gxzMrcpncGEy7oe69ILdvOfG3/gp7OjkeegT5nqAxbQTmtN
 6BycIpZyO/+3LB+OH97P3R56TU7Hi4xdLVn9jzu7bM0emW4dMZuM0EwzJov31UXAnLWedV
 JRHRNiFNRhAoU4/TI1vNC298FpIqJlY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-34-CRKct6xKO9GNNI26yrfXjA-1; Wed, 05 Feb 2020 09:48:20 -0500
X-MC-Unique: CRKct6xKO9GNNI26yrfXjA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8C1E51083E81;
 Wed,  5 Feb 2020 14:48:18 +0000 (UTC)
Received: from localhost (ovpn-12-38.pek2.redhat.com [10.72.12.38])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id BC77F87B00;
 Wed,  5 Feb 2020 14:48:14 +0000 (UTC)
Date: Wed, 5 Feb 2020 22:48:11 +0800
From: Baoquan He <bhe@redhat.com>
To: Wei Yang <richardw.yang@linux.intel.com>
Subject: Re: [PATCH v6 08/10] mm/memory_hotplug: Don't check for "all holes"
 in shrink_zone_span()
Message-ID: <20200205144811.GF26758@MiWiFi-R3L-srv>
References: <20191006085646.5768-1-david@redhat.com>
 <20191006085646.5768-9-david@redhat.com>
 <20200205095924.GC24162@richard>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205095924.GC24162@richard>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_064835_092643_FB2D70CA 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-s390@vger.kernel.org, x86@kernel.org, linux-ia64@vger.kernel.org,
 Pavel Tatashin <pasha.tatashin@soleen.com>,
 David Hildenbrand <david@redhat.com>, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Michal Hocko <mhocko@suse.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Wei Yang,

On 02/05/20 at 05:59pm, Wei Yang wrote:
> >diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
> >index f294918f7211..8dafa1ba8d9f 100644
> >--- a/mm/memory_hotplug.c
> >+++ b/mm/memory_hotplug.c
> >@@ -393,6 +393,9 @@ static void shrink_zone_span(struct zone *zone, unsigned long start_pfn,
> > 		if (pfn) {
> > 			zone->zone_start_pfn = pfn;
> > 			zone->spanned_pages = zone_end_pfn - pfn;
> >+		} else {
> >+			zone->zone_start_pfn = 0;
> >+			zone->spanned_pages = 0;
> > 		}
> > 	} else if (zone_end_pfn == end_pfn) {
> > 		/*
> >@@ -405,34 +408,11 @@ static void shrink_zone_span(struct zone *zone, unsigned long start_pfn,
> > 					       start_pfn);
> > 		if (pfn)
> > 			zone->spanned_pages = pfn - zone_start_pfn + 1;
> >+		else {
> >+			zone->zone_start_pfn = 0;
> >+			zone->spanned_pages = 0;
> >+		}
> > 	}
> 
> If it is me, I would like to take out these two similar logic out.

I also like this style. 
> 
> For example:
> 
> 	if () {
> 	} else if () {
> 	} else {
> 		goto out;
Here the last else is unnecessary, right?

> 	}
> 
> 

Like this, I believe both David and I will be satisfactory. Even though
I still think his 2nd resetting is not needed :-)

> 	/* The zone has no valid section */
> 	if (!pfn) {
> 			zone->zone_start_pfn = 0;
> 			zone->spanned_pages = 0;
> 	}
> 
> out:
> 	zone_span_writeunlock(zone);
> 
> Well, this is just my personal taste :-)
> 
> >-
> >-	/*
> >-	 * The section is not biggest or smallest mem_section in the zone, it
> >-	 * only creates a hole in the zone. So in this case, we need not
> >-	 * change the zone. But perhaps, the zone has only hole data. Thus
> >-	 * it check the zone has only hole or not.
> >-	 */
> >-	pfn = zone_start_pfn;
> >-	for (; pfn < zone_end_pfn; pfn += PAGES_PER_SUBSECTION) {
> >-		if (unlikely(!pfn_to_online_page(pfn)))
> >-			continue;
> >-
> >-		if (page_zone(pfn_to_page(pfn)) != zone)
> >-			continue;
> >-
> >-		/* Skip range to be removed */
> >-		if (pfn >= start_pfn && pfn < end_pfn)
> >-			continue;
> >-
> >-		/* If we find valid section, we have nothing to do */
> >-		zone_span_writeunlock(zone);
> >-		return;
> >-	}
> >-
> >-	/* The zone has no valid section */
> >-	zone->zone_start_pfn = 0;
> >-	zone->spanned_pages = 0;
> > 	zone_span_writeunlock(zone);
> > }
> > 
> >-- 
> >2.21.0
> 
> -- 
> Wei Yang
> Help you, Help me
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
