Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD97BF09A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 12:55:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8fxMtCtbzSVtoFCPFoOo3N5MaK2RY7LstUJ3hRQ3JA=; b=g2sqWqYgB9hoTl
	kmsJKc3tGVeDV7k2rDtfry+bewfnTvuSbG9Ltfgwe4EyFlh8sUsLjHdJQ0bbBQvBpNzOxsE8ocr0m
	9P0h1TKn7/Hxwhhx14l70rD+dJpqHMYZMrxLBI6G8R0TPYW9GlCcs5MdiRSJYJUrDmYXCtRTH6UJp
	OsypjGX5398jV0POiRimnbAG76oPHk9TbzJ8+rSE/mF++9WVN5gu0VzpVNiy4V5XH4ZyVQwXLHePp
	V/cKM3MYcVF0TA4LMVOxoFs0/WsxGUU1WHeN1TB17OwCGMGYcPmqz5VaVir2G96Wp6dzWSXcRVeoD
	owdJjlLoIkSNyWKQF7ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDRR6-00035p-Bx; Thu, 26 Sep 2019 10:55:48 +0000
Received: from mx0b-00128a01.pphosted.com ([148.163.139.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDROF-000789-B7
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 10:52:53 +0000
Received: from pps.filterd (m0167091.ppops.net [127.0.0.1])
 by mx0b-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8QAqb1c030478; Thu, 26 Sep 2019 06:52:48 -0400
Received: from nam02-bl2-obe.outbound.protection.outlook.com
 (mail-bl2nam02lp2055.outbound.protection.outlook.com [104.47.38.55])
 by mx0b-00128a01.pphosted.com with ESMTP id 2v6hku7cd2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 26 Sep 2019 06:52:48 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SKXBjKZhf+7CvPcKNNBxDbww/X7zvH/wKvJD6uXQy3cgk/yLFiJz2Pra6mxsZF9vEj+MbvsPLvzBx0iNqdG6mlPgHuRNFMhvFKp0+eJyt5rBvRPFRp0KgCu/+y3Mp8DcCAMRHHTD55+yexdUQcLO00vXFXSsi4htHCe5iSCegQYzA5PWOstuRsx9IcaqJJK5zhixTBTmFQOkzBO4YUYz8tOCkb28ZACAVrCuA9hY6TTbm89+Xv0zn+ggenAaUKM1f4Ov+H7MvaBvZBjBf1D0gYo8b38gpnBBrToSSzegJcdSoE+CWTaT/kWMxeFWxWHdzHFLGbKufME8msxMYRzI8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f+7423BkJzCqmsqWEghpVVLVCR2CrstT6eNiTJOyxnE=;
 b=dH2Gd0CpyL+zjF1I/CWeawl9xM9OoalifbnHLwbeRfAdsYTSXJZrwJKirN/loJXpWdO+pQfjTahYdpbwx08bipwxxP6K1QKog5WrJCl3jXoezR7EeMLxl7Py1EB/XrLJrvvdqeIqaj7wsZh0ab1Tu9H31tQO0YOh8G1tmrmYBxEORsoULWDPh0nWV8RL2WdeS4egr7OTnbo32NF9+noo5iqwV/M8VaxochUcscO7tkXYcfmCu8BLnVbrtaKoIwKCS3cW1nzjcovzA0ViK9VgyB+IycDCtr1p/mHeJ4O2/Zy2MMEPmRqdylzCi3i7CVBiBU4g6G1j66sljhBmvEaiUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 137.71.25.57) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=analog.com; 
 dmarc=bestguesspass action=none header.from=analog.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f+7423BkJzCqmsqWEghpVVLVCR2CrstT6eNiTJOyxnE=;
 b=qC1YoG+CmNSUft8H0NpTD9ncgZqWTF4XqFDPcqkiZTc2NsSI+gHJxTAUKi+GHfqDoy2LEhjm2S0C8zNQNUH/TKn8Bv6s6vZWyMlCyJUA+VPfN1Xg88TsYnGiYNy7jEy2FDtAKIuT+EmlrovN3y2UlMKRYujwWFOxiScthDY0z2M=
Received: from CH2PR03CA0010.namprd03.prod.outlook.com (2603:10b6:610:59::20)
 by MN2PR03MB4622.namprd03.prod.outlook.com (2603:10b6:208:af::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2305.16; Thu, 26 Sep
 2019 10:52:47 +0000
Received: from BL2NAM02FT032.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::201) by CH2PR03CA0010.outlook.office365.com
 (2603:10b6:610:59::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2305.17 via Frontend
 Transport; Thu, 26 Sep 2019 10:52:47 +0000
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 BL2NAM02FT032.mail.protection.outlook.com (10.152.77.169) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2284.25
 via Frontend Transport; Thu, 26 Sep 2019 10:52:46 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x8QAqkhH014966
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Thu, 26 Sep 2019 03:52:46 -0700
Received: from saturn.ad.analog.com (10.48.65.123) by
 NWD2HUBCAS7.ad.analog.com (10.64.69.107) with Microsoft SMTP Server id
 14.3.408.0; Thu, 26 Sep 2019 06:52:46 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <bcm-kernel-feedback-list@broadcom.com>, <linux-iio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-spi@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-tegra@vger.kernel.org>
Subject: [PATCH v4 14/19] spi: tegra114: change format for
 `spi_set_cs_timing()` function
Date: Thu, 26 Sep 2019 13:51:42 +0300
Message-ID: <20190926105147.7839-15-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190926105147.7839-1-alexandru.ardelean@analog.com>
References: <20190926105147.7839-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(376002)(396003)(39860400002)(136003)(346002)(199004)(189003)(106002)(2870700001)(7416002)(1076003)(54906003)(2906002)(110136005)(2201001)(316002)(26005)(186003)(7696005)(8676002)(76176011)(486006)(44832011)(2616005)(476003)(305945005)(50466002)(126002)(8936002)(7636002)(36756003)(51416003)(478600001)(11346002)(446003)(426003)(246002)(50226002)(336012)(47776003)(70206006)(5660300002)(70586007)(356004)(107886003)(86362001)(6666004)(48376002)(4326008)(81973001)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR03MB4622; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 263be4c1-063f-4292-0d11-08d7426faac3
X-MS-TrafficTypeDiagnostic: MN2PR03MB4622:
X-Microsoft-Antispam-PRVS: <MN2PR03MB4622B1A47D5A72954B115DF7F9860@MN2PR03MB4622.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0172F0EF77
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: j9B5FSEobqYjrsQz7No1xzG+bqPZR3VfPsOcL1S77b6q/AeynTF/mjYyegk+CVOZYm/iAWgnTBqPsnW48EqKwY8jg/Mg+7ldTEqXftoxwndGIE53VbB6NpFjFr5c0O2Ma8AOP2ZXrae/SWN9wuviQRVN4gscvFEHMFzEmfBx+6e91ZUA4lSRSt41y6rxKvurAAyo7Elp/O7Nb4oMokqH+n+Ri0l70bHQV0ZyTx/oRsEe3Z0Mq0TI+h0HOspRcp/VThr/BkHzLQDu35gicJDa7RPyZbEVWpOUd+dA3qiweo2eAgX4OkI7SxR87k14C18+Ye7J1E6YZ5n0i4InvFqBlaKpQ54Yir7YF91m4w7uQiYbadAF5pi3u5NbItM868ng2yx+x0+fDxTnBAiLcLQr92+8H1KT8mA7DSOyqEgf1Kc=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2019 10:52:46.9366 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 263be4c1-063f-4292-0d11-08d7426faac3
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR03MB4622
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-09-26_05:2019-09-25,2019-09-26 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 clxscore=1015
 adultscore=0 spamscore=0 mlxlogscore=999 mlxscore=0 impostorscore=0
 bulkscore=0 suspectscore=2 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1909260103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_035251_517007_914E1720 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.139.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: f.fainelli@gmail.com, baolin.wang@linaro.org, zhang.lyra@gmail.com,
 linus.walleij@linaro.org, broonie@kernel.org, orsonzhai@gmail.com,
 Alexandru Ardelean <alexandru.ardelean@analog.com>, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The initial version of `spi_set_cs_timing()` was implemented with
consideration only for clock-cycles as delay.

For cases like `CS setup` time, it's sometimes needed that micro-seconds
(or nano-seconds) are required, or sometimes even longer delays, for cases
where the device needs a little longer to start transferring that after CS
is asserted.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 drivers/spi/spi-tegra114.c | 22 ++++++++++++++++++++--
 drivers/spi/spi.c          | 16 ++++++++++------
 include/linux/spi/spi.h    |  9 ++++++---
 3 files changed, 36 insertions(+), 11 deletions(-)

diff --git a/drivers/spi/spi-tegra114.c b/drivers/spi/spi-tegra114.c
index 8133dc49d34f..e6a450d9b4f0 100644
--- a/drivers/spi/spi-tegra114.c
+++ b/drivers/spi/spi-tegra114.c
@@ -723,15 +723,31 @@ static void tegra_spi_deinit_dma_param(struct tegra_spi_data *tspi,
 	dma_release_channel(dma_chan);
 }
 
-static void tegra_spi_set_hw_cs_timing(struct spi_device *spi, u8 setup_dly,
-				       u8 hold_dly, u8 inactive_dly)
+static int tegra_spi_set_hw_cs_timing(struct spi_device *spi,
+				      struct spi_delay *setup,
+				      struct spi_delay *hold,
+				      struct spi_delay *inactive)
 {
 	struct tegra_spi_data *tspi = spi_master_get_devdata(spi->master);
+	u8 setup_dly, hold_dly, inactive_dly;
 	u32 setup_hold;
 	u32 spi_cs_timing;
 	u32 inactive_cycles;
 	u8 cs_state;
 
+	if ((setup && setup->unit != SPI_DELAY_UNIT_SCK) ||
+	    (hold && hold->unit != SPI_DELAY_UNIT_SCK) ||
+	    (inactive && inactive->unit != SPI_DELAY_UNIT_SCK)) {
+		dev_err(&spi->dev,
+			"Invalid delay unit %d, should be SPI_DELAY_UNIT_SCK\n",
+			SPI_DELAY_UNIT_SCK);
+		return -EINVAL;
+	}
+
+	setup_dly = setup ? setup->value : 0;
+	hold_dly = hold ? hold->value : 0;
+	inactive_dly = inactive ? inactive->value : 0;
+
 	setup_dly = min_t(u8, setup_dly, MAX_SETUP_HOLD_CYCLES);
 	hold_dly = min_t(u8, hold_dly, MAX_SETUP_HOLD_CYCLES);
 	if (setup_dly && hold_dly) {
@@ -758,6 +774,8 @@ static void tegra_spi_set_hw_cs_timing(struct spi_device *spi, u8 setup_dly,
 		tspi->spi_cs_timing2 = spi_cs_timing;
 		tegra_spi_writel(tspi, spi_cs_timing, SPI_CS_TIMING2);
 	}
+
+	return 0;
 }
 
 static u32 tegra_spi_setup_transfer_one(struct spi_device *spi,
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 489eb64d9ee0..122af2264bfe 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -3147,15 +3147,19 @@ EXPORT_SYMBOL_GPL(spi_setup);
 /**
  * spi_set_cs_timing - configure CS setup, hold, and inactive delays
  * @spi: the device that requires specific CS timing configuration
- * @setup: CS setup time in terms of clock count
- * @hold: CS hold time in terms of clock count
- * @inactive_dly: CS inactive delay between transfers in terms of clock count
+ * @setup: CS setup time specified via @spi_delay
+ * @hold: CS hold time specified via @spi_delay
+ * @inactive: CS inactive delay between transfers specified via @spi_delay
+ *
+ * Return: zero on success, else a negative error code.
  */
-void spi_set_cs_timing(struct spi_device *spi, u8 setup, u8 hold,
-		       u8 inactive_dly)
+int spi_set_cs_timing(struct spi_device *spi, struct spi_delay *setup,
+		      struct spi_delay *hold, struct spi_delay *inactive)
 {
 	if (spi->controller->set_cs_timing)
-		spi->controller->set_cs_timing(spi, setup, hold, inactive_dly);
+		return spi->controller->set_cs_timing(spi, setup, hold,
+						      inactive);
+	return -ENOTSUPP;
 }
 EXPORT_SYMBOL_GPL(spi_set_cs_timing);
 
diff --git a/include/linux/spi/spi.h b/include/linux/spi/spi.h
index 2cee9ac35737..592e50aae998 100644
--- a/include/linux/spi/spi.h
+++ b/include/linux/spi/spi.h
@@ -517,8 +517,8 @@ struct spi_controller {
 	 * to configure specific CS timing through spi_set_cs_timing() after
 	 * spi_setup().
 	 */
-	void (*set_cs_timing)(struct spi_device *spi, u8 setup_clk_cycles,
-			      u8 hold_clk_cycles, u8 inactive_clk_cycles);
+	int (*set_cs_timing)(struct spi_device *spi, struct spi_delay *setup,
+			     struct spi_delay *hold, struct spi_delay *inactive);
 
 	/* bidirectional bulk transfers
 	 *
@@ -1007,7 +1007,10 @@ static inline void spi_message_free(struct spi_message *m)
 	kfree(m);
 }
 
-extern void spi_set_cs_timing(struct spi_device *spi, u8 setup, u8 hold, u8 inactive_dly);
+extern int spi_set_cs_timing(struct spi_device *spi,
+			     struct spi_delay *setup,
+			     struct spi_delay *hold,
+			     struct spi_delay *inactive);
 
 extern int spi_setup(struct spi_device *spi);
 extern int spi_async(struct spi_device *spi, struct spi_message *message);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
