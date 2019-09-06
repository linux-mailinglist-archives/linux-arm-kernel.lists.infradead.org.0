Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA1BABB2E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 16:41:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sJTj/kDqXGBgdfnlyl55s1XwYp10Z5AgL6AtLLUDvtg=; b=IYAXrxy2mZahWS
	dsgRbmuquOWRKUfeVHPCmUKMkESeRkYDMAfO9EtuXx6jaWHAWjKdU6RZDc3Db2Q38s7hzpy23+Ume
	qJcDs8q0cVUxORat5DvbLbzrp2g+ZWy+ar6mfrR7gqFDdX9Lu+J2LPEJdU1oRTq7fZmbSy/Y2TcX6
	xeY74gbdvpCT63cKhXFkBA1BiPOyY+hr8WaPeYujnC9TypY94gLTcxQZriCQfgsF4HUECetiXZU5D
	sjQEyldNzuFpSaz7wvauBLnv4Fpc2QJagykO6QtRukhzAHZGFbEEtTA3FWFTtaJYs2FgLN1Blj1/X
	7awABkuJ3KSgEnNSF8rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6FPy-0003zf-3l; Fri, 06 Sep 2019 14:40:54 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6FPh-0003y1-C1
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 14:40:39 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 086BA58B86854A1F6124;
 Fri,  6 Sep 2019 22:40:31 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Fri, 6 Sep 2019
 22:40:20 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <will@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH -next] perf/arm-cci: use devm_platform_ioremap_resource() to
 simplify code
Date: Fri, 6 Sep 2019 22:40:14 +0800
Message-ID: <20190906144014.27924-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_074038_081994_9B5C4F1D 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
 drivers/perf/arm-cci.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/perf/arm-cci.c b/drivers/perf/arm-cci.c
index 8f8606b..1b8e337 100644
--- a/drivers/perf/arm-cci.c
+++ b/drivers/perf/arm-cci.c
@@ -1642,7 +1642,6 @@ static struct cci_pmu *cci_pmu_alloc(struct device *dev)
 
 static int cci_pmu_probe(struct platform_device *pdev)
 {
-	struct resource *res;
 	struct cci_pmu *cci_pmu;
 	int i, ret, irq;
 
@@ -1650,8 +1649,7 @@ static int cci_pmu_probe(struct platform_device *pdev)
 	if (IS_ERR(cci_pmu))
 		return PTR_ERR(cci_pmu);
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	cci_pmu->base = devm_ioremap_resource(&pdev->dev, res);
+	cci_pmu->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(cci_pmu->base))
 		return -ENOMEM;
 
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
