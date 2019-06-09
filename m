Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 641453A29B
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 02:06:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OP/uDsn9JQBh2v/psbORrHgbQQc0RHouOsjsGvNUCmc=; b=e6talfi9KkqNRa
	XvR0I0+VGITzzg95+CKkLhnh9bEPluzf/b3lgRLKvd4edCnveYTO27FTnT2MzqswFnbS3wQ6QoCdC
	mmXqX7hCg+DpwWv8MTQF1mGvIA3HovzVUXdRUAPWFCwXaVRBYzQZCVIJbJHYGQap7cHiiJ8VRXyB7
	d0XMJGyHJ3dlI07hg5mNk2I0MesFgbI8LnOM+R87hqNlLT1kniizr6CKIS6tOkhGTKpK+HxST1p/h
	s0Yg1TL1mfSR1HMgd3+sof8VxzCcggJSex7MhCkQKa3md9gha32beAwUjWtJRkq3zHPfRG2KTT+wp
	27XNeheeJgUAW1TFfdeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZlM1-0000gJ-9p; Sun, 09 Jun 2019 00:06:33 +0000
Received: from mail-eopbgr730058.outbound.protection.outlook.com
 ([40.107.73.58] helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZlK4-0006ZM-F4
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Jun 2019 00:04:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6y9+LNt1DwJAB1E3Mc3KFtvNfUp8OBPg8F3rcC927Ew=;
 b=Bnf0oZVd8ABVs8Vxe8cW2ubGPszavC7w+e/OXn8n1JEW+49yMW7gZOYJ2RU3itysmE4ThntjsB+ETzT4CEga4QtEUs1dVdcTX/CyY/gKP/MNWTqH8cdv9W1hZm751dIogjERSJ6a5jJ/0mSGDWHM/7g5W5RthpoQqw2aAbHqcAQ=
Received: from CY4PR02CA0032.namprd02.prod.outlook.com (2603:10b6:903:117::18)
 by BYAPR02MB4936.namprd02.prod.outlook.com (2603:10b6:a03:47::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.12; Sun, 9 Jun
 2019 00:04:28 +0000
Received: from SN1NAM02FT053.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::205) by CY4PR02CA0032.outlook.office365.com
 (2603:10b6:903:117::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1965.12 via Frontend
 Transport; Sun, 9 Jun 2019 00:04:28 +0000
Authentication-Results: spf=pass (sender IP is 149.199.80.198)
 smtp.mailfrom=xilinx.com; arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.80.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.80.198; helo=xir-pvapexch02.xlnx.xilinx.com;
Received: from xir-pvapexch02.xlnx.xilinx.com (149.199.80.198) by
 SN1NAM02FT053.mail.protection.outlook.com (10.152.72.102) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.1965.12 via Frontend Transport; Sun, 9 Jun 2019 00:04:28 +0000
Received: from xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) by
 xir-pvapexch02.xlnx.xilinx.com (172.21.17.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1531.3; Sun, 9 Jun 2019 01:04:24 +0100
Received: from smtp.xilinx.com (172.21.105.198) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server id
 15.1.1531.3 via Frontend Transport; Sun, 9 Jun 2019 01:04:24 +0100
Received: from [149.199.110.15] (port=48046 helo=xirdraganc40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <dragan.cvetic@xilinx.com>)
 id 1hZlJw-0001PN-7o; Sun, 09 Jun 2019 01:04:24 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH V5 03/11] misc: xilinx_sdfec: Add CCF support
Date: Sun, 9 Jun 2019 01:04:08 +0100
Message-ID: <1560038656-380620-4-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560038656-380620-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1560038656-380620-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(346002)(376002)(396003)(136003)(39860400002)(2980300002)(199004)(189003)(26826003)(36756003)(478600001)(356004)(6666004)(28376004)(2906002)(48376002)(336012)(76176011)(7696005)(51416003)(26005)(4326008)(186003)(50466002)(9786002)(126002)(2616005)(106002)(14444005)(11346002)(956004)(476003)(44832011)(107886003)(486006)(70206006)(70586007)(446003)(426003)(50226002)(246002)(5660300002)(8676002)(47776003)(76130400001)(8936002)(305945005)(7636002)(110136005)(54906003)(2201001)(36906005)(16586007)(316002)(60926002)(71366001)(102446001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4936; H:xir-pvapexch02.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bbeebb34-6658-418d-1b70-08d6ec6e0a65
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(4709080)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328);
 SRVR:BYAPR02MB4936; 
X-MS-TrafficTypeDiagnostic: BYAPR02MB4936:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <BYAPR02MB4936B5EA2A94B6C102C0A2AECB120@BYAPR02MB4936.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:390;
X-Forefront-PRVS: 006339698F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: sYMMVCzXiIU03Pt6a+LviDRyy5hRkix0eF8hx3T8lzaCMBXf7lJixDjgukP0Q3QGfgiFvNo2Cz5bXrsjFzK/F+1nE1o362Et1JVRQQHCHK4rYGt0+0O04KRLlSEAe3jMDehU1T9fO9b6KNohNH2FQZkchsKUSXL2ZYv1am/ZEL/tjge5QM20itC04yitbPmS9B7W01BrA5ewsRBu8HAzM+4z5ZKJCFl0zQcOYRWcF3YPj6+0Edlr6nACaAPEgw3syqKE6Xu5nsevNw2S6jw818OuY2GPp1bWlmCWzAfNqFV5OiqnckeGBv6XZJr+/IdN/0gyGD7MIiSHLMGOZRjOjpXtQ3tVE9WEL4fiVEB/zy41rwkicnHGCoh/4i8HXnfZm9q9V7K04tNC1Mhar/o7tTSnAG+Pex+ttLti7eLLZW8=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2019 00:04:28.0766 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bbeebb34-6658-418d-1b70-08d6ec6e0a65
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4936
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_170432_517965_85A9F012 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.73.58 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Dragan Cvetic <dragan.cvetic@xilinx.com>,
 Derek Kiernan <derek.kiernan@xilinx.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the support for Linux Clock Control Framework (CCF).
Registers and enables clocks with the Clock Control
Framework (CCF), to prevent shared clocks from been
disabled.

Tested-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
---
 drivers/misc/xilinx_sdfec.c | 191 +++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 189 insertions(+), 2 deletions(-)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index 75cc980..4524677 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -23,11 +23,34 @@
 static int xsdfec_ndevs;
 
 /**
+ * struct xsdfec_clks - For managing SD-FEC clocks
+ * @core_clk: Main processing clock for core
+ * @axi_clk: AXI4-Lite memory-mapped clock
+ * @din_words_clk: DIN Words AXI4-Stream Slave clock
+ * @din_clk: DIN AXI4-Stream Slave clock
+ * @dout_clk: DOUT Words AXI4-Stream Slave clock
+ * @dout_words_clk: DOUT AXI4-Stream Slave clock
+ * @ctrl_clk: Control AXI4-Stream Slave clock
+ * @status_clk: Status AXI4-Stream Slave clock
+ */
+struct xsdfec_clks {
+	struct clk *core_clk;
+	struct clk *axi_clk;
+	struct clk *din_words_clk;
+	struct clk *din_clk;
+	struct clk *dout_clk;
+	struct clk *dout_words_clk;
+	struct clk *ctrl_clk;
+	struct clk *status_clk;
+};
+
+/**
  * struct xsdfec_dev - Driver data for SDFEC
  * @regs: device physical base address
  * @dev: pointer to device struct
  * @miscdev: Misc device handle
  * @error_data_lock: Error counter and states spinlock
+ * @clks: Clocks managed by the SDFEC driver
  *
  * This structure contains necessary state for SDFEC driver to operate
  */
@@ -37,12 +60,166 @@ struct xsdfec_dev {
 	struct miscdevice miscdev;
 	/* Spinlock to protect state_updated and stats_updated */
 	spinlock_t error_data_lock;
+	struct xsdfec_clks clks;
 };
 
 static const struct file_operations xsdfec_fops = {
 	.owner = THIS_MODULE,
 };
 
+static int xsdfec_clk_init(struct platform_device *pdev,
+			   struct xsdfec_clks *clks)
+{
+	int err;
+
+	clks->core_clk = devm_clk_get(&pdev->dev, "core_clk");
+	if (IS_ERR(clks->core_clk)) {
+		dev_err(&pdev->dev, "failed to get core_clk");
+		return PTR_ERR(clks->core_clk);
+	}
+
+	clks->axi_clk = devm_clk_get(&pdev->dev, "s_axi_aclk");
+	if (IS_ERR(clks->axi_clk)) {
+		dev_err(&pdev->dev, "failed to get axi_clk");
+		return PTR_ERR(clks->axi_clk);
+	}
+
+	clks->din_words_clk = devm_clk_get(&pdev->dev, "s_axis_din_words_aclk");
+	if (IS_ERR(clks->din_words_clk)) {
+		if (PTR_ERR(clks->din_words_clk) != -ENOENT) {
+			err = PTR_ERR(clks->din_words_clk);
+			return err;
+		}
+		clks->din_words_clk = NULL;
+	}
+
+	clks->din_clk = devm_clk_get(&pdev->dev, "s_axis_din_aclk");
+	if (IS_ERR(clks->din_clk)) {
+		if (PTR_ERR(clks->din_clk) != -ENOENT) {
+			err = PTR_ERR(clks->din_clk);
+			return err;
+		}
+		clks->din_clk = NULL;
+	}
+
+	clks->dout_clk = devm_clk_get(&pdev->dev, "m_axis_dout_aclk");
+	if (IS_ERR(clks->dout_clk)) {
+		if (PTR_ERR(clks->dout_clk) != -ENOENT) {
+			err = PTR_ERR(clks->dout_clk);
+			return err;
+		}
+		clks->dout_clk = NULL;
+	}
+
+	clks->dout_words_clk =
+		devm_clk_get(&pdev->dev, "s_axis_dout_words_aclk");
+	if (IS_ERR(clks->dout_words_clk)) {
+		if (PTR_ERR(clks->dout_words_clk) != -ENOENT) {
+			err = PTR_ERR(clks->dout_words_clk);
+			return err;
+		}
+		clks->dout_words_clk = NULL;
+	}
+
+	clks->ctrl_clk = devm_clk_get(&pdev->dev, "s_axis_ctrl_aclk");
+	if (IS_ERR(clks->ctrl_clk)) {
+		if (PTR_ERR(clks->ctrl_clk) != -ENOENT) {
+			err = PTR_ERR(clks->ctrl_clk);
+			return err;
+		}
+		clks->ctrl_clk = NULL;
+	}
+
+	clks->status_clk = devm_clk_get(&pdev->dev, "m_axis_status_aclk");
+	if (IS_ERR(clks->status_clk)) {
+		if (PTR_ERR(clks->status_clk) != -ENOENT) {
+			err = PTR_ERR(clks->status_clk);
+			return err;
+		}
+		clks->status_clk = NULL;
+	}
+
+	err = clk_prepare_enable(clks->core_clk);
+	if (err) {
+		dev_err(&pdev->dev, "failed to enable core_clk (%d)", err);
+		return err;
+	}
+
+	err = clk_prepare_enable(clks->axi_clk);
+	if (err) {
+		dev_err(&pdev->dev, "failed to enable axi_clk (%d)", err);
+		goto err_disable_core_clk;
+	}
+
+	err = clk_prepare_enable(clks->din_clk);
+	if (err) {
+		dev_err(&pdev->dev, "failed to enable din_clk (%d)", err);
+		goto err_disable_axi_clk;
+	}
+
+	err = clk_prepare_enable(clks->din_words_clk);
+	if (err) {
+		dev_err(&pdev->dev, "failed to enable din_words_clk (%d)", err);
+		goto err_disable_din_clk;
+	}
+
+	err = clk_prepare_enable(clks->dout_clk);
+	if (err) {
+		dev_err(&pdev->dev, "failed to enable dout_clk (%d)", err);
+		goto err_disable_din_words_clk;
+	}
+
+	err = clk_prepare_enable(clks->dout_words_clk);
+	if (err) {
+		dev_err(&pdev->dev, "failed to enable dout_words_clk (%d)",
+			err);
+		goto err_disable_dout_clk;
+	}
+
+	err = clk_prepare_enable(clks->ctrl_clk);
+	if (err) {
+		dev_err(&pdev->dev, "failed to enable ctrl_clk (%d)", err);
+		goto err_disable_dout_words_clk;
+	}
+
+	err = clk_prepare_enable(clks->status_clk);
+	if (err) {
+		dev_err(&pdev->dev, "failed to enable status_clk (%d)\n", err);
+		goto err_disable_ctrl_clk;
+	}
+
+	return err;
+
+err_disable_ctrl_clk:
+	clk_disable_unprepare(clks->ctrl_clk);
+err_disable_dout_words_clk:
+	clk_disable_unprepare(clks->dout_words_clk);
+err_disable_dout_clk:
+	clk_disable_unprepare(clks->dout_clk);
+err_disable_din_words_clk:
+	clk_disable_unprepare(clks->din_words_clk);
+err_disable_din_clk:
+	clk_disable_unprepare(clks->din_clk);
+err_disable_axi_clk:
+	clk_disable_unprepare(clks->axi_clk);
+err_disable_core_clk:
+	clk_disable_unprepare(clks->core_clk);
+
+	return err;
+}
+
+static void xsdfec_disable_all_clks(struct xsdfec_clks *clks)
+{
+	clk_disable_unprepare(clks->status_clk);
+	clk_disable_unprepare(clks->ctrl_clk);
+	clk_disable_unprepare(clks->dout_words_clk);
+	clk_disable_unprepare(clks->dout_clk);
+	clk_disable_unprepare(clks->din_words_clk);
+	clk_disable_unprepare(clks->din_clk);
+	clk_disable_unprepare(clks->core_clk);
+	clk_disable_unprepare(clks->axi_clk);
+}
+
 static int xsdfec_probe(struct platform_device *pdev)
 {
 	struct xsdfec_dev *xsdfec;
@@ -58,12 +235,16 @@ static int xsdfec_probe(struct platform_device *pdev)
 	xsdfec->dev = &pdev->dev;
 	spin_lock_init(&xsdfec->error_data_lock);
 
+	err = xsdfec_clk_init(pdev, &xsdfec->clks);
+	if (err)
+		return err;
+
 	dev = xsdfec->dev;
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	xsdfec->regs = devm_ioremap_resource(dev, res);
 	if (IS_ERR(xsdfec->regs)) {
 		err = PTR_ERR(xsdfec->regs);
-		return err;
+		goto err_xsdfec_dev;
 	}
 
 	/* Save driver private data */
@@ -77,11 +258,16 @@ static int xsdfec_probe(struct platform_device *pdev)
 	err = misc_register(&xsdfec->miscdev);
 	if (err) {
 		dev_err(dev, "error:%d. Unable to register device", err);
-		return err;
+		goto err_xsdfec_dev;
 	}
 
 	xsdfec_ndevs += 1;
 	return 0;
+
+	/* Failure cleanup */
+err_xsdfec_dev:
+	xsdfec_disable_all_clks(&xsdfec->clks);
+	return err;
 }
 
 static int xsdfec_remove(struct platform_device *pdev)
@@ -90,6 +276,7 @@ static int xsdfec_remove(struct platform_device *pdev)
 
 	xsdfec = platform_get_drvdata(pdev);
 	misc_deregister(&xsdfec->miscdev);
+	xsdfec_disable_all_clks(&xsdfec->clks);
 	xsdfec_ndevs -= 1;
 	return 0;
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
