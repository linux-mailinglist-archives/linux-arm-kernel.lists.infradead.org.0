Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5313E859F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 11:31:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PHJuqqdsX2yW2TZLn4ocfpeh4+s4GfHd8FJwWnZQD2A=; b=OyoP/krTCRs2Eh
	zkUZtlHzcFpNcpfzrKHE3MJuYSAeLNbNW9OQKMpNNxTQw77TrEC5PY7Evls1cZ9CsVJBoO1dpNnFL
	zyOvliBV8OdxzTAY9gPguMxaDeMr2qSirWPLiKlrgQOBBWSW3/QWIgRbdKSvLC2cultxMTJfhZ19a
	VaCN+uPmPMsDpmm/nOjcye84CUv4lm5PmjgmZXtDLQx8HevjJCTpQE7f769AqpIEskbfj1URQVclb
	eiJLyGvhYRxkP5UQNghw5LCUx4fL5J7IVVljqf09Qng0g7GpG9rzDD2qap0ve6bVLCxlZ4EIh58mg
	7fN+kn29Zb567+7EYEHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPOmO-0007yE-IL; Tue, 29 Oct 2019 10:31:12 +0000
Received: from mail-eopbgr800050.outbound.protection.outlook.com
 ([40.107.80.50] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPOm8-0007wZ-NQ
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 10:30:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W3LTXFNE3HTlmEH9qG7jBw/ZhcgYCj8/1dpNyKVyKWIhjePJymtmxI0wXghxDPTUjRdUKZlpFCRVaPaUqFx0vf476B0/SvTG0P2cl/FHqdbj7GuQvIJXvsZ0HYJx6c0BrW0QAyj62Br9dk3BRgUwypfv2wXSYmD1zc87oGT1sVaSGNqL11+ezhxHWGpkhwlWjbxf/nuX7SvGTThyOQXyipMrEzyxv4Ewn7LDVeBdD+t3f3zAB0WOvy6FBmB2BFLJZWFSt+RBgIcfTBpbM9/9SRYkVM/liMXEn8OTmGZBYoCk//gXw2jNysYCcNrcSiyQIhNtjMVcB8vpngyTdg5iEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0eQy9sbl57qj64wcfahgY/DCazAuE05WULs7Rq44dFw=;
 b=kksruchWpLRpmSUWFZKhok0Wj5w5XnvlNnKLtSST8sVILQ8E7t6ysHcZQVN3AYPibtPfXnKBbcg+CeL8xTWl6yjZoBE5Bdd5Df4ivB+aFjshZGpFJ4f0c0d7oYYLDLqSG4nSfEY9Ppm4dLK0MAqc9jL68OvwfZH/CfO2y+r38xDwED9zBIav6t9MrsIC2Kj6GQASpn+tS8/dhwhmvTfphY+lrP0OLOjBaUoErC/e4e42TsJqj8Mrpkm4PPaDHLpMsulDQTiqIAsxWk/MXnLsWQzqFU5g4Zmy8HyzWgbALwHJhfXhtwoAnkhNgTDZ+5S6N6FFrlj9tHrEHbk2OIqOxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=arm.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0eQy9sbl57qj64wcfahgY/DCazAuE05WULs7Rq44dFw=;
 b=G90rvLHgP6ewnPlTHqjUnQAeG3TPJ9QL5O+j0DQZhu8n3duk+vOrCg3+tk6GJzCTObW1UqLanyGTVNpyl2wsy1EW8088BIkaFoyM2wruGls8E0YwKGjpjBodbM/Z0gtjhsDzAggVleIsp0AjXyQ6EDVFEZ3Z8nmUN44w1V/Mh30=
Received: from DM6PR02CA0135.namprd02.prod.outlook.com (2603:10b6:5:1b4::37)
 by BL0PR02MB4881.namprd02.prod.outlook.com (2603:10b6:208:5f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2387.20; Tue, 29 Oct
 2019 10:30:52 +0000
Received: from BL2NAM02FT024.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::206) by DM6PR02CA0135.outlook.office365.com
 (2603:10b6:5:1b4::37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2387.23 via Frontend
 Transport; Tue, 29 Oct 2019 10:30:52 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT024.mail.protection.outlook.com (10.152.77.62) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2387.20
 via Frontend Transport; Tue, 29 Oct 2019 10:30:51 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iPOm3-0002t9-Ae; Tue, 29 Oct 2019 03:30:51 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iPOly-0005lF-5h; Tue, 29 Oct 2019 03:30:46 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1iPOlx-0005kW-3G; Tue, 29 Oct 2019 03:30:45 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 57EE0121744; Tue, 29 Oct 2019 16:00:44 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com, jolly.shah@xilinx.com,
 nava.manne@xilinx.com, rajan.vaja@xilinx.com, manish.narani@xilinx.com
Subject: [PATCH v4 1/8] mmc: sdhci-of-arasan: Separate out clk related data to
 another structure
Date: Tue, 29 Oct 2019 16:00:35 +0530
Message-Id: <1572345042-101207-1-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(396003)(376002)(136003)(199004)(189003)(103686004)(14444005)(50466002)(48376002)(6666004)(70206006)(478600001)(2616005)(305945005)(486006)(8676002)(81156014)(36756003)(44832011)(81166006)(476003)(5660300002)(107886003)(50226002)(8936002)(126002)(336012)(426003)(4326008)(106002)(6266002)(356004)(186003)(51416003)(2906002)(42186006)(47776003)(316002)(16586007)(70586007)(36386004)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB4881; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: caaebe28-31e7-44cf-69a0-08d75c5b12af
X-MS-TrafficTypeDiagnostic: BL0PR02MB4881:
X-Microsoft-Antispam-PRVS: <BL0PR02MB4881BFF538BDEAD7B5700337C1610@BL0PR02MB4881.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-Forefront-PRVS: 0205EDCD76
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nzQNx7rNosHUlceyN5xlVgFUgZBF0V9WnQ44yyiozkFDYJEJ2uHGl+2Pd0OIe+fYR3wuhR6M4exwxxgTpVmmJQ2iutaQRK1GZMZev2xw6O6Swh2/LgYX9PO2cqkMpOwxwreJcxQm40tLyChUqydXbGe2VSOUnp2/C1ZZ09a7MaESFVfq/nDf8LFTMrDI9CeE2z8y+ZpRR4f0AXd8QzpgFf3tCE0ETu62DkN7y74MQG9iTkun+5wsf+E7tIzRD91TLkN9ot6xtQibD2OCQbGPD/6CTUzZEeQZmKG8VMzcI7WBZYgoHZIQVY4YkLWpJs065AtajlZYOMLpRdJNsbEuYhTqyiRkgDgaAhvoOUuEpNWUOop+bp7b11UjcvBsOqh/sXi+IaTctulGGkIpctxB2wnLytFlYzrwjJVSC1lppcGbR/Y3QwJRrp5tFKJLKSo2
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2019 10:30:51.9087 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: caaebe28-31e7-44cf-69a0-08d75c5b12af
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB4881
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_033056_765199_78576A9A 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.80.50 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.80.50 listed in wl.mailspike.net]
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

To improve the code readability, use two different structs, one for
clock provider data and one for mmc platform data.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
---
 drivers/mmc/host/sdhci-of-arasan.c | 31 ++++++++++++++++++++----------
 1 file changed, 21 insertions(+), 10 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
index 7023cbec4017..701b6cc0f9a3 100644
--- a/drivers/mmc/host/sdhci-of-arasan.c
+++ b/drivers/mmc/host/sdhci-of-arasan.c
@@ -71,14 +71,23 @@ struct sdhci_arasan_soc_ctl_map {
 	bool					hiword_update;
 };
 
+/**
+ * struct sdhci_arasan_clk_data
+ * @sdcardclk_hw:	Struct for the clock we might provide to a PHY.
+ * @sdcardclk:		Pointer to normal 'struct clock' for sdcardclk_hw.
+ */
+struct sdhci_arasan_clk_data {
+	struct clk_hw	sdcardclk_hw;
+	struct clk      *sdcardclk;
+};
+
 /**
  * struct sdhci_arasan_data
  * @host:		Pointer to the main SDHCI host structure.
  * @clk_ahb:		Pointer to the AHB clock
  * @phy:		Pointer to the generic phy
  * @is_phy_on:		True if the PHY is on; false if not.
- * @sdcardclk_hw:	Struct for the clock we might provide to a PHY.
- * @sdcardclk:		Pointer to normal 'struct clock' for sdcardclk_hw.
+ * @clk_data:		Struct for the Arasan Controller Clock Data.
  * @soc_ctl_base:	Pointer to regmap for syscon for soc_ctl registers.
  * @soc_ctl_map:	Map to get offsets into soc_ctl registers.
  */
@@ -89,8 +98,7 @@ struct sdhci_arasan_data {
 	bool		is_phy_on;
 
 	bool		has_cqe;
-	struct clk_hw	sdcardclk_hw;
-	struct clk      *sdcardclk;
+	struct sdhci_arasan_clk_data clk_data;
 
 	struct regmap	*soc_ctl_base;
 	const struct sdhci_arasan_soc_ctl_map *soc_ctl_map;
@@ -520,8 +528,10 @@ static unsigned long sdhci_arasan_sdcardclk_recalc_rate(struct clk_hw *hw,
 						      unsigned long parent_rate)
 
 {
+	struct sdhci_arasan_clk_data *clk_data =
+		container_of(hw, struct sdhci_arasan_clk_data, sdcardclk_hw);
 	struct sdhci_arasan_data *sdhci_arasan =
-		container_of(hw, struct sdhci_arasan_data, sdcardclk_hw);
+		container_of(clk_data, struct sdhci_arasan_data, clk_data);
 	struct sdhci_host *host = sdhci_arasan->host;
 
 	return host->mmc->actual_clock;
@@ -633,6 +643,7 @@ static int sdhci_arasan_register_sdclk(struct sdhci_arasan_data *sdhci_arasan,
 				       struct clk *clk_xin,
 				       struct device *dev)
 {
+	struct sdhci_arasan_clk_data *clk_data = &sdhci_arasan->clk_data;
 	struct device_node *np = dev->of_node;
 	struct clk_init_data sdcardclk_init;
 	const char *parent_clk_name;
@@ -655,13 +666,13 @@ static int sdhci_arasan_register_sdclk(struct sdhci_arasan_data *sdhci_arasan,
 	sdcardclk_init.flags = CLK_GET_RATE_NOCACHE;
 	sdcardclk_init.ops = &arasan_sdcardclk_ops;
 
-	sdhci_arasan->sdcardclk_hw.init = &sdcardclk_init;
-	sdhci_arasan->sdcardclk =
-		devm_clk_register(dev, &sdhci_arasan->sdcardclk_hw);
-	sdhci_arasan->sdcardclk_hw.init = NULL;
+	clk_data->sdcardclk_hw.init = &sdcardclk_init;
+	clk_data->sdcardclk =
+		devm_clk_register(dev, &clk_data->sdcardclk_hw);
+	clk_data->sdcardclk_hw.init = NULL;
 
 	ret = of_clk_add_provider(np, of_clk_src_simple_get,
-				  sdhci_arasan->sdcardclk);
+				  clk_data->sdcardclk);
 	if (ret)
 		dev_err(dev, "Failed to add clock provider\n");
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
