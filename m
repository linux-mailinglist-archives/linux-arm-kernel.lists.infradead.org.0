Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B1DEBD88
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 07:06:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DTMnL18vQprMdu316EnX8b62yzm9BU5nG93kNTYGDuo=; b=iDczEj7VT911NZ
	54ZFSIcqblQNGLFqWuaSQTAsOKV5cnCP58hUIHzrd+MVfCk8Or9ePX8UDJyH4RP4IFaZV8Qd7pA97
	T4s9EhlE6PygfnNVPh6ifFAR7YAs2kYJwliObjdoKjQxNppJur3PTBlu9iIBZ116J0HsQCZr/Ct0f
	PVLRQAvjwe3JlqzpG+6oiHGCh7IWC5gYIs7WFyK7QxKTXWTVY3WankzW1Jf455e7MNY3NUokEQ31g
	FazfxFhw3AjbOXl2iwvLnlCG2CT62IfTUwcZHQZtkHVqcmCPjXzKzzVqtpsVwGMmDkTsNhhEDaPhG
	+rhB+M0kfKzCpiedfFBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQQ5A-00026W-MQ; Fri, 01 Nov 2019 06:06:48 +0000
Received: from mail-eopbgr790078.outbound.protection.outlook.com
 ([40.107.79.78] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQQ4b-0001uq-41
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 06:06:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UFTwUv83EttcqMgAqCFd/yhjXhFiONAhoGHsJqegi24ZkZwXErqLH5Sk3M8NpeJqswIBl0T0CWpG1WpcnOzH0fAsklaLm9qy5nMj5tsJN6XzXiWA8rfsxcdH7g4w8oi2Vxc7rwxBhaxkjBWtcLpZUUzktuCe/WDFAAOvSy/V6MgsgUZDx1eYRSWB5T5e8XRx3JvgzH/kSvpLGLXNSNB8qCywHwovZDmziRhbE+TDe+y+rhMzPtuXE+VgjFaHzE3jLCoyhgyv14f6vy+UNTNKaoYc3mAI7xosyeWAejicC9QH887Fc3xh03OgSOKswxB6u0PM9Vlrz0tSPOHvRz9rjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k7qbsUFt6gIDpj2dYmDYOFz7It+gjHYfXKxGp9daL6Q=;
 b=HFI2be4KhHroRGF0914kayRI2eQUA3xoKl7hfbwUxJvOhlOCNRTqnFDp0F7ncZS3Y0/Avt5ux2yITYzCzozVGf9+5OBH/kFwc89kAJidF6Lk7EFXtaRUah4fCKa/jbGfXssQrQIIBGTfH9TgIBWVNtBrNlqXJrHYRmXj3mGLNEBaOGJLno8TUHr06xINr6f/h+OzLVrxmKQsvsfLAazdwvbUPMxT9phgj3dkj+/5K9qC7zmpRVOlmZvvhWKPaAXL7mgKfC5/POC1mSDyQ5MoeZge6OLVOuUKs50fMcwkYNJKGwk4uJiwzR5lbtVZ8XiJr9UCc+Ug7iXWRhKS4/MWzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k7qbsUFt6gIDpj2dYmDYOFz7It+gjHYfXKxGp9daL6Q=;
 b=psKxp3C2W8PHCI+YYTyokZbA2jsoeMofR/wMnK40Y5OHLT2aRRo4jNHlzs16nyMm4IlyZzbTwNoDyeIQs5UH1+c7sTe7ovF9KK4Hiz3PsECPELxGu0vtsyZ+mHoPmrYLDAt+HDRuSQ8bAuyIe3K4OwRUYQ3Fm+VxHp8toaP68PE=
Received: from BL0PR02CA0056.namprd02.prod.outlook.com (2603:10b6:207:3d::33)
 by BL0PR02MB5409.namprd02.prod.outlook.com (2603:10b6:208:8e::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2387.22; Fri, 1 Nov
 2019 06:06:10 +0000
Received: from SN1NAM02FT029.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::201) by BL0PR02CA0056.outlook.office365.com
 (2603:10b6:207:3d::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2408.20 via Frontend
 Transport; Fri, 1 Nov 2019 06:06:10 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT029.mail.protection.outlook.com (10.152.72.110) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2387.20
 via Frontend Transport; Fri, 1 Nov 2019 06:06:10 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iQQ4X-0005mR-Kd; Thu, 31 Oct 2019 23:06:09 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iQQ4S-0007dN-GA; Thu, 31 Oct 2019 23:06:04 -0700
Received: from xsj-pvapsmtp01 (xsj-mail.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xA165wFu005665; 
 Thu, 31 Oct 2019 23:05:58 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1iQQ4L-0007Zv-NB; Thu, 31 Oct 2019 23:05:58 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id EB7FA121383; Fri,  1 Nov 2019 11:35:56 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com,
 jolly.shah@xilinx.com, nava.manne@xilinx.com, rajan.vaja@xilinx.com,
 manish.narani@xilinx.com
Subject: [PATCH v5 3/8] mmc: sdhci-of-arasan: Add sampling clock for a phy to
 use
Date: Fri,  1 Nov 2019 11:35:48 +0530
Message-Id: <1572588353-110682-4-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1572588353-110682-1-git-send-email-manish.narani@xilinx.com>
References: <1572588353-110682-1-git-send-email-manish.narani@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(39860400002)(396003)(346002)(199004)(189003)(316002)(356004)(103686004)(336012)(70206006)(47776003)(6666004)(16586007)(14444005)(476003)(446003)(11346002)(106002)(2616005)(4326008)(186003)(6266002)(426003)(5660300002)(70586007)(50226002)(42186006)(107886003)(26005)(44832011)(36756003)(305945005)(478600001)(486006)(126002)(2906002)(81156014)(81166006)(8676002)(48376002)(76176011)(8936002)(36386004)(50466002)(51416003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB5409; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8be6f599-c831-455e-c9a0-08d75e9197a3
X-MS-TrafficTypeDiagnostic: BL0PR02MB5409:
X-Microsoft-Antispam-PRVS: <BL0PR02MB540989CD7E1A0CB038195449C1620@BL0PR02MB5409.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 020877E0CB
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qh2NIzpgyYYyS0OUl7+VSXuZnwnAjh8p0SEm2xq1KiGQ6X04b17XnWDlmoYIP9uezjm/VcahndmJU6O6yCDd1qC3ru72bYe2VxEDtWSkMYyLaUwZCszJ5VTzW/3sjvbJSxB+9GWvfVGYLuAji7pljt31Znhy9b5azCd2ANQsNNHX07W8Tz+MK1wNlbpvEjrWT9yT0w1jqawEvJ8iVjKiZ7iCudAGzK9PtSadsaBSOkWla7P2IsmfSy8k7cE568SfcJQjBzfMlIIMCU98pAMQmMLXIp7F0quq/azKAn+ZSFM6zz4+6bAGRtNbxLKk1ylZeWkb34LhOXXPW4oE6ibzUpTRagjKfVdApgcG3F5s2TXZBIXuCEln4i9z7rzpYasbtTS+EsWgsVIFpwex6FA0FLjdniHT5odQr1Z9TrtremlIjThb2rjkOO9s22uzHi15
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Nov 2019 06:06:10.1295 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8be6f599-c831-455e-c9a0-08d75e9197a3
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB5409
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_230613_191371_D89ADAC0 
X-CRM114-Status: GOOD (  20.90  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.79.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are some operations like setting the clock delays may need to have
two clocks, one for output path and one for input path. Adding input
path clock for some phys to use.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
---
 drivers/mmc/host/sdhci-of-arasan.c | 151 +++++++++++++++++++++++++----
 1 file changed, 134 insertions(+), 17 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
index 701b6cc0f9a3..b75ba780f902 100644
--- a/drivers/mmc/host/sdhci-of-arasan.c
+++ b/drivers/mmc/host/sdhci-of-arasan.c
@@ -75,10 +75,14 @@ struct sdhci_arasan_soc_ctl_map {
  * struct sdhci_arasan_clk_data
  * @sdcardclk_hw:	Struct for the clock we might provide to a PHY.
  * @sdcardclk:		Pointer to normal 'struct clock' for sdcardclk_hw.
+ * @sampleclk_hw:	Struct for the clock we might provide to a PHY.
+ * @sampleclk:		Pointer to normal 'struct clock' for sampleclk_hw.
  */
 struct sdhci_arasan_clk_data {
 	struct clk_hw	sdcardclk_hw;
 	struct clk      *sdcardclk;
+	struct clk_hw	sampleclk_hw;
+	struct clk      *sampleclk;
 };
 
 /**
@@ -541,6 +545,33 @@ static const struct clk_ops arasan_sdcardclk_ops = {
 	.recalc_rate = sdhci_arasan_sdcardclk_recalc_rate,
 };
 
+/**
+ * sdhci_arasan_sampleclk_recalc_rate - Return the sampling clock rate
+ *
+ * Return the current actual rate of the sampling clock.  This can be used
+ * to communicate with out PHY.
+ *
+ * @hw:			Pointer to the hardware clock structure.
+ * @parent_rate		The parent rate (should be rate of clk_xin).
+ * Returns the sample clock rate.
+ */
+static unsigned long sdhci_arasan_sampleclk_recalc_rate(struct clk_hw *hw,
+						      unsigned long parent_rate)
+
+{
+	struct sdhci_arasan_clk_data *clk_data =
+		container_of(hw, struct sdhci_arasan_clk_data, sampleclk_hw);
+	struct sdhci_arasan_data *sdhci_arasan =
+		container_of(clk_data, struct sdhci_arasan_data, clk_data);
+	struct sdhci_host *host = sdhci_arasan->host;
+
+	return host->mmc->actual_clock;
+}
+
+static const struct clk_ops arasan_sampleclk_ops = {
+	.recalc_rate = sdhci_arasan_sampleclk_recalc_rate,
+};
+
 /**
  * sdhci_arasan_update_clockmultiplier - Set corecfg_clockmultiplier
  *
@@ -620,28 +651,21 @@ static void sdhci_arasan_update_baseclkfreq(struct sdhci_host *host)
 }
 
 /**
- * sdhci_arasan_register_sdclk - Register the sdclk for a PHY to use
+ * sdhci_arasan_register_sdcardclk - Register the sdcardclk for a PHY to use
  *
  * Some PHY devices need to know what the actual card clock is.  In order for
  * them to find out, we'll provide a clock through the common clock framework
  * for them to query.
  *
- * Note: without seriously re-architecting SDHCI's clock code and testing on
- * all platforms, there's no way to create a totally beautiful clock here
- * with all clock ops implemented.  Instead, we'll just create a clock that can
- * be queried and set the CLK_GET_RATE_NOCACHE attribute to tell common clock
- * framework that we're doing things behind its back.  This should be sufficient
- * to create nice clean device tree bindings and later (if needed) we can try
- * re-architecting SDHCI if we see some benefit to it.
- *
  * @sdhci_arasan:	Our private data structure.
  * @clk_xin:		Pointer to the functional clock
  * @dev:		Pointer to our struct device.
  * Returns 0 on success and error value on error
  */
-static int sdhci_arasan_register_sdclk(struct sdhci_arasan_data *sdhci_arasan,
-				       struct clk *clk_xin,
-				       struct device *dev)
+static int
+sdhci_arasan_register_sdcardclk(struct sdhci_arasan_data *sdhci_arasan,
+				struct clk *clk_xin,
+				struct device *dev)
 {
 	struct sdhci_arasan_clk_data *clk_data = &sdhci_arasan->clk_data;
 	struct device_node *np = dev->of_node;
@@ -649,10 +673,6 @@ static int sdhci_arasan_register_sdclk(struct sdhci_arasan_data *sdhci_arasan,
 	const char *parent_clk_name;
 	int ret;
 
-	/* Providing a clock to the PHY is optional; no error if missing */
-	if (!of_find_property(np, "#clock-cells", NULL))
-		return 0;
-
 	ret = of_property_read_string_index(np, "clock-output-names", 0,
 					    &sdcardclk_init.name);
 	if (ret) {
@@ -674,7 +694,56 @@ static int sdhci_arasan_register_sdclk(struct sdhci_arasan_data *sdhci_arasan,
 	ret = of_clk_add_provider(np, of_clk_src_simple_get,
 				  clk_data->sdcardclk);
 	if (ret)
-		dev_err(dev, "Failed to add clock provider\n");
+		dev_err(dev, "Failed to add sdcard clock provider\n");
+
+	return ret;
+}
+
+/**
+ * sdhci_arasan_register_sampleclk - Register the sampleclk for a PHY to use
+ *
+ * Some PHY devices need to know what the actual card clock is.  In order for
+ * them to find out, we'll provide a clock through the common clock framework
+ * for them to query.
+ *
+ * @sdhci_arasan:	Our private data structure.
+ * @clk_xin:		Pointer to the functional clock
+ * @dev:		Pointer to our struct device.
+ * Returns 0 on success and error value on error
+ */
+static int
+sdhci_arasan_register_sampleclk(struct sdhci_arasan_data *sdhci_arasan,
+				struct clk *clk_xin,
+				struct device *dev)
+{
+	struct sdhci_arasan_clk_data *clk_data = &sdhci_arasan->clk_data;
+	struct device_node *np = dev->of_node;
+	struct clk_init_data sampleclk_init;
+	const char *parent_clk_name;
+	int ret;
+
+	ret = of_property_read_string_index(np, "clock-output-names", 1,
+					    &sampleclk_init.name);
+	if (ret) {
+		dev_err(dev, "DT has #clock-cells but no clock-output-names\n");
+		return ret;
+	}
+
+	parent_clk_name = __clk_get_name(clk_xin);
+	sampleclk_init.parent_names = &parent_clk_name;
+	sampleclk_init.num_parents = 1;
+	sampleclk_init.flags = CLK_GET_RATE_NOCACHE;
+	sampleclk_init.ops = &arasan_sampleclk_ops;
+
+	clk_data->sampleclk_hw.init = &sampleclk_init;
+	clk_data->sampleclk =
+		devm_clk_register(dev, &clk_data->sampleclk_hw);
+	clk_data->sampleclk_hw.init = NULL;
+
+	ret = of_clk_add_provider(np, of_clk_src_simple_get,
+				  clk_data->sampleclk);
+	if (ret)
+		dev_err(dev, "Failed to add sample clock provider\n");
 
 	return ret;
 }
@@ -697,6 +766,54 @@ static void sdhci_arasan_unregister_sdclk(struct device *dev)
 	of_clk_del_provider(dev->of_node);
 }
 
+/**
+ * sdhci_arasan_register_sdclk - Register the sdcardclk for a PHY to use
+ *
+ * Some PHY devices need to know what the actual card clock is.  In order for
+ * them to find out, we'll provide a clock through the common clock framework
+ * for them to query.
+ *
+ * Note: without seriously re-architecting SDHCI's clock code and testing on
+ * all platforms, there's no way to create a totally beautiful clock here
+ * with all clock ops implemented.  Instead, we'll just create a clock that can
+ * be queried and set the CLK_GET_RATE_NOCACHE attribute to tell common clock
+ * framework that we're doing things behind its back.  This should be sufficient
+ * to create nice clean device tree bindings and later (if needed) we can try
+ * re-architecting SDHCI if we see some benefit to it.
+ *
+ * @sdhci_arasan:	Our private data structure.
+ * @clk_xin:		Pointer to the functional clock
+ * @dev:		Pointer to our struct device.
+ * Returns 0 on success and error value on error
+ */
+static int sdhci_arasan_register_sdclk(struct sdhci_arasan_data *sdhci_arasan,
+				       struct clk *clk_xin,
+				       struct device *dev)
+{
+	struct device_node *np = dev->of_node;
+	u32 num_clks = 0;
+	int ret;
+
+	/* Providing a clock to the PHY is optional; no error if missing */
+	if (of_property_read_u32(np, "#clock-cells", &num_clks) < 0)
+		return 0;
+
+	ret = sdhci_arasan_register_sdcardclk(sdhci_arasan, clk_xin, dev);
+	if (ret)
+		return ret;
+
+	if (num_clks) {
+		ret = sdhci_arasan_register_sampleclk(sdhci_arasan, clk_xin,
+						      dev);
+		if (ret) {
+			sdhci_arasan_unregister_sdclk(dev);
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
 static int sdhci_arasan_add_host(struct sdhci_arasan_data *sdhci_arasan)
 {
 	struct sdhci_host *host = sdhci_arasan->host;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
