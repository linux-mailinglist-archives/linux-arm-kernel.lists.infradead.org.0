Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 785A6F4E4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 12:58:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YlHMWmrYnkKnqF8J6cYk6X5d4BHZO3A3jfelnZg6kgU=; b=tp+Spq16QABoFD
	DBi0TV+88U6t7sFTqVrnH6DTBJTvWRsidOj/WxdlA/CqEdJc0EBacrS4gvySrXcv0aXB5wPMFRmAv
	foyfjHIz9St5gQF9WbNVvacDddQdvfZWlBvvPqtdjm4tgr2co7iOXCJDYajVtfv7MmLSTTt138ypn
	+AoZRz8xlD7Z5K+c2sOsUrq1SJFKn7KqX4nOUOl4FI5PEuFp9VjvcHg4nYbQbhXBqxfhxQoGYODzg
	KbSrJFFOFTR7LWhLDasT0G5zzuicW1mqiJkXvGW8Z9u3PTmtWf4Kou451DdqaaLJLHh6SdIz9LxLS
	79w4hFqJgHjHpK2Ratuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLQTC-00072j-TJ; Tue, 30 Apr 2019 10:58:42 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLQRf-0005mJ-Ok
 for linux-arm-kernel@bombadil.infradead.org; Tue, 30 Apr 2019 10:57:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ra2kVibUVn9/VQ0SNXVhYqTlrrhSqFlW+gpyazu5fno=; b=j31sqtMPWq78gM6GoaDwfINA/
 ho72r37XZbFCvSIW6IRin6euc2DTtQlk28/Oh2b8dx37AO/uDHnnz8cedVLdph37j9Ajio4uOF5qS
 MpL+oWDYGhbPBNQssT9/1Mn2hG7BVUXL36eA48+0/eTL0AYTo0ar0W8JpLXT0hYeeghxHlsLOvEdm
 0me+maBH9ZmpLAmpfGFcH87HVHk9C1Akhr2qVcRPRtCdrqFf2SzGmmhnKhtHv4Z93O12DhK36rnK7
 80xOZ3kjZzuZS7z9X1tvcU7D+UJ1JIMylp8CkPbM8IlYsM2aZmVfS6j0cYadovvvOvVsoxFSvBEGC
 EQjTDKENQ==;
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLQRc-0008Ld-PP
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 10:57:05 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id B83E068B20; Tue, 30 Apr 2019 12:56:40 +0200 (CEST)
Date: Tue, 30 Apr 2019 12:56:40 +0200
From: Christoph Hellwig <hch@lst.de>
To: Nicolin Chen <nicoleotsuka@gmail.com>
Subject: Re: [RFC/RFT PATCH 1/2] dma-contiguous: Simplify
 dma_*_from_contiguous() function calls
Message-ID: <20190430105640.GA20021@lst.de>
References: <20190430015521.27734-1-nicoleotsuka@gmail.com>
 <20190430015521.27734-2-nicoleotsuka@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430015521.27734-2-nicoleotsuka@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_065704_938051_77199C83 
X-CRM114-Status: UNSURE (   6.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
 joro@8bytes.org, linux@armlinux.org.uk, treding@nvidia.com,
 linux-xtensa@linux-xtensa.org, keescook@chromium.org,
 akpm@linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 chris@zankel.net, wsa+renesas@sang-engineering.com, robin.murphy@arm.com,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 iamjoonsoo.kim@lge.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

So while I really, really like this cleanup it turns out it isn't
actually safe for arm :(  arm remaps the CMA allocation in place
instead of using a new mapping, which can be done because they don't
share PMDs with the kernel.

So we'll probably need a __dma_alloc_from_contiguous version with
an additional bool fallback argument - everyone but arms uses
dma_alloc_from_contiguous as in your patch, just arm will get the
non-fallback one.

Sorry for not sorting this our earlier.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
