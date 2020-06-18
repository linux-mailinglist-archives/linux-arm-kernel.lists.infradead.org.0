Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E1B1FECB2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 09:44:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WuTSG5d+bttwdA4OZmSWoqtzVlI5R58DfOvRUqHHjXA=; b=fvOqgYbYvP7faK
	5yg32mcE5NjC7XHU3Oqfd+mf0Ewle83gPwJwSbRqrDDcln/jzrDm9YVwgCgf56vlZrvaDvzW1f9zW
	9uxOlJoTQ6lO1aaLvlWPimrbyuLhDGVSjiF5Muo8baErkVLUiEcta4XfrVCSrk0HdSeSruaj1ouNb
	JXB6/5xj27agGtZqeqH7LAVw/itONM66rdmgZ5nLSiGxrdxartYSF5sdItwHb2oBP3ryUtsM1CDpq
	KW84uE6PtdGd4nD2Oc+Vuw2InX8R+T9nHxcIkxesObcWqWQq+IOO0xlmdHVFPQUSDOFzxCli+3nx0
	9p78FozZUmVkKsWN/LjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlpE4-0007VG-Fy; Thu, 18 Jun 2020 07:44:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlpDm-0007U0-VH
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 07:44:29 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 97A442166E;
 Thu, 18 Jun 2020 07:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592466266;
 bh=LpxGETJrqE7ptBTScyTDcyHebnrA5FbmxlQMV/3rWPg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hZoIdqxSbVDRXxRT8A4We5T4VQWpR3PAcfmToMUljypXIpacktpjV+CmnQQB5SQ31
 zR8T61Em8Pusugz2FWs5OxzwVTrDHGA4mT3SiUiX02Ut+3iz4UTzxxeFkNQMbtIr26
 UzYVdOCJx2i+M2nMRN6Wju/q4yzY4FS0kxVVlrHM=
Date: Thu, 18 Jun 2020 08:44:21 +0100
From: Will Deacon <will@kernel.org>
To: "Song Bao Hua (Barry Song)" <song.bao.hua@hisilicon.com>
Subject: Re: [PATCH v2] arm64: mm: reserve hugetlb CMA after numa_init
Message-ID: <20200618074421.GA5109@willie-the-truck>
References: <20200616221924.74780-1-song.bao.hua@hisilicon.com>
 <20200617101824.GB3368@willie-the-truck>
 <B926444035E5E2439431908E3842AFD2502AA9@DGGEMI525-MBS.china.huawei.com>
 <20200617182026.GA19784@carbon.dhcp.thefacebook.com>
 <B926444035E5E2439431908E3842AFD2503532@DGGEMI525-MBS.china.huawei.com>
 <20200618071934.GA4864@willie-the-truck>
 <B926444035E5E2439431908E3842AFD2507431@DGGEMI525-MBS.china.huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <B926444035E5E2439431908E3842AFD2507431@DGGEMI525-MBS.china.huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_004427_039829_E5F977EB 
X-CRM114-Status: GOOD (  22.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "steve.capper@arm.com" <steve.capper@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Linuxarm <linuxarm@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 Roman Gushchin <guro@fb.com>,
 "nsaenzjulienne@suse.de" <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 18, 2020 at 07:43:43AM +0000, Song Bao Hua (Barry Song) wrote:
> 
> 
> > -----Original Message-----
> > From: Will Deacon [mailto:will@kernel.org]
> > Sent: Thursday, June 18, 2020 7:20 PM
> > To: Song Bao Hua (Barry Song) <song.bao.hua@hisilicon.com>
> > Cc: Roman Gushchin <guro@fb.com>; catalin.marinas@arm.com;
> > nsaenzjulienne@suse.de; steve.capper@arm.com; rppt@linux.ibm.com;
> > akpm@linux-foundation.org; linux-arm-kernel@lists.infradead.org;
> > linux-kernel@vger.kernel.org; Linuxarm <linuxarm@huawei.com>; Matthias
> > Brugger <matthias.bgg@gmail.com>
> > Subject: Re: [PATCH v2] arm64: mm: reserve hugetlb CMA after numa_init
> > 
> > On Wed, Jun 17, 2020 at 09:43:51PM +0000, Song Bao Hua (Barry Song)
> > wrote:
> > > > From: Roman Gushchin [mailto:guro@fb.com]
> > > > On Wed, Jun 17, 2020 at 11:38:03AM +0000, Song Bao Hua (Barry Song)
> > > > > > From: Will Deacon [mailto:will@kernel.org]
> > > > > > On Wed, Jun 17, 2020 at 10:19:24AM +1200, Barry Song wrote:
> > > > > > > hugetlb_cma_reserve() is called at the wrong place. numa_init has not
> > > > > > > diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> > > > > > > index e631e6425165..41914b483d54 100644
> > > > > > > --- a/arch/arm64/mm/init.c
> > > > > > > +++ b/arch/arm64/mm/init.c
> > > > > > > @@ -404,11 +404,6 @@ void __init arm64_memblock_init(void)
> > > > > > >  	high_memory = __va(memblock_end_of_DRAM() - 1) + 1;
> > > > > > >
> > > > > > >  	dma_contiguous_reserve(arm64_dma32_phys_limit);
> > > > > > > -
> > > > > > > -#ifdef CONFIG_ARM64_4K_PAGES
> > > > > > > -	hugetlb_cma_reserve(PUD_SHIFT - PAGE_SHIFT);
> > > > > > > -#endif
> > > > > >
> > > > > > Why is this dependent on CONFIG_ARM64_4K_PAGES? We
> > unconditionally
> > > > > > select ARCH_HAS_GIGANTIC_PAGE so this seems unnecessary.
> > > > >
> > > > > Roman, would you like to answer this question? Have you found any
> > > > problem if system
> > > > > doesn't set 4K_PAGES?
> > > >
> > > > No, I was just following the code in arch/arm64/mm/hugetlbpage.c where
> > all
> > > > related to PUD-sized pages is guarded by CONFIG_ARM64_4K_PAGES.
> > > > Actually I did all my testing on x86-64, I don't even have any arm
> > hardware.
> > > >
> > > > I'm totally fine with removing this #ifdef if it's not needed.
> > >
> > > At this moment, I would suggest we should keep this "ifdef". Otherwise,
> > hugetlb_cma_reserve() won't be really useful.
> > >
> > > For example, while setting PAGE size to 64KB. I got this error in
> > hugetlb_cma_reserve():
> > > hugetlb_cma: cma area should be at least 4194304 MiB
> > > This is absolutely unreasonable.
> > 
> > Maybe one for RaspberryPi 5, huh? ;)
> > 
> > But ok, I'll take your patch as-is and add a comment about NUMA.
> 
> Have you seen the v3 with comment? I've already sent.

Thanks, just saw that (I'm going through morning email atm :)

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
