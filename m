Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF741A818B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 17:11:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DQ85xufE3+e3xBao0w9TnEVheem5DRUAAQrAe54aN/0=; b=gsDXKFqBY2h9Zq
	svTIpPh1L5GAY7PS2Uaj/9vDUSJpKtSQKvuD0rw1N/+znc8xM7um24n5/DGsNn74lH989dcrI3ww7
	8K+/1qpk27ESHn06/8NpxrwHuyqlfc1nxsRadJlU6Ob4psMrtiYKdMs+i5+ZgqFnqyevNQVAzhP4m
	jAXXOmsmguPUFwkolS9kCA1hHrpm4z7HCKBU8U8vZQdfPktiBkbviZbLnNWJNcxgYiNIQ2729pEY3
	zCrYDiQQpoNhcgMvGgokd4/RwA76zxIDgiUqOBB4goR0RSUaEu/nEJHiBTVZMpkZ1bKgTBGDLe6WQ
	E5juVL1tyvvOCegzp9tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOND4-0005Y1-4s; Tue, 14 Apr 2020 15:10:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONCy-0005Xf-Bf
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 15:10:41 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EB34B20768;
 Tue, 14 Apr 2020 15:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586877039;
 bh=WMb8yo4wljqMwsmKwQgBBbYKtIYLd1mlUILSYQQYR18=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZXPJEWN4mNTWlWrwiTXBw4uWBw1zUsNKKElhIAM2xQVf5c1Xvm9I/psytdfmEfEsq
 mWuC5FDB3ZVdowbibFLSgStxSspW2Dd19FL6vwmGnASK32Ap+RlbJ2AbGNPaME130L
 QUi+LjBE8JMnJXjC+DCbIyW7WoK0RVt6gGJeDZoY=
Date: Tue, 14 Apr 2020 16:10:35 +0100
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH 1/5] arm64: vdso: don't free unallocated pages
Message-ID: <20200414151033.GA30288@willie-the-truck>
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
X-CRM114-CacheID: sfid-20200414_081040_418404_2FD94CD9 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
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
> 
> Since you say it is a bug (providing evidence), we might have to investigate
> because probably there is an issue somewhere else.

Not sure why you feel the need to throw the C standard around -- the patch
from Mark looks obviously like the right thing to do to me, so:

Acked-by: Will Deacon <will@kernel.org>

Catalin -- please take this one as a fix so that I can queue the rest of
the patches for 5.8 once it's hit mainline.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
