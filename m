Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71196F8FD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 14:38:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z/c/Hm5AcmocSNOBOdOiKHaPufu+J3kFQQY8LIt0Y38=; b=E4G4bBPhxVJmONd50eQsnSYQf
	WDcZaOC4fU0FtCupr6geJTg71FckVdNms7Eo6WdsxcuxLezL/bcA/fLjsPlMjQysltnDeFztdESNu
	2rQ8erXijzdcf9No2y547lYm2OnxqIBm3ouP3Tvs1yEXiMWa+OCT2+tewJWCGyEkNb41pjpgZPwLJ
	3AMZw5xKKBkWuAki12k3QQ9c2jbbBiISFS2HXJM67I16mAMAM/63jKkbPnOFQd0rufQVUtpGa7IBB
	nYU9QJOpk4XCNAbAjdlVyx+xIYYFltpd+ArMko085X+ldrSwtoFSjjKbflnIvkikj0ETXbTYMN6dX
	cxvdPFgUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLS1Q-00087f-P2; Tue, 30 Apr 2019 12:38:08 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLS1J-00087E-BI
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 12:38:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7007B15A2;
 Tue, 30 Apr 2019 05:38:00 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DE0783F5AF;
 Tue, 30 Apr 2019 05:37:56 -0700 (PDT)
Subject: Re: [RFC/RFT PATCH 1/2] dma-contiguous: Simplify
 dma_*_from_contiguous() function calls
To: Christoph Hellwig <hch@lst.de>, Nicolin Chen <nicoleotsuka@gmail.com>
References: <20190430015521.27734-1-nicoleotsuka@gmail.com>
 <20190430015521.27734-2-nicoleotsuka@gmail.com>
 <20190430105640.GA20021@lst.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <0e3e6d8b-de44-d23e-a039-8d11b578ec5c@arm.com>
Date: Tue, 30 Apr 2019 13:37:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190430105640.GA20021@lst.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_053801_395412_B9D6F8D2 
X-CRM114-Status: GOOD (  13.02  )
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
Cc: chris@zankel.net, linux-xtensa@linux-xtensa.org, keescook@chromium.org,
 sfr@canb.auug.org.au, tony@atomide.com, catalin.marinas@arm.com,
 joro@8bytes.org, will.deacon@arm.com, linux@armlinux.org.uk,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 jcmvbkbc@gmail.com, wsa+renesas@sang-engineering.com,
 akpm@linux-foundation.org, treding@nvidia.com, dwmw2@infradead.org,
 iamjoonsoo.kim@lge.com, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/04/2019 11:56, Christoph Hellwig wrote:
> So while I really, really like this cleanup it turns out it isn't
> actually safe for arm :(  arm remaps the CMA allocation in place
> instead of using a new mapping, which can be done because they don't
> share PMDs with the kernel.
> 
> So we'll probably need a __dma_alloc_from_contiguous version with
> an additional bool fallback argument - everyone but arms uses
> dma_alloc_from_contiguous as in your patch, just arm will get the
> non-fallback one.

Or we even just implement dma_{alloc,free}_contiguous() as a wrapper 
around the existing APIs so that users can be thoroughly checked and 
converted one-by-one.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
