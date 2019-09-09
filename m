Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A85ADC16
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 17:27:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V+N5UcvNSWxJp+7hbsCsivMkR2mFwKDWmJm9W7c+l54=; b=EeT/p5nhGO8R3k
	cVEUY8dYvK/kzcQc9rsuSgm8t+LwqaKdoXU5HynyRsOYMXuLUeqnvPhihYBL0tE2G56im4Dbtj5iK
	Gies6I6H6twxcnY2KvwWsuneKtcF5mDupEtpBy4vnDaMAsZZFR7jTj87ZV0/KlXLZxo5w7KfH7W/h
	klBSWAKt7AFwRNB5bJowvCnEkP+DGv5xAYl65qyAw1p/EZyY9v5pp4yEmGqbiIb2x9J1xP+Wu9R+F
	ZrWtNTslTjMFJXJne2HRXcdnAtnPuF4cv048o3WofpwG35tVgjzGVl82AtZBcm3xFszCtpjTDMphh
	XX3hxoQUfT10ZucKUuyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7LZQ-0003zK-GO; Mon, 09 Sep 2019 15:27:12 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7LZG-0003yc-Ar
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 15:27:03 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 08:27:01 -0700
X-IronPort-AV: E=Sophos;i="5.64,486,1559545200"; d="scan'208";a="175011691"
Received: from ahduyck-desk1.jf.intel.com ([10.7.198.76])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 08:27:01 -0700
Message-ID: <5cfa877d02b1a6dadbb28f40111726245cf7856f.camel@linux.intel.com>
Subject: Re: [PATCH v9 5/8] arm64: Move hugetlb related definitions out of
 pgtable.h to page-defs.h
From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
To: David Hildenbrand <david@redhat.com>, Alexander Duyck
 <alexander.duyck@gmail.com>, virtio-dev@lists.oasis-open.org, 
 kvm@vger.kernel.org, mst@redhat.com, catalin.marinas@arm.com, 
 dave.hansen@intel.com, linux-kernel@vger.kernel.org, willy@infradead.org, 
 mhocko@kernel.org, linux-mm@kvack.org, akpm@linux-foundation.org,
 will@kernel.org,  linux-arm-kernel@lists.infradead.org, osalvador@suse.de
Date: Mon, 09 Sep 2019 08:27:01 -0700
In-Reply-To: <90785d30-cde9-f380-5f4a-8af989b11729@redhat.com>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190907172545.10910.88045.stgit@localhost.localdomain>
 <90785d30-cde9-f380-5f4a-8af989b11729@redhat.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_082702_399825_1D8BE548 
X-CRM114-Status: GOOD (  18.78  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: yang.zhang.wz@gmail.com, pagupta@redhat.com, riel@surriel.com,
 konrad.wilk@oracle.com, ying.huang@intel.com, lcapitulino@redhat.com,
 wei.w.wang@intel.com, aarcange@redhat.com, nitesh@redhat.com,
 pbonzini@redhat.com, dan.j.williams@intel.com, fengguang.wu@intel.com,
 kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-09-09 at 10:52 +0200, David Hildenbrand wrote:
> On 07.09.19 19:25, Alexander Duyck wrote:
> > From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> > 
> > Move the static definition for things such as HUGETLB_PAGE_ORDER out of
> > asm/pgtable.h and place it in page-defs.h. By doing this the includes
> > become much easier to deal with as currently arm64 is the only architecture
> > that didn't include this definition in the asm/page.h file or a file
> > included by it.
> > 
> > It also makes logical sense as PAGE_SHIFT was already defined in
> > page-defs.h so now we also have HPAGE_SHIFT defined there as well.
> > 
> > Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> > ---
> >  arch/arm64/include/asm/page-def.h |    9 +++++++++
> >  arch/arm64/include/asm/pgtable.h  |    9 ---------
> >  2 files changed, 9 insertions(+), 9 deletions(-)
> > 
> > diff --git a/arch/arm64/include/asm/page-def.h b/arch/arm64/include/asm/page-def.h
> > index f99d48ecbeef..1c5b079e2482 100644
> > --- a/arch/arm64/include/asm/page-def.h
> > +++ b/arch/arm64/include/asm/page-def.h
> > @@ -20,4 +20,13 @@
> >  #define CONT_SIZE		(_AC(1, UL) << (CONT_SHIFT + PAGE_SHIFT))
> >  #define CONT_MASK		(~(CONT_SIZE-1))
> >  
> > +/*
> > + * Hugetlb definitions.
> > + */
> > +#define HUGE_MAX_HSTATE		4
> > +#define HPAGE_SHIFT		PMD_SHIFT
> > +#define HPAGE_SIZE		(_AC(1, UL) << HPAGE_SHIFT)
> > +#define HPAGE_MASK		(~(HPAGE_SIZE - 1))
> > +#define HUGETLB_PAGE_ORDER	(HPAGE_SHIFT - PAGE_SHIFT)
> > +
> 
> I wonder if you should initially limit "config PAGE_REPORTING" to x86
> only and unlock it for the other targets once we actually test it there.
> Or did you test PAGE_REPORTING on other architectures as well?
> 

I haven't, but essentially the effects should be the same regardless of
architecture. In addition since this is a feature that can be
enabled/disabled via QEMU I am not sure there is much harm other than
getting additional testing by enabling for all of the architectures at
once.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
