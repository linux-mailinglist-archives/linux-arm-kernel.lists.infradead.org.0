Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9532B8B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 18:09:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uHCuHOpiq+RBy3u/VWbfAXuicjpEI1rVYliXzZxWJjg=; b=HUBlMi8L+Ju6m9
	qvoueyITSlcaTHCzxNiqg1ZEoxWOJbWG+MtWCxI5tlP83AWD1IcXUBZKNbihnXji+lRfQUbs9M9aI
	QoDYCyqoqINYzEu8KzgxgU7SWVlF6gXNAsL3RDEn32IlKmLCgEhPFFxsnbd4QH+rEe5swU63J9Ful
	ZcR65xgGjM4eazMRZgRG+/nNd0Kq5dft+I7e7pR73LKcyQG96f3YzfrqoGRNFlvREvSHVX9A4AoUp
	V8OvYl+cpBVk+LcguZN8uaw9jPZ1G9FfSjehch/MtiVkWwQzJgD770wGdKSZ5/jirOf/+cF7j/22m
	LZN0RWQ0hflxSZaIAjEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVIBR-00054z-1U; Mon, 27 May 2019 16:09:09 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVIBI-000540-BC; Mon, 27 May 2019 16:09:02 +0000
X-UUID: 2461e03fef02428a8731189a225cf1d9-20190527
X-UUID: 2461e03fef02428a8731189a225cf1d9-20190527
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1088421531; Mon, 27 May 2019 08:08:52 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 27 May 2019 09:08:51 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 28 May 2019 00:08:36 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 28 May 2019 00:08:36 +0800
From: Miles Chen <miles.chen@mediatek.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
 <will.deacon@arm.com>
Subject: [PATCH] arm64: mm: make CONFIG_ZONE_DMA32 configurable
Date: Tue, 28 May 2019 00:08:35 +0800
Message-ID: <1558973315-19655-1-git-send-email-miles.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_090900_384775_1C51702E 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Miles Chen <miles.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This change makes CONFIG_ZONE_DMA32 defuly y and allows users
to overwrite it.

For the SoCs that do not need CONFIG_ZONE_DMA32, this is the
first step to manage all available memory by a single
zone(normal zone) to reduce the overhead of multiple zones.

The change also fixes a build error when CONFIG_NUMA=y and
CONFIG_ZONE_DMA32=n.

arch/arm64/mm/init.c:195:17: error: use of undeclared identifier 'ZONE_DMA32'
                max_zone_pfns[ZONE_DMA32] = PFN_DOWN(max_zone_dma_phys());

Signed-off-by: Miles Chen <miles.chen@mediatek.com>
---
 arch/arm64/Kconfig   | 3 ++-
 arch/arm64/mm/init.c | 2 ++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 76f6e4765f49..9d20a736d1d1 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -260,7 +260,8 @@ config GENERIC_CALIBRATE_DELAY
 	def_bool y
 
 config ZONE_DMA32
-	def_bool y
+	bool "Support DMA32 zone"
+	default y
 
 config HAVE_GENERIC_GUP
 	def_bool y
diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index d2adffb81b5d..96829ce21f99 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -191,8 +191,10 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
 {
 	unsigned long max_zone_pfns[MAX_NR_ZONES]  = {0};
 
+#ifdef CONFIG_ZONE_DMA32
 	if (IS_ENABLED(CONFIG_ZONE_DMA32))
 		max_zone_pfns[ZONE_DMA32] = PFN_DOWN(max_zone_dma_phys());
+#endif
 	max_zone_pfns[ZONE_NORMAL] = max;
 
 	free_area_init_nodes(max_zone_pfns);
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
