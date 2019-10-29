Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58158E85A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 11:31:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DTMnL18vQprMdu316EnX8b62yzm9BU5nG93kNTYGDuo=; b=CvdS1+W4s+67Kp
	7AvBIddcnVRIoIoh6EwXzea5PJkqDDa8OPqQbokB4npztKH7FiwdgyileuwgFsgoxdPwhx+/dC+SD
	0YH9GQR6RrYnrODJPfpZYTxOUNmn8I8KDzQ8eT1AyioKvx8Ral+A+dMElpORs305sjvIIvKzNrKHO
	bhBeELyO5w+Iz0abbGP+OXayXCaXbcZZENivTDCXemgvBuwKc9ezZo+3xYzhVK5wu0qGeIFVfzSuh
	ORBVYQqGhSBni99s/8gJaoWIDCdtWbi1ezv8OYXVya2DO9F4Te7/1h9nqct+Zv2zT1B50CkWI4MyO
	E1dDYUtPJ+WWWOQjhK2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPOmg-0008EZ-80; Tue, 29 Oct 2019 10:31:30 +0000
Received: from mail-eopbgr790070.outbound.protection.outlook.com
 ([40.107.79.70] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPOm8-0007wY-LY
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 10:30:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bRCJA60GQkFgkmDETlihb7+gYHI87fv18OK0ltTip0frjgVebmt0QXwKhvCjLNahNphbHTuLMH53NR5jgcRxJ6AR17KWooi8LGHs8W5mJtKeLLXqR8ZwzkaUFEExgstZkXk2hQQazDBQQNwG4Cr6MFzhX2lHwKRIqTUt1m7XHn7pXull5Lf5VhqY/oZjIDu9thAmk5S8op+LsqNZBEcp9AwqrOTQutc+5k8I+Y0qSMSLZSkz0XY16Ghb293yhRVN3SL7inmmWGTlFsMlkMv0ndGT7OHcHXa/L4/OxWeDCJNBisZkoviSFr6z884HMBev+DeGdoz5OHBWCLVC68htfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k7qbsUFt6gIDpj2dYmDYOFz7It+gjHYfXKxGp9daL6Q=;
 b=RPwYn9NowNx6evtc2u9saGUOa4J6rQvzGTl/yf0AKCrwtbGE/I7J129MYiU0jOP9ss3XB5rfLIxULOxdTHHKC+MkJCWAlp7UhWsmLaSLXedPhOY4pu0ofSL6hL530Hwh4A2PTzqcl3YtDTYD4e1+1A6I0UGE49spBRPebqykr9adJ4rXV9w3VbK7WRl4spb7RQLYg8ceB8Z6tScF3GwA+e4gioqHZ7+DRoCnRdtrdhMTCz/+pLRVrLL4FkDPJbZwwrxZ5L6qWorPJJKWyFEk2ajbgx4C32xbV9VLjHvnGYVOqyF0znirbImytZhnKTwmpmnHRXPh0TkH9LgzB4cfVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=arm.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k7qbsUFt6gIDpj2dYmDYOFz7It+gjHYfXKxGp9daL6Q=;
 b=Y2mg5Sas96pznHk2bL3g//Gb6C+X7Q6nD48XQrP7WyKZr+x3+pQAKS5CoD+HguQgkQIzGPHWRdoFpW8Y9jXagt0Meb+oymhOHOcPX5AKZ7c8/cWbYiIQfbgjaJojzhPuMvouavLv9jwI0SKdZ8hOIDZwqhkRdI3MrwnZP5mbwO0=
Received: from BL0PR02CA0117.namprd02.prod.outlook.com (2603:10b6:208:35::22)
 by BL0PR02MB4401.namprd02.prod.outlook.com (2603:10b6:208:40::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2387.22; Tue, 29 Oct
 2019 10:30:52 +0000
Received: from BL2NAM02FT048.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::202) by BL0PR02CA0117.outlook.office365.com
 (2603:10b6:208:35::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2408.17 via Frontend
 Transport; Tue, 29 Oct 2019 10:30:52 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT048.mail.protection.outlook.com (10.152.76.109) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2387.20
 via Frontend Transport; Tue, 29 Oct 2019 10:30:51 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iPOm3-0002t7-6M; Tue, 29 Oct 2019 03:30:51 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iPOly-0005lF-16; Tue, 29 Oct 2019 03:30:46 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1iPOlx-0005kY-3r; Tue, 29 Oct 2019 03:30:45 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 650FE121750; Tue, 29 Oct 2019 16:00:44 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com, jolly.shah@xilinx.com,
 nava.manne@xilinx.com, rajan.vaja@xilinx.com, manish.narani@xilinx.com
Subject: [PATCH v4 3/8] mmc: sdhci-of-arasan: Add sampling clock for a phy to
 use
Date: Tue, 29 Oct 2019 16:00:37 +0530
Message-Id: <1572345042-101207-3-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1572345042-101207-1-git-send-email-manish.narani@xilinx.com>
References: <1572345042-101207-1-git-send-email-manish.narani@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(396003)(346002)(136003)(199004)(189003)(6666004)(42186006)(356004)(16586007)(26005)(316002)(51416003)(76176011)(186003)(48376002)(305945005)(478600001)(36386004)(5660300002)(47776003)(106002)(6266002)(50466002)(50226002)(4326008)(107886003)(8936002)(103686004)(8676002)(81156014)(81166006)(426003)(126002)(2616005)(476003)(446003)(11346002)(14444005)(336012)(486006)(70206006)(44832011)(70586007)(2906002)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB4401; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c2984c26-cf70-4cbf-1e7d-08d75c5b12a6
X-MS-TrafficTypeDiagnostic: BL0PR02MB4401:
X-Microsoft-Antispam-PRVS: <BL0PR02MB44015F740611F48354DC2D9CC1610@BL0PR02MB4401.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 0205EDCD76
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PFaNsYhyRIWlJZ3ZQJ0SfHzh8XG4E3xMx/VvR1OR2tFmdRCMV3eEisdd2DQyGz7m6XfOROMoQd+fZhpwb2fUlzypp3nqBw1oOmBEB+3e56Ga1doB3KwWZqmRzwM97XHbS/Xwe/WIS5d/EleIc3lyN+WvukUspz+vnOa/OHvC2Bjjyow2PY05iEtn/88uvIP3WF9zwggDzZp/FrhhMPMSl+cUj8kz89V3/wgXV78uktZX2PZcO1Hscp1oGV7Cf3cb4jhFc25X3vdQCQVq2PW98clUQyh6/APUsb8g36No4ub0HBtsw0ju0BSSrBsJX+mpn9/JakiXc6STxAL2wJOxAwqvV7uGxzMtdcTUv3zfx/hSowV/46J4l9xFDDQc8rLw2YB8KisjpuaV0QONuINZAlkdTdEy/XTRIUQq1GE0CP8hVgIUC4yMucXsx+4L7HWL
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2019 10:30:51.8078 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c2984c26-cf70-4cbf-1e7d-08d75c5b12a6
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB4401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_033056_711413_BDA08109 
X-CRM114-Status: GOOD (  21.01  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.79.70 listed in list.dnswl.org]
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
