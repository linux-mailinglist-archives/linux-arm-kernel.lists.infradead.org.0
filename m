Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 378F375B18
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 00:57:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s0Lccuj32nitdxLuVUz7vYoRE+KM61STDwJSqcCOS0k=; b=qTBLUQJdtXaXon
	7stPd8r3Var6uHWJBhZMt1eBDdgqLtuV0Cu5JDi3BYnm8W22iF6uCVXD/BS9Di4oRj0G0omAZJOy4
	G6CDIMcH93PR3c0cpHO7leBZUlytwV7GuyynUk1p1zXfAE0u/5QQeHJMu3o8FzQ8W3hkE8nfzXKVK
	rtCDz0II94bfxLVPd8yKVB/pjhfnN+mAI12IlWdi0A/MUR0AQwEjvgzk2kX7Qg3vqHc8NqL3U09Ho
	1B8HqjniOS/pqnncwupjskG8K/6rvqjAVDyZ9upEBWNkPsQrUwsdvG97fE+zNt1g+xI4YcGlknyoK
	ZYxqylUgnGrSsjjmdD1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqmfi-0004O2-Ms; Thu, 25 Jul 2019 22:57:14 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92 #3 (Red
 Hat Linux)) id 1hqmfT-0004Nn-1f; Thu, 25 Jul 2019 22:56:59 +0000
Date: Thu, 25 Jul 2019 15:56:58 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [RFC] mm/pgtable/debug: Add test validating architecture page
 table helpers
Message-ID: <20190725225658.GH30641@bombadil.infradead.org>
References: <1564037723-26676-1-git-send-email-anshuman.khandual@arm.com>
 <1564037723-26676-2-git-send-email-anshuman.khandual@arm.com>
 <20190725143920.GW363@bombadil.infradead.org>
 <20190725213858.GK1330@shell.armlinux.org.uk>
 <20190725214222.GG30641@bombadil.infradead.org>
 <20190725215812.GN1330@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190725215812.GN1330@shell.armlinux.org.uk>
User-Agent: Mutt/1.11.4 (2019-03-13)
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

On Thu, Jul 25, 2019 at 10:58:12PM +0100, Russell King - ARM Linux admin wrote:
> On Thu, Jul 25, 2019 at 02:42:22PM -0700, Matthew Wilcox wrote:
> > On Thu, Jul 25, 2019 at 10:38:58PM +0100, Russell King - ARM Linux admin wrote:
> > > On Thu, Jul 25, 2019 at 07:39:21AM -0700, Matthew Wilcox wrote:
> > > > But 'page' isn't necessarily PMD-aligned.  I don't think we can rely on
> > > > architectures doing the right thing if asked to make a PMD for a randomly
> > > > aligned page.
> > > > 
> > > > How about finding the physical address of something like kernel_init(),
> > > > and using the corresponding pte/pmd/pud/p4d/pgd that encompasses that
> > > > address?  It's also better to pass in the pfn/page rather than using global
> > > > variables to communicate to the test functions.
> > > 
> > > There are architectures (32-bit ARM) where the kernel is mapped using
> > > section mappings, and we don't expect the Linux page table walking to
> > > work for section mappings.
> > 
> > This test doesn't go so far as to insert the PTE/PMD/PUD/... into the
> > page tables.  It merely needs an appropriately aligned PFN to create a
> > PTE/PMD/PUD/... from.
> 
> Well, in any case,
> 
> c085ac68 t kernel_init
> 
> so I'm not sure that would be an improvement.

I said "the corresponding pte/pmd/pud/p4d/pgd that encompasses that address"

So for a PTE, you'd use PFN 0xc085a000, for a PMD, you'd use PFN 0xc0000000
and for a PGD, you'd use PFN 0 (assuming 9 bits per level of table).

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
