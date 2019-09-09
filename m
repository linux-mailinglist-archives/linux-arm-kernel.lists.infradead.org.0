Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 006C2ADBE5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 17:12:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OfwdJXsbEO84up4FlusTbVhgx8VavwSG0k2xK/CH3RA=; b=WiXXK5wtm0CWJu
	+15qlicqlx2sdRTo0zvfpIdvd8kGIDbWyOBlZYzNp9udCd6TIylDu6WuQy9D7zvySNr/FdeI96BA4
	lslA+O5YAdBU/y+FcDRn+zrY+vIeHaDE0gjM5QR08EtyV0yKBefBQVw1Hrisxx/UJHWaMKR5ODZis
	MRa+pvwSdPK1bxAtyx87FidPJJGDkEjX6oYr/n8EAksYO0YSS+yvl8+p30/SZfA0fgRqZeptXs4v0
	n3YuZvKqfcBA3FuFfMX2EsrDVRWzSxneIucBUylzZVMzcBLWhflm70M1f0UXNR3gQtnNVniW3fNkJ
	5ouVfRT9ul6YDVJpr8xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7LLH-0006bM-5w; Mon, 09 Sep 2019 15:12:35 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7LL6-0006ax-17
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 15:12:25 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 08:12:12 -0700
X-IronPort-AV: E=Sophos;i="5.64,486,1559545200"; d="scan'208";a="335622307"
Received: from ahduyck-desk1.jf.intel.com ([10.7.198.76])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 08:12:12 -0700
Message-ID: <f2fc0cda183098aa9b3b071ff0f49249f6d94bd5.camel@linux.intel.com>
Subject: Re: [PATCH v9 1/8] mm: Add per-cpu logic to page shuffling
From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
To: "Kirill A. Shutemov" <kirill@shutemov.name>, Alexander Duyck
 <alexander.duyck@gmail.com>
Date: Mon, 09 Sep 2019 08:12:12 -0700
In-Reply-To: <20190909090701.7ebz4foxyu3rxzvc@box>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190907172512.10910.74435.stgit@localhost.localdomain>
 <20190909090701.7ebz4foxyu3rxzvc@box>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_081224_127642_DBAC2965 
X-CRM114-Status: GOOD (  23.22  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Cc: yang.zhang.wz@gmail.com, pagupta@redhat.com, kvm@vger.kernel.org,
 david@redhat.com, catalin.marinas@arm.com, mhocko@kernel.org,
 linux-mm@kvack.org, will@kernel.org, aarcange@redhat.com,
 virtio-dev@lists.oasis-open.org, mst@redhat.com, willy@infradead.org,
 wei.w.wang@intel.com, ying.huang@intel.com, riel@surriel.com,
 dan.j.williams@intel.com, lcapitulino@redhat.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de, nitesh@redhat.com,
 konrad.wilk@oracle.com, dave.hansen@intel.com, linux-kernel@vger.kernel.org,
 pbonzini@redhat.com, akpm@linux-foundation.org, fengguang.wu@intel.com,
 kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-09-09 at 12:07 +0300, Kirill A. Shutemov wrote:
> On Sat, Sep 07, 2019 at 10:25:12AM -0700, Alexander Duyck wrote:
> > From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> > 
> > Change the logic used to generate randomness in the suffle path so that we
> 
> Typo.
> 
> > can avoid cache line bouncing. The previous logic was sharing the offset
> > and entropy word between all CPUs. As such this can result in cache line
> > bouncing and will ultimately hurt performance when enabled.
> > 
> > To resolve this I have moved to a per-cpu logic for maintaining a unsigned
> > long containing some amount of bits, and an offset value for which bit we
> > can use for entropy with each call.
> > 
> > Reviewed-by: Dan Williams <dan.j.williams@intel.com>
> > Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> > ---
> >  mm/shuffle.c |   33 +++++++++++++++++++++++----------
> >  1 file changed, 23 insertions(+), 10 deletions(-)
> > 
> > diff --git a/mm/shuffle.c b/mm/shuffle.c
> > index 3ce12481b1dc..9ba542ecf335 100644
> > --- a/mm/shuffle.c
> > +++ b/mm/shuffle.c
> > @@ -183,25 +183,38 @@ void __meminit __shuffle_free_memory(pg_data_t *pgdat)
> >  		shuffle_zone(z);
> >  }
> >  
> > +struct batched_bit_entropy {
> > +	unsigned long entropy_bool;
> > +	int position;
> > +};
> > +
> > +static DEFINE_PER_CPU(struct batched_bit_entropy, batched_entropy_bool);
> > +
> >  void add_to_free_area_random(struct page *page, struct free_area *area,
> >  		int migratetype)
> >  {
> > -	static u64 rand;
> > -	static u8 rand_bits;
> > +	struct batched_bit_entropy *batch;
> > +	unsigned long entropy;
> > +	int position;
> >  
> >  	/*
> > -	 * The lack of locking is deliberate. If 2 threads race to
> > -	 * update the rand state it just adds to the entropy.
> > +	 * We shouldn't need to disable IRQs as the only caller is
> > +	 * __free_one_page and it should only be called with the zone lock
> > +	 * held and either from IRQ context or with local IRQs disabled.
> >  	 */
> > -	if (rand_bits == 0) {
> > -		rand_bits = 64;
> > -		rand = get_random_u64();
> > +	batch = raw_cpu_ptr(&batched_entropy_bool);
> > +	position = batch->position;
> > +
> > +	if (--position < 0) {
> > +		batch->entropy_bool = get_random_long();
> > +		position = BITS_PER_LONG - 1;
> >  	}
> >  
> > -	if (rand & 1)
> > +	batch->position = position;
> > +	entropy = batch->entropy_bool;
> > +
> > +	if (1ul & (entropy >> position))
> 
> Maybe something like this would be more readble:
> 
> 	if (entropy & BIT(position))
> 
> >  		add_to_free_area(page, area, migratetype);
> >  	else
> >  		add_to_free_area_tail(page, area, migratetype);
> > -	rand_bits--;
> > -	rand >>= 1;
> >  }
> > 
> > 

Thanks for the review. I will update these two items for v10.

- Alex


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
