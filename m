Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1B3153BD5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 00:26:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CejzfjJJ3kTQ+ZP5h2trQWLm+Sysaq+yYYvV3gyDJPY=; b=XEtMHA0Bd5Xphc
	l05H6kCKt/8V3gHYcHB/quX/nmdc8Y6jao0x9ugk7ax1YLbzihJAhXXBJ8fvozLymFqv3W/gheU2K
	6Bh6oJSFJIsc4qe8J8zBaG6N+cGWvUkk9iL0Bhnrb5imCpc/XPyuL6uM7VgDhNPpfOW348KBHV58K
	PHXvGo0LACZruAr5hs6oZcvlpwTUM25WvDmB3yDns1egmgU1x/oyjH4A3eCGdK6go8/m9TQgD68CO
	iox8C6w5bFpyLqK3nygjgtaw/smD8tzVoXrode6SQ8Qz59bdJ9jYrbOf4umT/30SWoVmqHUn03Ebc
	URzIelCjgpVyx+ygc/Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izU3i-0001Ie-FL; Wed, 05 Feb 2020 23:26:14 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izU3c-0001Hh-1h
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 23:26:09 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 15:26:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,407,1574150400"; d="scan'208";a="264402948"
Received: from richard.sh.intel.com (HELO localhost) ([10.239.159.54])
 by fmsmga002.fm.intel.com with ESMTP; 05 Feb 2020 15:26:03 -0800
Date: Thu, 6 Feb 2020 07:26:20 +0800
From: Wei Yang <richardw.yang@linux.intel.com>
To: Baoquan He <bhe@redhat.com>
Subject: Re: [PATCH v6 08/10] mm/memory_hotplug: Don't check for "all holes"
 in shrink_zone_span()
Message-ID: <20200205232620.GC28446@richard>
References: <20191006085646.5768-1-david@redhat.com>
 <20191006085646.5768-9-david@redhat.com>
 <20200205095924.GC24162@richard>
 <20200205144811.GF26758@MiWiFi-R3L-srv>
 <20200205225633.GA28446@richard>
 <20200205230826.GF8965@MiWiFi-R3L-srv>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205230826.GF8965@MiWiFi-R3L-srv>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_152608_146025_A72892CF 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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

On Thu, Feb 06, 2020 at 07:08:26AM +0800, Baoquan He wrote:
>On 02/06/20 at 06:56am, Wei Yang wrote:
>> On Wed, Feb 05, 2020 at 10:48:11PM +0800, Baoquan He wrote:
>> >Hi Wei Yang,
>> >
>> >On 02/05/20 at 05:59pm, Wei Yang wrote:
>> >> >diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
>> >> >index f294918f7211..8dafa1ba8d9f 100644
>> >> >--- a/mm/memory_hotplug.c
>> >> >+++ b/mm/memory_hotplug.c
>> >> >@@ -393,6 +393,9 @@ static void shrink_zone_span(struct zone *zone, unsigned long start_pfn,
>> >> > 		if (pfn) {
>> >> > 			zone->zone_start_pfn = pfn;
>> >> > 			zone->spanned_pages = zone_end_pfn - pfn;
>> >> >+		} else {
>> >> >+			zone->zone_start_pfn = 0;
>> >> >+			zone->spanned_pages = 0;
>> >> > 		}
>> >> > 	} else if (zone_end_pfn == end_pfn) {
>> >> > 		/*
>> >> >@@ -405,34 +408,11 @@ static void shrink_zone_span(struct zone *zone, unsigned long start_pfn,
>> >> > 					       start_pfn);
>> >> > 		if (pfn)
>> >> > 			zone->spanned_pages = pfn - zone_start_pfn + 1;
>> >> >+		else {
>> >> >+			zone->zone_start_pfn = 0;
>> >> >+			zone->spanned_pages = 0;
>> >> >+		}
>> >> > 	}
>> >> 
>> >> If it is me, I would like to take out these two similar logic out.
>> >
>> >I also like this style. 
>> >> 
>> >> For example:
>> >> 
>> >> 	if () {
>> >> 	} else if () {
>> >> 	} else {
>> >> 		goto out;
>> >Here the last else is unnecessary, right?
>> >
>> 
>> I am afraid not.
>> 
>> If the range is not the first or last, we would leave pfn not initialized.
>
>Ah, you are right. I forgot that one. Then pfn can be assigned the
>zone_start_pfn as the old code. Then the following logic is the same
>as the original code, find_smallest_section_pfn()/find_biggest_section_pfn() 
>have done the iteration the old for loop was doing.
>
>	unsigned long pfn = zone_start_pfn;	
>	if () {
>	} else if () {
>	} 
>
>	/* The zone has no valid section */
>	if (!pfn) {
>        	zone->zone_start_pfn = 0;
>        	zone->spanned_pages = 0;
>	}

This one look better :-)

Thanks

-- 
Wei Yang
Help you, Help me

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
