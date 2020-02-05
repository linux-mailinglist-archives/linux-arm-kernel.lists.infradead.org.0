Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D245153C00
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 00:34:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pWV41hHfn6vmaU91Fdd26ruvchhf7ZJragYLu6Ldx00=; b=cgh2hOugIqtkn9
	kIvp2qQXfxRuWG0WK9zW9EO6AVSN5a2dJS53uALFER1YWp3qrBgeaFiFB+Rrn65wfgOkZ0r177Iua
	M/CRGD5vYUhhr7zxjVAYFkejNtKLsMYcnHE0jnZwLg7rIdsdw9IsFq+6wK5NDCGXRU0m54nrn3ZlR
	HTTpyB528PNEilpj3KopsK5abmJckyE+1yDKZ6vbM3h/+F0ECmEQDSJwL2H8pfYML+HkObikwYMCC
	37+JeGs6XV7j7VWfGAsvM1VSy2T+Lkmz6bjRipDjNDniyZN92vU6I6/YjWK04TkXVg85+wAixTiIJ
	vBaylli/aHRBDEJ/UgnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izUBY-0003ev-UA; Wed, 05 Feb 2020 23:34:20 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izUBS-0003eX-Vy
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 23:34:16 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 15:34:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,407,1574150400"; d="scan'208";a="264405373"
Received: from richard.sh.intel.com (HELO localhost) ([10.239.159.54])
 by fmsmga002.fm.intel.com with ESMTP; 05 Feb 2020 15:34:12 -0800
Date: Thu, 6 Feb 2020 07:34:28 +0800
From: Wei Yang <richardw.yang@linux.intel.com>
To: Baoquan He <bhe@redhat.com>
Subject: Re: [PATCH v6 08/10] mm/memory_hotplug: Don't check for "all holes"
 in shrink_zone_span()
Message-ID: <20200205233428.GD28446@richard>
References: <20191006085646.5768-1-david@redhat.com>
 <20191006085646.5768-9-david@redhat.com>
 <20200205095924.GC24162@richard>
 <20200205144811.GF26758@MiWiFi-R3L-srv>
 <20200205225633.GA28446@richard>
 <20200205230826.GF8965@MiWiFi-R3L-srv>
 <20200205232620.GC28446@richard>
 <20200205233051.GG8965@MiWiFi-R3L-srv>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205233051.GG8965@MiWiFi-R3L-srv>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_153415_039529_0F39FBB0 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
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
Cc: linux-s390@vger.kernel.org, x86@kernel.org, linux-ia64@vger.kernel.org,
 Pavel Tatashin <pasha.tatashin@soleen.com>,
 David Hildenbrand <david@redhat.com>, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Michal Hocko <mhocko@suse.com>, Wei Yang <richardw.yang@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 06, 2020 at 07:30:51AM +0800, Baoquan He wrote:
>On 02/06/20 at 07:26am, Wei Yang wrote:
>> On Thu, Feb 06, 2020 at 07:08:26AM +0800, Baoquan He wrote:
>> >On 02/06/20 at 06:56am, Wei Yang wrote:
>> >> On Wed, Feb 05, 2020 at 10:48:11PM +0800, Baoquan He wrote:
>> >> >Hi Wei Yang,
>> >> >
>> >> >On 02/05/20 at 05:59pm, Wei Yang wrote:
>> >> >> >diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
>> >> >> >index f294918f7211..8dafa1ba8d9f 100644
>> >> >> >--- a/mm/memory_hotplug.c
>> >> >> >+++ b/mm/memory_hotplug.c
>> >> >> >@@ -393,6 +393,9 @@ static void shrink_zone_span(struct zone *zone, unsigned long start_pfn,
>> >> >> > 		if (pfn) {
>> >> >> > 			zone->zone_start_pfn = pfn;
>> >> >> > 			zone->spanned_pages = zone_end_pfn - pfn;
>> >> >> >+		} else {
>> >> >> >+			zone->zone_start_pfn = 0;
>> >> >> >+			zone->spanned_pages = 0;
>> >> >> > 		}
>> >> >> > 	} else if (zone_end_pfn == end_pfn) {
>> >> >> > 		/*
>> >> >> >@@ -405,34 +408,11 @@ static void shrink_zone_span(struct zone *zone, unsigned long start_pfn,
>> >> >> > 					       start_pfn);
>> >> >> > 		if (pfn)
>> >> >> > 			zone->spanned_pages = pfn - zone_start_pfn + 1;
>> >> >> >+		else {
>> >> >> >+			zone->zone_start_pfn = 0;
>> >> >> >+			zone->spanned_pages = 0;
>> >> >> >+		}
>> >> >> > 	}
>> >> >> 
>> >> >> If it is me, I would like to take out these two similar logic out.
>> >> >
>> >> >I also like this style. 
>> >> >> 
>> >> >> For example:
>> >> >> 
>> >> >> 	if () {
>> >> >> 	} else if () {
>> >> >> 	} else {
>> >> >> 		goto out;
>> >> >Here the last else is unnecessary, right?
>> >> >
>> >> 
>> >> I am afraid not.
>> >> 
>> >> If the range is not the first or last, we would leave pfn not initialized.
>> >
>> >Ah, you are right. I forgot that one. Then pfn can be assigned the
>> >zone_start_pfn as the old code. Then the following logic is the same
>> >as the original code, find_smallest_section_pfn()/find_biggest_section_pfn() 
>> >have done the iteration the old for loop was doing.
>> >
>> >	unsigned long pfn = zone_start_pfn;	
>> >	if () {
>> >	} else if () {
>> >	} 
>> >
>> >	/* The zone has no valid section */
>> >	if (!pfn) {
>> >        	zone->zone_start_pfn = 0;
>> >        	zone->spanned_pages = 0;
>> >	}
>> 
>> This one look better :-)
>
>Thanks for your confirmation, I will make one patch like this and post.

Sure :-)

-- 
Wei Yang
Help you, Help me

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
