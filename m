Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCD36E5C5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 14:33:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KCgg32li1pMQq1BHaij7fzj1MfNiv0plTgjsRa7pPhI=; b=KeI3JHTcQ4rdC9
	wG1bDYAIezEwdw1HXPe5V6fljQyziVJQe9qw8R2xq+/B2DXTrhJCpM7s5kCXpUd2LCfKuA8RA4080
	GP1X1a+44zvQMpijrdIY2waaObR5rTfYozKpjx2tdeQ4+G8uqyun0o518vaQu83QfouKZChFjB4uv
	M6svcnY01x9jUpKshseILnWbLmB9OxeXBTEdo7lWeEFff3r6DUzx+XICqyViqidjWsh5oiIbq0q2o
	uOtBPRL81vRFvULIcnxEC24tum44rpYLZxSbTbJXPuMxwdnO5wy1Hj2RxQnyfwOM1+V32zFF1yfYJ
	K30t67Qv4OioxH2OhHNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoS4z-0000u3-CP; Fri, 19 Jul 2019 12:33:41 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoS4e-0000ss-3Q
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 12:33:21 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id AD7C768B02; Fri, 19 Jul 2019 14:33:18 +0200 (CEST)
Date: Fri, 19 Jul 2019 14:33:18 +0200
From: Christoph Hellwig <hch@lst.de>
To: Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: add swiotlb support to arm32
Message-ID: <20190719123318.GA30713@lst.de>
References: <20190709142011.24984-1-hch@lst.de>
 <6a56eacd-d481-de93-e0d8-64d8385de214@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6a56eacd-d481-de93-e0d8-64d8385de214@ti.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_053320_293653_236424BC 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 linux-kernel@vger.kernel.org,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 iommu@lists.linux-foundation.org, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 06:51:46PM +0530, Vignesh Raghavendra wrote:
> > This series adds swiotlb support to the 32-bit arm port to ensure
> > platforms with LPAE support can support DMA mapping for all devices
> > using 32-bit dma masks, just like we do on other ports that support
> >> 32-bit physical addressing and don't have an iommu.
> 
> 
> This series fixes SATA errors seen on TI platforms with LPAE like DRA7
> Rev H EVM.
> 
> Tested-by: Vignesh Raghavendra <vigneshr@ti.com>
> 
> Thanks for the fix!

Thanks for testing!  Russell, do you want to pick this up via the
arm tree, or should I queue it up in the dma-mapping tree?

> 
> -- 
> Regards
> Vignesh
---end quoted text---

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
