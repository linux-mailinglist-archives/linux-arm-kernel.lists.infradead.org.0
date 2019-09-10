Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2518DAF2D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 00:15:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8VKrKK6z4pd1HkRZP4QGwiOajM5QKYPZ/7kHQe43S/U=; b=itrOV+WGznlVES
	HW1UVF1POjP2roP1grJSsGtilQeg+7AZXqpAI1RwvOGfe1ytKE/25FApq6ejn2gs9MX0gcPIijm6a
	clziPmpf68o2cNKckCf4oVU/bBO4NukWhyaO8IBHFGJ3Qxvd51hOdJpLONnxoLPt7oVwOie813fCT
	dkJXU0i4OzUdnFJxkB5qxncP8gwp6V15Wb9R+OTUSHpZQaZI8Ei/Lf9uy9ol+XtWQBN02inCL6I0d
	X+AuSvhDm1JR/F6EijSkC4aVnoV8IdH+09zLb/bw7jKVEve0Onm5JQTxtbM/JsRqeEomMiLuw5rMG
	GhUf9kG1JIbPn57lYnWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7oPj-0001V4-6a; Tue, 10 Sep 2019 22:15:07 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7oPQ-0001Uj-TB
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 22:14:50 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 15:14:48 -0700
X-IronPort-AV: E=Sophos;i="5.64,490,1559545200"; d="scan'208";a="178822353"
Received: from ahduyck-desk1.jf.intel.com ([10.7.198.76])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 15:14:48 -0700
Message-ID: <ac75ce0302faa234860a49cc965a6d342b3ca685.camel@linux.intel.com>
Subject: Re: [PATCH v9 1/8] mm: Add per-cpu logic to page shuffling
From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
To: Michal Hocko <mhocko@kernel.org>
Date: Tue, 10 Sep 2019 15:14:47 -0700
In-Reply-To: <20190910121130.GU2063@dhcp22.suse.cz>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190907172512.10910.74435.stgit@localhost.localdomain>
 <0df2e5d0-af92-04b4-aa7d-891387874039@redhat.com>
 <0ca58fea280b51b83e7b42e2087128789bc9448d.camel@linux.intel.com>
 <20190910121130.GU2063@dhcp22.suse.cz>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_151448_956992_F099CC3B 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: yang.zhang.wz@gmail.com, pagupta@redhat.com, kvm@vger.kernel.org,
 mst@redhat.com, catalin.marinas@arm.com,
 Alexander Duyck <alexander.duyck@gmail.com>, lcapitulino@redhat.com,
 linux-mm@kvack.org, will@kernel.org, aarcange@redhat.com,
 virtio-dev@lists.oasis-open.org, David Hildenbrand <david@redhat.com>,
 willy@infradead.org, wei.w.wang@intel.com, ying.huang@intel.com,
 riel@surriel.com, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de, nitesh@redhat.com,
 konrad.wilk@oracle.com, dave.hansen@intel.com, linux-kernel@vger.kernel.org,
 pbonzini@redhat.com, akpm@linux-foundation.org, fengguang.wu@intel.com,
 kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-09-10 at 14:11 +0200, Michal Hocko wrote:
> On Mon 09-09-19 08:11:36, Alexander Duyck wrote:
> > On Mon, 2019-09-09 at 10:14 +0200, David Hildenbrand wrote:
> > > On 07.09.19 19:25, Alexander Duyck wrote:
> > > > From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> > > > 
> > > > Change the logic used to generate randomness in the suffle path so that we
> > > > can avoid cache line bouncing. The previous logic was sharing the offset
> > > > and entropy word between all CPUs. As such this can result in cache line
> > > > bouncing and will ultimately hurt performance when enabled.
> > > 
> > > So, usually we perform such changes if there is real evidence. Do you
> > > have any such performance numbers to back your claims?
> > 
> > I'll have to go rerun the test to get the exact numbers. The reason this
> > came up is that my original test was spanning NUMA nodes and that made
> > this more expensive as a result since the memory was both not local to the
> > CPU and was being updated by multiple sockets.
> 
> What was the pattern of page freeing in your testing? I am wondering
> because order 0 pages should be prevailing and those usually go via pcp
> lists so they do not get shuffled unless the batch is full IIRC.

So I am pretty sure my previous data was faulty. One side effect of the
page reporting is that it was evicting pages out of the guest and when the
pages were faulted back in they were coming from local page pools. This
was throwing off my early numbers and making tests look better than they
should have for the reported case.

I had this patch previously merged with another one so I wasn't testing it
on its own, it was instead a part of a bigger set. Now that I have tried
testing it on its own I can see that it has no significant impact on
performance. With that being the case I will probably just drop it.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
