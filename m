Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 858CBD73AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 12:45:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UvthzVpxcMMIDWOMcVjR1ne2d7RaLPboaFpeLV4V9CU=; b=t77NSYgU7vuoZJ
	axpND0RGY3hkRXFNe7xMLhBtgJHoLO0Wj8qeqzdh8XajtG8kEwQfXAIM7LjQApY2ymVNoMlqlyoLl
	VxbaX8pdkH/m5FWMXN9OPmkurVbzYXPL5ToCbsLfSqdBngrfnXGdX7g8Rv7kDVgg2ZwSn/WsvsWg7
	qN4z8jqG0UrmjRcQhMWM94tIux/cxM9PdQJkBizRFb2r7wlmUuzf3udR7/fgWVZYsWz1x9ehAJloQ
	DGkYHaDpUPa/gXh0ZnpS01Y8tOB9XaasLqBzXoJvemqnJGQb0rJhLOgG+IDIETE3lFw6nUb2CgAVx
	Qfkls0lx9nhftdbskUJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKKKd-000421-ML; Tue, 15 Oct 2019 10:45:35 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKKKT-00041A-8I; Tue, 15 Oct 2019 10:45:26 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D65AFB2DA;
 Tue, 15 Oct 2019 10:45:22 +0000 (UTC)
Date: Tue, 15 Oct 2019 12:45:21 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V6 1/2] mm/page_alloc: Make alloc_gigantic_page()
 available for general use
Message-ID: <20191015104521.GY317@dhcp22.suse.cz>
References: <1571131302-32290-1-git-send-email-anshuman.khandual@arm.com>
 <1571131302-32290-2-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571131302-32290-2-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_034525_440598_68CD091B 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Andrea Arcangeli <aarcange@redhat.com>,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 David Rientjes <rientjes@google.com>, linux-snps-arc@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linuxppc-dev@lists.ozlabs.org,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 Oscar Salvador <osalvador@suse.de>, Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>, Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mel Gorman <mgorman@techsingularity.net>,
 "David S. Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 15-10-19 14:51:41, Anshuman Khandual wrote:
[...]
> +/**
> + * alloc_gigantic_page_order() -- tries to allocate given order of pages
> + * @order:	allocation order (greater than MAX_ORDER)
> + * @gfp_mask:	GFP mask to use during compaction
> + * @nid:	allocation node
> + * @nodemask:	allocation nodemask
> + *
> + * This routine is an wrapper around alloc_contig_range() which scans over
> + * all zones on an applicable zonelist to find a contiguous pfn range which
> + * can the be allocated with alloc_contig_range(). This routine is intended
> + * to be used for allocations greater than MAX_ORDER.
> + *
> + * Return: page on success or NULL on failure. On success a memory block
> + * of 'order' starting with 'page' has been allocated successfully. Memory
> + * allocated here needs to be freed with free_contig_range().
> + */
> +struct page *alloc_gigantic_page_order(unsigned int order, gfp_t gfp_mask,
> +				       int nid, nodemask_t *nodemask)

One of the objections when Mike has proposed a similar thing last year
was that the interface shouldn't be order bases
http://lkml.kernel.org/r/20180423000943.GO17484@dhcp22.suse.cz

Order based API makes sense for the buddy allocator but why should we
restrict sizes like that for an allocator that is capable to allocate
arbitrary page sized requests?
-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
