Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A26B3C3F6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 08:32:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wulMUM5DlS4uIFfu/Jr748QCjxU3UAYs94MTPNHFwCg=; b=qvsYubsFSktw/jvP8FwF/SCYEz
	yJXxfzAwKXtZzp0ghY55EU6+xwcnVYOH1c4PVeq4o1a4hpAuUpcQoSK4IMsJszjzZj2nn7VhbfbcJ
	ao8/9xhw2dmb3gUJDyu4DFhmFvLpWH4o0VyWgmnE9zgoTNFt2IMzxX9S57/tWPP4ISXLNebOUSvvN
	rNpPT7z726cI98pRx6SM7sgCZmB4HOlnjsr0BGQ0OqtinW74wiFiiHG1rwv7QZQRV4QBvzjWvbSai
	DAX/qVHnc9C1hnMFYcYT3FwL6BMDoguedl+ttW6kGGTdRn/Azxgd3g9er6sWqggDwJ2OV+1BRxYRT
	cXpGEleg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haaKI-00051w-Pk; Tue, 11 Jun 2019 06:32:11 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haaK7-00050x-A0
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 06:32:00 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3AD20200210;
 Tue, 11 Jun 2019 08:31:56 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id F3F7C200033;
 Tue, 11 Jun 2019 08:31:48 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id D4E91402CA;
 Tue, 11 Jun 2019 14:31:39 +0800 (SGT)
From: Anson.Huang@nxp.com
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 a.zummo@towertech.it, alexandre.belloni@bootlin.com, aisheng.dong@nxp.com,
 ulf.hansson@linaro.org, peng.fan@nxp.com, daniel.baluta@nxp.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Subject: [PATCH 2/3] rtc: imx-sc: Make compatible string more generic
Date: Tue, 11 Jun 2019 14:33:32 +0800
Message-Id: <20190611063333.48501-2-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190611063333.48501-1-Anson.Huang@nxp.com>
References: <20190611063333.48501-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_233159_484244_96767E0A 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

i.MX system controller RTC driver can support all i.MX SoCs
with system controller inside, this patch makes the compatible
string more generic to support other i.MX SoCs with system
controller inside, such as i.MX8QM etc..

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/rtc/rtc-imx-sc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/rtc/rtc-imx-sc.c b/drivers/rtc/rtc-imx-sc.c
index c933045..38ef3ca 100644
--- a/drivers/rtc/rtc-imx-sc.c
+++ b/drivers/rtc/rtc-imx-sc.c
@@ -178,7 +178,7 @@ static int imx_sc_rtc_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id imx_sc_dt_ids[] = {
-	{ .compatible = "fsl,imx8qxp-sc-rtc", },
+	{ .compatible = "fsl,imx-sc-rtc", },
 	{}
 };
 MODULE_DEVICE_TABLE(of, imx_sc_dt_ids);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
