Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1952F153BF3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 00:31:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Uk1fJCXVFQ99RBaNNdzSr8o+IMt4oJby7Db8Kldo6A=; b=WrNhhjF4VFWla/
	9IMQTsK2ahsng5eflA3zoW8mN5N+mbsWff3QoKmgANPUtd/31YAzkMegRSIwAUV92yDPgY8sbnqoZ
	ZhgHBEzz8kwum3FuskUhYAIJaiFo1LUSMp6VdzIRcXYKnx846ATdCeizTdCNc57SoJjM3ZR8XKIJ2
	6KI6rtb6xEVg6/oaviKOC9HVbiqBKw9fWWGzJ2ITTiLmMkVLfmP/Z9rOsGigPP6ReXXF72KEn6Okg
	7LYAU4wc5Q4KsGsXGycotZbFOJlVASRReg7jOhVR2m6fD/TWjWOQBAbcfcjVyQgnrq31A/4MpAxoL
	olxBECU1wALOinmjZq8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izU8c-0003A6-1e; Wed, 05 Feb 2020 23:31:18 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izU8V-00039L-0s
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 23:31:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580945469;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=SAORMzmA6IqKUOqDqPLoO/v1peidnLsrO16O4cWM3o8=;
 b=apLR9JDrAFPH/xT3mfigBFlzzpkFwYtAEW2Hhmr1+6i6m04S24yfuMxH+4/LF3aASgMWnu
 29/gBAzgV51Zd+3K+dFMTsyZ421nbPJvTa8JBBNhdy9Cul9ltJrtVt3Z6/Su30ZVrbESRx
 3nIxZhkvcFI7dxNsiN6BOtCulNF+Q/8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-297-n0VIlnPnOMSV8JdkF3Atnw-1; Wed, 05 Feb 2020 18:31:00 -0500
X-MC-Unique: n0VIlnPnOMSV8JdkF3Atnw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 38AF59A1C9;
 Wed,  5 Feb 2020 23:30:58 +0000 (UTC)
Received: from localhost (ovpn-12-19.pek2.redhat.com [10.72.12.19])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E8FCE1001920;
 Wed,  5 Feb 2020 23:30:54 +0000 (UTC)
Date: Thu, 6 Feb 2020 07:30:51 +0800
From: Baoquan He <bhe@redhat.com>
To: Wei Yang <richardw.yang@linux.intel.com>
Subject: Re: [PATCH v6 08/10] mm/memory_hotplug: Don't check for "all holes"
 in shrink_zone_span()
Message-ID: <20200205233051.GG8965@MiWiFi-R3L-srv>
References: <20191006085646.5768-1-david@redhat.com>
 <20191006085646.5768-9-david@redhat.com>
 <20200205095924.GC24162@richard>
 <20200205144811.GF26758@MiWiFi-R3L-srv>
 <20200205225633.GA28446@richard>
 <20200205230826.GF8965@MiWiFi-R3L-srv>
 <20200205232620.GC28446@richard>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205232620.GC28446@richard>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_153111_141104_01A6971F 
X-CRM114-Status: GOOD (  17.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
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

On 02/06/20 at 07:26am, Wei Yang wrote:
> On Thu, Feb 06, 2020 at 07:08:26AM +0800, Baoquan He wrote:
> >On 02/06/20 at 06:56am, Wei Yang wrote:
> >> On Wed, Feb 05, 2020 at 10:48:11PM +0800, Baoquan He wrote:
> >> >Hi Wei Yang,
> >> >
> >> >On 02/05/20 at 05:59pm, Wei Yang wrote:
> >> >> >diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
> >> >> >index f294918f7211..8dafa1ba8d9f 100644
> >> >> >--- a/mm/memory_hotplug.c
> >> >> >+++ b/mm/memory_hotplug.c
> >> >> >@@ -393,6 +393,9 @@ static void shrink_zone_span(struct zone *zone, unsigned long start_pfn,
> >> >> > 		if (pfn) {
> >> >> > 			zone->zone_start_pfn = pfn;
> >> >> > 			zone->spanned_pages = zone_end_pfn - pfn;
> >> >> >+		} else {
> >> >> >+			zone->zone_start_pfn = 0;
> >> >> >+			zone->spanned_pages = 0;
> >> >> > 		}
> >> >> > 	} else if (zone_end_pfn == end_pfn) {
> >> >> > 		/*
> >> >> >@@ -405,34 +408,11 @@ static void shrink_zone_span(struct zone *zone, unsigned long start_pfn,
> >> >> > 					       start_pfn);
> >> >> > 		if (pfn)
> >> >> > 			zone->spanned_pages = pfn - zone_start_pfn + 1;
> >> >> >+		else {
> >> >> >+			zone->zone_start_pfn = 0;
> >> >> >+			zone->spanned_pages = 0;
> >> >> >+		}
> >> >> > 	}
> >> >> 
> >> >> If it is me, I would like to take out these two similar logic out.
> >> >
> >> >I also like this style. 
> >> >> 
> >> >> For example:
> >> >> 
> >> >> 	if () {
> >> >> 	} else if () {
> >> >> 	} else {
> >> >> 		goto out;
> >> >Here the last else is unnecessary, right?
> >> >
> >> 
> >> I am afraid not.
> >> 
> >> If the range is not the first or last, we would leave pfn not initialized.
> >
> >Ah, you are right. I forgot that one. Then pfn can be assigned the
> >zone_start_pfn as the old code. Then the following logic is the same
> >as the original code, find_smallest_section_pfn()/find_biggest_section_pfn() 
> >have done the iteration the old for loop was doing.
> >
> >	unsigned long pfn = zone_start_pfn;	
> >	if () {
> >	} else if () {
> >	} 
> >
> >	/* The zone has no valid section */
> >	if (!pfn) {
> >        	zone->zone_start_pfn = 0;
> >        	zone->spanned_pages = 0;
> >	}
> 
> This one look better :-)

Thanks for your confirmation, I will make one patch like this and post.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
