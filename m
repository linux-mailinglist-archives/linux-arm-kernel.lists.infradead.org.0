Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3EADE9A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 12:36:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6jlWL0ID9zwRmZjCuETOuhWICN6I1/yZCjHLwcj8R+4=; b=bty/0Q3Do/dotP
	wVFpU5dF2vdNMHXoiDWIo0/Dm8wo+TnGXcDKXSRMnAa3rzwW8MjdBlZwIzHoGPe4pLrKmrnZqQR30
	0sly2wS+6qA3U69Y92EJ5bvT60vSQgi5qEgUF8ik/BXV0gSDvDOUemtGL4fTonNKKmx6ATrvbPvEJ
	K8t7SW17wRulFEgYrtJHOTJSni4a330R5CK4MmDfMOkjXjtsna3mJpKwgUkv39GoZBJkM48ZdOm9h
	bHhVkJTx8Pjg6VSkXNehqm2WTkuGHYO+lrkbDWZDVdiJis7gGYCmnWw2qdBnxDne5cyrWrCNPvkSg
	sqC51UwzgxxPKT56x8AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMV3M-0006vj-Jw; Mon, 21 Oct 2019 10:36:44 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMV39-0006uj-29
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 10:36:32 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 03:36:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,323,1566889200"; d="scan'208";a="191069664"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga008.jf.intel.com with ESMTP; 21 Oct 2019 03:36:26 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id E63CF1A1; Mon, 21 Oct 2019 13:36:25 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-arm-kernel@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 linux-spi@vger.kernel.org
Subject: [PATCH v1 1/2] spi: pxa2xx: Introduce temporary variables to increase
 readability
Date: Mon, 21 Oct 2019 13:36:24 +0300
Message-Id: <20191021103625.4250-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_033631_375387_9FF76DA2 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current conditional for PCI ID matching is hard to read.
Introduce couple of temporary variables to increase readability
of the code.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/spi/spi-pxa2xx.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/spi/spi-pxa2xx.c b/drivers/spi/spi-pxa2xx.c
index 0390053ed8f5..02daba3dbd0d 100644
--- a/drivers/spi/spi-pxa2xx.c
+++ b/drivers/spi/spi-pxa2xx.c
@@ -1516,13 +1516,14 @@ pxa2xx_spi_init_pdata(struct platform_device *pdev)
 	struct pxa2xx_spi_controller *pdata;
 	struct ssp_device *ssp;
 	struct resource *res;
+	struct device *parent = pdev->dev.parent;
+	struct pci_dev *pcidev = dev_is_pci(parent) ? to_pci_dev(parent) : NULL;
 	const struct pci_device_id *pcidev_id = NULL;
 	enum pxa_ssp_type type;
 	const void *match;
 
-	if (dev_is_pci(pdev->dev.parent))
-		pcidev_id = pci_match_id(pxa2xx_spi_pci_compound_match,
-					 to_pci_dev(pdev->dev.parent));
+	if (pcidev)
+		pcidev_id = pci_match_id(pxa2xx_spi_pci_compound_match, pcidev);
 
 	match = device_get_match_data(&pdev->dev);
 	if (match)
@@ -1549,8 +1550,8 @@ pxa2xx_spi_init_pdata(struct platform_device *pdev)
 
 #ifdef CONFIG_PCI
 	if (pcidev_id) {
-		pdata->tx_param = pdev->dev.parent;
-		pdata->rx_param = pdev->dev.parent;
+		pdata->tx_param = parent;
+		pdata->rx_param = parent;
 		pdata->dma_filter = pxa2xx_spi_idma_filter;
 	}
 #endif
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
