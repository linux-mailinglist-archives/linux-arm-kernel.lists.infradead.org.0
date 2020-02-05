Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 389891530F9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 13:43:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DClWYYG0sdsHPr3xY+ACGR/HkqyCEqSwOOX+MVMYIwk=; b=REdC/CutNGywW6
	ubJknw7fsG60O6ZDQREORsdm0/dNNdekW8ucYKwpVyq4hZJhFndung7120yU3+479YMS7eiK9jlxc
	AOUEaWUY7isrsrjYzbzLpQPFWcWxQCscwnUouqjUCg+h2pjGVW9XsSfa8VwO0ArNa/1luzrm4PGxS
	4UFro3quuontQ7WZf57hBW3p5x9VScHuDg9dQbUzoR9sVn/q6nJvXjWvAEG0JlQQtpM5+xzEFHUdU
	/P9sWi9POmyDN/EnWf1n3WauZ+YqF/27DYmh9qS8umTbsW/NfNxzP16I+CgpCol9bJO0AC6HYJugv
	7kgUKD1ROOx79MAtZPPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izK23-0008Ny-9m; Wed, 05 Feb 2020 12:43:51 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izK1x-0008NJ-4n
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 12:43:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580906623;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=s7mEVqJKQjbMj0sSKh4xXiDWpaH1dr5EPgu2ctTv8CU=;
 b=WIc0vkYloQVaE4yPIwInu5iK8slR5G0VhX7sP04FCkMYyP1Dw5DB9vmwMxnhV7DaKRNyzA
 u513lrNZ0v1MzIlXsTn0hvLsLOrgBZ74ABSji8VvGpxnxPFPfcolpcgf6EiuAeQqrx0WBi
 L03DA+w9C4e0zvG9BjCJd+MI7d60j3M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-127-7rVIiLSTMrGSBsygAly1VQ-1; Wed, 05 Feb 2020 07:43:39 -0500
X-MC-Unique: 7rVIiLSTMrGSBsygAly1VQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 22F4185EE6C;
 Wed,  5 Feb 2020 12:43:36 +0000 (UTC)
Received: from localhost (ovpn-12-97.pek2.redhat.com [10.72.12.97])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1F1B681213;
 Wed,  5 Feb 2020 12:43:32 +0000 (UTC)
Date: Wed, 5 Feb 2020 20:43:29 +0800
From: Baoquan He <bhe@redhat.com>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v6 08/10] mm/memory_hotplug: Don't check for "all holes"
 in shrink_zone_span()
Message-ID: <20200205124329.GE26758@MiWiFi-R3L-srv>
References: <20191006085646.5768-1-david@redhat.com>
 <20191006085646.5768-9-david@redhat.com>
 <20200204142516.GD26758@MiWiFi-R3L-srv>
 <e0006cc4-d448-89c6-38c0-51da7fc08715@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e0006cc4-d448-89c6-38c0-51da7fc08715@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_044345_264184_E35C90FC 
X-CRM114-Status: GOOD (  17.59  )
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

On 02/04/20 at 03:42pm, David Hildenbrand wrote:
> On 04.02.20 15:25, Baoquan He wrote:
> > On 10/06/19 at 10:56am, David Hildenbrand wrote:
> >> If we have holes, the holes will automatically get detected and removed
> >> once we remove the next bigger/smaller section. The extra checks can
> >> go.
> >>
> >> Cc: Andrew Morton <akpm@linux-foundation.org>
> >> Cc: Oscar Salvador <osalvador@suse.de>
> >> Cc: Michal Hocko <mhocko@suse.com>
> >> Cc: David Hildenbrand <david@redhat.com>
> >> Cc: Pavel Tatashin <pasha.tatashin@soleen.com>
> >> Cc: Dan Williams <dan.j.williams@intel.com>
> >> Cc: Wei Yang <richardw.yang@linux.intel.com>
> >> Signed-off-by: David Hildenbrand <david@redhat.com>
> >> ---
> >>  mm/memory_hotplug.c | 34 +++++++---------------------------
> >>  1 file changed, 7 insertions(+), 27 deletions(-)
> >>
> >> diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
> >> index f294918f7211..8dafa1ba8d9f 100644
> >> --- a/mm/memory_hotplug.c
> >> +++ b/mm/memory_hotplug.c
> >> @@ -393,6 +393,9 @@ static void shrink_zone_span(struct zone *zone, unsigned long start_pfn,
> >>  		if (pfn) {
> >>  			zone->zone_start_pfn = pfn;
> >>  			zone->spanned_pages = zone_end_pfn - pfn;
> >> +		} else {
> >> +			zone->zone_start_pfn = 0;
> >> +			zone->spanned_pages = 0;
> >>  		}
> >>  	} else if (zone_end_pfn == end_pfn) {
> >>  		/*
> >> @@ -405,34 +408,11 @@ static void shrink_zone_span(struct zone *zone, unsigned long start_pfn,
> >>  					       start_pfn);
> >>  		if (pfn)
> >>  			zone->spanned_pages = pfn - zone_start_pfn + 1;
> >> +		else {
> >> +			zone->zone_start_pfn = 0;
> >> +			zone->spanned_pages = 0;
> > 
> > Thinking in which case (zone_start_pfn != start_pfn) and it comes here.
> 
> Could only happen in case the zone_start_pfn would have been "out of the
> zone already". If you ask me: unlikely :)

Yeah, I also think it's unlikely to come here.

The 'if (zone_start_pfn == start_pfn)' checking also covers the case
(zone_start_pfn == start_pfn && zone_end_pfn == end_pfn). So this
zone_start_pfn/spanned_pages resetting can be removed to avoid
confusion.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
