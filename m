Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 460E231292
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 18:39:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FqiwSbeT9S9cDPvd13307jqPMagNNuoLCBc8ICU6PA0=; b=Yb9Ua35JjQ8WRJ
	OtItw85ctT8v+wNyrb3VgXBgt7UP5iCDSw/mbbnwYXGbmfYAuBlQNknLdtrXFJbOnOKzjz/kO4n5H
	ZTIy6BYZJka4u3QLe+dsEx0XLDa3lYqbN1QiJEOVQ2jXSayJ8UenVqmv4DgEV9Z1FCAVHyaHufRbk
	G+ozqtdYjXXDJILlceTj9vLFTm9U7q56pvBO8H8bQMXAo4RdJULg2jvnR43brua94gpLy1ZKrG9R6
	OgeVj8mpc/zlVDXJluvLv3iS3FGrsJYJpQboovMCZS0wbRIEFlzyoPjbgWgRYUHCrVkScE9AHGZGE
	mXlhmjpoXZ/dNlBrAi1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWkZF-0006FI-Nk; Fri, 31 May 2019 16:39:45 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWkZ6-0006Az-AZ
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 16:39:38 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 9B79C68AA6; Fri, 31 May 2019 18:39:07 +0200 (CEST)
Date: Fri, 31 May 2019 18:39:07 +0200
From: Christoph Hellwig <hch@lst.de>
To: Nicolin Chen <nicoleotsuka@gmail.com>
Subject: Re: [PATCH] dma-contiguous: Fix !CONFIG_DMA_CMA version of
 dma_{alloc,free}_contiguous()
Message-ID: <20190531163907.GA27525@lst.de>
References: <20190530005425.7184-1-nicoleotsuka@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530005425.7184-1-nicoleotsuka@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_093936_506152_C9F33052 
X-CRM114-Status: UNSURE (   5.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: tony@atomide.com, catalin.marinas@arm.com, will.deacon@arm.com,
 jcmvbkbc@gmail.com, hch@lst.de, m.szyprowski@samsung.com, sfr@canb.auug.org.au,
 dann.frazier@canonical.com, joro@8bytes.org, linux@armlinux.org.uk,
 treding@nvidia.com, linux-xtensa@linux-xtensa.org, keescook@chromium.org,
 natechancellor@gmail.com, iamjoonsoo.kim@lge.com,
 linux-arm-kernel@lists.infradead.org, chris@zankel.net,
 wsa+renesas@sang-engineering.com, robin.murphy@arm.com,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 akpm@linux-foundation.org, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks,

applied to the dma-mapping tree.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
