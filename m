Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F521A81B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 17:13:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JA5tl8aaSPxHSAUFoQ7FphHcbVqBPLlypgFH76CAkMo=; b=Xvdyn5fuj8SzHe
	FdkATF5yx98WsqSm9YizFYAHwgjmu4cwqKmPyf9V4pWuW1kTa3a6nOXPgD3SjGdwA3PMTnxMR9sse
	B/plsc6w12bTZH5VWtYp8fqchQ42DYKSoC89M3ydM5UXg5GTwZpUZ4PEbVizVpHAp1mWWlktMeWYR
	K6PABjkAxZDqwTd/M7/c7P7YUdmb8ahkrNrhxlHsid+/T5Mf5JwZwHL5vptchq+BDAwgc3SrAR1Hq
	dMAETH1osxaa/rQMwaTIswMAUd+VMbEQEfIlh+ydynPAlvn7pEsTo0zSUxXnoVhoGxj2LgEv5ZmaR
	vrDnMOE0sMVvc+Nnx4Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jONFC-0006Ty-Pj; Tue, 14 Apr 2020 15:12:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONF5-0006TL-TA
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 15:12:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0E2E930E;
 Tue, 14 Apr 2020 08:12:51 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.30.4])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0BBC83F73D;
 Tue, 14 Apr 2020 08:12:49 -0700 (PDT)
Date: Tue, 14 Apr 2020 16:12:47 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH 1/5] arm64: vdso: don't free unallocated pages
Message-ID: <20200414151247.GJ2486@C02TD0UTHF1T.local>
References: <20200414104252.16061-1-mark.rutland@arm.com>
 <20200414104252.16061-2-mark.rutland@arm.com>
 <c5596228-2685-abb3-5ab1-9519759e1f7a@arm.com>
 <20200414132751.GF2486@C02TD0UTHF1T.local>
 <8681c958-0fd9-130e-f7bb-99bfd3a027cb@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8681c958-0fd9-130e-f7bb-99bfd3a027cb@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_081252_002194_8988871C 
X-CRM114-Status: GOOD (  17.84  )
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
Cc: catalin.marinas@arm.com, will@kernel.org, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 03:53:45PM +0100, Vincenzo Frascino wrote:
> 
> On 4/14/20 2:27 PM, Mark Rutland wrote:
> > On Tue, Apr 14, 2020 at 01:50:38PM +0100, Vincenzo Frascino wrote:
> >> Hi Mark,
> >>
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
> allocator is correctly implemented.

This is true, but irrelevant. The C standard does not define
free_page(), which is a Linnux kernel internal function, and does not
have the same semantics as free().

> > * It serves no legitimate purpose. One cannot free a page without a
> >   corresponding struct page.
> > 
> > * It is redundant. Removing the code does not detract from the utility
> >   of the remainging code, or make that remaing code more complex.

> > * free_page(x) calls free_pages(x, 0), which checks virt_addr_valid(x).
> >   As page_to_virt(NULL) is not a valid linear map address, this can
> >   trigger a VM_BUG_ON()
> > 
> 
> free_pages(x, 0) checks virt_addr_valid(x) only if "addr != 0" (as per C
> standard) which makes me infer what I stated above. But maybe I am missing
> something.

Regardless, this is all academic unless you disagree with the first two
bullets above.

You don't randomly sprinkle a program with free(NULL) for the fun of it.
Similarly, and regardless of how obfuscated, one should not do the same
here.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
