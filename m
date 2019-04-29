Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6992E117
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 13:12:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4lADaBP/dc6yHcQWgqvMt/EtpA4wLQg1gCAtwEekl6g=; b=E/It9dMSmX5Bcp
	UwKo2DxM75MJlLXMiu/aSz7GTXn6Dy4RVLy2lD2IKcUyTuHYRpAuFi6xsQxTmJ/g4R5Hd5pNJmlSQ
	7SN56h9lKDHJETO71oCNUE1RXaZ6Y0i0WVpGu89atY9eA8ucj8eS5Z6CG5j+24OMYf36SZSZKuYPn
	DBCIsRxKXeTN5adIBW48yG9MUTcOdGixxv6wClkqAIlTNDTnZu4GqjoS/Gx85GzCz+lPmUe+2A4gX
	h6WbPjs1WzdB+PAtd+OyHYZN+bEDHQ6EazqyGj6cuj2hMzeGL8SUdQtrGoiO1IStaDoc90mtB9dds
	e0A3sezmKSjoFpQYsmtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL4Cs-0002zZ-Ci; Mon, 29 Apr 2019 11:12:22 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL4Cl-0002zB-1A
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 11:12:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8F5C280D;
 Mon, 29 Apr 2019 04:12:14 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D5EB13F5AF;
 Mon, 29 Apr 2019 04:12:12 -0700 (PDT)
Date: Mon, 29 Apr 2019 12:12:10 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH 2/2] arm64: cacheinfo: Update cache_line_size detected
 from PPTT
Message-ID: <20190429111210.GB23929@e107155-lin>
References: <1556242821-5080-1-git-send-email-zhangshaokun@hisilicon.com>
 <1556242821-5080-2-git-send-email-zhangshaokun@hisilicon.com>
 <8d9b4fcd-23be-be06-6afa-8cabb1e889c2@arm.com>
 <20190427161243.6674yszyflgjqbhc@mbp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190427161243.6674yszyflgjqbhc@mbp>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_041215_083282_63AC13C0 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Sudeep Holla <sudeep.holla@arm.com>, john.garry@huawei.com,
 Will Deacon <will.deacon@arm.com>, Jeremy Linton <jeremy.linton@arm.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>, qiuzhenfa@hisilicon.com,
 guohanjun@huawei.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 27, 2019 at 05:12:44PM +0100, Catalin Marinas wrote:
> On Fri, Apr 26, 2019 at 12:18:33PM -0500, Jeremy Linton wrote:
> > On 4/25/19 8:40 PM, Shaokun Zhang wrote:
> > > cache_line_size is derived from CTR_EL0.CWG field and is called mostly
> > > for I/O device drivers. For HiSilicon certain plantform, like the
> >
> > But there are core users too? Thinkgs like blk-mq, the trace ring buffer,
> > iommu/iova, slub/slab.
>
> cache_line_size() is indeed used in the core parts of the kernel, for
> example when passing SLAB_HWCACHE_ALIGN on kmem_cache creation. Its
> meaning is performance rather than coherency as we use ARCH_DMA_MINALIGN
> for the latter.
>
> > And a quick look seems to indicate a number of those
> > users are going to be checking the cache line size before the cachinfo is
> > populated (it happens fairly late via device_initcall() and a hp notifier).
> > Is it going to be a problem if the value changes?
>
> That's a good point. At a quick look I didn't see anything that would be
> affected by a non-constant cache_line_size().
>
Ah, that's good. But won't it still affect early boot allocations(if the
smaller init time value is used before cacheinfo is populated) ? Sorry,
I haven't looked at all the uses of cache_line_size().

But if cache_line_size() takes care of reading updated value and impact on
boot time allocations are minimal, then this solution should be fine.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
