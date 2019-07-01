Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D3C5B406
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 07:30:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TShxldwS53FmylSbHkazu3T3ZF2lCdbEVSt+3IL6Hjc=; b=Ss1kKEAlzYBUgY
	jNxggx1EY+C3AMdJv/EsinbL9VHvkeM9Zd2ozmorE0yO3i0AVeSJzN2nv9fcSAdrLUKLwlXxi1zHj
	tj2XIh2WTVFKehkGtw+vE1I6MZ8g+GV8Cxb/7i6P+1qLsRjKENoJzfCUFllhRuCtS+5hbuSH3gnUb
	JTLsHKsw3gAfFPxjUD4/wVMAUO6Tl6pgT/jdnPwex1UBfdP3wIJK5bIRn//5ce8aKBn1p30fhtbws
	K8EGZORuOu5fTtcbQtB7tIKU6d6M73GIw1lNLRPe/s4MxxgQW1lwZciCqr/Sn3+de1gDP9us/ScOf
	mIfnWXffzo/irBU5uNOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhotu-0007YH-Fb; Mon, 01 Jul 2019 05:30:50 +0000
Received: from mail-eopbgr760043.outbound.protection.outlook.com
 ([40.107.76.43] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhotH-0007LH-Cy; Mon, 01 Jul 2019 05:30:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
 b=shBLhE3eIpcaTEKfQy2SqYTMN4YQdOQLeqoCE9atkYY3EFqnBaOSBqoq8ghQGI/7FswlvnXHoq00+nOb3rTNl8AId2D4QPfBGbj+2UZdp3qs6im21LqLqkbHqLObEgU1mT8qH59Yf7pyZ+nl7a+jlsxuNobf4xt3vBuNfPl3UpQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=testarcselector01;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eZBFTUHu+eJzY9qyBHqSJbSiQ9jS0+nBS9LM/5+dARw=;
 b=tXRtZQ/OK0/xOj5aakoyoW7bv2i6Rvb9SWFnGaND2hXKVXF0q9WPGYfIbIKv7o405EtHo6bNw2crY/PHiDh/thCJVeCX7XpcsG7lRRNoveVMilF+A3O0OzCnam5LbeKChbwPtQj0HyCWlzrgjuQ6oPiTLVPyaalpYRWw9cxrksg=
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org
 smtp.mailfrom=xilinx.com;dmarc=bestguesspass action=none
 header.from=xilinx.com;dkim=none (message not signed);arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eZBFTUHu+eJzY9qyBHqSJbSiQ9jS0+nBS9LM/5+dARw=;
 b=rI2WhUQNq9QOpOo0EQ70pd2ZQt0U5ckAF57FvkMP+ojNyCc/umm6gkRUoM+0unn5foDaodJrfUqpxDx8Vf8ZDJUnY5FRQ59NJX7w2PTumhcPOG/ir3+DemHJ8oDVQapgOamD5q9Lz+GsVyCISMSylxgszQCIahFqJ7k3QPI6ar8=
Received: from BYAPR02CA0006.namprd02.prod.outlook.com (2603:10b6:a02:ee::19)
 by CH2PR02MB6326.namprd02.prod.outlook.com (2603:10b6:610:10::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2008.16; Mon, 1 Jul
 2019 05:30:08 +0000
Received: from SN1NAM02FT032.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::203) by BYAPR02CA0006.outlook.office365.com
 (2603:10b6:a02:ee::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2032.20 via Frontend
 Transport; Mon, 1 Jul 2019 05:30:07 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT032.mail.protection.outlook.com (10.152.72.126) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2032.15
 via Frontend Transport; Mon, 1 Jul 2019 05:30:06 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1hhotB-0002rj-TZ; Sun, 30 Jun 2019 22:30:05 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1hhot6-0003EO-Qc; Sun, 30 Jun 2019 22:30:00 -0700
Received: from xsj-pvapsmtp01 (smtp-fallback.xilinx.com [149.199.38.66] (may
 be forged))
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x615Tul2008191; 
 Sun, 30 Jun 2019 22:29:56 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1hhot2-0003Cf-4S; Sun, 30 Jun 2019 22:29:56 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 47271121746; Mon,  1 Jul 2019 10:59:54 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 heiko@sntech.de, michal.simek@xilinx.com, adrian.hunter@intel.com,
 christoph.muellner@theobroma-systems.com,
 philipp.tomsich@theobroma-systems.com, viresh.kumar@linaro.org,
 scott.branden@broadcom.com, ayaka@soulik.info, kernel@esmil.dk,
 tony.xie@rock-chips.com, rajan.vaja@xilinx.com, jolly.shah@xilinx.com,
 nava.manne@xilinx.com, mdf@kernel.org, manish.narani@xilinx.com,
 olof@lixom.net
Subject: [PATCH v2 06/11] mmc: sdhci-of-arasan: Add sampling clock for a phy
 to use
Date: Mon,  1 Jul 2019 10:59:46 +0530
Message-Id: <1561958991-21935-7-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
References: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(376002)(136003)(346002)(2980300002)(189003)(199004)(8676002)(446003)(2906002)(51416003)(72206003)(81166006)(81156014)(26005)(16586007)(48376002)(316002)(5660300002)(76176011)(36386004)(11346002)(336012)(36756003)(103686004)(50226002)(426003)(8936002)(52956003)(44832011)(2616005)(7416002)(106002)(476003)(14444005)(126002)(4326008)(47776003)(478600001)(6666004)(356004)(42186006)(6266002)(70206006)(305945005)(70586007)(50466002)(186003)(63266004)(486006)(921003)(42866002)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6326; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0cf47994-d542-47e9-92e6-08d6fde52d6d
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:CH2PR02MB6326; 
X-MS-TrafficTypeDiagnostic: CH2PR02MB6326:
X-Microsoft-Antispam-PRVS: <CH2PR02MB632680D27B20659EEB3A28C6C1F90@CH2PR02MB6326.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 00851CA28B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: mN2kIH1lJKbt9MFOHicH/hBDPBnlIa8L/EVttPdKrwSZ7Mqy0XRndC2tp8LLfTDIAoBTEUAhMg/RZevc/cKZj0aqVoifoibEI0SzdygTvhCtDZLjasLGk5eAsRFGLoImNMkDedQjz6Xvfwg7HxH+/nL4abgszofNc70I8wrO0mgeY1w/qhCMVY4wI9Ei/xiz3swAU0qxWMrEHG6XyBKj7Qsm/09y2ua2tcgh9AzA57sYCiNxix0cFjcLzOOe2ifBXoUMga+My1oFoYiFg4q3MaAuDGwJsZG5JDcsTQEDGoAG8+3eOwM1ev/+BDl+qkr6E+LlFR7ovBIwWQApIkKMd6WxIexRzFLSs11UyeZgwRAsY8Uf9IdXROyvWBg4AuZ/wr+w/9Tlvle/a942sFZaqG8gJbgBDBPHy8QqKpLBmt8=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2019 05:30:06.3261 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cf47994-d542-47e9-92e6-08d6fde52d6d
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6326
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_223011_491884_A5C8F6B6 
X-CRM114-Status: GOOD (  18.97  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are some operations like setting the clock delays may need to have
two clocks, one for output path and one for input path. Adding input
path clock for some phys to use.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
---
 drivers/mmc/host/sdhci-of-arasan.c | 118 ++++++++++++++++++++++++++++++++++---
 1 file changed, 110 insertions(+), 8 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
index c7586f5..9513813 100644
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
@@ -527,6 +531,33 @@ static const struct clk_ops arasan_sdcardclk_ops = {
 };
 
 /**
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
+/**
  * sdhci_arasan_update_clockmultiplier - Set corecfg_clockmultiplier
  *
  * The corecfg_clockmultiplier is supposed to contain clock multiplier
@@ -605,7 +636,7 @@ static void sdhci_arasan_update_baseclkfreq(struct sdhci_host *host)
 }
 
 /**
- * sdhci_arasan_register_sdclk - Register the sdclk for a PHY to use
+ * sdhci_arasan_register_sdcardclk - Register the sdcardclk for a PHY to use
  *
  * Some PHY devices need to know what the actual card clock is.  In order for
  * them to find out, we'll provide a clock through the common clock framework
@@ -624,9 +655,10 @@ static void sdhci_arasan_update_baseclkfreq(struct sdhci_host *host)
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
@@ -662,7 +694,7 @@ static int sdhci_arasan_register_sdclk(struct sdhci_arasan_data *sdhci_arasan,
 	ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get,
 				     &clk_data->sdcardclk_hw);
 	if (ret) {
-		dev_err(dev, "Failed to add clock provider\n");
+		dev_err(dev, "Failed to add sdcard clock provider\n");
 		return ret;
 	}
 
@@ -676,10 +708,74 @@ static int sdhci_arasan_register_sdclk(struct sdhci_arasan_data *sdhci_arasan,
 }
 
 /**
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
+	/* Providing a clock to the PHY is optional; no error if missing */
+	if (!of_find_property(np, "#clock-cells", NULL))
+		return 0;
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
+	ret = devm_clk_hw_register(dev, &clk_data->sampleclk_hw);
+	if (ret) {
+		dev_err(dev, "Failed to register SD clk_hw\n");
+		return ret;
+	}
+	clk_data->sampleclk_hw.init = NULL;
+
+	ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get,
+				     &clk_data->sampleclk_hw);
+	if (ret) {
+		dev_err(dev, "Failed to add sample clock provider\n");
+		return ret;
+	}
+
+	clk_data->sampleclk = devm_clk_get(dev, "clk_sample");
+	if (IS_ERR(clk_data->sampleclk)) {
+		dev_err(dev, "sampleclk clock not found.\n");
+		ret = PTR_ERR(clk_data->sampleclk);
+	}
+
+	return ret;
+}
+
+/**
  * sdhci_arasan_unregister_sdclk - Undoes sdhci_arasan_register_sdclk()
  *
- * Should be called any time we're exiting and sdhci_arasan_register_sdclk()
- * returned success.
+ * Should be called any time we're exiting and sdhci_arasan_register_sdcardclk()
+ * /sampleclk() returned success.
  *
  * @dev:		Pointer to our struct device.
  */
@@ -817,10 +913,16 @@ static int sdhci_arasan_probe(struct platform_device *pdev)
 
 	sdhci_arasan_update_baseclkfreq(host);
 
-	ret = sdhci_arasan_register_sdclk(sdhci_arasan, clk_xin, &pdev->dev);
+	ret = sdhci_arasan_register_sdcardclk(sdhci_arasan, clk_xin,
+					      &pdev->dev);
 	if (ret)
 		goto clk_disable_all;
 
+	ret = sdhci_arasan_register_sampleclk(sdhci_arasan, clk_xin,
+					      &pdev->dev);
+	if (ret)
+		goto unreg_clk;
+
 	ret = mmc_of_parse(host->mmc);
 	if (ret) {
 		if (ret != -EPROBE_DEFER)
-- 
2.1.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
