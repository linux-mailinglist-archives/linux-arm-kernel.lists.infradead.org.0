Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 012C5759CD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 23:40:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qv0T2xGndsGdIjG2x2fOtV6WqYRlX6TU5NmhRN+vK6g=; b=eS/guojsk9i2ux
	sWif0Z+XlYUUGtjysgymBg6VShOno9HDYZCKhdsnqAskZF1JsJ7II96NOgFCxoc34TDZmB6DV2Tqx
	z90P7x+PqVH/+5OXPyd5uXwIf3Mc9gP9nvzNsGPwkD7Dj7CQpcx67KG7UPv1mu2SVwzYS1PPC493N
	HRI2ZLmS9jrabZM61Lin7AXMbG1ets7TRNuzcqbh5Jb6FNe4dz7FYF3P1HJZ9TxI0KdGjOdtHH9Cc
	SAsgj3wNgk0ZLZS5Tzjffq5tMUlt7As3HKUzCNQUoY547WZ0PCirRMh9JyWuU1Kiauk3x7JqsqAOZ
	7hxNALetNNpCFo3Oi4/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqlSx-0002lu-Hu; Thu, 25 Jul 2019 21:39:59 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqlSl-0002k2-7Y
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 21:39:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Kavq+eip1im675O4/bBLmRIQNPqz1C3eZxq/uo8ufXg=; b=eLpLsIpHT3C0NpVJISxE4wDFP
 0m9PzZxBOyaV1z++UwBohppQQiDGlRoxJgo8tE7vvbhAe0pv+aRmtEdRR79cc8X1YcIrIpfQrmeyO
 EFzavlvQKFeMAPS54eto2mb6JhC0HxzSj38xaLArlIOk7NxOpTKvVDSbeKuD03Mli22Mu7hNeqZEM
 SkZ6oXyf3A+yKcqm6Xk45/zIAP3YQV3zX7VmOauPyiBxJ5XH1H9lcgUkMY/B0Erq2DOy/5UdosSfp
 hkRP/vFoPTpMcJI4fOfZhjaZwLZ24C3sKtAqcajQ7tHjWA6lfmcEN/ctpkjvb6ZeQNA7U/yIjfXDq
 6W1P95aSw==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:44656)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hqlS8-0002Sy-46; Thu, 25 Jul 2019 22:39:08 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hqlRy-00061g-Ob; Thu, 25 Jul 2019 22:38:58 +0100
Date: Thu, 25 Jul 2019 22:38:58 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [RFC] mm/pgtable/debug: Add test validating architecture page
 table helpers
Message-ID: <20190725213858.GK1330@shell.armlinux.org.uk>
References: <1564037723-26676-1-git-send-email-anshuman.khandual@arm.com>
 <1564037723-26676-2-git-send-email-anshuman.khandual@arm.com>
 <20190725143920.GW363@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190725143920.GW363@bombadil.infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_143947_275850_6B207E90 
X-CRM114-Status: GOOD (  19.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, x86@kernel.org,
 Kees Cook <keescook@chromium.org>, Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Dave Hansen <dave.hansen@intel.com>, linux-kernel@vger.kernel.org,
 Steven Price <Steven.Price@arm.com>, linux-mm@kvack.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <Mark.Brown@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 Michal Hocko <mhocko@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 07:39:21AM -0700, Matthew Wilcox wrote:
> On Thu, Jul 25, 2019 at 12:25:23PM +0530, Anshuman Khandual wrote:
> > This adds a test module which will validate architecture page table helpers
> > and accessors regarding compliance with generic MM semantics expectations.
> > This will help various architectures in validating changes to the existing
> > page table helpers or addition of new ones.
> 
> I think this is a really good idea.
> 
> >  lib/Kconfig.debug       |  14 +++
> >  lib/Makefile            |   1 +
> >  lib/test_arch_pgtable.c | 290 ++++++++++++++++++++++++++++++++++++++++++++++++
> 
> Is this the right place for it?  I worry that lib/ is going to get overloaded
> with test code, and this feels more like mm/ test code.
> 
> > +#ifdef CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE
> > +static void pmd_basic_tests(void)
> > +{
> > +	pmd_t pmd;
> > +
> > +	pmd = mk_pmd(page, prot);
> 
> But 'page' isn't necessarily PMD-aligned.  I don't think we can rely on
> architectures doing the right thing if asked to make a PMD for a randomly
> aligned page.
> 
> How about finding the physical address of something like kernel_init(),
> and using the corresponding pte/pmd/pud/p4d/pgd that encompasses that
> address?  It's also better to pass in the pfn/page rather than using global
> variables to communicate to the test functions.

There are architectures (32-bit ARM) where the kernel is mapped using
section mappings, and we don't expect the Linux page table walking to
work for section mappings.

> > +	/*
> > +	 * A huge page does not point to next level page table
> > +	 * entry. Hence this must qualify as pmd_bad().
> > +	 */
> > +	WARN_ON(!pmd_bad(pmd_mkhuge(pmd)));
> 
> I didn't know that rule.  This is helpful because it gives us somewhere
> to document all these tricksy little rules.
> 
> > +#ifdef CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
> > +static void pud_basic_tests(void)
> 
> Is this the right ifdef?
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
