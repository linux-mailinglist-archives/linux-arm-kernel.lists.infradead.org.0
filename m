Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6177B7362C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 19:56:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=obn7dNkyZnn9nlNBttMg2TUTa8jJfgZNiG2Q38LMMJE=; b=u0JevNZCMZ+KKl
	N3QT0jpTB/P985O4Uzdlcmj2r7jo/pxNZy1ACw2aEJAz3Kjz+zWZ3kfb0h4NjO4KNDwYKMChykC9B
	kRYyNmgavUB1m7FNDsHmMQByJGpuUdgG+OrjkBnzyLl61CUcpvIfPEP2/dYFoLFIwsjZRn8LpZfJ2
	kNTUaCCwc6iPVWFIPhLnnxD41As0/j/sg8tWvSjQ5Pgy7IEQX2LgmlTy0gBMWP49TzvAWpxS4Bj4D
	yu7GdjiTHif5N5Eg/FD0x4ajbkQbJ23ArqkGlzeXkxi8c86iLpXccKCar3Zr5V2SLT/zzo96GOWPv
	IYtCmd7FG7/eBdBMATUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqLUr-0003fR-29; Wed, 24 Jul 2019 17:56:13 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqLUX-0003ed-Pu
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 17:55:55 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 4813E68B20; Wed, 24 Jul 2019 19:55:51 +0200 (CEST)
Date: Wed, 24 Jul 2019 19:55:51 +0200
From: Christoph Hellwig <hch@lst.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH 2/2] arm: use swiotlb for bounce buffer on LPAE configs
Message-ID: <20190724175551.GA13073@lst.de>
References: <20190709142011.24984-1-hch@lst.de>
 <20190709142011.24984-3-hch@lst.de>
 <a447eae1bb46fe753f7a62fb8932e680b79b1635.camel@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a447eae1bb46fe753f7a62fb8932e680b79b1635.camel@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_105553_987496_BD503FA1 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, linux-kernel@vger.kernel.org,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 iommu@lists.linux-foundation.org, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 07:23:50PM +0200, Nicolas Saenz Julienne wrote:
> Out of curiosity, what is the reason stopping us from using dma-direct/swiotlb
> instead of arm_dma_ops altogether?

Nothing fundamental.  We just need to do a very careful piecemeal
migration as the arm code handles a ot of interesting corner case and
we need to ensure we don't break that.  I have various WIP patches
for the easier bits and we can work from there.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
