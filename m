Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D134F6A421
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 10:47:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bKiUAsFS2guMzr5iQ+Kvvum9apnA7bHfa2RA5nqwLS8=; b=tSR328dn1gGNiT
	WoKqVEly3hyU3me0bh5qH+X0ZKOKa1qjsOdRjgiBg0pPRtvipTrAVlI+szQWe0pMBVofDmIg+glO5
	rqN4FEoMklgiKagD4ZxWJz2z2fY81//lWvYt2Uo+d0cv1eacrs7Ms0CYZyCplwFDDp6YFLC2sRlOC
	vRb4uNgbwhV8W9SlrAwl8/2IcIDduA50PZJYcxeghZPJeoerJT8eSiVBsy35bH7K7rlViog4S9Tgw
	TMUo5FwPBWO8Pdk/jMAFdQajAKDwlinWmHrzv89fxtE4vmnCDbRc73WJR0m9rZ7wXNrOXuJEbrbKm
	0eUGLnl4iAHkSSQ2Eszw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnJ7r-0000NB-Q1; Tue, 16 Jul 2019 08:47:56 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnJ6g-0000AJ-LC
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 08:46:44 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 51E92AFCE;
 Tue, 16 Jul 2019 08:46:38 +0000 (UTC)
Date: Tue, 16 Jul 2019 10:46:34 +0200
From: Oscar Salvador <osalvador@suse.de>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v3 10/11] mm/memory_hotplug: Make
 unregister_memory_block_under_nodes() never fail
Message-ID: <20190716084626.GA12394@linux>
References: <20190527111152.16324-1-david@redhat.com>
 <20190527111152.16324-11-david@redhat.com>
 <20190701085144.GJ6376@dhcp22.suse.cz>
 <20190701093640.GA17349@linux>
 <20190701102756.GO6376@dhcp22.suse.cz>
 <d450488d-7a82-f7a9-c8d3-b69a0bca48c6@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d450488d-7a82-f7a9-c8d3-b69a0bca48c6@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_014643_020500_49308849 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-s390@vger.kernel.org, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Michal Hocko <mhocko@kernel.org>, linux-mm@kvack.org,
 "David S. Miller" <davem@davemloft.net>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Alex Deucher <alexander.deucher@amd.com>, Igor Mammedov <imammedo@redhat.com>,
 akpm@linux-foundation.org, Wei Yang <richard.weiyang@gmail.com>,
 linuxppc-dev@lists.ozlabs.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 15, 2019 at 01:10:33PM +0200, David Hildenbrand wrote:
> On 01.07.19 12:27, Michal Hocko wrote:
> > On Mon 01-07-19 11:36:44, Oscar Salvador wrote:
> >> On Mon, Jul 01, 2019 at 10:51:44AM +0200, Michal Hocko wrote:
> >>> Yeah, we do not allow to offline multi zone (node) ranges so the current
> >>> code seems to be over engineered.
> >>>
> >>> Anyway, I am wondering why do we have to strictly check for already
> >>> removed nodes links. Is the sysfs code going to complain we we try to
> >>> remove again?
> >>
> >> No, sysfs will silently "fail" if the symlink has already been removed.
> >> At least that is what I saw last time I played with it.
> >>
> >> I guess the question is what if sysfs handling changes in the future
> >> and starts dropping warnings when trying to remove a symlink is not there.
> >> Maybe that is unlikely to happen?
> > 
> > And maybe we handle it then rather than have a static allocation that
> > everybody with hotremove configured has to pay for.
> > 
> 
> So what's the suggestion? Dropping the nodemask_t completely and calling
> sysfs_remove_link() on already potentially removed links?
> 
> Of course, we can also just use mem_blk->nid and rest assured that it
> will never be called for memory blocks belonging to multiple nodes.

Hi David,

While it is easy to construct a scenario where a memblock belongs to multiple
nodes, I have to confess that I yet have not seen that in a real-world scenario.

Given said that, I think that the less risky way is to just drop the nodemask_t
and do not care about calling sysfs_remove_link() for already removed links.
As I said, sysfs_remove_link() will silently fail when it fails to find the
symlink, so I do not think it is a big deal.


-- 
Oscar Salvador
SUSE L3

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
