Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB678CFDC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 11:41:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gmldW/hhpMsXjceMTIR4BpKJpJZkfnTsl4a2hyeBdjc=; b=Jwq7U13UxdGSwt
	nZvl3PHqWp693dPRBkFzYbGhwY+MBza1c0Q832Vdj5urKLZohSU2G9IafCG4oTJ6rHq+Itmshtzsl
	DBCWF3yHXHQEHJ8uGuVCVSnfIStjp0r7AQA8Y3+sHxtIiATyWibWZOFLQuziXp3iSlxWOvABS6fM0
	rG8pKyG+sDFC+4zTt0bLAvXYL1+wK7LJRA7kU4P+fTNYHE+MO57dL/v5yVIq9fIG2OUVeTb42QvH5
	8Yr71AAjGN7OO4nsNv8eMX7XF5OcIUG8LHTM8GNmJdf4mee+y9kq1fA5yl6THva7ref+vXuzTiI0B
	3Y0Q3wwAc4O3M5IKVHIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxpml-0002i4-Gl; Wed, 14 Aug 2019 09:41:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxpmW-0002hf-Nb
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 09:41:26 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B726E20844;
 Wed, 14 Aug 2019 09:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565775684;
 bh=tQYrqAy5C36S4n9enB8stVB5pdUkyU6QbomdPSjBHao=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i0jGT4XZA1Yw6FA7hFU4TIR8F6Dmk5jLfDebJijYfdutaRBAhaofZZaUuZJ1r2i9k
 Vi1fuhWJxTtueid+14V0U6RawbOvSfUEm5b1UWEEFhq7bxek/dq9iE980YNEQSr1tp
 GYdSmYrhGfsPJ+aY1MvipR+mFtEcdPQ9pqq3k+QI=
Date: Wed, 14 Aug 2019 10:41:19 +0100
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH 3/8] arm64: memory: Rewrite default
 page_to_virt()/virt_to_page()
Message-ID: <20190814094119.4g5lxywwiypxafjb@willie-the-truck>
References: <20190813170149.26037-1-will@kernel.org>
 <20190813170149.26037-4-will@kernel.org>
 <20190814093019.GC50688@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814093019.GC50688@arrakis.emea.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_024124_796718_831E1D18 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Steve Capper <steve.capper@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Qian Cai <cai@lca.pw>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 10:30:19AM +0100, Catalin Marinas wrote:
> On Tue, Aug 13, 2019 at 06:01:44PM +0100, Will Deacon wrote:
> > diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> > index 47b4dc73b8bf..77074b3a1025 100644
> > --- a/arch/arm64/include/asm/memory.h
> > +++ b/arch/arm64/include/asm/memory.h
> > @@ -313,19 +313,18 @@ static inline void *phys_to_virt(phys_addr_t x)
> >  #if !defined(CONFIG_SPARSEMEM_VMEMMAP) || defined(CONFIG_DEBUG_VIRTUAL)
> >  #define virt_to_page(kaddr)	pfn_to_page(__pa(kaddr) >> PAGE_SHIFT)
> >  #else
> > -#define __virt_to_pgoff(kaddr)	(((u64)(kaddr) - PAGE_OFFSET) / PAGE_SIZE * sizeof(struct page))
> > -#define __page_to_voff(kaddr)	(((u64)(kaddr) - VMEMMAP_START) * PAGE_SIZE / sizeof(struct page))
> > -
> > -#define page_to_virt(page)	({					\
> > -	unsigned long __addr =						\
> > -		((__page_to_voff(page)) + PAGE_OFFSET);			\
> > -	const void *__addr_tag =					\
> > -		__tag_set((void *)__addr, page_kasan_tag(page));	\
> > -	((void *)__addr_tag);						\
> > +#define page_to_virt(x)	({						\
> > +	__typeof__(x) __page = x;					\
> 
> Why not struct page * directly here?

I started out with that, but then you have to deal with const struct page *
as well and it gets pretty messy.

> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
