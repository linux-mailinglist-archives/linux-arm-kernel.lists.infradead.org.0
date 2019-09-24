Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C53BD099
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 19:28:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1NDTc4W595AHUCg5cZya2EKwjU7GRFKAAEp702L8vwo=; b=bZOGalELvbIrQy
	SpVKwCuAXui76kcO35zTJ13Nplge3/d1ClsM+UwsYLqUiOp60JKK0KnlsZojfEce0ocl1OatZseyC
	xF7Wb6cxo9ydocKOT54VEw9+w9ZArNW+/hcgBwlofvFoxTNDoGlo4SXw2caM1El0wKyQZf+iIerda
	wN3vq7XV/85C+ehuUWR98LgBcM1BH5WVyfBMwY0NaZsCAY0RoX0Yv7j3DhM5YzDSjblizhJnzuw5l
	fpM+XkmdpFACT9iyGyvt+C03DDTnNUQ8byNCq9DL+/ug9zoHHdjU7Gt3JJTZ0J/BXgf9ZHRRrYIHy
	h8sMjZCSAjzil2hkSN7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCocM-0004iL-1Z; Tue, 24 Sep 2019 17:28:50 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCoc7-0004gV-3i
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 17:28:37 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2544E85362;
 Tue, 24 Sep 2019 17:28:33 +0000 (UTC)
Received: from [10.36.116.245] (ovpn-116-245.ams2.redhat.com [10.36.116.245])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9A88619C58;
 Tue, 24 Sep 2019 17:28:20 +0000 (UTC)
Subject: Re: [PATCH v10 0/6] mm / virtio: Provide support for unused page
 reporting
To: Alexander Duyck <alexander.duyck@gmail.com>
References: <20190918175109.23474.67039.stgit@localhost.localdomain>
 <20190924142342.GX23050@dhcp22.suse.cz>
 <d2a7acdd-3bb9-05c9-42d0-70a500801cd6@redhat.com>
 <CAKgT0UedoNBk3cp64SpCzXJqjtqBWZQSB7QzF7R_jhTDXbzNPg@mail.gmail.com>
From: David Hildenbrand <david@redhat.com>
Openpgp: preference=signencrypt
Autocrypt: addr=david@redhat.com; prefer-encrypt=mutual; keydata=
 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
 SE+xAvmumFBY
Organization: Red Hat GmbH
Message-ID: <2fc579f6-9096-4162-9980-1f7f22c5f4ae@redhat.com>
Date: Tue, 24 Sep 2019 19:28:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAKgT0UedoNBk3cp64SpCzXJqjtqBWZQSB7QzF7R_jhTDXbzNPg@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Tue, 24 Sep 2019 17:28:33 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_102835_187994_E9CE14B9 
X-CRM114-Status: GOOD (  26.47  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Yang Zhang <yang.zhang.wz@gmail.com>, Pankaj Gupta <pagupta@redhat.com>,
 kvm list <kvm@vger.kernel.org>, "Michael S. Tsirkin" <mst@redhat.com>,
 Michal Hocko <mhocko@kernel.org>, linux-mm <linux-mm@kvack.org>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 Andrea Arcangeli <aarcange@redhat.com>, virtio-dev@lists.oasis-open.org,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 Matthew Wilcox <willy@infradead.org>, "Wang, Wei W" <wei.w.wang@intel.com>,
 Vlastimil Babka <vbabka@suse.cz>, Rik van Riel <riel@surriel.com>,
 Dan Williams <dan.j.williams@intel.com>, lcapitulino@redhat.com,
 linux-arm-kernel@lists.infradead.org, Oscar Salvador <osalvador@suse.de>,
 Nitesh Narayan Lal <nitesh@redhat.com>, Dave Hansen <dave.hansen@intel.com>,
 LKML <linux-kernel@vger.kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mel Gorman <mgorman@techsingularity.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24.09.19 19:07, Alexander Duyck wrote:
> On Tue, Sep 24, 2019 at 8:32 AM David Hildenbrand <david@redhat.com> wrote:
>>
>> On 24.09.19 16:23, Michal Hocko wrote:
>>> On Wed 18-09-19 10:52:25, Alexander Duyck wrote:
>>> [...]
>>>> In order to try and keep the time needed to find a non-reported page to
>>>> a minimum we maintain a "reported_boundary" pointer. This pointer is used
>>>> by the get_unreported_pages iterator to determine at what point it should
>>>> resume searching for non-reported pages. In order to guarantee pages do
>>>> not get past the scan I have modified add_to_free_list_tail so that it
>>>> will not insert pages behind the reported_boundary.
>>>>
>>>> If another process needs to perform a massive manipulation of the free
>>>> list, such as compaction, it can either reset a given individual boundary
>>>> which will push the boundary back to the list_head, or it can clear the
>>>> bit indicating the zone is actively processing which will result in the
>>>> reporting process resetting all of the boundaries for a given zone.
>>>
>>> Is this any different from the previous version? The last review
>>> feedback (both from me and Mel) was that we are not happy to have an
>>> externally imposed constrains on how the page allocator is supposed to
>>> maintain its free lists.
>>>
>>> If this is really the only way to go forward then I would like to hear
>>> very convincing arguments about other approaches not being feasible.
>>
>> Adding to what Alexander said, I don't consider the other approaches
>> (especially the bitmap-based approach Nitesh is currently working on)
>> infeasible. There might be more rough edges (e.g., sparse zones) and
>> eventually sometimes a little more work to be done, but definitely
>> feasible. Incorporating stuff into the buddy might make some tasks
>> (e.g., identify free pages) more efficient.
>>
>> I still somewhat like the idea of capturing hints of free pages (in
>> whatever data structure) and then going over the hints, seeing if the
>> pages are still free. Then only temporarily isolating the still-free
>> pages, reporting them, and un-isolating them after they were reported. I
>> like the idea that the pages are not fake-allocated but only temporarily
>> blocked. That works nicely e.g., with the movable zone (contain only
>> movable data).
> 
> One other change in this patch set is that I split the headers so that
> there is an internal header that resides in the mm tree and an
> external one that provides the page reporting device structure and the
> register/unregister functions. All that virtio-balloon knows is that
> it is registering a notifier and will be called with scatter gather
> lists for memory that is not currently in use by the kernel. It has no
> visibility into the internal free_areas or the current state of the
> buddy allocator. Rather than having two blocks that are both trying to
> maintain that state, I have consolidated it all into the buddy
> allocator with page reporting.
> 
>> But anyhow, after decades of people working on free page
>> hinting/reporting, I am happy with anything that gets accepted upstream :D
> 
> Agreed. After working on this for 9 months I would be happy to get
> something upstream that addresses this.

IBM upstreamed their proprietary solution - 45e576b1c3d0 ("S390] guest
page hinting light") - in 2008.

Rik has presented a generic approach in 2011 (!)
https://www.linux-kvm.org/images/f/ff/2011-forum-memory-overcommit.pdf

I think Nitesh has been working on this (initially as an Intern) since
Mid 2017.

So yeah, this stuff has quite some history :)

> 
> - Alex
> 


-- 

Thanks,

David / dhildenb

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
