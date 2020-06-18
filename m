Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B781FECB4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 09:45:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X37LJIDDAmw/0lenmAcow1GHW1ZccUUwrxFKO807Vaw=; b=fqnyDgMcMTIK5t
	CYjzU3YqTjagiF+4n1jNUPoOgfR7H6NJMN7q6E2/QDRGfKR5Zfxxn0Da82zy0OIVbAHcl8OOL+MkE
	OWyaZ1Wjys4K7KlLyMnKctlhhno2UJYEZA2mPVzFwLLmlCY+D21tA9EDrDpX4kjtV4KGuiChqoAD7
	Mo5kiQR529G6r7iIt77yBchMzQELjYZmiH2IYQfwkmKO9xZo5DAGuUIrdBu+gvEW6YPSTwQX/Nhn1
	Sa2RS7Jon5qbq13Dp4yjs3atMWkOTneT28fQ/08TH+IK8CITFB0L6RUfKzYDbq7X7JrvShN1g3vpg
	A2aXwKii/0s9Zx7P3ypA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlpEK-0007ir-70; Thu, 18 Jun 2020 07:45:00 +0000
Received: from szxga08-in.huawei.com ([45.249.212.255] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlpDl-0007Cq-UZ
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 07:44:29 +0000
Received: from dggemi401-hub.china.huawei.com (unknown [172.30.72.55])
 by Forcepoint Email with ESMTP id BABD685A482B5AEB3235;
 Thu, 18 Jun 2020 15:43:50 +0800 (CST)
Received: from DGGEMI525-MBS.china.huawei.com ([169.254.6.126]) by
 dggemi401-hub.china.huawei.com ([10.3.17.134]) with mapi id 14.03.0487.000;
 Thu, 18 Jun 2020 15:43:43 +0800
From: "Song Bao Hua (Barry Song)" <song.bao.hua@hisilicon.com>
To: Will Deacon <will@kernel.org>
Subject: RE: [PATCH v2] arm64: mm: reserve hugetlb CMA after numa_init
Thread-Topic: [PATCH v2] arm64: mm: reserve hugetlb CMA after numa_init
Thread-Index: AQHWRCxu8v+ZJR6HI0W0yfQfoTndDqjcEtCAgACalcD//+wXAIAAuwbAgAAeq4CAAIwvUA==
Date: Thu, 18 Jun 2020 07:43:43 +0000
Message-ID: <B926444035E5E2439431908E3842AFD2507431@DGGEMI525-MBS.china.huawei.com>
References: <20200616221924.74780-1-song.bao.hua@hisilicon.com>
 <20200617101824.GB3368@willie-the-truck>
 <B926444035E5E2439431908E3842AFD2502AA9@DGGEMI525-MBS.china.huawei.com>
 <20200617182026.GA19784@carbon.dhcp.thefacebook.com>
 <B926444035E5E2439431908E3842AFD2503532@DGGEMI525-MBS.china.huawei.com>
 <20200618071934.GA4864@willie-the-truck>
In-Reply-To: <20200618071934.GA4864@willie-the-truck>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.126.203.42]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_004426_155700_74450947 
X-CRM114-Status: GOOD (  20.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.255 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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



> -----Original Message-----
> From: Will Deacon [mailto:will@kernel.org]
> Sent: Thursday, June 18, 2020 7:20 PM
> To: Song Bao Hua (Barry Song) <song.bao.hua@hisilicon.com>
> Cc: Roman Gushchin <guro@fb.com>; catalin.marinas@arm.com;
> nsaenzjulienne@suse.de; steve.capper@arm.com; rppt@linux.ibm.com;
> akpm@linux-foundation.org; linux-arm-kernel@lists.infradead.org;
> linux-kernel@vger.kernel.org; Linuxarm <linuxarm@huawei.com>; Matthias
> Brugger <matthias.bgg@gmail.com>
> Subject: Re: [PATCH v2] arm64: mm: reserve hugetlb CMA after numa_init
> 
> On Wed, Jun 17, 2020 at 09:43:51PM +0000, Song Bao Hua (Barry Song)
> wrote:
> > > From: Roman Gushchin [mailto:guro@fb.com]
> > > On Wed, Jun 17, 2020 at 11:38:03AM +0000, Song Bao Hua (Barry Song)
> > > > > From: Will Deacon [mailto:will@kernel.org]
> > > > > On Wed, Jun 17, 2020 at 10:19:24AM +1200, Barry Song wrote:
> > > > > > hugetlb_cma_reserve() is called at the wrong place. numa_init has not
> > > > > > diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> > > > > > index e631e6425165..41914b483d54 100644
> > > > > > --- a/arch/arm64/mm/init.c
> > > > > > +++ b/arch/arm64/mm/init.c
> > > > > > @@ -404,11 +404,6 @@ void __init arm64_memblock_init(void)
> > > > > >  	high_memory = __va(memblock_end_of_DRAM() - 1) + 1;
> > > > > >
> > > > > >  	dma_contiguous_reserve(arm64_dma32_phys_limit);
> > > > > > -
> > > > > > -#ifdef CONFIG_ARM64_4K_PAGES
> > > > > > -	hugetlb_cma_reserve(PUD_SHIFT - PAGE_SHIFT);
> > > > > > -#endif
> > > > >
> > > > > Why is this dependent on CONFIG_ARM64_4K_PAGES? We
> unconditionally
> > > > > select ARCH_HAS_GIGANTIC_PAGE so this seems unnecessary.
> > > >
> > > > Roman, would you like to answer this question? Have you found any
> > > problem if system
> > > > doesn't set 4K_PAGES?
> > >
> > > No, I was just following the code in arch/arm64/mm/hugetlbpage.c where
> all
> > > related to PUD-sized pages is guarded by CONFIG_ARM64_4K_PAGES.
> > > Actually I did all my testing on x86-64, I don't even have any arm
> hardware.
> > >
> > > I'm totally fine with removing this #ifdef if it's not needed.
> >
> > At this moment, I would suggest we should keep this "ifdef". Otherwise,
> hugetlb_cma_reserve() won't be really useful.
> >
> > For example, while setting PAGE size to 64KB. I got this error in
> hugetlb_cma_reserve():
> > hugetlb_cma: cma area should be at least 4194304 MiB
> > This is absolutely unreasonable.
> 
> Maybe one for RaspberryPi 5, huh? ;)
> 
> But ok, I'll take your patch as-is and add a comment about NUMA.

Have you seen the v3 with comment? I've already sent.

> 
> Thanks,
> 
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
