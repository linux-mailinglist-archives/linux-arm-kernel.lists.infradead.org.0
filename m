Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD857607FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:38:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mg4Ly8i70BpjqzNfrYTv5T554RqogZVA7ACEE3tC+vA=; b=pqM
	9JGy4z3AFL1TQ+clS2wIvscnjVzKpyxi3zHSZIPucXdW9VBBYJnm05EC2dOmOZUSDNU3O/0mlmkMi
	rcEuNNb9B/pYhSYcDCpK1zDSzWpNgel+JFbInfI/tGSnjRFTA2Y1eHqqI2SGY4xrCty5G21sARYuF
	aQjuKI4mAu4GLIiQAUCYeY6eidxZglRJ0T4T5h4P1/Ub3u/gc9S+bMOH7nVLuNJQfCVZ5pqR6v9HQ
	5PfyXzsZQlaG9NsGZvClMbs2MTCSM6jkkgKUW4tRPMijhrdwd+N7ENha2a7HLqZM9UNiF9ARqEoEx
	XUvUTGRUVQ3X3Fj2NTZ1HeyJIKqVs7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPLj-0007on-5S; Fri, 05 Jul 2019 14:38:07 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPK3-00069H-7x
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:36:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Av3cm9sXrpZ61RFKRg+ZJ9gZK0Hgaa94z6oJvOkUjSI=; b=mCDAnh+/a6tt0wxDhgaLqnqJs
 YicE36tWxdgI997fI6/dcvlAcNQeIoQAGHHOJW2ZTp95OZOrJy2/0kMrDXjavT1MvoRH4lR8U0Klg
 FVuN7ivuRUQrKQfKpmHABQwjsimbhHoTag2O1crYJnT+gM2Xa9i7W/8AEA8CbrqZmeg0W1q8iNAM5
 eRNRsMySrDSFrHI08AmFpkM2Zg7XMbV2Zypy/jYfEHWzvEHmdnN0ud1AZgFnN3+hF2xy7QrtbFJbM
 niSHUIc8vx0BuIhYi3Bm3rcK5RD/ajRj6hHR3wQmHS1k+SJEmmqzWS3nkr+ucnbTaPqTou054OwRY
 iQdHIx/DA==;
Received: from inva020.nxp.com ([92.121.34.13])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjGPn-0007Mg-Bx
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 05:05:45 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 71DA11A0E8E;
 Fri,  5 Jul 2019 07:05:33 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 68F621A027F;
 Fri,  5 Jul 2019 07:05:21 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 9BF6E40297;
 Fri,  5 Jul 2019 13:05:07 +0800 (SGT)
From: Anson.Huang@nxp.com
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 mturquette@baylibre.com, sboyd@kernel.org, l.stach@pengutronix.de,
 abel.vesa@nxp.com, andrew.smirnov@gmail.com, angus@akkea.ca,
 ccaione@baylibre.com, agx@sigxcpu.org, leonard.crestez@nxp.com,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Subject: [PATCH 1/6] thermal: qoriq: Use devm_platform_ioremap_resource()
 instead of of_iomap()
Date: Fri,  5 Jul 2019 12:56:07 +0800
Message-Id: <20190705045612.27665-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.14.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_060543_485504_B3426ACE 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

Use devm_platform_ioremap_resource() instead of of_iomap() to
save the iounmap() call in error handle path;

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/thermal/qoriq_thermal.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/thermal/qoriq_thermal.c b/drivers/thermal/qoriq_thermal.c
index 7b36493..c7c7de2 100644
--- a/drivers/thermal/qoriq_thermal.c
+++ b/drivers/thermal/qoriq_thermal.c
@@ -202,32 +202,27 @@ static int qoriq_tmu_probe(struct platform_device *pdev)
 
 	data->little_endian = of_property_read_bool(np, "little-endian");
 
-	data->regs = of_iomap(np, 0);
-	if (!data->regs) {
+	data->regs = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(data->regs)) {
 		dev_err(&pdev->dev, "Failed to get memory region\n");
-		ret = -ENODEV;
-		goto err_iomap;
+		return PTR_ERR(data->regs);
 	}
 
 	qoriq_tmu_init_device(data);	/* TMU initialization */
 
 	ret = qoriq_tmu_calibration(pdev);	/* TMU calibration */
 	if (ret < 0)
-		goto err_tmu;
+		goto err;
 
 	ret = qoriq_tmu_register_tmu_zone(pdev);
 	if (ret < 0) {
 		dev_err(&pdev->dev, "Failed to register sensors\n");
-		ret = -ENODEV;
-		goto err_iomap;
+		goto err;
 	}
 
 	return 0;
 
-err_tmu:
-	iounmap(data->regs);
-
-err_iomap:
+err:
 	platform_set_drvdata(pdev, NULL);
 
 	return ret;
@@ -240,7 +235,6 @@ static int qoriq_tmu_remove(struct platform_device *pdev)
 	/* Disable monitoring */
 	tmu_write(data, TMR_DISABLE, &data->regs->tmr);
 
-	iounmap(data->regs);
 	platform_set_drvdata(pdev, NULL);
 
 	return 0;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
