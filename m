Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D80B1AA2B5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 15:03:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F3UhBx5OK0gces1Z/ar9d9cSXRESdPZt+uxyqFjCatQ=; b=EJexqBU6UBMkhg
	uZT6CrTrXCabWquXO8o+WXPh+loajAjwasxi/YfKYR0MJSWgmMM4zdBOwBv/8lLokvxGeteRYvsBg
	rWcy2yZMCnMHlw3DhvfgmK4KTd8kVdtVqd9uadE01oJBB6m7T+AaRezs+oftZdbkltnOA3noAOkuN
	1LxhO1zlRRIZcWB5TzJEGKAD7/vJFvenoQVEB9IDzTRlyX7gcso+6PcguYjjbZrNFdS/wGr9AnzCc
	p846bu+h/woM1A7qPdv4/wCXbHRqCqOZN7Pt4KXYPn9EBuGndy1w42f64d+MCIyYblf0ySN0Vfb9C
	yoU33E52Jk/tG2A2COiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhhm-00018R-G0; Wed, 15 Apr 2020 13:03:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhhe-00017a-NC
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 13:03:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D188A1063;
 Wed, 15 Apr 2020 06:03:41 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 62CF53F6C4;
 Wed, 15 Apr 2020 06:03:40 -0700 (PDT)
Date: Wed, 15 Apr 2020 14:03:37 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH 1/5] arm64: vdso: don't free unallocated pages
Message-ID: <20200415130337.GC28304@C02TD0UTHF1T.local>
References: <20200414104252.16061-1-mark.rutland@arm.com>
 <20200414104252.16061-2-mark.rutland@arm.com>
 <20200415101310.GC6526@gaia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415101310.GC6526@gaia>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_060342_795742_9EE14551 
X-CRM114-Status: GOOD (  13.53  )
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
Cc: vincenzo.frascino@arm.com, will@kernel.org, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 11:13:11AM +0100, Catalin Marinas wrote:
> On Tue, Apr 14, 2020 at 11:42:48AM +0100, Mark Rutland wrote:
> > The aarch32_vdso_pages[] array never has entries allocated in the C_VVAR
> > or C_VDSO slots, and as the array is zero initialized these contain
> > NULL.
> > 
> > However in __aarch32_alloc_vdso_pages() when
> > aarch32_alloc_kuser_vdso_page() fails we attempt to free the page whose
> > struct page is at NULL, which is obviously nonsensical.
> > 
> > This patch removes the erroneous page freeing.
> > 
> > Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: stable@vger.kernel.org
> 
> I presume the cc stable should be limited to:
> 
> Fixes: 7c1deeeb0130 ("arm64: compat: VDSO setup for compat layer")
> Cc: <stable@vger.kernel.org> # 5.3.x-
> 
> I'll fix it up locally.

Yes, and thanks!

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
