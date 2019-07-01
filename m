Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CC95BC15
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 14:47:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vImCYTx67kAujJmtvOdad/rVhaaCOuiAM9ivNF6ueIw=; b=i52S2O+4bvdBaP
	qVZ4Pyaoe0C6tdaYaLnZBF3K3a2yHmHC6ASwjsqpu1nZP3sF24HbpxzRm+7W83BbD07YUs30wzWzV
	2lg8D4THrl/pocKiSzuueITdt5hMybG0ZG8rjmyN/G4yT7+7IEfwLtJvmY0m3j4O1NwU0cbG1Xtt5
	iyPfUWyg/FmOoDOPYIoSO9djcBrROpxa7tQmCaBeL9/MccuB79+PhnMoVQg/eTU4GANKLU5ZAggFw
	WuzD4TBUUFGkeNWRhk9ZfNZCsteXJgE/0nukzNdxXZbgZMm83kDXVW6kyKYorYZQq1kyJQP/EvjCO
	LQ8BWPI8UVU2rQ/ghtmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhviR-00089P-S5; Mon, 01 Jul 2019 12:47:27 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhviJ-000891-0t
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 12:47:20 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B8ACFAEF5;
 Mon,  1 Jul 2019 12:47:17 +0000 (UTC)
Date: Mon, 1 Jul 2019 14:47:17 +0200
From: Michal Hocko <mhocko@kernel.org>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v3 03/11] s390x/mm: Implement arch_remove_memory()
Message-ID: <20190701124717.GU6376@dhcp22.suse.cz>
References: <20190527111152.16324-1-david@redhat.com>
 <20190527111152.16324-4-david@redhat.com>
 <20190701074503.GD6376@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190701074503.GD6376@dhcp22.suse.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_054719_208105_27D82E5B 
X-CRM114-Status: GOOD (  16.96  )
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
Cc: Oscar Salvador <osalvador@suse.com>, linux-s390@vger.kernel.org,
 linux-ia64@vger.kernel.org, Vasily Gorbik <gor@linux.ibm.com>,
 linux-sh@vger.kernel.org, Heiko Carstens <heiko.carstens@de.ibm.com>,
 linux-kernel@vger.kernel.org, Wei Yang <richard.weiyang@gmail.com>,
 linux-mm@kvack.org, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Igor Mammedov <imammedo@redhat.com>, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 01-07-19 09:45:03, Michal Hocko wrote:
> On Mon 27-05-19 13:11:44, David Hildenbrand wrote:
> > Will come in handy when wanting to handle errors after
> > arch_add_memory().
> 
> I do not understand this. Why do you add a code for something that is
> not possible on this HW (based on the comment - is it still valid btw?)

Same as the previous patch (drop it).

> > Cc: Martin Schwidefsky <schwidefsky@de.ibm.com>
> > Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
> > Cc: Andrew Morton <akpm@linux-foundation.org>
> > Cc: Michal Hocko <mhocko@suse.com>
> > Cc: Mike Rapoport <rppt@linux.vnet.ibm.com>
> > Cc: David Hildenbrand <david@redhat.com>
> > Cc: Vasily Gorbik <gor@linux.ibm.com>
> > Cc: Oscar Salvador <osalvador@suse.com>
> > Signed-off-by: David Hildenbrand <david@redhat.com>
> > ---
> >  arch/s390/mm/init.c | 13 +++++++------
> >  1 file changed, 7 insertions(+), 6 deletions(-)
> > 
> > diff --git a/arch/s390/mm/init.c b/arch/s390/mm/init.c
> > index d552e330fbcc..14955e0a9fcf 100644
> > --- a/arch/s390/mm/init.c
> > +++ b/arch/s390/mm/init.c
> > @@ -243,12 +243,13 @@ int arch_add_memory(int nid, u64 start, u64 size,
> >  void arch_remove_memory(int nid, u64 start, u64 size,
> >  			struct vmem_altmap *altmap)
> >  {
> > -	/*
> > -	 * There is no hardware or firmware interface which could trigger a
> > -	 * hot memory remove on s390. So there is nothing that needs to be
> > -	 * implemented.
> > -	 */
> > -	BUG();
> > +	unsigned long start_pfn = start >> PAGE_SHIFT;
> > +	unsigned long nr_pages = size >> PAGE_SHIFT;
> > +	struct zone *zone;
> > +
> > +	zone = page_zone(pfn_to_page(start_pfn));
> > +	__remove_pages(zone, start_pfn, nr_pages, altmap);
> > +	vmem_remove_mapping(start, size);
> >  }
> >  #endif
> >  #endif /* CONFIG_MEMORY_HOTPLUG */
> > -- 
> > 2.20.1
> > 
> 
> -- 
> Michal Hocko
> SUSE Labs

-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
