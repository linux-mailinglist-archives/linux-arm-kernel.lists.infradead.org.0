Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D78301ED3FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 18:12:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kI+SceBhxtLpPkpr0o53NralLwqHD1flauy/xYeX/hk=; b=AkTReXHqCWaM+T
	drG61r0YTADZSLtC8wLcxOWyU0OEFUyCBRBo1N7fW+J3/Z9yDoLWkBA8/Vq8EDkuCz777gvVrZPs4
	QOFURApoVkX3EU3CSZZpkMESKAjS0Htk2jEJOBAQMUXY81xQihj8cSJsdT3CrF9Xjmy/hhAk3emuq
	BwviA0uguy/DpNnNH/8mYDYtMvJuc19XPTIAwdGUSWt29054rt4cPjtSpXNrbHFtYNxmYNVxmLt26
	ZxUlV+Rf/8IbeHMiTaCoRE0zYP7LWw7jqi1FYwGR51y71x4h3QeBAHiwpATORUlM5Oj7pXtOctdRH
	pLBUU9/LdBmnXL6xfgfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgVzd-0006eN-DS; Wed, 03 Jun 2020 16:11:53 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgVzW-0006ct-Sv; Wed, 03 Jun 2020 16:11:49 +0000
X-UUID: 52c81e604f064e968c089ccecedc9cf6-20200603
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=dcLz9a48qWis1A4C8qZ1IIJYb+koWT5X7xxpq9JWgPU=; 
 b=NChHWJY8XfG9/EQKsn4lxUe19eQYv9kB+Boz1ySvE6Dxc1nQDvN4vfCEZZHhsESN8HWojhwltbEIx1Dau/nQ2QVSh39EZWwk8NuJEpByYdZqlNzA2Iv0tP+mul5nKEINcPW01/8iYuzy1z4PEIp02GxJCl9CJm2SdP5Xe5+pVVA=;
X-UUID: 52c81e604f064e968c089ccecedc9cf6-20200603
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 395526929; Wed, 03 Jun 2020 08:11:13 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 3 Jun 2020 09:11:33 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 00:11:34 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 4 Jun 2020 00:11:30 +0800
From: Miles Chen <miles.chen@mediatek.com>
To: Mike Rapoport <rppt@linux.ibm.com>, Andrew Morton
 <akpm@linux-foundation.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] mm/memblock: export max_pfn for kernel modules
Date: Thu, 4 Jun 2020 00:11:32 +0800
Message-ID: <20200603161132.2441-1-miles.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_091146_937832_31828B78 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Miles Chen <miles.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

max_pfn is uesd to get the highest pfn in the system. Drivers like
drivers/iommu/mtk_iommu.c checks max_pfn to see if it should enable
its "4GB mode".

This patch exports the max_pfn symbol, so we can build the driver as
a kernel module.

Signed-off-by: Miles Chen <miles.chen@mediatek.com>
---
 mm/memblock.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/mm/memblock.c b/mm/memblock.c
index c79ba6f9920c..3b2b21ecebb6 100644
--- a/mm/memblock.c
+++ b/mm/memblock.c
@@ -99,6 +99,7 @@ EXPORT_SYMBOL(contig_page_data);
 unsigned long max_low_pfn;
 unsigned long min_low_pfn;
 unsigned long max_pfn;
+EXPORT_SYMBOL(max_pfn);
 unsigned long long max_possible_pfn;
 
 static struct memblock_region memblock_memory_init_regions[INIT_MEMBLOCK_REGIONS] __initdata_memblock;
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
