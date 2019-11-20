Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF173103490
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 07:49:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DTMnL18vQprMdu316EnX8b62yzm9BU5nG93kNTYGDuo=; b=H9WxSKtvw7X2yy
	c0CLAK0rJ+vHW9tdCFvpVX0Dr/+Iz23k6wPBJCiVM6Ovv3sJOVE70cZ7Xs8k8i0SCDNEjUn5Kd4Xg
	1eQ0zZkngyBXfYdFOygmU8AM3g9fcXapi0e+GPy4vCS5Yz6k3i1MqcJZugscRGuZExRJ53IVClJqQ
	08OJ7K8v/UUOABa6FcgA9RWSGXbeDsR+UMVbuWmO3vtQPzxf5yuV3OXaY4PJDkNN6W4wwUfBejLqM
	y0ArjbQikx13Qh4n7X+QsrEVKf7nbiak5R5lasV5bAiyzBt8LD5v6PkeRe/DfKav5Em2XFRwYkT9P
	axXtqbDAlcc3QaCkTi+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXJnm-0007Uy-4p; Wed, 20 Nov 2019 06:49:22 +0000
Received: from mail-eopbgr740071.outbound.protection.outlook.com
 ([40.107.74.71] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXJmK-0006I1-QU
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 06:47:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eo+l686V/Mjc013BpMxGFz+A6rZ4FdFm9MLXGozAPAQegpsUdwQ7Szscu40UjfORPiJXgfLzChTuGUjVyqx/6x2P9IbTg0xIK3BfIP9JoKpRbizLFWoBM9idICDdufw9iZgWgjSKPlZLXcjrxhHuL6iL2eyEj+ybB2efAh16wEZq7fwxEdvwfS9lVU9I22c3cI+BcF2IILA1Wqm/tIVgFekSqLp653vSXAKpIq/RvX6kIRcndq5DcTLambsDu5nnnprNq6nB7AhzkFV788mcPljKlMJkXFDazrO7Uo+1giEwfqeb1Y7WYPQeFWQaHYeg9jP/YE1lbFQzFW66yG/ezg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k7qbsUFt6gIDpj2dYmDYOFz7It+gjHYfXKxGp9daL6Q=;
 b=Dh90V5rrQJJ0/ijR4xl+BLRmvf4gnNtluJ8J7X8zMrJkh3puzbSHz26atBDm8YUIs8UjvoC1vdDPBiMOrq2/Wu14AoIS0FAXoig5NYSrqaLE8ZNgkADBBjYhX3RXIsW4cA1BsF+1q0iQEB7H2PQwoxB7OmC2ah8VapANh3HjcsO6doi5ap8APGyiGHWO5FKrLDIbwVjxFluQvhMgUY2U7ePxyTJ5tP30ZU5BJln5kfFFsc1KK9tXkIvJ4dGey+/MLDVHzJ7C7hoOJa4xp8S/VovV0pdaj8RPoZZATF2pAd1d4X61jHl8+MoJwbfZJax8ztsWgtAzq+HlthJ/CsgBtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k7qbsUFt6gIDpj2dYmDYOFz7It+gjHYfXKxGp9daL6Q=;
 b=N5xVdlBjVLbDyab9jQwuzBpaEhXX8CgA57V4nH1S7qy9O1Lsg/5yvkhtNLpbCMWgRyYkNtiXkAvEJ3PGWlYXb8Qrzjsnvf0kSAdZCPL6Q8y8cvWhiOU9CIW//DbXA7l/gnfV9RQbEMkwquVF9OC8kmQpZqUy/HQBoMB1WLd42Y8=
Received: from CH2PR02CA0022.namprd02.prod.outlook.com (2603:10b6:610:4e::32)
 by DM6PR02MB4188.namprd02.prod.outlook.com (2603:10b6:5:97::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.16; Wed, 20 Nov
 2019 06:47:48 +0000
Received: from BL2NAM02FT053.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::209) by CH2PR02CA0022.outlook.office365.com
 (2603:10b6:610:4e::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.30 via Frontend
 Transport; Wed, 20 Nov 2019 06:47:48 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT053.mail.protection.outlook.com (10.152.76.225) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Wed, 20 Nov 2019 06:47:48 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iXJmF-00061A-NY; Tue, 19 Nov 2019 22:47:47 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iXJmA-00049o-Jg; Tue, 19 Nov 2019 22:47:42 -0800
Received: from xsj-pvapsmtp01 (mailman.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xAK6lb9Q001803; 
 Tue, 19 Nov 2019 22:47:37 -0800
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1iXJm4-000492-LU; Tue, 19 Nov 2019 22:47:37 -0800
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id DF133121389; Wed, 20 Nov 2019 12:17:35 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com,
 jolly.shah@xilinx.com, rajan.vaja@xilinx.com, nava.manne@xilinx.com,
 mdf@kernel.org, manish.narani@xilinx.com
Subject: [PATCH v6 3/8] mmc: sdhci-of-arasan: Add sampling clock for a phy to
 use
Date: Wed, 20 Nov 2019 12:17:24 +0530
Message-Id: <1574232449-13570-4-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1574232449-13570-1-git-send-email-manish.narani@xilinx.com>
References: <1574232449-13570-1-git-send-email-manish.narani@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(136003)(376002)(199004)(189003)(16586007)(316002)(2906002)(6666004)(42186006)(356004)(70586007)(44832011)(36756003)(186003)(48376002)(106002)(36386004)(26005)(76176011)(6266002)(4326008)(336012)(50466002)(486006)(107886003)(51416003)(305945005)(70206006)(476003)(50226002)(8936002)(14444005)(126002)(2616005)(81166006)(81156014)(478600001)(5660300002)(47776003)(8676002)(426003)(103686004)(446003)(11346002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4188; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 06333818-2ff8-4a80-d6ab-08d76d858e98
X-MS-TrafficTypeDiagnostic: DM6PR02MB4188:
X-Microsoft-Antispam-PRVS: <DM6PR02MB41882B0B372A07C3025DAD99C14F0@DM6PR02MB4188.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 02272225C5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YF4Sc0SYNcTwNoVVds82uES3aAVhmAzU4AuF6kDIh5dqlZ3MBzHCay7xnsg7tOoPbX/ptU8ff/RTiViGMEUj1fmtb19r2BMR0FKhe/Oq3HbTR/2mWnxdLrkXIrvteeG8xr3tgVPBb7mxDxva7Rz2Q1CvfEdfjwny5A1AH9Cx8PN5GV47WOnyRvHJT1bMBGKu//6uk5Cg6T1oLmSAXZ4UDmNeZIEBHYwl7WxvI9QN8mC8+1SzOgHglFjU2ZRGiN4zT0xWEL70N3W8AVvRpwNTHw4cXCMs8u/WkAmqzJUe2P6tNi2ala13CDaPINv93rKWDb7cSGNPVEyLyXbTjT2K0xkne/QPd4W21lW/8lQqHe7n66pgmuv+WTy0UFNQWty2C/OaX5wOpekgTBQjNLi7KKllxHCk02Sx1j40H/reQ/kP4m/+LMhVX1k8jCsQMcph
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2019 06:47:48.3841 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 06333818-2ff8-4a80-d6ab-08d76d858e98
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4188
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_224752_925218_75677DED 
X-CRM114-Status: GOOD (  21.20  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.71 listed in list.dnswl.org]
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
