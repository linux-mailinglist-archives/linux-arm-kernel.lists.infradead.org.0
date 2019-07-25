Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 228CC759D7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 23:42:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VbasYjMUnaFiXbMs3FYpyLYQ8ycrbnZxUWpTozKR5D8=; b=OEtRsKeaets6OX
	SN5qX7KAI3Z4GudpvQIdWPS7RGDw2uYl2j8bmCng5/n7W5ryLm6zvWiJGkxamASKxbNnRcsriRN75
	nP3idgttkrQEJfF8DbH/lOR3ohDTmdUaR7gUW+W3pkZAnocH78lp9xKoSB4mRTSU4BBRFxe82xE7d
	lbpwDMbtYlGY/F4DmCDdrOr8gVW+NrgvjUPCDMJzBvD+hHZ29UKNkECg7BjmwR/6sdTCMakUeQ5tc
	HdF/cvWoAKlMcZuU4IroZ2a6beVCwAc0hM5vzH3khsxzZ+29hYL27ndsPNE2xcWD0UBdCzaq0p0Lh
	+mCWY+yODHMaikS41x5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqlVg-0004j6-QY; Thu, 25 Jul 2019 21:42:49 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92 #3 (Red
 Hat Linux)) id 1hqlVG-0004iU-Tb; Thu, 25 Jul 2019 21:42:22 +0000
Date: Thu, 25 Jul 2019 14:42:22 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [RFC] mm/pgtable/debug: Add test validating architecture page
 table helpers
Message-ID: <20190725214222.GG30641@bombadil.infradead.org>
References: <1564037723-26676-1-git-send-email-anshuman.khandual@arm.com>
 <1564037723-26676-2-git-send-email-anshuman.khandual@arm.com>
 <20190725143920.GW363@bombadil.infradead.org>
 <20190725213858.GK1330@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190725213858.GK1330@shell.armlinux.org.uk>
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

On Thu, Jul 25, 2019 at 10:38:58PM +0100, Russell King - ARM Linux admin wrote:
> On Thu, Jul 25, 2019 at 07:39:21AM -0700, Matthew Wilcox wrote:
> > But 'page' isn't necessarily PMD-aligned.  I don't think we can rely on
> > architectures doing the right thing if asked to make a PMD for a randomly
> > aligned page.
> > 
> > How about finding the physical address of something like kernel_init(),
> > and using the corresponding pte/pmd/pud/p4d/pgd that encompasses that
> > address?  It's also better to pass in the pfn/page rather than using global
> > variables to communicate to the test functions.
> 
> There are architectures (32-bit ARM) where the kernel is mapped using
> section mappings, and we don't expect the Linux page table walking to
> work for section mappings.

This test doesn't go so far as to insert the PTE/PMD/PUD/... into the
page tables.  It merely needs an appropriately aligned PFN to create a
PTE/PMD/PUD/... from.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
