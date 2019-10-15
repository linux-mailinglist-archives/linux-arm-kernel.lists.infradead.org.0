Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A27D4D7860
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 16:25:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nyZOf1cXBEV1fZnwtPVTnOaRaNdbLh5lueKpkfqt83g=; b=IdlnKr5UIjbdO1
	OvxzMK5bo8LGJRNmGE7iPiEEaFqvv/Kodmv+HXQjn4oAQcy98iqnGNTVfcEh86BWaMzg7Elx3XQVG
	J7w298Sk0JaYTqc7y5O72kRWuorPpswAm5agZZ5NuNEFeEWCzJdWyKaothnh9mWyxcuxnGnx3hVgA
	JQtGtDMv3r4VqQ86W14ZgCiemxy5MDUCeDi5L4TB76vPCqVFr6crW6qNXfdsE5WnYxYvjIawcSiOR
	MtgBMyRSDdvEe1KL4y4sbVLLTIArkk6Xg9e+53cm2tq6sNfyaKN312ZQZtL8P1vLGpFtxX/FMoipV
	mGwnxUZ75JcZUnr1I1EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKNlK-0000c2-9f; Tue, 15 Oct 2019 14:25:22 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKNlB-0008Nz-9d
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 14:25:15 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 8F4A91629CC662650C3C;
 Tue, 15 Oct 2019 22:25:07 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.439.0; Tue, 15 Oct 2019
 22:24:56 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <kgene@kernel.org>, <krzk@kernel.org>, <s.nawrocki@samsung.com>,
 <tomasz.figa@gmail.com>, <cw00.choi@samsung.com>, <mturquette@baylibre.com>,
 <sboyd@kernel.org>
Subject: [PATCH -next] clk: s3c2410: use devm_platform_ioremap_resource() to
 simplify code
Date: Tue, 15 Oct 2019 22:24:24 +0800
Message-ID: <20191015142424.25944-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_072513_918660_242E15B0 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: linux-samsung-soc@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/clk/samsung/clk-s3c2410-dclk.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/clk/samsung/clk-s3c2410-dclk.c b/drivers/clk/samsung/clk-s3c2410-dclk.c
index 1281672..7dad909 100644
--- a/drivers/clk/samsung/clk-s3c2410-dclk.c
+++ b/drivers/clk/samsung/clk-s3c2410-dclk.c
@@ -238,7 +238,6 @@ static SIMPLE_DEV_PM_OPS(s3c24xx_dclk_pm_ops,
 static int s3c24xx_dclk_probe(struct platform_device *pdev)
 {
 	struct s3c24xx_dclk *s3c24xx_dclk;
-	struct resource *mem;
 	struct s3c24xx_dclk_drv_data *dclk_variant;
 	struct clk_hw **clk_table;
 	int ret, i;
@@ -257,8 +256,7 @@ static int s3c24xx_dclk_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, s3c24xx_dclk);
 	spin_lock_init(&s3c24xx_dclk->dclk_lock);
 
-	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	s3c24xx_dclk->base = devm_ioremap_resource(&pdev->dev, mem);
+	s3c24xx_dclk->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(s3c24xx_dclk->base))
 		return PTR_ERR(s3c24xx_dclk->base);
 
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
