Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 288AA1A7F79
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 16:20:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QdE4m1efMMvr89bKWKaiR7PfnxoHnx54puhb86L6Ecg=; b=Xxbjj2zRP0LHQN
	P6N7oWm3Pi25josEOpMkPl5O9NIsvlMhAxNvbBkuNMrS4Ll4XkIzDYctgliTzTqAtzfw8HNodZeUq
	sdH8Oy5CthcsmjfSAmc+XGDW2Tz2a/ucq05MGb9H4QwEowWr8ENzjzcQTAtO9OrKxabZA34g48bZk
	7QydZicKhAm4TEYiwbaQ9XWyMnQR7qezCiMoms+EJfDop3z1S1KC405rX5tr8k/BdoPGVrOc6NXH8
	GN6JdPQ54vLxAu67KMOU+M3eZNrQW8A3o97N/Pw/i4OkDwLJ3Y6LcS7oviBqWA283OKaV/sowjFKI
	KskunT9gJOv9v6Itt9lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOMQH-0000cH-Lb; Tue, 14 Apr 2020 14:20:21 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jOMQA-0000bu-TE; Tue, 14 Apr 2020 14:20:14 +0000
Date: Tue, 14 Apr 2020 07:20:14 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: Re: [PATCH v2 4/4] mm/vmalloc: Hugepage vmalloc mappings
Message-ID: <20200414142014.GO21484@bombadil.infradead.org>
References: <20200413125303.423864-1-npiggin@gmail.com>
 <20200413125303.423864-5-npiggin@gmail.com>
 <20200413134106.GN21484@bombadil.infradead.org>
 <36616218-1d3a-b18a-8fb8-4fc9eff22780@c-s.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <36616218-1d3a-b18a-8fb8-4fc9eff22780@c-s.fr>
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
Cc: linux-arch@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, Nicholas Piggin <npiggin@gmail.com>,
 linux-mm@kvack.org, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 02:28:35PM +0200, Christophe Leroy wrote:
> Le 13/04/2020 =E0 15:41, Matthew Wilcox a =E9crit=A0:
> > On Mon, Apr 13, 2020 at 10:53:03PM +1000, Nicholas Piggin wrote:
> > > +static int vmap_pages_range_noflush(unsigned long start, unsigned lo=
ng end,
> > > +				    pgprot_t prot, struct page **pages,
> > > +				    unsigned int page_shift)
> > > +{
> > > +	if (page_shift =3D=3D PAGE_SIZE) {
> > =

> > ... I think you meant 'page_shift =3D=3D PAGE_SHIFT'
> > =

> > Overall I like this series, although it's a bit biased towards CPUs
> > which have page sizes which match PMD/PUD sizes.  It doesn't offer the
> > possibility of using 64kB page sizes on ARM, for example.  But it's a
> > step in the right direction.
> =

> I was going to ask more or less the same question, I would have liked to =
use
> 512kB hugepages on powerpc 8xx.
> =

> Even the 8M hugepages (still on the 8xx), can they be used as well, taking
> into account that two PGD entries have to point to the same 8M page ?
> =

> I sent out a series which tends to make the management of 512k and 8M pag=
es
> closer to what Linux expects, in order to use them inside kernel, for Lin=
ear
> mappings and Kasan mappings for the moment. See
> https://patchwork.ozlabs.org/project/linuxppc-dev/list/?series=3D164620
> It would be nice if we could amplify it a use it for ioremaps and vmallocs
> as well.

I haven't been looking at vmalloc at all; I've been looking at the page
cache.  See:
https://lore.kernel.org/linux-mm/20200212041845.25879-1-willy@infradead.org/

Once we have large pages in the page cache, I want to sort out the API
for asking the CPU to insert a TLB entry.  Right now, we use set_pte_at(),
set_pmd_at() and set_pud_at().  I'm thinking something along the lines of:

vm_fault_t vmf_set_page_at(struct vm_fault *vmf, struct page *page);

and the architecture can insert whatever PTEs and/or TLB entries it
likes based on compound_order(page) -- if, say, it's a 1MB page, it might
choose to insert 2 * 512kB entries, or just the upper or lower 512kB entry
(depending which half of the 1MB page the address sits in).


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
