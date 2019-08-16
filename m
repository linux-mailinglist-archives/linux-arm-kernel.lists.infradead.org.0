Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 846A190B1B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 00:41:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=flIYRzGmJ5pmQVBeNUwMrKXQfwmFYi6fsFblK/59rIw=; b=cJncHrTm3qs1fMOuBDS6C2Yra
	bVhRDzDDsOsuwLSsTgWgx9sgl86Ctz6D1ZT3ipfZxEd9ZCz92SNVLM0jzvT7eymt4QAgrialm99l/
	cggtfxixb/9oSCC/g05uZ0muDdZmJHEDz+lgIQw05X1pDymiz2a9Eaa6m1w7v8fj2pPy8AT6KwZkK
	oTg8ONNjK6VRLtFe3YD4BCXn52q5VK0J7uIUF5aopMXks/STqdSb+cTy0X14TKgbXCNh7kOUxgpMl
	K+V8CO34IspEdedlg5wkz/9t1aQGGuG0t6TOSby7ypASF+0rzS+YRYO5pM7VBvy8KubgIidbeLQMY
	M6o7XLjKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyku5-0002df-Kc; Fri, 16 Aug 2019 22:41:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyktt-0002cx-UI
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 22:40:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 028F6344;
 Fri, 16 Aug 2019 15:40:46 -0700 (PDT)
Received: from [10.37.12.84] (unknown [10.37.12.84])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A8B533F718;
 Fri, 16 Aug 2019 15:40:44 -0700 (PDT)
Subject: Re: [Xen-devel] [PATCH 07/11] swiotlb-xen: provide a single
 page-coherent.h header
To: Christoph Hellwig <hch@lst.de>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
References: <20190816130013.31154-1-hch@lst.de>
 <20190816130013.31154-8-hch@lst.de>
From: Julien Grall <julien.grall@arm.com>
Message-ID: <9a3261c6-5d92-cf6b-1ae8-3a8e8b5ef0d4@arm.com>
Date: Fri, 16 Aug 2019 23:40:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190816130013.31154-8-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_154050_019783_849D5723 
X-CRM114-Status: GOOD (  15.65  )
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
Cc: xen-devel@lists.xenproject.org, iommu@lists.linux-foundation.org,
 x86@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 8/16/19 2:00 PM, Christoph Hellwig wrote:
> Merge the various page-coherent.h files into a single one that either
> provides prototypes or stubs depending on the need for cache
> maintainance.
> 
> For extra benefits alo include <xen/page-coherent.h> in the file
> actually implementing the interfaces provided.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   arch/arm/include/asm/xen/page-coherent.h   |  2 --
>   arch/arm/xen/mm.c                          |  1 +
>   arch/arm64/include/asm/xen/page-coherent.h |  2 --
>   arch/x86/include/asm/xen/page-coherent.h   | 22 ------------------
>   drivers/xen/swiotlb-xen.c                  |  4 +---
>   include/Kbuild                             |  2 +-
>   include/xen/{arm => }/page-coherent.h      | 27 +++++++++++++++++++---

I am not sure I agree with this rename. The implementation of the 
helpers are very Arm specific as this is assuming Dom0 is 1:1 mapped.

This was necessary due to the lack of IOMMU on Arm platforms back then.
But this is now a pain to get rid of it on newer platform...

Cheers,

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
