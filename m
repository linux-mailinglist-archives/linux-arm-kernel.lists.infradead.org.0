Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB32B0952
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 09:17:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nEmuXjiIck2j5zMhTZMb8AhHIbtCy9omRFthn7vtkuM=; b=kYWffWxINoLbxn
	t3ROm9pcfPnMBGXeuD+JsVhNrD6+bbrjfHCeNWj3Vq3fVlHsCWYjiwQVZfWCIIylmqfXNkJC9/54H
	v7pR3Tnr6tk1dR2rtlvGizPprJMojSAaUGkAAhv5ve+f5AFeUsB1mqoMfwMBGITz9O+nYQyvc4/qf
	cXdxWP8sVwqutLPEyp2DvdHqWAZH8eXcvK+gBgaFRKskJjb3WnTwAh1XLShssi0F9zp2pNeyHgyDW
	XjnQ2kMkFOsHCzSttYrTDxn42DJrFd4fGEYAeVUihv2ycUvX/z/whKPINfx7/ap6ee0el9Zm/eU68
	enhi9ysvT2gyxAXFSPAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8JLn-0003kG-JP; Thu, 12 Sep 2019 07:17:08 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8JLJ-0003jl-B2
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 07:16:38 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id DA634AE35;
 Thu, 12 Sep 2019 07:16:34 +0000 (UTC)
Date: Thu, 12 Sep 2019 09:16:33 +0200
From: Michal Hocko <mhocko@kernel.org>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v9 0/8] stg mail -e --version=v9 \
Message-ID: <20190912071633.GL4023@dhcp22.suse.cz>
References: <20190911113619.GP4023@dhcp22.suse.cz>
 <20190911080804-mutt-send-email-mst@kernel.org>
 <20190911121941.GU4023@dhcp22.suse.cz>
 <20190911122526.GV4023@dhcp22.suse.cz>
 <4748a572-57b3-31da-0dde-30138e550c3a@redhat.com>
 <20190911125413.GY4023@dhcp22.suse.cz>
 <736594d6-b9ae-ddb9-2b96-85648728ef33@redhat.com>
 <20190911132002.GA4023@dhcp22.suse.cz>
 <20190911135100.GC4023@dhcp22.suse.cz>
 <abea20a0-463c-68c0-e810-2e341d971b30@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <abea20a0-463c-68c0-e810-2e341d971b30@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_001637_538816_EB7EEECE 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Yang Zhang <yang.zhang.wz@gmail.com>, Pankaj Gupta <pagupta@redhat.com>,
 kvm list <kvm@vger.kernel.org>, "Michael S. Tsirkin" <mst@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Alexander Duyck <alexander.duyck@gmail.com>, lcapitulino@redhat.com,
 linux-mm <linux-mm@kvack.org>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>, will@kernel.org,
 Andrea Arcangeli <aarcange@redhat.com>, virtio-dev@lists.oasis-open.org,
 Rik van Riel <riel@surriel.com>, Matthew Wilcox <willy@infradead.org>, "Wang,
 Wei W" <wei.w.wang@intel.com>, ying.huang@intel.com,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>, Nitesh Narayan Lal <nitesh@redhat.com>,
 Dave Hansen <dave.hansen@intel.com>, LKML <linux-kernel@vger.kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 Fengguang Wu <fengguang.wu@intel.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 11-09-19 18:09:18, David Hildenbrand wrote:
> On 11.09.19 15:51, Michal Hocko wrote:
> > On Wed 11-09-19 15:20:02, Michal Hocko wrote:
> > [...]
> >>> 4. Continuously report, not the "one time report everything" approach.
> >>
> >> So you mean the allocator reporting this rather than an external code to
> >> poll right? I do not know, how much this is nice to have than must have?
> > 
> > Another idea that I haven't really thought through so it might turned
> > out to be completely bogus but let's try anyway. Your "report everything"
> > just made me look and realize that free_pages_prepare already performs
> > stuff that actually does something similar yet unrelated.
> > 
> > We do report to special page poisoning, zeroying or
> > CONFIG_DEBUG_PAGEALLOC to unmap the address from the kernel address
> > space. This sounds like something fitting your model no?
> > 
> 
> AFAIKS, the poisoning/unmapping is done whenever a page is freed. I
> don't quite see yet how that would help to remember if a page was
> already reported.

Do you still have to differ that state when each page is reported?

> After reporting the page we would have to switch some
> state (Nitesh: bitmap bit, Alexander: page flag) to identify that.

Yes, you can either store the state somewhere.

> Of course, we could map the page and treat that as "the state" when we
> reported it, but I am not sure that's such a good idea :)
> 
> As always, I might be very wrong ...

I still do not fully understand the usecase so I might be equally wrong.
My thinking is along these lines. Why should you scan free pages when
you can effectively capture each freed page? If you go one step further
then post_alloc_hook would be the counterpart to know that your page has
been allocated.
-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
