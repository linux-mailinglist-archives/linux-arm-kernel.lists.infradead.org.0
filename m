Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 801F71E2C87
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 21:15:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8m+459fAV5RMww9ASQBffFu8T7zK1fuzuM3RANgZOvw=; b=VEPv1nVqM8n/UkMYYYMMm9kX9H
	lYskG0//GClh9cdrcKfaxbzrEsLRv1j7Wr89r4rFEgqK41Jjs+G3a0FRB+JoMHlr2As7Qa2jPO35L
	R8HUimVyJ2/KLMAWtZuPGsv3/ZnNfTEK8uk8bvgMEFEvCQMVx3+dwfgjq6SGxgo16YlSwGeyllWru
	7acawGXuwRHVvM1FpZk8i6LMct/O+wOtH6aeffLpF7p6ZrK5IGB8Nv1TukYdzxNyCa06g/fusEixp
	pDxF+BpCRklf9e2xTJaaNx2bnDgbRmMooYErRVSP93Cbg6maBpQiYHhZTPDapqn05gcJA9x1EntWm
	3enZA1Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdf39-0006yY-67; Tue, 26 May 2020 19:15:43 +0000
Received: from rnd-relay.smtp.broadcom.com ([192.19.229.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdf1C-0003Ja-EV
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 19:13:43 +0000
Received: from mail-irv-17.broadcom.com (mail-irv-17.lvn.broadcom.net
 [10.75.242.48])
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTP id 43D5430D64C;
 Tue, 26 May 2020 12:13:41 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com 43D5430D64C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1590520421;
 bh=AriK1NG87ZP5xbZZLs45I9ity+OqGcVezhDeyT3A91M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iAQGoOHfVWnQdrqOFiyoMOh6ZwAmNICLhoLV9Io/Vy4j+GREamlBNlyFf9ZtNT4fK
 c/MYDrOPasRa+Aje2nM3fHOpKsHdU757VFLNnGuObTx8Ibk/nLEMwIEWw6jwELn6yt
 pYiexCaP0qjxIqm01yifk+r5uootcBD3LZ6s/A6U=
Received: from stbsrv-and-01.and.broadcom.net (stbsrv-and-01.and.broadcom.net
 [10.28.16.211])
 by mail-irv-17.broadcom.com (Postfix) with ESMTP id E1083140069;
 Tue, 26 May 2020 12:13:39 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: linux-pci@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com, james.quinlan@broadcom.com
Subject: [PATCH v2 10/14] arm: dma-mapping: Invoke dma offset func if needed
Date: Tue, 26 May 2020 15:12:49 -0400
Message-Id: <20200526191303.1492-11-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200526191303.1492-1-james.quinlan@broadcom.com>
References: <20200526191303.1492-1-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_121342_519727_DEEC958A 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.19.229.170 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Russell King <linux@armlinux.org.uk>, open list <linux-kernel@vger.kernel.org>,
 Julien Grall <julien.grall@arm.com>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Just like dma_pfn_offset, another offset is added to the dma/phys
translation if there happen to be multiple regions that have different
mapping offsets.

Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
---
 arch/arm/include/asm/dma-mapping.h | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/arch/arm/include/asm/dma-mapping.h b/arch/arm/include/asm/dma-mapping.h
index bdd80ddbca34..811389b4fb29 100644
--- a/arch/arm/include/asm/dma-mapping.h
+++ b/arch/arm/include/asm/dma-mapping.h
@@ -35,8 +35,12 @@ static inline const struct dma_map_ops *get_arch_dma_ops(struct bus_type *bus)
 #ifndef __arch_pfn_to_dma
 static inline dma_addr_t pfn_to_dma(struct device *dev, unsigned long pfn)
 {
-	if (dev)
+	if (dev) {
+		/* This should compile out if !CONFIG_DMA_PFN_OFFSET_MAP */
+		pfn -= dma_pfn_offset_from_phys_addr(dev, PFN_PHYS(pfn));
+
 		pfn -= dev->dma_pfn_offset;
+	}
 	return (dma_addr_t)__pfn_to_bus(pfn);
 }
 
@@ -44,9 +48,12 @@ static inline unsigned long dma_to_pfn(struct device *dev, dma_addr_t addr)
 {
 	unsigned long pfn = __bus_to_pfn(addr);
 
-	if (dev)
-		pfn += dev->dma_pfn_offset;
+	if (dev) {
+		/* This should compile out if !CONFIG_DMA_PFN_OFFSET_MAP */
+		pfn += dma_pfn_offset_from_dma_addr(dev, addr);
 
+		pfn += dev->dma_pfn_offset;
+	}
 	return pfn;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
