Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD428D1A0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 12:56:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vbXQJ5BCbEmbfeq53qI3UA/VYDPP17xVmmnJl/UtRCs=; b=lNqKkTWIJYwJ+m
	OKkVpHVyDv6w8JxHnpiptQHMBxc3EZvGrp5+KnddLCtz56b2xjMZVZ2Ff7t4FsY+ZTKCKNIkmpZv2
	QuRfrXjbKLM5z57TcCe0MQtSTXq1wWliGVbI/2jhBy2nKunMWM9/iAteMeBb+8Jy7h9xnDC69HpRK
	YVUwEyMQ/aXdUJeyCH9VMXqALQ0WzjLEHQP+FmT7Z6aLYyOKfd7gjib8SFHfbKJ1Tq4HQ1D6mGWmy
	S83J3HWVkxyDtzku0ndLKBh2jSyPB18pkq1KTeXPAplWOCrGJpoL6MYkFGe/thE6GHutNT59RZfGW
	rNP2OG7gkgc80iKrkqTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxqxY-0002gx-L2; Wed, 14 Aug 2019 10:56:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxqxS-0002gd-Mz
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 10:56:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 37BF328;
 Wed, 14 Aug 2019 03:56:46 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 334563F706;
 Wed, 14 Aug 2019 03:56:45 -0700 (PDT)
Date: Wed, 14 Aug 2019 11:56:39 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 3/8] arm64: memory: Rewrite default
 page_to_virt()/virt_to_page()
Message-ID: <20190814105638.GA17931@lakrids.cambridge.arm.com>
References: <20190813170149.26037-1-will@kernel.org>
 <20190813170149.26037-4-will@kernel.org>
 <20190814093019.GC50688@arrakis.emea.arm.com>
 <20190814094119.4g5lxywwiypxafjb@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814094119.4g5lxywwiypxafjb@willie-the-truck>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_035646_790097_8F1BB380 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Steve Capper <steve.capper@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Qian Cai <cai@lca.pw>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 10:41:19AM +0100, Will Deacon wrote:
> On Wed, Aug 14, 2019 at 10:30:19AM +0100, Catalin Marinas wrote:
> > On Tue, Aug 13, 2019 at 06:01:44PM +0100, Will Deacon wrote:
> > > diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> > > index 47b4dc73b8bf..77074b3a1025 100644
> > > --- a/arch/arm64/include/asm/memory.h
> > > +++ b/arch/arm64/include/asm/memory.h
> > > @@ -313,19 +313,18 @@ static inline void *phys_to_virt(phys_addr_t x)
> > >  #if !defined(CONFIG_SPARSEMEM_VMEMMAP) || defined(CONFIG_DEBUG_VIRTUAL)
> > >  #define virt_to_page(kaddr)	pfn_to_page(__pa(kaddr) >> PAGE_SHIFT)
> > >  #else
> > > -#define __virt_to_pgoff(kaddr)	(((u64)(kaddr) - PAGE_OFFSET) / PAGE_SIZE * sizeof(struct page))
> > > -#define __page_to_voff(kaddr)	(((u64)(kaddr) - VMEMMAP_START) * PAGE_SIZE / sizeof(struct page))
> > > -
> > > -#define page_to_virt(page)	({					\
> > > -	unsigned long __addr =						\
> > > -		((__page_to_voff(page)) + PAGE_OFFSET);			\
> > > -	const void *__addr_tag =					\
> > > -		__tag_set((void *)__addr, page_kasan_tag(page));	\
> > > -	((void *)__addr_tag);						\
> > > +#define page_to_virt(x)	({						\
> > > +	__typeof__(x) __page = x;					\
> > 
> > Why not struct page * directly here?
> 
> I started out with that, but then you have to deal with const struct page *
> as well and it gets pretty messy.

What goes wrong if you always use const struct page *__page?

Otherwise this looks sound to me.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
