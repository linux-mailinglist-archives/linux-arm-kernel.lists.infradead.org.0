Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7C9777B2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 10:37:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rrYglMNl5LRenxQSg+7HIBrMs4+bw98F0RLL1ZTAU3M=; b=gxyNFTFnG7n/PE
	6TFKC00Glw4lp9Hl0ewBpWx0I0BJmEX8rCLs//7MnoKaPIlmZDS3OdzhEBsNHnrQNMAdogmscDW50
	n4y1voSsEX59Z8/RVoXlQ8UwAjWg2IJb6Q/wsb0GBM4gxm2pQCBDBsvJkPL7PCkL77ksKqFK0VAwV
	IFhuinEB5qn7Qz/Of7axlfz6j15YsYQzAQyE4G+O+FrZHuPgxpumpQCvWd+YkMkW5Am5hDbIhEyEL
	3JUSQ6lAiIE0lkm72VrpxQfjMjoD6Y1qreH8hDnbF5UyoC+ZxFi8W413TzrjUJyLgshQfuBBtBDYq
	z8AkN+/Uxe4mkCTaob4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrID3-0000KZ-Ko; Sat, 27 Jul 2019 08:37:45 +0000
Received: from mail-eopbgr780045.outbound.protection.outlook.com
 ([40.107.78.45] helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrI9Y-0005Zh-ER
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 08:34:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TtaP+1iuEUkal49Cpa8OmB9Y0X+Ue73DVnsBD798rwqdFPmW4qizU57JpyERU7kwkEeVKI/lG+6MV/qA//35lxdsfRaUPMMCGaNiD73a4Pef9BKVRTpGJYteAuFcc3b6AJKyHn9k7JBnBZ2xFqV1lZqGSmFvi9dU8ALPs3AJTVv/9iLFC6Nmu1Qp9hydpPUlGnDZ3KgfjbHjXJ7DRR5JOqLmMvpg5CRUJUUWQOjPX4XAWjy7NRbOHY9HwoVtHizDwwoTy8HUQDsrf2E527OAiKi1+n4GX/U7cVJxyTmoQQnN7m9Ps8NWhc0yoHpWtCrS15R3ZH9I9C3HcrzcAhkAmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ho1i+9j2MMwAsnQdpF/CNkQkoXPu5Y17mYrGyYOfb2I=;
 b=Hq87J7asf0vP6PTdvbpXZBim7QrUsigGe4AnoxevOZ4Sn+K+0EM1p4UnH2sX1W7CvH5IhwJJBWinYgrOn2Rf1YoHwDAM+YO4z+G9TmwQkQkvUV8pPeutV7JUhr8COSLrzV60tQgZ53xWJXvrmph7qKx90MbnnIRDXAu+BUalzWGzLyvk2nIHtMT1IR+HoB8KiGUASPyk0KzxqGWMl+SeRVSVPZWsdu1hhUkD2qYf9HAfBkzjQK2RSYxVbMZP7trjbX4E27jhBHsqFmUnO5ZHYSbG72P44K7DSR/OS4hBhLfQwhi3HU9ukVoBWB08EuxQ5/YHcFTj7AQgjl542NA+3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass (sender ip is
 149.199.80.198) smtp.rcpttodomain=arndb.de
 smtp.mailfrom=xilinx.com;dmarc=bestguesspass action=none
 header.from=xilinx.com;dkim=none (message not signed);arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ho1i+9j2MMwAsnQdpF/CNkQkoXPu5Y17mYrGyYOfb2I=;
 b=US6s1l3/4Mb28pXdrTHGkaP2sxjFBY/NAQ5efUITeW4XO446Bh8yegwY5p/mx2fmq8BzxIg+TUAoZTzar0vafRo6bzjmCazBTr3p1NC6O4JN4v/U5/H+A5xKrov0ehMpcEB/kxC19alVHkrqo1zwSyQ39b1Ww25hD8MFH87yNr0=
Received: from DM6PR02CA0051.namprd02.prod.outlook.com (20.179.53.220) by
 BYAPR02MB4759.namprd02.prod.outlook.com (52.135.232.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Sat, 27 Jul 2019 08:34:06 +0000
Received: from BL2NAM02FT025.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::202) by DM6PR02CA0051.outlook.office365.com
 (2603:10b6:5:177::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2115.10 via Frontend
 Transport; Sat, 27 Jul 2019 08:34:06 +0000
Authentication-Results: spf=pass (sender IP is 149.199.80.198)
 smtp.mailfrom=xilinx.com; arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.80.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.80.198; helo=xir-pvapexch01.xlnx.xilinx.com;
Received: from xir-pvapexch01.xlnx.xilinx.com (149.199.80.198) by
 BL2NAM02FT025.mail.protection.outlook.com (10.152.77.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2115.10 via Frontend Transport; Sat, 27 Jul 2019 08:34:06 +0000
Received: from xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1531.3; Sat, 27 Jul 2019 09:34:00 +0100
Received: from smtp.xilinx.com (172.21.105.197) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server id
 15.1.1531.3 via Frontend Transport; Sat, 27 Jul 2019 09:33:59 +0100
Received: from [149.199.110.15] (port=40508 helo=xirdraganc40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <dragan.cvetic@xilinx.com>)
 id 1hrI9P-00027X-Vm; Sat, 27 Jul 2019 09:33:59 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH V9 6/8] misc: xilinx_sdfec: Add stats & status ioctls
Date: Sat, 27 Jul 2019 09:33:56 +0100
Message-ID: <1564216438-322406-7-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564216438-322406-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1564216438-322406-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:IE; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(39860400002)(396003)(376002)(2980300002)(189003)(199004)(7636002)(71366001)(47776003)(60926002)(9786002)(36756003)(26005)(186003)(51416003)(7696005)(76176011)(246002)(2201001)(8676002)(305945005)(8936002)(50226002)(76130400001)(44832011)(70586007)(28376004)(316002)(336012)(6666004)(356004)(48376002)(14444005)(486006)(446003)(11346002)(476003)(126002)(106002)(26826003)(70206006)(50466002)(478600001)(956004)(107886003)(2616005)(2906002)(426003)(54906003)(36906005)(4326008)(5660300002)(16586007)(110136005)(102446001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4759; H:xir-pvapexch01.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 43e65fff-fcea-4fc8-61f6-08d7126d3003
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:BYAPR02MB4759; 
X-MS-TrafficTypeDiagnostic: BYAPR02MB4759:
X-Microsoft-Antispam-PRVS: <BYAPR02MB4759B2E0F5A1FF47570E1A45CBC30@BYAPR02MB4759.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-Forefront-PRVS: 01110342A5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: dfrRU8TLMRKW7iQQasPjdUCiuaqgAyR39jIWA6mSPJP3zlaR8XB/NZMTgBYYbkgIlyDOg0vW/Z4anZLwKQ8e1aXkeujc4THvwTyqb48O8+hgY2h1cCyp+kVGGgortdS6wwe9t05yvNo1uX0o5LqpYNIoq11QKfB596uA3kCUVtYuHwFGg5pYTMHP5YtrVdiGOmZALO11cwgr17VuTn4yfQRTfxywpKnUBQk93/r82o4TDDD/2xyZu3qx9vxuDKI9m9yRPUv7pS8I4IFQhWvD5SlP6Q5I5WNgeZYWSvtgugpF26CXDl4TDazGmzmmNIxCaX70XRMWB//qBcBou/RoXaUCAv2oGS+vi+wS0Z+3dxTcOSkvYARpBRRm35Iei3EDfw8sctyzJPlYoI/MhfW0IpYB5teo47qpsECdkHNNAsU=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2019 08:34:06.0846 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 43e65fff-fcea-4fc8-61f6-08d7126d3003
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch01.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4759
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_013408_582451_63EB8D4A 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.78.45 listed in list.dnswl.org]
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
Cc: Dragan Cvetic <dragan.cvetic@xilinx.com>,
 Derek Kiernan <derek.kiernan@xilinx.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SD-FEC statistic data are:
- count of data interface errors (isr_err_count)
- count of Correctable ECC errors (cecc_count)
- count of Uncorrectable ECC errors (uecc_count)

Add support:
1. clear stats ioctl callback which clears collected
statistic data,
2. get stats ioctl callback which reads a collected
statistic data,
3. set default configuration ioctl callback,
4. start ioctl callback enables SD-FEC HW,
5. stop ioctl callback disables SD-FEC HW.

In a failed state driver enables the following ioctls:
- get status
- get statistics
- clear stats
- set default SD-FEC device configuration

Tested-by: Santhosh Dyavanapally <SDYAVANA@xilinx.com>
Tested by: Punnaiah Choudary Kalluri <punnaia@xilinx.com>
Tested-by: Derek Kiernan <derek.kiernan@xilinx.com>
Tested-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
---
 drivers/misc/xilinx_sdfec.c      | 125 +++++++++++++++++++++++++++++++++++++++
 include/uapi/misc/xilinx_sdfec.h |  75 +++++++++++++++++++++++
 2 files changed, 200 insertions(+)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index 61775c5..45f127a 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -206,6 +206,7 @@ struct xsdfec_clks {
  * @irq: IRQ number
  * @state_updated: indicates State updated by interrupt handler
  * @stats_updated: indicates Stats updated by interrupt handler
+ * @intr_enabled: indicates IRQ enabled
  *
  * This structure contains necessary state for SDFEC driver to operate
  */
@@ -228,6 +229,7 @@ struct xsdfec_dev {
 	int irq;
 	bool state_updated;
 	bool stats_updated;
+	bool intr_enabled;
 };
 
 static inline void xsdfec_regwrite(struct xsdfec_dev *xsdfec, u32 addr,
@@ -289,6 +291,25 @@ static void update_config_from_hw(struct xsdfec_dev *xsdfec)
 		xsdfec->state = XSDFEC_STOPPED;
 }
 
+static int xsdfec_get_status(struct xsdfec_dev *xsdfec, void __user *arg)
+{
+	struct xsdfec_status status;
+	int err;
+
+	spin_lock_irqsave(&xsdfec->error_data_lock, xsdfec->flags);
+	status.state = xsdfec->state;
+	xsdfec->state_updated = false;
+	spin_unlock_irqrestore(&xsdfec->error_data_lock, xsdfec->flags);
+	status.activity = (xsdfec_regread(xsdfec, XSDFEC_ACTIVE_ADDR) &
+			   XSDFEC_IS_ACTIVITY_SET);
+
+	err = copy_to_user(arg, &status, sizeof(status));
+	if (err)
+		err = -EFAULT;
+
+	return err;
+}
+
 static int xsdfec_get_config(struct xsdfec_dev *xsdfec, void __user *arg)
 {
 	int err;
@@ -840,6 +861,82 @@ static int xsdfec_dev_release(struct inode *iptr, struct file *fptr)
 	return 0;
 }
 
+static int xsdfec_start(struct xsdfec_dev *xsdfec)
+{
+	u32 regread;
+
+	regread = xsdfec_regread(xsdfec, XSDFEC_FEC_CODE_ADDR);
+	regread &= 0x1;
+	if (regread != xsdfec->config.code) {
+		dev_dbg(xsdfec->dev,
+			"%s SDFEC HW code does not match driver code, reg %d, code %d",
+			__func__, regread, xsdfec->config.code);
+		return -EINVAL;
+	}
+
+	/* Set AXIS enable */
+	xsdfec_regwrite(xsdfec, XSDFEC_AXIS_ENABLE_ADDR,
+			XSDFEC_AXIS_ENABLE_MASK);
+	/* Done */
+	xsdfec->state = XSDFEC_STARTED;
+	return 0;
+}
+
+static int xsdfec_stop(struct xsdfec_dev *xsdfec)
+{
+	u32 regread;
+
+	if (xsdfec->state != XSDFEC_STARTED)
+		dev_dbg(xsdfec->dev, "Device not started correctly");
+	/* Disable AXIS_ENABLE Input interfaces only */
+	regread = xsdfec_regread(xsdfec, XSDFEC_AXIS_ENABLE_ADDR);
+	regread &= (~XSDFEC_AXIS_IN_ENABLE_MASK);
+	xsdfec_regwrite(xsdfec, XSDFEC_AXIS_ENABLE_ADDR, regread);
+	/* Stop */
+	xsdfec->state = XSDFEC_STOPPED;
+	return 0;
+}
+
+static int xsdfec_clear_stats(struct xsdfec_dev *xsdfec)
+{
+	spin_lock_irqsave(&xsdfec->error_data_lock, xsdfec->flags);
+	xsdfec->isr_err_count = 0;
+	xsdfec->uecc_count = 0;
+	xsdfec->cecc_count = 0;
+	spin_unlock_irqrestore(&xsdfec->error_data_lock, xsdfec->flags);
+
+	return 0;
+}
+
+static int xsdfec_get_stats(struct xsdfec_dev *xsdfec, void __user *arg)
+{
+	int err;
+	struct xsdfec_stats user_stats;
+
+	spin_lock_irqsave(&xsdfec->error_data_lock, xsdfec->flags);
+	user_stats.isr_err_count = xsdfec->isr_err_count;
+	user_stats.cecc_count = xsdfec->cecc_count;
+	user_stats.uecc_count = xsdfec->uecc_count;
+	xsdfec->stats_updated = false;
+	spin_unlock_irqrestore(&xsdfec->error_data_lock, xsdfec->flags);
+
+	err = copy_to_user(arg, &user_stats, sizeof(user_stats));
+	if (err)
+		err = -EFAULT;
+
+	return err;
+}
+
+static int xsdfec_set_default_config(struct xsdfec_dev *xsdfec)
+{
+	/* Ensure registers are aligned with core configuration */
+	xsdfec_regwrite(xsdfec, XSDFEC_FEC_CODE_ADDR, xsdfec->config.code);
+	xsdfec_cfg_axi_streams(xsdfec);
+	update_config_from_hw(xsdfec);
+
+	return 0;
+}
+
 static long xsdfec_dev_ioctl(struct file *fptr, unsigned int cmd,
 			     unsigned long data)
 {
@@ -849,6 +946,16 @@ static long xsdfec_dev_ioctl(struct file *fptr, unsigned int cmd,
 
 	xsdfec = container_of(fptr->private_data, struct xsdfec_dev, miscdev);
 
+	/* In failed state allow only reset and get status IOCTLs */
+	if (xsdfec->state == XSDFEC_NEEDS_RESET &&
+	    (cmd != XSDFEC_SET_DEFAULT_CONFIG && cmd != XSDFEC_GET_STATUS &&
+	     cmd != XSDFEC_GET_STATS && cmd != XSDFEC_CLEAR_STATS)) {
+		return -EPERM;
+	}
+
+	if (_IOC_TYPE(cmd) != XSDFEC_MAGIC)
+		return -ENOTTY;
+
 	/* check if ioctl argument is present and valid */
 	if (_IOC_DIR(cmd) != _IOC_NONE) {
 		arg = (void __user *)data;
@@ -857,9 +964,27 @@ static long xsdfec_dev_ioctl(struct file *fptr, unsigned int cmd,
 	}
 
 	switch (cmd) {
+	case XSDFEC_START_DEV:
+		rval = xsdfec_start(xsdfec);
+		break;
+	case XSDFEC_STOP_DEV:
+		rval = xsdfec_stop(xsdfec);
+		break;
+	case XSDFEC_CLEAR_STATS:
+		rval = xsdfec_clear_stats(xsdfec);
+		break;
+	case XSDFEC_GET_STATS:
+		rval = xsdfec_get_stats(xsdfec, arg);
+		break;
+	case XSDFEC_GET_STATUS:
+		rval = xsdfec_get_status(xsdfec, arg);
+		break;
 	case XSDFEC_GET_CONFIG:
 		rval = xsdfec_get_config(xsdfec, arg);
 		break;
+	case XSDFEC_SET_DEFAULT_CONFIG:
+		rval = xsdfec_set_default_config(xsdfec);
+		break;
 	case XSDFEC_SET_IRQ:
 		rval = xsdfec_set_irq(xsdfec, arg);
 		break;
diff --git a/include/uapi/misc/xilinx_sdfec.h b/include/uapi/misc/xilinx_sdfec.h
index 85ee288..ee1a42ae 100644
--- a/include/uapi/misc/xilinx_sdfec.h
+++ b/include/uapi/misc/xilinx_sdfec.h
@@ -234,6 +234,21 @@ struct xsdfec_config {
 };
 
 /**
+ * struct xsdfec_stats - Stats retrived by ioctl XSDFEC_GET_STATS. Used
+ *			 to buffer atomic_t variables from struct
+ *			 xsdfec_dev. Counts are accumulated until
+ *			 the user clears them.
+ * @isr_err_count: Count of ISR errors
+ * @cecc_count: Count of Correctable ECC errors (SBE)
+ * @uecc_count: Count of Uncorrectable ECC errors (MBE)
+ */
+struct xsdfec_stats {
+	__u32 isr_err_count;
+	__u32 cecc_count;
+	__u32 uecc_count;
+};
+
+/**
  * struct xsdfec_ldpc_param_table_sizes - Used to store sizes of SD-FEC table
  *					  entries for an individual LPDC code
  *					  parameter.
@@ -252,6 +267,32 @@ struct xsdfec_ldpc_param_table_sizes {
  */
 #define XSDFEC_MAGIC 'f'
 /**
+ * DOC: XSDFEC_START_DEV
+ *
+ * @Description
+ *
+ * ioctl to start SD-FEC core
+ *
+ * This fails if the XSDFEC_SET_ORDER ioctl has not been previously called
+ */
+#define XSDFEC_START_DEV _IO(XSDFEC_MAGIC, 0)
+/**
+ * DOC: XSDFEC_STOP_DEV
+ *
+ * @Description
+ *
+ * ioctl to stop the SD-FEC core
+ */
+#define XSDFEC_STOP_DEV _IO(XSDFEC_MAGIC, 1)
+/**
+ * DOC: XSDFEC_GET_STATUS
+ *
+ * @Description
+ *
+ * ioctl that returns status of SD-FEC core
+ */
+#define XSDFEC_GET_STATUS _IOR(XSDFEC_MAGIC, 2, struct xsdfec_status)
+/**
  * DOC: XSDFEC_SET_IRQ
  * @Parameters
  *
@@ -370,4 +411,38 @@ struct xsdfec_ldpc_param_table_sizes {
  * ioctl that determines if SD-FEC is processing data
  */
 #define XSDFEC_IS_ACTIVE _IOR(XSDFEC_MAGIC, 10, bool)
+/**
+ * DOC: XSDFEC_CLEAR_STATS
+ *
+ * @Description
+ *
+ * ioctl that clears error stats collected during interrupts
+ */
+#define XSDFEC_CLEAR_STATS _IO(XSDFEC_MAGIC, 11)
+/**
+ * DOC: XSDFEC_GET_STATS
+ * @Parameters
+ *
+ * @struct xsdfec_stats *
+ *	Pointer to the &struct xsdfec_stats that will contain the updated stats
+ *	values
+ *
+ * @Description
+ *
+ * ioctl that returns SD-FEC core stats
+ *
+ * This can only be used when the driver is in the XSDFEC_STOPPED state
+ */
+#define XSDFEC_GET_STATS _IOR(XSDFEC_MAGIC, 12, struct xsdfec_stats)
+/**
+ * DOC: XSDFEC_SET_DEFAULT_CONFIG
+ *
+ * @Description
+ *
+ * ioctl that returns SD-FEC core to default config, use after a reset
+ *
+ * This can only be used when the driver is in the XSDFEC_STOPPED state
+ */
+#define XSDFEC_SET_DEFAULT_CONFIG _IO(XSDFEC_MAGIC, 13)
+
 #endif /* __XILINX_SDFEC_H__ */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
