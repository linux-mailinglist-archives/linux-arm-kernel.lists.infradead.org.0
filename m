Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 091181FEC51
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 09:19:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GT4JF7H2CYSBTzpNJS8tsjK/aXLrabuMfEMPLYWYDb0=; b=saeLGugtZlJpmd
	V61Lzdal8nqS3Bx3qAIED2U5eybaz71elqd9fB72+2ouuyCg3ICMfMhCIc97tJGTA36MT+riX5NNl
	mU2PGZ4cj9WToH2Al334RRmEfxWnrUQBMgTTjcdzXZTzMm1G5ovKwEKc82E7TFnEu8KVun/U9kyPu
	LdXqGBJ9t3Ev3fVIi1uKVc1mLigoH69YeqyCblU668xkIdQpTmj4CGhihLa276bAZJKht2Y/RFUQ6
	SdiJYBUNV01XctSv0Xwdh5yQVXApdUSL0cM1d3HzTimfeCkqkFP/4m4RDLpv1xpbkXogxJ8kc1BJs
	fApUaztY40SqpZGOjcJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlopy-0007Xq-6p; Thu, 18 Jun 2020 07:19:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlopp-0007X1-2W
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 07:19:42 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B84FD21655;
 Thu, 18 Jun 2020 07:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592464780;
 bh=pV6O1yumfzhHIjX5Fbrm60kDmHZdVXToNrKqF29U6Jc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JEsLvR7tl2OlcN2DqRqeWIKRKRlk+5dzYYJt2ZZkF6bW17rfvVVP478efND/3ObpL
 qEPXsK5+spsYuZmTOVJTIv5e/fZgdAs+yL+fhXD8qCTeM3T9zGj34BwNexnFdhF+JR
 vd1fItpn4l1h0zBgUOphiRZar9iWFXiKwGmYlogg=
Date: Thu, 18 Jun 2020 08:19:35 +0100
From: Will Deacon <will@kernel.org>
To: "Song Bao Hua (Barry Song)" <song.bao.hua@hisilicon.com>
Subject: Re: [PATCH v2] arm64: mm: reserve hugetlb CMA after numa_init
Message-ID: <20200618071934.GA4864@willie-the-truck>
References: <20200616221924.74780-1-song.bao.hua@hisilicon.com>
 <20200617101824.GB3368@willie-the-truck>
 <B926444035E5E2439431908E3842AFD2502AA9@DGGEMI525-MBS.china.huawei.com>
 <20200617182026.GA19784@carbon.dhcp.thefacebook.com>
 <B926444035E5E2439431908E3842AFD2503532@DGGEMI525-MBS.china.huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <B926444035E5E2439431908E3842AFD2503532@DGGEMI525-MBS.china.huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_001941_130944_6186B00A 
X-CRM114-Status: GOOD (  19.61  )
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

On Wed, Jun 17, 2020 at 09:43:51PM +0000, Song Bao Hua (Barry Song) wrote:
> > From: Roman Gushchin [mailto:guro@fb.com]
> > On Wed, Jun 17, 2020 at 11:38:03AM +0000, Song Bao Hua (Barry Song)
> > > > From: Will Deacon [mailto:will@kernel.org]
> > > > On Wed, Jun 17, 2020 at 10:19:24AM +1200, Barry Song wrote:
> > > > > hugetlb_cma_reserve() is called at the wrong place. numa_init has not
> > > > > diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> > > > > index e631e6425165..41914b483d54 100644
> > > > > --- a/arch/arm64/mm/init.c
> > > > > +++ b/arch/arm64/mm/init.c
> > > > > @@ -404,11 +404,6 @@ void __init arm64_memblock_init(void)
> > > > >  	high_memory = __va(memblock_end_of_DRAM() - 1) + 1;
> > > > >
> > > > >  	dma_contiguous_reserve(arm64_dma32_phys_limit);
> > > > > -
> > > > > -#ifdef CONFIG_ARM64_4K_PAGES
> > > > > -	hugetlb_cma_reserve(PUD_SHIFT - PAGE_SHIFT);
> > > > > -#endif
> > > >
> > > > Why is this dependent on CONFIG_ARM64_4K_PAGES? We unconditionally
> > > > select ARCH_HAS_GIGANTIC_PAGE so this seems unnecessary.
> > >
> > > Roman, would you like to answer this question? Have you found any
> > problem if system
> > > doesn't set 4K_PAGES?
> > 
> > No, I was just following the code in arch/arm64/mm/hugetlbpage.c where all
> > related to PUD-sized pages is guarded by CONFIG_ARM64_4K_PAGES.
> > Actually I did all my testing on x86-64, I don't even have any arm hardware.
> > 
> > I'm totally fine with removing this #ifdef if it's not needed.
> 
> At this moment, I would suggest we should keep this "ifdef". Otherwise, hugetlb_cma_reserve() won't be really useful.
> 
> For example, while setting PAGE size to 64KB. I got this error in hugetlb_cma_reserve():
> hugetlb_cma: cma area should be at least 4194304 MiB
> This is absolutely unreasonable.

Maybe one for RaspberryPi 5, huh? ;)

But ok, I'll take your patch as-is and add a comment about NUMA.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
