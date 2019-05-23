Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1AB276B1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 09:06:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4uWrkX9R64iHrg6+6obZ+1TeTHa2/McDIRHo0DFNXj8=; b=p8EaT9R22QyBGu
	31aVFKbClRrHkbmbqDoLW4SGKnFigya1EpH4owM8JPpvZMKL11qtfqx9tlkvz4QUp6cbhw3ze7eky
	yQqxEP6OHLmQD0yElopaoPuIuzfdiqBN2GGthfLOF9UNkKZvfNcedMFHrthb/h2G5y1Z86hCiPzl5
	ShHjNxKoBauXNnvpQ/NLVpr4YWvBS1of9PtecB23aFL8r20hczHqZaupJI0GN+jYZWHn9LKoAx1Gv
	QRhoJZ68ZDKzt+ED3He1/t4xKxC34on9zy5+q3MhO9oRqxLUszNQ1eCGublWiYTYjVmJBDrTgVwzv
	KBMwCHJds2MojcP6H5ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hThnc-0003PU-U5; Thu, 23 May 2019 07:06:00 +0000
Received: from 213-225-10-46.nat.highway.a1.net ([213.225.10.46]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hThjM-00065b-BR; Thu, 23 May 2019 07:01:37 +0000
From: Christoph Hellwig <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH 23/23] arm64: trim includes in dma-mapping.c
Date: Thu, 23 May 2019 09:00:28 +0200
Message-Id: <20190523070028.7435-24-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190523070028.7435-1-hch@lst.de>
References: <20190523070028.7435-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: Tom Murphy <tmurphy@arista.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With most of the previous functionality now elsewhere a lot of the
headers included in this file are not needed.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/mm/dma-mapping.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/arch/arm64/mm/dma-mapping.c b/arch/arm64/mm/dma-mapping.c
index 184ef9ccd69d..1669618db08a 100644
--- a/arch/arm64/mm/dma-mapping.c
+++ b/arch/arm64/mm/dma-mapping.c
@@ -5,19 +5,9 @@
  */
 
 #include <linux/gfp.h>
-#include <linux/acpi.h>
-#include <linux/memblock.h>
 #include <linux/cache.h>
-#include <linux/export.h>
-#include <linux/slab.h>
-#include <linux/genalloc.h>
-#include <linux/dma-direct.h>
 #include <linux/dma-noncoherent.h>
-#include <linux/dma-contiguous.h>
 #include <linux/dma-iommu.h>
-#include <linux/vmalloc.h>
-#include <linux/swiotlb.h>
-#include <linux/pci.h>
 
 #include <asm/cacheflush.h>
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
