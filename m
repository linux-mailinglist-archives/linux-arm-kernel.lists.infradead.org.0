Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E62A2A439
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 13:47:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3Re2EMVGizXaNfybE5OvtnfjVeQp6boZnVhFVLiCTb0=; b=DYm08gQvOz7ea0
	5YP36RK1i8NaobcuvlqWcvijMg+FSJOK+5hNPVqVPI+0IaZbUjoz5MX5k2dwlaYTvMfAWye/jKHG9
	wAQYZWRpkEj9U4eunREOiKL4GBOkWm4Mlv6j5brLXoWrWan7dyUxN/ZlxzoLAPRwbD59Nug+MzXkY
	gsPwP6jXBtApLGYMfmc8zNgdc2K4Cp4aDgoEy7lT4bl/8aav+HvS+eowIyV4GaPnbGGdw3VhQkSEG
	WexzKiu3rVHrjZZ9+vJKS9o6SQeKe3QU/ZT0o9IXoyfue7hRNCpnZrZjWeyb/b1WmKTvxjQ7SkYs7
	b57Q1+8JRl0FX66G5lhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUV9G-00085R-Qe; Sat, 25 May 2019 11:47:38 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUV9A-00084v-EU
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 11:47:33 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 984E0FCC31B82A3B33B2;
 Sat, 25 May 2019 19:47:26 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS408-HUB.china.huawei.com (10.3.19.208) with Microsoft SMTP Server id
 14.3.439.0; Sat, 25 May 2019 19:47:19 +0800
From: Kefeng Wang <wangkefeng.wang@huawei.com>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH] clk: samsung: exynos5433: Use of_clk_get_parent_count()
Date: Sat, 25 May 2019 19:55:42 +0800
Message-ID: <20190525115542.107929-1-wangkefeng.wang@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_044732_716673_58779B4B 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: Kefeng Wang <wangkefeng.wang@huawei.com>, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use of_clk_get_parent_count() instead of open coding.

Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
---
 drivers/clk/samsung/clk-exynos5433.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/samsung/clk-exynos5433.c b/drivers/clk/samsung/clk-exynos5433.c
index dae1c96de933..14e253915ca4 100644
--- a/drivers/clk/samsung/clk-exynos5433.c
+++ b/drivers/clk/samsung/clk-exynos5433.c
@@ -5590,8 +5590,8 @@ static int __init exynos5433_cmu_probe(struct platform_device *pdev)
 	data->nr_clk_save = info->nr_clk_regs;
 	data->clk_suspend = info->suspend_regs;
 	data->nr_clk_suspend = info->nr_suspend_regs;
-	data->nr_pclks = of_count_phandle_with_args(dev->of_node, "clocks",
-						    "#clock-cells");
+	data->nr_pclks = of_clk_get_parent_count(dev->of_node);
+
 	if (data->nr_pclks > 0) {
 		data->pclks = devm_kcalloc(dev, sizeof(struct clk *),
 					   data->nr_pclks, GFP_KERNEL);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
