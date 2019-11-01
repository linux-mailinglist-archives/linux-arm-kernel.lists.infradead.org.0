Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8FAEBD8F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 07:07:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PHJuqqdsX2yW2TZLn4ocfpeh4+s4GfHd8FJwWnZQD2A=; b=opV1frnRU7C20k
	ieUee0Rjn9i41mW4MFklCyeABuZQflhs8Qpr2251d7ZT6q3rQJwv/qJ4Njo1gWKQHfY8GZ28K8OQs
	huD/sTXjo/ryUkCjdZU29O2EUhzIklN9+mUux5z4kjiHcxdV6TMbeD9DgjDA3uq0h3u2nUuz4E7Ie
	G/vtPFddhN3eGmcOzbpU4RBdt8C7cHZIHmHyQLFOWzTa+1LQn9nQ/fyKJ/4BFghpLvNu8rnjaRk6q
	T4g6gyl6xRRQp9hHzA5vjPknjLju5TFLlWgxztmaEjydrq1dICpD9iBbekgnihRUQhV98B2yKyPLF
	wxSit3zlztCHd4BWv/xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQQ5W-0002R6-9G; Fri, 01 Nov 2019 06:07:10 +0000
Received: from mail-eopbgr790085.outbound.protection.outlook.com
 ([40.107.79.85] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQQ4b-0001vB-NY
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 06:06:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lMsC36rwyqb8T6F3jjkVcrWsNi8yJs5ZqUAepwSsLlcmFCI/2HMv3JMaBPJXJiXslVTZIJAfNW82ny8AkNPKgvQYLIdPZR0xdL6win7vjuUxWpi+CSncehahXHyBy9JNtNXAJMvbn2sk2fWDX8jBxtVgqhwihUEJT9yLxRbFw0WK5j9Urdh4rWPGlp2TnNlZ81bky5fz2hAVh6NQCZLOr8/NG51IaSl16PfRgpZhTmGhwR2F2IpKuA/jrccN+IX7+T6bm/YKbh++5phOu94OHHmolb4+//ORTr7Ai+IDKGciF1Ht1ZfLbtQZG6taqOeESNz+MWUnzabiiL9N2HTClg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0eQy9sbl57qj64wcfahgY/DCazAuE05WULs7Rq44dFw=;
 b=lKsQHN/0FeknM1ViTNxES83TGizpSSemaI53gE4lfL4vB5Z8E6nt4nB+xsFpRIvsSOJ90MsawsnNwPURVZ63mWUrVMtFfyxOBYY31Ee5sFcGqxDALyMgDEUOeasCpJqP5X4T7QFu22YtFUWNrdPruAc+Mg+07UuhZc75WvcIKfqmgl2ijm/QohCe/6G/iluQAumkTaUuz63tzSHvfet9SGZzVlcPtK9mkd9fixoE7nt8KwtNvDJV4ZZFW/xx7ZwmkhSED6xtj8e71axpAACDKmUMmY0QnCoAff2hCnMXiQTbsUxm6ow1QGL8Nibt2LKtbLPE8iy6jiXJThkpCrtxKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0eQy9sbl57qj64wcfahgY/DCazAuE05WULs7Rq44dFw=;
 b=MtHQvotdXCh+AD2Y1oH2Kpcv+YA3q7hEzSSGuuJOOKFrhboFqCVjqfhh9Nx1Kz3wMOgCjURzHuwn10RK0jLq7U3wFxH0HQgUNNeG+vNsEq6GjxzI9FVnuiJ71IKmsHXXFUJ41gNdBKjMKFKQ+jRhzOIhoz8zcPrYB15kEOk4XVk=
Received: from MWHPR02CA0004.namprd02.prod.outlook.com (2603:10b6:300:4b::14)
 by SN4PR0201MB3407.namprd02.prod.outlook.com (2603:10b6:803:4f::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2387.22; Fri, 1 Nov
 2019 06:06:10 +0000
Received: from SN1NAM02FT035.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::209) by MWHPR02CA0004.outlook.office365.com
 (2603:10b6:300:4b::14) with Microsoft SMTP Server (version=TLS1_2,
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
 SN1NAM02FT035.mail.protection.outlook.com (10.152.72.145) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2387.20
 via Frontend Transport; Fri, 1 Nov 2019 06:06:09 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iQQ4X-0005mP-D3; Thu, 31 Oct 2019 23:06:09 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iQQ4S-0007dN-8O; Thu, 31 Oct 2019 23:06:04 -0700
Received: from xsj-pvapsmtp01 (xsj-mail.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xA165wr5005663; 
 Thu, 31 Oct 2019 23:05:58 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1iQQ4L-0007Zt-Ly; Thu, 31 Oct 2019 23:05:58 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id E131212123B; Fri,  1 Nov 2019 11:35:56 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com,
 jolly.shah@xilinx.com, nava.manne@xilinx.com, rajan.vaja@xilinx.com,
 manish.narani@xilinx.com
Subject: [PATCH v5 1/8] mmc: sdhci-of-arasan: Separate out clk related data to
 another structure
Date: Fri,  1 Nov 2019 11:35:46 +0530
Message-Id: <1572588353-110682-2-git-send-email-manish.narani@xilinx.com>
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
 SFS:(10009020)(4636009)(136003)(376002)(346002)(39860400002)(396003)(189003)(199004)(8676002)(5660300002)(305945005)(2616005)(36386004)(70586007)(70206006)(50466002)(48376002)(51416003)(76176011)(44832011)(126002)(476003)(426003)(16586007)(26005)(336012)(11346002)(47776003)(103686004)(14444005)(186003)(446003)(316002)(81156014)(8936002)(6666004)(50226002)(356004)(81166006)(478600001)(107886003)(486006)(2906002)(6266002)(36756003)(42186006)(4326008)(106002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN4PR0201MB3407; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6852aa3d-a119-499c-7439-08d75e919777
X-MS-TrafficTypeDiagnostic: SN4PR0201MB3407:
X-Microsoft-Antispam-PRVS: <SN4PR0201MB3407D78058C7FF4198195F95C1620@SN4PR0201MB3407.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-Forefront-PRVS: 020877E0CB
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MC1vZ3ThYXCYYq0dmVNMjhCQhUqhOG5Sxja9BhhTz1Ub4CrkI4Zu6RFdK9UoFCZ96J3dPEjqtUrdGecbMz8xCw8IZRsgqx4hRorQSIHf8Chr6m1uANRmKTHZ1p/N28EJGr3BbtIkBE5WUKKTNZG3BOMKO/znCCUkjft92CPQTbFUmvDfaZ1BlBYRhOhicM2ka8uPVdyZdPJepjOjsJsDbp098nnKLVIWpz+PimlfOHv2+CFhuh2T2R+2qnhKhHGHnA6N99SqOmzBVwV704DMoX9bSm3NXFHmbMxySea2NA5R8NFSheqR9Mg5QDuL4d5OEDUUFCQ+nEHbDlnAUc3e8CQYvgAbYBm01/bUOUWqCM57j9hunQUj5jVqGk3pvGzfTnHfIP4IUox2EoEhzU74vYYwe0xM9lYsv96WMwXLuQZ5yazcPDCGcYp6X5QbaBj4
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Nov 2019 06:06:09.8840 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6852aa3d-a119-499c-7439-08d75e919777
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR0201MB3407
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_230613_769792_507986E7 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.79.85 listed in list.dnswl.org]
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
