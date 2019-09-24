Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D9BBD154
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 20:13:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HI24ApXOr1dPpetpMjX6XdrENZunCbBhN4FP0C3s8Ss=; b=isCFJ4hcAQWoBU
	ycow/PJ7Ml7xoOs7Lo0e/SI3xkzAjlf6t2K0oGcz6NUN7pS5SD9yOS1o6U4Qt3tAduGmjhUQpmKcg
	fcIoevSIhk9r9mo1Yn7tzsDwGlgkgXLECoosDTlBYEvAU2n22INtdnYGiDdYH9BZs52ghQHO4o12Z
	HGWlPSyU98b0kcXZ+9+47AdROMZc9zyA5edyCLIt8DmMrgIUeuiauwjxTLo+T2YSD5BE0k1ljMQbv
	+8j/YwkuvDwUHKp3/LsHfo+XbeCirrQCH9aJdXoLS5t7IqAtOqrPX8cGtaPbjdXKleZKUkkBm6NbI
	nnC3CwjGtMYX8gPKZaiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCpJg-0003JW-4w; Tue, 24 Sep 2019 18:13:36 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCpJ1-00034D-My
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 18:12:57 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 3AA7DAEF1;
 Tue, 24 Sep 2019 18:12:51 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: robh+dt@kernel.org, devicetree@vger.kernel.org, frowand.list@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 dmaengine@vger.kernel.org, etnaviv@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, xen-devel@lists.xenproject.org,
 linux-tegra@vger.kernel.org, linux-media@vger.kernel.org,
 linux-pci@vger.kernel.org
Subject: [PATCH 01/11] of: address: clean-up unused variable in
 of_dma_get_range()
Date: Tue, 24 Sep 2019 20:12:32 +0200
Message-Id: <20190924181244.7159-2-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190924181244.7159-1-nsaenzjulienne@suse.de>
References: <20190924181244.7159-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_111255_928074_3056E7A8 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: f.fainelli@gmail.com, mbrugger@suse.com, wahrenst@gmx.net,
 james.quinlan@broadcom.com, robin.murphy@arm.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

'len' in of_dma_get_range() is used to check the 'dma-ranges' property
length. After the fact, some calculations are run on the variable to be
then left unused.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---

 drivers/of/address.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index 978427a9d5e6..0f898756199d 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -922,7 +922,7 @@ int of_dma_get_range(struct device_node *np, u64 *dma_addr, u64 *paddr, u64 *siz
 {
 	struct device_node *node = of_node_get(np);
 	const __be32 *ranges = NULL;
-	int len, naddr, nsize, pna;
+	int naddr, nsize, pna;
 	int ret = 0;
 	u64 dmaaddr;
 
@@ -931,6 +931,7 @@ int of_dma_get_range(struct device_node *np, u64 *dma_addr, u64 *paddr, u64 *siz
 
 	while (1) {
 		struct device_node *parent;
+		int len;
 
 		naddr = of_n_addr_cells(node);
 		nsize = of_n_size_cells(node);
@@ -962,8 +963,6 @@ int of_dma_get_range(struct device_node *np, u64 *dma_addr, u64 *paddr, u64 *siz
 		goto out;
 	}
 
-	len /= sizeof(u32);
-
 	pna = of_n_addr_cells(node);
 
 	/* dma-ranges format:
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
