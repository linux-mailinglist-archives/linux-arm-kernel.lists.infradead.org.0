Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1852A427
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 13:39:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N5tPSowbuddyurcrbP1B6mI6DnDDqi+oYXQKO6ZNua8=; b=ZxTF1hBKPZf/4J
	w/UKS4adsyyPY4vJmQKQNW/voIS8wQGBGhbVervHIWzyUvGIjYQHNN8uEikiu/2F0TxuL4WfBG+mq
	Kc0309I5D7298nVeL/2hcGzo8vjIWp+vWhAIHeCu3d44P1u5mCUs/uR8gdbdPL8nXUZTIsVt1Uppk
	+Y3bQykBNOjPioWJVoBm9/DHPVc7BGuBHacFn5ETtpg6q9TPwZWv1l58mV4swhBTWOXhPpGsX+Fua
	wbOFqQC/0oRW9vvo+cA0JQIg8eHXmQpRigPYOjIHsUtS/Djv+5/XalYSfi/WO3LrBDQzj3iaMmbtn
	XGuYSMplSR950O2oyyvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUV13-0002zT-SQ; Sat, 25 May 2019 11:39:09 +0000
Received: from mail-co1nam03on0603.outbound.protection.outlook.com
 ([2a01:111:f400:fe48::603]
 helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUUzh-0001U3-7a
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 11:37:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O5og5wBLnj/7kF4E+dV++4rg7fkEjhUFskxy45lwFDs=;
 b=1Lpx5D/HR9JX0pk8NfODT9qJKiKkacCL2F8s8cGix6gW8Cj7ypgU0F1J71fTuMcGzGvmcxoijF2vqZndzDYyRx1ObAI+AovsqAUEVjObaj0qNmmkv7q32gaMn04fjCMwYo0vTnTiP5iWGArn0+l0g4SXktROoqfHmXI6HgjWtts=
Received: from CY4PR02CA0024.namprd02.prod.outlook.com (2603:10b6:903:18::34)
 by BYAPR02MB4934.namprd02.prod.outlook.com (2603:10b6:a03:47::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1922.15; Sat, 25 May
 2019 11:37:42 +0000
Received: from SN1NAM02FT047.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::208) by CY4PR02CA0024.outlook.office365.com
 (2603:10b6:903:18::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.16 via Frontend
 Transport; Sat, 25 May 2019 11:37:42 +0000
Authentication-Results: spf=pass (sender IP is 149.199.80.198)
 smtp.mailfrom=xilinx.com; arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.80.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.80.198; helo=xir-pvapexch01.xlnx.xilinx.com;
Received: from xir-pvapexch01.xlnx.xilinx.com (149.199.80.198) by
 SN1NAM02FT047.mail.protection.outlook.com (10.152.72.201) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.1922.16 via Frontend Transport; Sat, 25 May 2019 11:37:41 +0000
Received: from xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1531.3; Sat, 25 May 2019 12:37:34 +0100
Received: from smtp.xilinx.com (172.21.105.198) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server id
 15.1.1531.3 via Frontend Transport; Sat, 25 May 2019 12:37:34 +0100
Received: from [149.199.110.15] (port=57194 helo=xirdraganc40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <dragan.cvetic@xilinx.com>)
 id 1hUUzW-00058U-KM; Sat, 25 May 2019 12:37:34 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH V4 03/12] misc: xilinx_sdfec: Add CCF support
Date: Sat, 25 May 2019 12:37:16 +0100
Message-ID: <1558784245-108751-4-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558784245-108751-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1558784245-108751-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(136003)(346002)(396003)(39860400002)(376002)(2980300002)(189003)(199004)(60926002)(70206006)(70586007)(71366001)(47776003)(107886003)(4326008)(7696005)(8936002)(356004)(36756003)(51416003)(76176011)(26826003)(5660300002)(305945005)(478600001)(2201001)(186003)(44832011)(50466002)(28376004)(26005)(9786002)(76130400001)(6666004)(8676002)(36906005)(126002)(476003)(2616005)(956004)(11346002)(7636002)(16586007)(336012)(246002)(2906002)(486006)(426003)(14444005)(446003)(106002)(50226002)(110136005)(54906003)(48376002)(316002)(102446001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4934; H:xir-pvapexch01.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 138162e6-9cb4-4471-ec4b-08d6e10565da
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(4709054)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328);
 SRVR:BYAPR02MB4934; 
X-MS-TrafficTypeDiagnostic: BYAPR02MB4934:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <BYAPR02MB493463D4DDAFB48AFAB5C2EDCB030@BYAPR02MB4934.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:421;
X-Forefront-PRVS: 0048BCF4DA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: g5OaieZsobdmAPd003vLnJBiXIoMtz0yboN2Qf3DAgoO9Q1CL1TC8cu4eo4mkXpQ+3rwlhqhaizoJ85qIjk+Fgfukg8GG8j+cjOkpHiJFPp26KUHKla4NnYViWT5SxguXxImXQCeiTPrRy0pe99h8MdPzkOjxgdbN7eRwnxusl4JA8gARgOvZdTcuRoEFhw6Y8SYj6yiyRxstLrOftmn9xh32lUIGG7cK5hefSwT33qlWfZpI16tZISbvUlV0hyTAzCK8l9xCTySBsazD18990hmgYVETBUuq3abJ9FBayv9KhYFuw7AmH6DQfGXZ1ijlCXE99uYAlQdczULWmsNjjhZnn7ZAQOa0kvY1QtUa3D/KXcvVcsZW1Nn1aK6G9dJY2CRLbl/P1/ZDI8bxmb2oFwsg1OGh2JI8OFscTPBf0E=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2019 11:37:41.5690 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 138162e6-9cb4-4471-ec4b-08d6e10565da
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch01.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4934
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_043745_276683_2F194421 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe48:0:0:0:603 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 drivers/misc/xilinx_sdfec.c | 185 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 185 insertions(+)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index c437f78..ff32d29 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -25,6 +25,28 @@
 static atomic_t xsdfec_ndevs = ATOMIC_INIT(0);
 
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
@@ -32,6 +54,7 @@ static atomic_t xsdfec_ndevs = ATOMIC_INIT(0);
  * @open_count: Count of char device being opened
  * @miscdev: Misc device handle
  * @irq_lock: Driver spinlock
+ * @clks: Clocks managed by the SDFEC driver
  *
  * This structure contains necessary state for SDFEC driver to operate
  */
@@ -43,12 +66,166 @@ struct xsdfec_dev {
 	struct miscdevice miscdev;
 	/* Spinlock to protect state_updated and stats_updated */
 	spinlock_t irq_lock;
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
 #define NAMEBUF_SIZE ((size_t)32)
 static int xsdfec_probe(struct platform_device *pdev)
 {
@@ -66,6 +243,10 @@ static int xsdfec_probe(struct platform_device *pdev)
 	xsdfec->config.fec_id = atomic_read(&xsdfec_ndevs);
 	spin_lock_init(&xsdfec->irq_lock);
 
+	err = xsdfec_clk_init(pdev, &xsdfec->clks);
+	if (err)
+		return err;
+
 	dev = xsdfec->dev;
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	xsdfec->regs = devm_ioremap_resource(dev, res);
@@ -96,6 +277,7 @@ static int xsdfec_probe(struct platform_device *pdev)
 
 	/* Failure cleanup */
 err_xsdfec_dev:
+	xsdfec_disable_all_clks(&xsdfec->clks);
 	return err;
 }
 
@@ -108,6 +290,9 @@ static int xsdfec_remove(struct platform_device *pdev)
 		return -ENODEV;
 
 	misc_deregister(&xsdfec->miscdev);
+
+	xsdfec_disable_all_clks(&xsdfec->clks);
+
 	atomic_dec(&xsdfec_ndevs);
 	return 0;
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
