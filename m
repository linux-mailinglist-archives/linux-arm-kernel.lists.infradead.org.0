Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 032B0850C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 18:12:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MSnpjeu4mak2zk/wTo0jJ/ZLwKVXDnGmKw6XyRAv2kE=; b=DFzMFU7+0gOAde
	jbdn1CPiot8/L3OtiJPAqUMCO1j2ASPoIrGluLyToh76haNHUD5MsklIoj1YFKWIkEvh6cgodF7up
	qdnQ0fz+yq2pnMWUlAFfebspjk55DZUYpARhX3eWh/fXGWjTXozB8XP2N78u2osFdKFySFGwc60S5
	xP6ZNwjToMN0O33b6NYvNV8tNlzIZXGbgKVgXtmEVNM2LaDPcR06uUf8B3HriRSi78jrBCfH9qVsK
	0MIJ/AI2LtLs7hw0b/hDL0UwbvnCSHhvd0cd/nac8eVQV3GvRwo3ko5yXQTNBVBiqE41UXd/TVXWY
	h6rOSMkvc2i3WbocvJSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOXy-0000JW-Jv; Wed, 07 Aug 2019 16:12:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOXn-0000Ip-4P
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 16:12:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 92866344;
 Wed,  7 Aug 2019 09:12:05 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 8F2253F694; Wed,  7 Aug 2019 09:12:04 -0700 (PDT)
Date: Wed, 7 Aug 2019 17:12:02 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steve Capper <steve.capper@arm.com>
Subject: Re: [PATCH V5 02/12] arm64: mm: Flip kernel VA space
Message-ID: <20190807161202.GA1766@arrakis.emea.arm.com>
References: <20190807155524.5112-1-steve.capper@arm.com>
 <20190807155524.5112-3-steve.capper@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807155524.5112-3-steve.capper@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_091207_221379_309C3530 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, maz@kernel.org,
 bhsharma@redhat.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 04:55:14PM +0100, Steve Capper wrote:
> In order to allow for a KASAN shadow that changes size at boot time, one
> must fix the KASAN_SHADOW_END for both 48 & 52-bit VAs and "grow" the
> start address. Also, it is highly desirable to maintain the same
> function addresses in the kernel .text between VA sizes. Both of these
> requirements necessitate us to flip the kernel address space halves s.t.
> the direct linear map occupies the lower addresses.
> 
> This patch puts the direct linear map in the lower addresses of the
> kernel VA range and everything else in the higher ranges.
> 
> We need to adjust:
>  *) KASAN shadow region placement logic,
>  *) KASAN_SHADOW_OFFSET computation logic,
>  *) virt_to_phys, phys_to_virt checks,
>  *) page table dumper.
> 
> These are all small changes, that need to take place atomically, so they
> are bundled into this commit.
> 
> As part of the re-arrangement, a guard region of 2MB (to preserve
> alignment for fixed map) is added after the vmemmap. Otherwise the
> vmemmap could intersect with IS_ERR pointers.
> 
> Signed-off-by: Steve Capper <steve.capper@arm.com>

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
