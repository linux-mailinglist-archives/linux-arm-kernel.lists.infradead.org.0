Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A798A3346
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 10:58:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bf8fBat3/mIQmqJHZMWCJDgopbwTZIyuSP9Rutc30uI=; b=AmB7iDFR7P54Yy
	AVAd23dzfA8CRJ8jzwOUiXwu91QDfUeKcQDT0QXacGukNXYz20F9Yz0s7Eda1XbysN8sFHX6JyZ2M
	36wilSYxIPDds9vGTKh1Sok+iXivnVB1n1bsSXOw5nyAqMy66aig1ibBr4W7IBSMaL+DbVnvPOk4j
	LwBo0cIRZz0CKpTWKqvA/CA3CBGhXTVFH5Ez3YLxBkpvVjqMRJ8w0ia324LO3p05byeAyAqAFaE08
	ZfAQ8VOuk84mdC4itl4CNxGcr0JM5P+83ZNx5SxN5Nw6e6wZD2aXXZuj9ItBnn66nQYaB69MsWmQP
	W2vxm+98nKLyKfk5I9BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3cja-0008IX-Il; Fri, 30 Aug 2019 08:58:18 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i3cjP-0008II-I4; Fri, 30 Aug 2019 08:58:07 +0000
Date: Fri, 30 Aug 2019 01:58:07 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Julien Grall <Julien.Grall@arm.com>
Subject: Re: [PATCH V2] arm: xen: mm: use __GPF_DMA32 for arm64
Message-ID: <20190830085807.GA15771@infradead.org>
References: <1567175255-1798-1-git-send-email-peng.fan@nxp.com>
 <d7477406-a8a0-5c3c-13dc-2c84e27b8afa@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d7477406-a8a0-5c3c-13dc-2c84e27b8afa@arm.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: Peng Fan <peng.fan@nxp.com>,
 "sstabellini@kernel.org" <sstabellini@kernel.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 dl-linux-imx <linux-imx@nxp.com>,
 "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 nd <nd@arm.com>, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <Robin.Murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Can we take a step back and figure out what we want to do here?

AFAICS this function allocates memory for the swiotlb-xen buffer,
and that means it must be <= 32-bit addressable to satisfy the DMA API
guarantees.  That means we generally want to use GFP_DMA32 everywhere
that exists, but on systems with odd zones we might want to dip into
GFP_DMA.  This also means swiotlb-xen doesn't actually do the right
thing on x86 at the moment.  So shouldn't we just have one common
routine in swiotlb-xen.c that checks if we have CONFIG_ZONE_DMA32
set, then try GFP_DMA32, and if not check if CONFIG_ZONE_DMA is set
and then try that, else default to GFP_KERNEL?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
