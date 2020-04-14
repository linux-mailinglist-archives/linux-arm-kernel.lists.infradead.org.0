Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B94C1A8407
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 18:00:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WPE2rq4Fg2K10tNh2Xj81vgbsPmx/kMLIYhE08UBQu8=; b=UAZPoO0wu1ZyWT
	dAU7QbyULv+zDAAkcwZHXrmfufn/DzBNN6r3hBfzVCSKyL59znwqwOT+kjKKUGuW68dhI/2GBR9IX
	GvhB3hhpX+dDhqqW673nRt8RZ8/Jx0fABltVu566ANDCM2fj7OWuLkXLvVtMrnU8VzhvtB97Vx5X/
	3iZGidLQvhyU90RQavQouOsS1RHDFunAYwWMFf7d+RkmdKoKXT9xXwygYVynYBTJ4mr7TdEDktnPB
	qJE3Q79DQn1T/0mZXKKczdFvw1CcvcLPpkEzELKCBlDJAO/ZQyk9OPJn4jmGf7hEDto08HEsP58T9
	Mv0ufHN9nGE+idbQrB5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jONyt-0004s5-TR; Tue, 14 Apr 2020 16:00:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONyU-0004iN-3B
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 15:59:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 83D5CC14;
 Tue, 14 Apr 2020 08:59:45 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AC8E83F6C4;
 Tue, 14 Apr 2020 08:59:44 -0700 (PDT)
Date: Tue, 14 Apr 2020 16:59:42 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH 1/5] arm64: vdso: don't free unallocated pages
Message-ID: <20200414155942.GC22140@gaia>
References: <20200414104252.16061-1-mark.rutland@arm.com>
 <20200414104252.16061-2-mark.rutland@arm.com>
 <c5596228-2685-abb3-5ab1-9519759e1f7a@arm.com>
 <20200414132751.GF2486@C02TD0UTHF1T.local>
 <8681c958-0fd9-130e-f7bb-99bfd3a027cb@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8681c958-0fd9-130e-f7bb-99bfd3a027cb@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_085946_189014_EAE4FFA0 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, will@kernel.org,
 stable@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 03:53:45PM +0100, Vincenzo Frascino wrote:
> On 4/14/20 2:27 PM, Mark Rutland wrote:
> > On Tue, Apr 14, 2020 at 01:50:38PM +0100, Vincenzo Frascino wrote:
> >> On 4/14/20 11:42 AM, Mark Rutland wrote:
> >>> The aarch32_vdso_pages[] array never has entries allocated in the C_VVAR
> >>> or C_VDSO slots, and as the array is zero initialized these contain
> >>> NULL.
> >>>
> >>> However in __aarch32_alloc_vdso_pages() when
> >>> aarch32_alloc_kuser_vdso_page() fails we attempt to free the page whose
> >>> struct page is at NULL, which is obviously nonsensical.
> >>
> >> Could you please explain why do you think that free(NULL) is "nonsensical"? 
> > 
> > Regardless of the below, can you please explain why it is sensical? I'm
> > struggling to follow your argument here.
> 
> free(NULL) is a no-operation ("no action occurs") according to the C standard
> (ISO-IEC 9899 paragraph 7.20.3.2). Hence this should not cause any bug if the
> allocator is correctly implemented. From what I can see the implementation of
> the page allocator honors this assumption.
[...]
> > * page_to_virt(NULL) does not have a well-defined result, and
> >   page_to_virt() should only be called for a valid struct page pointer.
> >   The result of page_to_virt(NULL) may not be a pointer into the linear
> >   map as would be expected.
> 
> Do you know why this is the case? To be compliant with what the page allocator
> expects page_to_virt(NULL) should be equal to NULL.

Since __free_page(page) (note the two underscores and pointer type) does
not accept a NULL argument, I don't see any reason for page_to_virt() to
accept NULL as a valid argument.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
