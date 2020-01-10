Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DD41364CA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 02:30:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ts7ZXuDnWheVDZz4n8sRDBXEYKraZDH5vd30wqawm0A=; b=endVR+1dP7uPMh
	ybW2xbQkIcimzXfPVFoxg4jYPoCIp2HGToJY0BJkQUzxgM5OBshbKrven7oNUv0SlriQMq1ymrlLR
	TZ0HKXnkQhLgzedWDdJ8x9VHN+SDpHkh37hzHTBNNhx4Xvq9K9w7X80YqpgLWfE9diy0Of28QcfR7
	8wMsxfZNkUzs2yohFcWjJuGw4QrDf2vzCug+ZwIZaGJAVh8o+wBIBZZufvxIpUN9iC8Nqm5Z+ql8O
	JDnsudTwMdJpTJC2CRBUZsKkyWj91s0rRdXHyBIDIAnhQywroHuB7iD47obVtKHz1RdWXcYkdZr1Q
	hkRyoWAsrcj7mUP4sCiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipj7V-0003Df-NC; Fri, 10 Jan 2020 01:29:49 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipj7O-0003CY-17
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 01:29:43 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 1ABE61B3A44A0AF8283D;
 Fri, 10 Jan 2020 09:29:33 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS406-HUB.china.huawei.com (10.3.19.206) with Microsoft SMTP Server id
 14.3.439.0; Fri, 10 Jan 2020 09:29:25 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: <thierry.reding@gmail.com>, <u.kleine-koenig@pengutronix.de>,
 <mripard@kernel.org>, <wens@csie.org>, <p.zabel@pengutronix.de>, "Jernej
 Skrabec" <jernej.skrabec@siol.net>
Subject: [PATCH -next] pwm: sun4i: Fix wrong pointer passed to PTR_ERR()
Date: Fri, 10 Jan 2020 01:25:15 +0000
Message-ID: <20200110012515.32965-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_172942_229685_713325CD 
X-CRM114-Status: GOOD (  10.31  )
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
Cc: linux-pwm@vger.kernel.org, kernel-janitors@vger.kernel.org,
 Wei Yongjun <weiyongjun1@huawei.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PTR_ERR should access the value just tested by IS_ERR, otherwise
the wrong error code will be returned.

Fixes: 5b090b430d75 ("pwm: sun4i: Add an optional probe for bus clock")
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/pwm/pwm-sun4i.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
index 1afd41ebd3fd..a805c347ee84 100644
--- a/drivers/pwm/pwm-sun4i.c
+++ b/drivers/pwm/pwm-sun4i.c
@@ -423,7 +423,7 @@ static int sun4i_pwm_probe(struct platform_device *pdev)
 	 */
 	pwm->clk = devm_clk_get_optional(&pdev->dev, "mod");
 	if (IS_ERR(pwm->clk)) {
-		if (PTR_ERR(pwm->rst) != -EPROBE_DEFER)
+		if (PTR_ERR(pwm->clk) != -EPROBE_DEFER)
 			dev_err(&pdev->dev, "get mod clock failed %pe\n",
 				pwm->clk);
 		return PTR_ERR(pwm->clk);
@@ -432,7 +432,7 @@ static int sun4i_pwm_probe(struct platform_device *pdev)
 	if (!pwm->clk) {
 		pwm->clk = devm_clk_get(&pdev->dev, NULL);
 		if (IS_ERR(pwm->clk)) {
-			if (PTR_ERR(pwm->rst) != -EPROBE_DEFER)
+			if (PTR_ERR(pwm->clk) != -EPROBE_DEFER)
 				dev_err(&pdev->dev, "get unnamed clock failed %pe\n",
 					pwm->clk);
 			return PTR_ERR(pwm->clk);
@@ -441,7 +441,7 @@ static int sun4i_pwm_probe(struct platform_device *pdev)
 
 	pwm->bus_clk = devm_clk_get_optional(&pdev->dev, "bus");
 	if (IS_ERR(pwm->bus_clk)) {
-		if (PTR_ERR(pwm->rst) != -EPROBE_DEFER)
+		if (PTR_ERR(pwm->bus_clk) != -EPROBE_DEFER)
 			dev_err(&pdev->dev, "get bus clock failed %pe\n",
 				pwm->bus_clk);
 		return PTR_ERR(pwm->bus_clk);




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
