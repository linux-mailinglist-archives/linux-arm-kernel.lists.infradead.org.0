Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D099CEBD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 13:56:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nVvQlNl5hGBDE63iZlbsK8jN/uJMM646psiAvECDt64=; b=fVZoaDKgEYWjFg
	Fn3U8QP7LUXgE4VgNThADq4jW1lQZ/OMpbyypdDGNvyilNcV0x2nJ24ho4Z3Slehrw110JR6rkfhq
	H8LGfMVf7MgGtj2yhsZuhWWTxmsLiky1K5UytEsurH+sREvSntSE5OSx7y5BYsBw0OS+jwq4Cs9DP
	X9ZZj4GsnEn1ZWxxSqOSgn5el5ccn1xeGhURmvyqx+Ao6kaNA5PPxjxehKRT/zw4GEuQNk5IKgYw2
	kWnZ/AdAd3aj6oLPTRjl38dNZs2zq1Zrry/0VuZFOXQVhwBLVeyq7RlcOYMCyVoWozVGA6CCwezLI
	JiJ6Q9YqJqWbIRG5+bvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2DcH-00023c-Le; Mon, 26 Aug 2019 11:56:57 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2DcA-00022D-4G
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 11:56:52 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 038A03A17AC74FA5FB94;
 Mon, 26 Aug 2019 19:56:47 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.439.0; Mon, 26 Aug 2019 19:56:38 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: Adrian Hunter <adrian.hunter@intel.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, Joel Stanley <joel@jms.id.au>, Andrew Jeffery
 <andrew@aj.id.au>
Subject: [PATCH -next] mmc: aspeed: Fix return value check in
 aspeed_sdc_probe()
Date: Mon, 26 Aug 2019 12:00:13 +0000
Message-ID: <20190826120013.183435-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_045650_319743_3CB22FAB 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-mmc@vger.kernel.org, kernel-janitors@vger.kernel.org,
 Wei Yongjun <weiyongjun1@huawei.com>, linux-aspeed@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In case of error, the function of_platform_device_create() returns
NULL pointer not ERR_PTR(). The IS_ERR() test in the return value
check should be replaced with NULL test.

Fixes: 09eed7fffd33 ("mmc: Add support for the ASPEED SD controller")
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/mmc/host/sdhci-of-aspeed.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-aspeed.c b/drivers/mmc/host/sdhci-of-aspeed.c
index 8bb095ca2fa9..d5acb5afc50f 100644
--- a/drivers/mmc/host/sdhci-of-aspeed.c
+++ b/drivers/mmc/host/sdhci-of-aspeed.c
@@ -261,9 +261,9 @@ static int aspeed_sdc_probe(struct platform_device *pdev)
 		struct platform_device *cpdev;
 
 		cpdev = of_platform_device_create(child, NULL, &pdev->dev);
-		if (IS_ERR(cpdev)) {
+		if (!cpdev) {
 			of_node_put(child);
-			ret = PTR_ERR(cpdev);
+			ret = -ENODEV;
 			goto err_clk;
 		}
 	}




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
