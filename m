Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1FD0DC31C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 12:54:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1J6+20SclezJ/3cF+10pwIokUCEQ6npqNUkvKET7RMA=; b=jdJMFsBIAxB+pU
	tNGhYgiGaQmzyN0ejwSAU3Sn7sWVtrdFp9sGlJRLE2nFp/azdMexiOfEmVdul8+5FsRgVnH8aAkws
	vUdiRGN3L/7NBCPxTfCW873qEJlfDNeQIB3f7XX+eYoMlTUj69PRcdeLNn70JCKeIR4qvekdlbIP+
	UjmQr21SQAnPkCR3jyWalrJwLhGdS7mBfnz1cqKqX85jbB9a2W+dEdVmujAE1b92L4xCgB9UbBKk3
	i8N+tJE/GD3EVhG7HCNeHPLpMc9WHF/C/+JesmDfc8V2guvBgR8C9yEv9OlQVsnr1k+oQ1F/yke5/
	oXdGj3WNVWU0YO3ezGMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLPuA-0004Oj-UO; Fri, 18 Oct 2019 10:54:46 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLPtx-0004Np-Ha
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 10:54:34 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Oct 2019 03:54:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,311,1566889200"; d="scan'208";a="371431249"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga005.jf.intel.com with ESMTP; 18 Oct 2019 03:54:30 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id E00BC27E; Fri, 18 Oct 2019 13:54:29 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-arm-kernel@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 linux-spi@vger.kernel.org
Subject: [PATCH v1 3/5] spi: pxa2xx: Convert pxa2xx_spi_get_port_id() to take
 struct device
Date: Fri, 18 Oct 2019 13:54:27 +0300
Message-Id: <20191018105429.82782-3-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191018105429.82782-1-andriy.shevchenko@linux.intel.com>
References: <20191018105429.82782-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_035433_622415_BA586157 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is preparatory patch before converting to use device_get_match_data() API.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/spi/spi-pxa2xx.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi-pxa2xx.c b/drivers/spi/spi-pxa2xx.c
index 670734b3d56a..04ca80770e35 100644
--- a/drivers/spi/spi-pxa2xx.c
+++ b/drivers/spi/spi-pxa2xx.c
@@ -1476,11 +1476,13 @@ MODULE_DEVICE_TABLE(of, pxa2xx_spi_of_match);
 
 #ifdef CONFIG_ACPI
 
-static int pxa2xx_spi_get_port_id(struct acpi_device *adev)
+static int pxa2xx_spi_get_port_id(struct device *dev)
 {
+	struct acpi_device *adev;
 	unsigned int devid;
 	int port_id = -1;
 
+	adev = ACPI_COMPANION(dev);
 	if (adev && adev->pnp.unique_id &&
 	    !kstrtouint(adev->pnp.unique_id, 0, &devid))
 		port_id = devid;
@@ -1489,7 +1491,7 @@ static int pxa2xx_spi_get_port_id(struct acpi_device *adev)
 
 #else /* !CONFIG_ACPI */
 
-static int pxa2xx_spi_get_port_id(struct acpi_device *adev)
+static int pxa2xx_spi_get_port_id(struct device *dev)
 {
 	return -1;
 }
@@ -1568,7 +1570,7 @@ pxa2xx_spi_init_pdata(struct platform_device *pdev)
 	ssp->irq = platform_get_irq(pdev, 0);
 	ssp->type = type;
 	ssp->dev = &pdev->dev;
-	ssp->port_id = pxa2xx_spi_get_port_id(adev);
+	ssp->port_id = pxa2xx_spi_get_port_id(&pdev->dev);
 
 	pdata->is_slave = of_property_read_bool(pdev->dev.of_node, "spi-slave");
 	pdata->num_chipselect = 1;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
