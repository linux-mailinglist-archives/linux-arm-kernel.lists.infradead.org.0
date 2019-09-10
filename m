Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E95AF256
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 22:38:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IdEUpgxOiCCF702NrUpz0JfX8O0fNlDX3IP/Q3tiAOI=; b=aFNYTz6cnXyYcm
	dhw3PaRZunRUGEdJIVavHsVuS1cWT8aRtf1MWlGFOQw+yeF5qN9hskWXw0tfsT9xrtT7FMZko2D9+
	Ghi5rpfU74nYVuLkmh27fRYZo28j4a/OzrZt5EledAGh4FWsrxGGHzaqcdgcIO7E/IuD2UbInJ7fj
	7HAaBIGsSYFeJT7ldFigJpu/KYpev96dtbY8IxEqsq2LXpZzo6g4Rb0zD8PpwJvZFALcIAUxhIVfu
	w1VkGKaclAu1InTLP2ayDr7ovVehWoLFz2Z8TbfUgJi4J3cRb59sqm6mZNxZ1DrAWg4jaiE2IW/Au
	cq3UtEIiQYHZLdAAi79Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7mto-0004kV-TC; Tue, 10 Sep 2019 20:38:05 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7mtY-0004k4-Nq
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 20:37:49 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 13:37:48 -0700
X-IronPort-AV: E=Sophos;i="5.64,490,1559545200"; d="scan'208";a="175432349"
Received: from ahduyck-desk1.jf.intel.com ([10.7.198.76])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 13:37:48 -0700
Message-ID: <9b1c34e8b846e2d9ede6879bce47c7d704c89bd3.camel@linux.intel.com>
Subject: Re: [PATCH v9 0/8] stg mail -e --version=v9 \
From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
To: Michal Hocko <mhocko@kernel.org>, Alexander Duyck
 <alexander.duyck@gmail.com>
Date: Tue, 10 Sep 2019 13:37:47 -0700
In-Reply-To: <20190910180026.GE4023@dhcp22.suse.cz>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190910124209.GY2063@dhcp22.suse.cz>
 <CAKgT0Udr6nYQFTRzxLbXk41SiJ-pcT_bmN1j1YR4deCwdTOaUQ@mail.gmail.com>
 <20190910144713.GF2063@dhcp22.suse.cz>
 <CAKgT0UdB4qp3vFGrYEs=FwSXKpBEQ7zo7DV55nJRO2C-KCEOrw@mail.gmail.com>
 <20190910175213.GD4023@dhcp22.suse.cz>
 <20190910180026.GE4023@dhcp22.suse.cz>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_133748_819164_1677633D 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
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
Cc: Yang Zhang <yang.zhang.wz@gmail.com>, Pankaj Gupta <pagupta@redhat.com>,
 kvm list <kvm@vger.kernel.org>, David Hildenbrand <david@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, lcapitulino@redhat.com,
 linux-mm <linux-mm@kvack.org>, will@kernel.org,
 Andrea Arcangeli <aarcange@redhat.com>, virtio-dev@lists.oasis-open.org,
 "Michael S. Tsirkin" <mst@redhat.com>, Matthew Wilcox <willy@infradead.org>,
 "Wang, Wei W" <wei.w.wang@intel.com>, ying.huang@intel.com,
 Rik van Riel <riel@surriel.com>,
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

On Tue, 2019-09-10 at 20:00 +0200, Michal Hocko wrote:
> On Tue 10-09-19 19:52:13, Michal Hocko wrote:
> > On Tue 10-09-19 09:05:43, Alexander Duyck wrote:
> [...]
> > > All this is providing is just a report and it is optional if the
> > > hypervisor will act on it or not. If the hypervisor takes some sort of
> > > action on the page, then the expectation is that the hypervisor will
> > > use some sort of mechanism such as a page fault to discover when the
> > > page is used again.
> > 
> > OK so the baloon driver is in charge of this metadata and the allocator
> > has to live with that. Isn't that a layer violation?
> 
> Another thing that is not clear to me is how these marked pages are
> different from any other free pages. All of them are unused and you are
> losing your metadata as soon as the page gets allocated because the page
> changes its owner and the struct page belongs to it.

Really they aren't any different then other free pages other than they are
marked. Us losing the metadata as soon as the page is allocated is fine as
we will need to re-report it when it is returned so we no longer need the
metadata once it is allocated.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
