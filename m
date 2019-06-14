Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88BE345ED8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 15:47:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jQgdvtDGczOmcq2Iaw7laSWunlTDtZoq7XRqePKR9hQ=; b=tfqUPV6pchE3d5
	u73tOtHMPIM9KCm1T0X8QEl8o8hQ9YFs16zYC3lAGmws+gLBIv3Ax78BVVoAtXrM0E7b0pefaBgRl
	7TxnPhMciXl1zirpUhx67rL6dZY6R/cliHR7wMTZUsY4zS2BbOCGY9r676HRX9HGxnN/JPb992KQk
	WqTVR7r6mOItfyWh6M8dHanJIB/JqJT2oqkgwgSvY3C/Y5nP3/uhwWd/69hG2b3cFgLWknxv3XKVd
	6SjK8CrbUFVQIGvQ4LzcO4t9qlC/G5Kh5j5808ccbaf0VVCS2KJhH3tgXhn7IoEd4S71NV6X1qXio
	nkcS9moY9DgASHWlGQtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbmYT-0004Yb-1e; Fri, 14 Jun 2019 13:47:45 +0000
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmYG-0004Xc-Jk; Fri, 14 Jun 2019 13:47:33 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Subject: use exact allocation for dma coherent memory
Date: Fri, 14 Jun 2019 15:47:10 +0200
Message-Id: <20190614134726.3827-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 Intel Linux Wireless <linuxwifi@intel.com>, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

various architectures have used exact memory allocations for dma
allocations for a long time, but x86 and thus the common code based
on it kept using our normal power of two allocator, which tends to
waste a lot of memory for certain allocations.

Switching to a slightly cleaned up alloc_pages_exact is pretty easy,
but it turns out that because we didn't filter valid gfp_t flags
on the DMA allocator, a bunch of drivers were passing __GFP_COMP
to it, which is rather bogus in too many ways to explain.  Arm has
been filtering it for a while, but this series instead tries to fix
the drivers and warn when __GFP_COMP is passed, which makes it much
larger than just adding the functionality.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
