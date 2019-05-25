Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1822A440
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 13:51:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tCowPfUs16mZ6QJsyulOGDFgL7uvRgJ3P/mAsVNcYVY=; b=Ag9wYT71c1/PCa
	JWAyq/MNo+imdyFHSB7hPCrBhDznm4mWYonoztImXR2uwJxmXzdNVQcruoWrxiPMWtaRzrpTXmczS
	Y246AVhbMyDQud4FyUvU59pKor+9R8jw4BmoY/XpXOatFkbc/I+4AdjzsSexetCtYz+aCr53ppkef
	G0dvnFl2xAc6BhnYC0ra+m27oLHr77H1L3mZ711Zf8yu6LeuSw6313w6xgwJO8buWnkyzeyb1t6Q+
	BMh0erwOJEF9ptoM0FiRACoRK1Us5hOsw1Z4AFzSXUoC50w9yyaVqulyGqslsMxH5IlfgtT3aQJtg
	2g/N57NNkINJAsXzqEhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUVCz-0001CF-Cs; Sat, 25 May 2019 11:51:29 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUVCr-0001Bs-Dd
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 11:51:22 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id CF4CF4CABD714DBE3852;
 Sat, 25 May 2019 19:51:15 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS405-HUB.china.huawei.com (10.3.19.205) with Microsoft SMTP Server id
 14.3.439.0; Sat, 25 May 2019 19:51:07 +0800
From: Kefeng Wang <wangkefeng.wang@huawei.com>
To: Thierry Reding <thierry.reding@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] pwm: rockchip: Use of_clk_get_parent_count()
Date: Sat, 25 May 2019 19:59:41 +0800
Message-ID: <20190525115941.108309-1-wangkefeng.wang@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_045121_753406_9D82E4CE 
X-CRM114-Status: GOOD (  10.01  )
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
Cc: Kefeng Wang <wangkefeng.wang@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use of_clk_get_parent_count() instead of open coding.

Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
---
 drivers/pwm/pwm-rockchip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
index 4d99d468df09..a0fbb9a139bd 100644
--- a/drivers/pwm/pwm-rockchip.c
+++ b/drivers/pwm/pwm-rockchip.c
@@ -329,8 +329,8 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 		}
 	}
 
-	count = of_count_phandle_with_args(pdev->dev.of_node,
-					   "clocks", "#clock-cells");
+	count = of_clk_get_parent_count(pdev->dev.of_node);
+
 	if (count == 2)
 		pc->pclk = devm_clk_get(&pdev->dev, "pclk");
 	else
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
