Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3004A153B7D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 23:56:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AtfdyDj85zUb3MAXXNzbHEJAmG/IQlwUkbTrmfXxZjo=; b=ViP7uD9m3SRx4n
	OEInY0gSBUMqDQaLDEEDUnMKZAnvK2NuBLHT9KIhQXWAfgYca+Ns8UWHvufLljPFZWHG3htCo/skA
	0wIg8abflEyDvv0xh9g5dw3/iHgGIqTemIYHNOox1C1msrElgKfHSuH59K2nkyB1JZpPArJ5S/xIp
	TiaSmnBFGUje4cbH84BWeoeHXkuhk8mX4ZquwDbEI6OqQYvLbBnqyO/R6OIhxuLdzC7KveG0P8FK1
	dGjvctx7EKL+8WnzrHZFPGxno7GYT7SUdAVkWduS3s6mswezuSVkLYnYY/wPeku9pi8AT/8RCod8z
	CWJk9Ex1j3JD2h8c5r9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izTas-0000FV-0V; Wed, 05 Feb 2020 22:56:26 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izTal-0000F1-P8
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 22:56:20 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 14:56:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,407,1574150400"; d="scan'208";a="225095649"
Received: from richard.sh.intel.com (HELO localhost) ([10.239.159.54])
 by fmsmga007.fm.intel.com with ESMTP; 05 Feb 2020 14:56:16 -0800
Date: Thu, 6 Feb 2020 06:56:33 +0800
From: Wei Yang <richardw.yang@linux.intel.com>
To: Baoquan He <bhe@redhat.com>
Subject: Re: [PATCH v6 08/10] mm/memory_hotplug: Don't check for "all holes"
 in shrink_zone_span()
Message-ID: <20200205225633.GA28446@richard>
References: <20191006085646.5768-1-david@redhat.com>
 <20191006085646.5768-9-david@redhat.com>
 <20200205095924.GC24162@richard>
 <20200205144811.GF26758@MiWiFi-R3L-srv>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205144811.GF26758@MiWiFi-R3L-srv>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_145619_823386_CFDF7D5C 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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

On Wed, Feb 05, 2020 at 10:48:11PM +0800, Baoquan He wrote:
>Hi Wei Yang,
>
>On 02/05/20 at 05:59pm, Wei Yang wrote:
>> >diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
>> >index f294918f7211..8dafa1ba8d9f 100644
>> >--- a/mm/memory_hotplug.c
>> >+++ b/mm/memory_hotplug.c
>> >@@ -393,6 +393,9 @@ static void shrink_zone_span(struct zone *zone, unsigned long start_pfn,
>> > 		if (pfn) {
>> > 			zone->zone_start_pfn = pfn;
>> > 			zone->spanned_pages = zone_end_pfn - pfn;
>> >+		} else {
>> >+			zone->zone_start_pfn = 0;
>> >+			zone->spanned_pages = 0;
>> > 		}
>> > 	} else if (zone_end_pfn == end_pfn) {
>> > 		/*
>> >@@ -405,34 +408,11 @@ static void shrink_zone_span(struct zone *zone, unsigned long start_pfn,
>> > 					       start_pfn);
>> > 		if (pfn)
>> > 			zone->spanned_pages = pfn - zone_start_pfn + 1;
>> >+		else {
>> >+			zone->zone_start_pfn = 0;
>> >+			zone->spanned_pages = 0;
>> >+		}
>> > 	}
>> 
>> If it is me, I would like to take out these two similar logic out.
>
>I also like this style. 
>> 
>> For example:
>> 
>> 	if () {
>> 	} else if () {
>> 	} else {
>> 		goto out;
>Here the last else is unnecessary, right?
>

I am afraid not.

If the range is not the first or last, we would leave pfn not initialized.


-- 
Wei Yang
Help you, Help me

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
