Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 142751A9A2B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 12:13:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZlPcWP3upvtF5LrHMMKqKM8ZStYiz+exYPSo5qHh9mg=; b=eK4QPq5hGPQ6tO
	gR4kFSJy+Ehm2sPNkv3xN5UwXHNW9x+Bms/JuWWfc6zOWgLa5oKPyHsh9mfsKqDV6u5LUYluX289t
	pPQcIIU+Zbb+Jxcrl10wSyS1gQ5PZGqf2UV9cFzjN4x34Z6wZUoa3MnZxI+IYx+PN7UjNyM2M7Y0N
	O1ohySW0NUDO8RKbt4Am1uL0qEJOYCRK7yvOn/d7WTyEd8SnGaNUfFH+8It3Jaqp6Otssu1fV4Cyc
	BV83hmxjgVVJhZbRAyAFldJy0/At4w/7aPCJx3Ju77ULe7PSQRh/O3GHSJNbYTzkujj/UVV5+celJ
	fAVfrlxjOKzrqUL0v2Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOf2w-0002PT-FL; Wed, 15 Apr 2020 10:13:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOf2g-0002Oi-KB
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 10:13:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 19A131063;
 Wed, 15 Apr 2020 03:13:14 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4191E3F68F;
 Wed, 15 Apr 2020 03:13:13 -0700 (PDT)
Date: Wed, 15 Apr 2020 11:13:11 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 1/5] arm64: vdso: don't free unallocated pages
Message-ID: <20200415101310.GC6526@gaia>
References: <20200414104252.16061-1-mark.rutland@arm.com>
 <20200414104252.16061-2-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414104252.16061-2-mark.rutland@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_031314_701889_B1533FF2 
X-CRM114-Status: GOOD (  11.41  )
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

On Tue, Apr 14, 2020 at 11:42:48AM +0100, Mark Rutland wrote:
> The aarch32_vdso_pages[] array never has entries allocated in the C_VVAR
> or C_VDSO slots, and as the array is zero initialized these contain
> NULL.
> 
> However in __aarch32_alloc_vdso_pages() when
> aarch32_alloc_kuser_vdso_page() fails we attempt to free the page whose
> struct page is at NULL, which is obviously nonsensical.
> 
> This patch removes the erroneous page freeing.
> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: stable@vger.kernel.org

I presume the cc stable should be limited to:

Fixes: 7c1deeeb0130 ("arm64: compat: VDSO setup for compat layer")
Cc: <stable@vger.kernel.org> # 5.3.x-

I'll fix it up locally.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
