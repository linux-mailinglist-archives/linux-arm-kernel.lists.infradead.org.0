Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C814D1BD1E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 03:51:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zBb6bWlWhSPHXEUrgBSwr7GMhOEso63KugpJ58U0eHQ=; b=QFd4YRyo+AVVTq
	iAFv8StgIzvAvembRnvRVF8lfj7G+S5OnDooGbL+WBTKjqVMwg1oZgNwgTSebLWqIit5yQRrVAA8w
	OOmmVG8WGFI4S/q/cv+Fjho/6rTNaXi65xZ4c/WTR3o9i5dzpESr+4GB14FUaKGjatLz04wlR9Oqt
	Yuqt93iun0Ks6lkHkOJ6FNtdR1VjC7Z8a94dekh/Lhxw86SYtNPKBAAhInYvyRo7vwgVJeheFZtE5
	gEFb3Sg5XHlEb1xFxdxlzxb/XXLgWsnv074O2BKX8L1g+B2Yn/a8iEdIim8HRwdGLy2ic+Cl0jOxH
	1GcG0v3zb0+7inKfBj2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTbsw-00081Z-91; Wed, 29 Apr 2020 01:51:38 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jTbsk-000812-Hw; Wed, 29 Apr 2020 01:51:26 +0000
Date: Tue, 28 Apr 2020 18:51:26 -0700
From: Matthew Wilcox <willy@infradead.org>
To: "Kirill A. Shutemov" <kirill@shutemov.name>
Subject: Re: [PATCH 0/7] Record the mm_struct in the page table pages
Message-ID: <20200429015126.GP29705@bombadil.infradead.org>
References: <20200428194449.22615-1-willy@infradead.org>
 <20200429002624.qkhb362moj6v3vtw@box>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429002624.qkhb362moj6v3vtw@box>
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-m68k@lists.linux-m68k.org,
 Geert Uytterhoeven <geert@linux-m68k.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 03:26:24AM +0300, Kirill A. Shutemov wrote:
> On Tue, Apr 28, 2020 at 12:44:42PM -0700, Matthew Wilcox wrote:
> > From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
> > 
> > Pages which are in use as page tables have some space unused in struct
> > page.  It would be handy to have a pointer to the struct mm_struct that
> > they belong to so that we can handle uncorrectable errors in page tables
> > more gracefully.  There are a few other things we could use it for too,
> > such as checking that the page table entry actually belongs to the task
> > we think it ought to.  This patch series does none of that, but does
> > lay the groundwork for it.
> > 
> > Matthew Wilcox (Oracle) (7):
> 
> How does it work for kernel side of virtual address space?

init_mm

> And your employer may be interested in semantics around
> CONFIG_ARCH_WANT_HUGE_PMD_SHARE :P

I was thinking about that.  Right now, it's only useful for debugging
purposes (as you point out in a later email).  I think it's OK if shared
PMDs aren't supported as well as regular PTEs, just because there are
so few of them that uncorrectable errors are less likely to strike in
those pages.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
