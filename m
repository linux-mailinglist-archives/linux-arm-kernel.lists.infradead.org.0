Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE32A1002F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 11:52:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Adp7yGhrslyG6HCk+6n4DPMlTDbTxaFVtJvS5HenhVI=; b=uF9qlw++e4uvBV
	/f39/PUWUA3t5M18EDb6tdiEmewWyOyRR3MtjgQPpdJiL30jqvyX1eH4EajPCVjwfrR3lhOBFkC7p
	iO2EvBXSPVdXnom5ljY4wC2yn7Xgfh4EkUUigXb7Cle5DIkHy7ye5sbN1k+QReeM7rXPyRYgiSza2
	SpxHcsBqXk7Ris0/vZBxALPxB83gnY15TKIqlOZFmCkcJp0rDC7Va5SNKXtIqj27WajKaVBP9Onpy
	aFGSwom79lS0uoXqC+84EQuG1r+W2jlO+J4z3AApVgtpQxkxQYVSNfNiPNtIb15534iIYjGjL2yDU
	CVVYledWBqOPhY0F8Qsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWedx-0002HP-SY; Mon, 18 Nov 2019 10:52:29 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWedo-0002GH-Vk
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 10:52:22 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 400376F20A7C1EA285CE;
 Mon, 18 Nov 2019 18:52:09 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Mon, 18 Nov 2019
 18:51:58 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <liviu.dudau@arm.com>,
 <sudeep.holla@arm.com>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] regulator: vexpress: Use PTR_ERR_OR_ZERO() to simplify code
Date: Mon, 18 Nov 2019 18:59:22 +0800
Message-ID: <1574074762-34629-1-git-send-email-zhengbin13@huawei.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_025221_187361_81D54535 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: zhengbin13@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes coccicheck warning:

drivers/regulator/vexpress-regulator.c:78:1-3: WARNING: PTR_ERR_OR_ZERO can be used

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 drivers/regulator/vexpress-regulator.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/regulator/vexpress-regulator.c b/drivers/regulator/vexpress-regulator.c
index 1235f46..5d39663 100644
--- a/drivers/regulator/vexpress-regulator.c
+++ b/drivers/regulator/vexpress-regulator.c
@@ -75,10 +75,7 @@ static int vexpress_regulator_probe(struct platform_device *pdev)
 	config.of_node = pdev->dev.of_node;

 	rdev = devm_regulator_register(&pdev->dev, desc, &config);
-	if (IS_ERR(rdev))
-		return PTR_ERR(rdev);
-
-	return 0;
+	return PTR_ERR_OR_ZERO(rdev);
 }

 static const struct of_device_id vexpress_regulator_of_match[] = {
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
