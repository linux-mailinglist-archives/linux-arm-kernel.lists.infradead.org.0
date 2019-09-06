Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F87CABB1F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 16:38:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OLNnKIhmU7RxkzMBdQVmyaylyveLs7K6BUmDSU5dW9k=; b=LfjTrJIYW1Ybfe
	AQ5tAJHEklyXbqbWbpbQNGCQ47L2ncfuEgJ84f6syKsrOzz3n+h4nQMhgZKKHaYQlN67qbL6p9IWU
	JaT+I+OPU46pqIZlMKIN70CpTNtj9m/PxYO1T9xq+uUak80vu9ZaYoQYD0P8is7h791eb5hacuNlt
	Ecz6wK5S5yiHIFXzM5BMENyRQpqOVVSsLs9LPZCHwLlX5wgFy7OaQHpXlRBNsAXCTNnphU4UN5+yJ
	FGQioodMhW6xcW6RZqGp2fI+pFLu71ajW9s0Q4Q4WY7+tdEBodWzsOu5j9A4ucPNBEuAPBcp2f5fX
	RjE/uyygtOogaYjlsmMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6FNo-0001fv-De; Fri, 06 Sep 2019 14:38:40 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6FNZ-0001en-V4
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 14:38:29 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id D0F2ECCB4E4E46042EED;
 Fri,  6 Sep 2019 22:38:02 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Fri, 6 Sep 2019
 22:37:57 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <will@kernel.org>, <mark.rutland@arm.com>, <khuong@os.amperecomputing.com>
Subject: [PATCH -next] perf: xgene: use devm_platform_ioremap_resource() to
 simplify code
Date: Fri, 6 Sep 2019 22:37:35 +0800
Message-ID: <20190906143735.28272-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_073827_522021_EE05DD0D 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/perf/xgene_pmu.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/perf/xgene_pmu.c b/drivers/perf/xgene_pmu.c
index 7e328d6..46ee680 100644
--- a/drivers/perf/xgene_pmu.c
+++ b/drivers/perf/xgene_pmu.c
@@ -1282,25 +1282,21 @@ static int acpi_pmu_probe_active_mcb_mcu_l3c(struct xgene_pmu *xgene_pmu,
 					     struct platform_device *pdev)
 {
 	void __iomem *csw_csr, *mcba_csr, *mcbb_csr;
-	struct resource *res;
 	unsigned int reg;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
-	csw_csr = devm_ioremap_resource(&pdev->dev, res);
+	csw_csr = devm_platform_ioremap_resource(pdev, 1);
 	if (IS_ERR(csw_csr)) {
 		dev_err(&pdev->dev, "ioremap failed for CSW CSR resource\n");
 		return PTR_ERR(csw_csr);
 	}
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 2);
-	mcba_csr = devm_ioremap_resource(&pdev->dev, res);
+	mcba_csr = devm_platform_ioremap_resource(pdev, 2);
 	if (IS_ERR(mcba_csr)) {
 		dev_err(&pdev->dev, "ioremap failed for MCBA CSR resource\n");
 		return PTR_ERR(mcba_csr);
 	}
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 3);
-	mcbb_csr = devm_ioremap_resource(&pdev->dev, res);
+	mcbb_csr = devm_platform_ioremap_resource(pdev, 3);
 	if (IS_ERR(mcbb_csr)) {
 		dev_err(&pdev->dev, "ioremap failed for MCBB CSR resource\n");
 		return PTR_ERR(mcbb_csr);
@@ -1332,13 +1328,11 @@ static int acpi_pmu_v3_probe_active_mcb_mcu_l3c(struct xgene_pmu *xgene_pmu,
 						struct platform_device *pdev)
 {
 	void __iomem *csw_csr;
-	struct resource *res;
 	unsigned int reg;
 	u32 mcb0routing;
 	u32 mcb1routing;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
-	csw_csr = devm_ioremap_resource(&pdev->dev, res);
+	csw_csr = devm_platform_ioremap_resource(pdev, 1);
 	if (IS_ERR(csw_csr)) {
 		dev_err(&pdev->dev, "ioremap failed for CSW CSR resource\n");
 		return PTR_ERR(csw_csr);
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
