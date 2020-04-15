Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1DB1A99F4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 12:09:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YxV14g3c+fQUn5BwMldnZqjKaerTPifCbIAFTyJXI+w=; b=le9DImFgm3kdrX
	OkN7Tumqfa9+lIoB+powWBPYiy7YMD89w2LnMXzVtHwunBq95rirYN5i5OKBjLQwoUTEIFYyRvuh6
	Z7T5hjuCl/ad+MBFTlw32PaAaJDUWbfKjDmvclcF6uhrfsDFKcqbFAtPCQmEGVRqpKA5eLGZAioe2
	4QOuOfBSfxe7jiz26egs5hpC0Sq8lN+VMeRqz/sZEA0rOa+j9Nrg8VQ/nVacx6JAlhFH3gVeC+gtl
	ScrE1PjzeuXdUvyZOGP8OkTPGHRy6YFhlneMIkO8fFyrNOftgU4Zww9AcDEbO1pJLe7jmpzrcqjwC
	2N8Iea7roKREztyZ+DhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOeyT-0006Ai-7y; Wed, 15 Apr 2020 10:08:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOeyL-0006AK-2P
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 10:08:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 748491063;
 Wed, 15 Apr 2020 03:08:44 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9E1BF3F68F;
 Wed, 15 Apr 2020 03:08:43 -0700 (PDT)
Date: Wed, 15 Apr 2020 11:08:37 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 1/5] arm64: vdso: don't free unallocated pages
Message-ID: <20200415100836.GB6526@gaia>
References: <20200414104252.16061-1-mark.rutland@arm.com>
 <20200414104252.16061-2-mark.rutland@arm.com>
 <c5596228-2685-abb3-5ab1-9519759e1f7a@arm.com>
 <20200414132751.GF2486@C02TD0UTHF1T.local>
 <8681c958-0fd9-130e-f7bb-99bfd3a027cb@arm.com>
 <20200414151033.GA30288@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414151033.GA30288@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_030845_152454_5102E2EE 
X-CRM114-Status: GOOD (  19.27  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 04:10:35PM +0100, Will Deacon wrote:
> On Tue, Apr 14, 2020 at 03:53:45PM +0100, Vincenzo Frascino wrote:
> > On 4/14/20 2:27 PM, Mark Rutland wrote:
> > > On Tue, Apr 14, 2020 at 01:50:38PM +0100, Vincenzo Frascino wrote:
> > >> On 4/14/20 11:42 AM, Mark Rutland wrote:
> > >>> The aarch32_vdso_pages[] array never has entries allocated in the C_VVAR
> > >>> or C_VDSO slots, and as the array is zero initialized these contain
> > >>> NULL.
> > >>>
> > >>> However in __aarch32_alloc_vdso_pages() when
> > >>> aarch32_alloc_kuser_vdso_page() fails we attempt to free the page whose
> > >>> struct page is at NULL, which is obviously nonsensical.
> > >>
> > >> Could you please explain why do you think that free(NULL) is "nonsensical"? 
> > > 
> > > Regardless of the below, can you please explain why it is sensical? I'm
> > > struggling to follow your argument here.
> > 
> > free(NULL) is a no-operation ("no action occurs") according to the C standard
> > (ISO-IEC 9899 paragraph 7.20.3.2). Hence this should not cause any bug if the
> > allocator is correctly implemented. From what I can see the implementation of
> > the page allocator honors this assumption.
> > 
> > Since you say it is a bug (providing evidence), we might have to investigate
> > because probably there is an issue somewhere else.
> 
> Not sure why you feel the need to throw the C standard around -- the patch
> from Mark looks obviously like the right thing to do to me, so:
> 
> Acked-by: Will Deacon <will@kernel.org>
> 
> Catalin -- please take this one as a fix so that I can queue the rest of
> the patches for 5.8 once it's hit mainline.

I queued this patch for -rc2. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
