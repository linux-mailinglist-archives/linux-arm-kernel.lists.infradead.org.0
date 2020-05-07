Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 047D31C84F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 10:37:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U724sFdEm0SVW92gkdTESZgbsD8AhJ857+xrcyAlRPM=; b=u35M1WidkC57tQ
	ar/kMrsrEMXuHpkTRk6DIu3HuHnqdY+uiWlyAFYaRUjAxma+Aadr2zi5klFMJaJSM1FsNnTiXYO3q
	wu7LTvLCKp0PL9fBbFcFRmg7F/pCm1mjm+fBIX4L8sQYUc8zlShbYBr3A/SdCa/c2+/G47QWH32rJ
	C6banEZpPR+cRdrJKHLLZ8TpPld8DeinVpIZnfMOU+/q1WZFSSnWT9NFJzcGKkZP3jCYvwuKAtEAQ
	F4RC0tEbpOiypc30XGqKohyMiHpuOjKyniYEpkfKkiu2fgdFX3+3IKMLIqfOvDx0hHMjzKHRyLs/5
	qgJVGfm1UscyfDsKqKRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWc2R-0005RE-Up; Thu, 07 May 2020 08:37:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWc2I-0005Qr-9d
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 08:37:43 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A2FA82078C;
 Thu,  7 May 2020 08:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588840661;
 bh=UfbG32gghEnagxdM/s07RMhpIOEDCca3UVjRhkdrfA0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2YThvRAXTq/axvNiQxDIgMsKSH75GoJAMMVFJySLe+uVCUTq7iUq88GILs6BOyM+X
 asd4QgHl3ocvp+CbSFScegyXFuiCm/7QBw/QnYnzvuzEJlD/9kPlspqPiKJcfL4kgw
 Gvf3mvDdhrZjtAlXoCZHPKvWEB4sKspWBbNUyqQI=
Date: Thu, 7 May 2020 09:37:37 +0100
From: Will Deacon <will@kernel.org>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH] arm64/mm: Remove add_huge_page_size()
Message-ID: <20200507083737.GB28215@willie-the-truck>
References: <20200506064635.20114-1-gshan@redhat.com>
 <fa3ad75d-9c4d-d6c9-1664-53b4c9770c6b@arm.com>
 <20200506071927.GB7021@willie-the-truck>
 <e13bb496-7988-e096-2131-78c004231f27@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e13bb496-7988-e096-2131-78c004231f27@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_013742_378518_10D08BC0 
X-CRM114-Status: GOOD (  19.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, Anshuman Khandual <anshuman.khandual@arm.com>,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, shan.gavin@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 10:15:59AM +1000, Gavin Shan wrote:
> On 5/6/20 5:19 PM, Will Deacon wrote:
> > On Wed, May 06, 2020 at 12:36:43PM +0530, Anshuman Khandual wrote:
> > > 
> > > 
> > > On 05/06/2020 12:16 PM, Gavin Shan wrote:
> > > > The function add_huge_page_size(), wrapper of hugetlb_add_hstate(),
> > > > avoids to register duplicated huge page states for same size. However,
> > > > the same logic has been included in hugetlb_add_hstate(). So it seems
> > > > unnecessary to keep add_huge_page_size() and this just removes it.
> > > 
> > > Makes sense.
> > > 
> > > > 
> > > > Signed-off-by: Gavin Shan <gshan@redhat.com>
> > > > ---
> > > >   arch/arm64/mm/hugetlbpage.c | 18 +++++-------------
> > > >   1 file changed, 5 insertions(+), 13 deletions(-)
> > > > 
> > > > diff --git a/arch/arm64/mm/hugetlbpage.c b/arch/arm64/mm/hugetlbpage.c
> > > > index bbeb6a5a6ba6..ed7530413941 100644
> > > > --- a/arch/arm64/mm/hugetlbpage.c
> > > > +++ b/arch/arm64/mm/hugetlbpage.c
> > > > @@ -441,22 +441,14 @@ void huge_ptep_clear_flush(struct vm_area_struct *vma,
> > > >   	clear_flush(vma->vm_mm, addr, ptep, pgsize, ncontig);
> > > >   }
> > > > -static void __init add_huge_page_size(unsigned long size)
> > > > -{
> > > > -	if (size_to_hstate(size))
> > > > -		return;
> > > > -
> > > > -	hugetlb_add_hstate(ilog2(size) - PAGE_SHIFT);
> > > > -}
> > > > -
> > > >   static int __init hugetlbpage_init(void)
> > > >   {
> > > >   #ifdef CONFIG_ARM64_4K_PAGES
> > > > -	add_huge_page_size(PUD_SIZE);
> > > > +	hugetlb_add_hstate(PUD_SHIFT - PAGE_SHIFT);
> > > >   #endif
> > > > -	add_huge_page_size(CONT_PMD_SIZE);
> > > > -	add_huge_page_size(PMD_SIZE);
> > > > -	add_huge_page_size(CONT_PTE_SIZE);
> > > > +	hugetlb_add_hstate(CONT_PMD_SHIFT + PMD_SHIFT - PAGE_SHIFT);
> > > > +	hugetlb_add_hstate(PMD_SHIFT - PAGE_SHIFT);
> > > > +	hugetlb_add_hstate(CONT_PTE_SHIFT);
> > 
> > Something similar has already been done in linux-next.
> > 
> 
> Thanks, Will. I didn't check linux-next before posting this patch.
> Please ignore it then :)
> 
> > > Should these page order values be converted into macros instead. Also
> > > we should probably keep (CONT_PTE_SHIFT + PAGE_SHIFT - PAGE_SHIFT) as
> > > is to make things more clear.
> > 
> > I think the real confusion stems from us not being consistent with your
> > *_SHIFT definitions on arm64. It's madness for CONT_PTE_SHIFT to be smaller
> > than PAGE_SHIFT imo, but it's just cosmetic I guess.
> > 
> 
> Yeah, Do you want me to post a patch, to fix it?

Let's wait until 5.8 is out the door first, since we've already got a fair
amount of activity in this area and it would be a pity if we broke something
as a result of cleanup!

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
