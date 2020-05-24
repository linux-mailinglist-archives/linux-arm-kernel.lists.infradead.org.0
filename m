Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E831DFD8F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 09:43:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KOceDRYRdt3QmChbOOjIA09LvWppP92Jg6uRpdFb3OU=; b=ozaLC5+Zc24TvH
	2H5F8pLUqT9HXWkNcuqv2b6DN5NSrdc0Uo8wtJh4L/gwSaPAJbwXiJuQn1AmVGrPb15c0TES+gbhn
	fQyAUDsaagG8L91lDYC9mcg6qvr2BAw2346+UayDXhlWz/s4QcoDfru2vqIXkR7rzTJg7BOMK9qOx
	v8rrZP2lRLvTqQ9z2PeR0QxvgirdmLqJef8NhaDdhYag3fAxXkJ/OYVV6tDJj3qqKwiXed4E/sbUV
	/WcP3p3uSq+Lh2i+xUntawNuxQV3Dfnj6+U5Bpl9SVHY8dIvlTboW7LWeYa861pfgNJ6/DDfCLL0w
	9DgGRYWzDmHOH6oWdBHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jclHU-0005H9-2l; Sun, 24 May 2020 07:42:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jclHM-0005GG-TV
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 07:42:42 +0000
Received: from kernel.org (unknown [87.71.47.117])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 26E322076C;
 Sun, 24 May 2020 07:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590306158;
 bh=+/fFoXXRcAaUgRrF312cHC7kEgpII3DvTDA8eGvdehk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fWl1umd9MDaNFTQL8vtXp9S91lOpXqHQ9cMIrKzvtvJqxr0KCUvLsyHedTsuWhcK+
 8p4N/kJG9k+82H1sIQsHwOKs9c4FXoHV+iXDzQ5Oe5TQpYgYs5FXHs7PZNERJRIt75
 vZQkuQA7RKAczl+NpjOLI6H7+2WtBYbABL56OTvw=
Date: Sun, 24 May 2020 10:42:30 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH 0/7] Record the mm_struct in the page table pages
Message-ID: <20200524074230.GM1118872@kernel.org>
References: <20200428194449.22615-1-willy@infradead.org>
 <20200429002624.qkhb362moj6v3vtw@box>
 <20200429015126.GP29705@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429015126.GP29705@bombadil.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_004240_976547_AC8626E0 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-mm@kvack.org,
 linux-m68k@lists.linux-m68k.org, Geert Uytterhoeven <geert@linux-m68k.org>,
 "Kirill A. Shutemov" <kirill@shutemov.name>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 06:51:26PM -0700, Matthew Wilcox wrote:
> On Wed, Apr 29, 2020 at 03:26:24AM +0300, Kirill A. Shutemov wrote:
> > On Tue, Apr 28, 2020 at 12:44:42PM -0700, Matthew Wilcox wrote:
> > > From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
> > > 
> > > Pages which are in use as page tables have some space unused in struct
> > > page.  It would be handy to have a pointer to the struct mm_struct that
> > > they belong to so that we can handle uncorrectable errors in page tables
> > > more gracefully.  There are a few other things we could use it for too,
> > > such as checking that the page table entry actually belongs to the task
> > > we think it ought to.  This patch series does none of that, but does
> > > lay the groundwork for it.
> > > 
> > > Matthew Wilcox (Oracle) (7):
> > 
> > How does it work for kernel side of virtual address space?
> 
> init_mm

A note to keep in mind is that most of the kernel page tables are seen
as PG_reserved rather than PageTable().

> > And your employer may be interested in semantics around
> > CONFIG_ARCH_WANT_HUGE_PMD_SHARE :P
> 
> I was thinking about that.  Right now, it's only useful for debugging
> purposes (as you point out in a later email).  I think it's OK if shared
> PMDs aren't supported as well as regular PTEs, just because there are
> so few of them that uncorrectable errors are less likely to strike in
> those pages.
> 

-- 
Sincerely yours,
Mike.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
