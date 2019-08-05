Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D3381517
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 11:14:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cke32zKTxEdQ2zQ9Bdx+fz4dbw4QECGioHfxzwhLnV0=; b=MzF+hKpB9MGcRW
	sweTAiMUA8QGqV6qlDhSkIPEr6RKNWcYUOrchlBfo3iDPPsim+JZWi5L44KSOUcN4MVcbnj1YR3+P
	5lnYe+/05txRyvJGlQJIcBn0lTVvNvFA8aDjrzdKhvb8SD9ygaJ0bIkFSDcHdi+syFjK7nLW0hEoi
	4oU+O0b+L/5ue9gAOUA9+fK+KXDkSyhctkA3RGbo84NZaz+LOz6ACvuJcuSwrKBy4wMJAdJcfMziS
	yCJSuBIm/iLPrGvbA75pS23DuVwJy8xozMwbuLCMhoWuYGr7mBYGeeuVMtuvX1q6EC0NNeIPdQDCg
	V1CkIz/14Dj+MW0nc1Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZ42-0006FY-01; Mon, 05 Aug 2019 09:13:58 +0000
Received: from [195.167.85.94] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1huZ2L-0004ys-Hw; Mon, 05 Aug 2019 09:12:14 +0000
From: Christoph Hellwig <hch@lst.de>
To: iommu@lists.linux-foundation.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Subject: [PATCH 4/7] ALSA: pcm: use dma_can_mmap() to check if a device
 supports dma_mmap_*
Date: Mon,  5 Aug 2019 12:11:56 +0300
Message-Id: <20190805091159.7826-5-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190805091159.7826-1-hch@lst.de>
References: <20190805091159.7826-1-hch@lst.de>
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
Cc: linux-xtensa@linux-xtensa.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, linux-sh@vger.kernel.org,
 Takashi Iwai <tiwai@suse.de>, linuxppc-dev@lists.ozlabs.org, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace the local hack with the dma_can_mmap helper to check if
a given device supports mapping DMA allocations to userspace.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 sound/core/pcm_native.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/sound/core/pcm_native.c b/sound/core/pcm_native.c
index 703857aab00f..81c82c3ee8a2 100644
--- a/sound/core/pcm_native.c
+++ b/sound/core/pcm_native.c
@@ -220,12 +220,11 @@ static bool hw_support_mmap(struct snd_pcm_substream *substream)
 {
 	if (!(substream->runtime->hw.info & SNDRV_PCM_INFO_MMAP))
 		return false;
-	/* architecture supports dma_mmap_coherent()? */
-#if defined(CONFIG_ARCH_NO_COHERENT_DMA_MMAP) || !defined(CONFIG_HAS_DMA)
+	if (!dma_can_mmap(substream->dma_buffer.dev.dev))
+		return false;
 	if (!substream->ops->mmap &&
 	    substream->dma_buffer.dev.type == SNDRV_DMA_TYPE_DEV)
 		return false;
-#endif
 	return true;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
