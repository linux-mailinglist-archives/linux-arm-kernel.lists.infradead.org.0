Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76770B49D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 00:07:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3QwXAWpJmGNCgs+71obfNVOxGeuify7zB9rmKIQ3hug=; b=ZYrXJT1AiVrPsb
	722P76aUuJ5GJfhULNL7ZTZKm6wq9BZz+V0qiredIrxcpijc+xL0G5RScwHzp22CCXpexCJkqq6zc
	Rx3F7ub2df7k2BXiSOatIaS+LMUvGL0VEtSupRVRzrxvNVsA35NwUB22ZpIMDA9QY4AZCqIyoOSxV
	Fri04cl4+U9X+wN2MxYxSFcnenSDA/Dp3JzbRqXlHyQYraLLAvIEdzuzu5gacVfYTEyavLqhcjpo2
	tHj5/LUAaaTatfY5n3w/bkE4m38dLscD6mi6RVFECYSu6s/Cc2EO/pztdqXzrIHlefcHkoLXjSJCr
	guobFPGirISLNAUXd9bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKVTd-0002nu-MC; Sat, 27 Apr 2019 22:07:21 +0000
Received: from mail-eopbgr750059.outbound.protection.outlook.com
 ([40.107.75.59] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKVRp-0000bY-Nr
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Apr 2019 22:05:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iMixFoXJMNCP9IzAi8ZmKLlVaE7wJ6/t7vJZ5qa+gxI=;
 b=o5Tv9yn5FVHhZuYJ5BKeGrr1M1b313dfsqlMH4spswHXgywpKUy5yEI1IneoMdx0cAMwE9EjDR2LdaZrFqM0BNNsxW2kBeMQbVoc5WFLi7QqvQ7MmVviBmVZdBcXP3KOXXIkACOZxTIyb56DH9uSj+21og130XwshI1e78Aa6Xc=
Received: from SN4PR0201CA0031.namprd02.prod.outlook.com
 (2603:10b6:803:2e::17) by CY1PR02MB2012.namprd02.prod.outlook.com
 (2a01:111:e400:c5ab::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1835.12; Sat, 27 Apr
 2019 22:05:24 +0000
Received: from CY1NAM02FT061.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::200) by SN4PR0201CA0031.outlook.office365.com
 (2603:10b6:803:2e::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1835.12 via Frontend
 Transport; Sat, 27 Apr 2019 22:05:24 +0000
Authentication-Results: spf=pass (sender IP is 149.199.80.198)
 smtp.mailfrom=xilinx.com; arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.80.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.80.198; helo=xir-pvapexch02.xlnx.xilinx.com;
Received: from xir-pvapexch02.xlnx.xilinx.com (149.199.80.198) by
 CY1NAM02FT061.mail.protection.outlook.com (10.152.75.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.1835.13 via Frontend Transport; Sat, 27 Apr 2019 22:05:23 +0000
Received: from xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) by
 xir-pvapexch02.xlnx.xilinx.com (172.21.17.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1531.3; Sat, 27 Apr 2019 23:05:12 +0100
Received: from smtp.xilinx.com (172.21.105.197) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server id
 15.1.1531.3 via Frontend Transport; Sat, 27 Apr 2019 23:05:12 +0100
Received: from [149.199.110.15] (port=52636 helo=xirdraganc40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <dragan.cvetic@xilinx.com>)
 id 1hKVRY-0002Gu-8A; Sat, 27 Apr 2019 23:05:12 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH V3 10/12] misc: xilinx_sdfec: Add stats & status ioctls
Date: Sat, 27 Apr 2019 23:05:04 +0100
Message-ID: <1556402706-176271-11-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(376002)(136003)(346002)(2980300002)(189003)(199004)(60926002)(47776003)(186003)(16586007)(956004)(106002)(246002)(26005)(336012)(14444005)(2201001)(70206006)(36906005)(356004)(6666004)(316002)(126002)(71366001)(11346002)(4326008)(70586007)(50466002)(2616005)(36756003)(446003)(426003)(5660300002)(476003)(28376004)(76130400001)(48376002)(93146003)(486006)(44832011)(107886003)(26826003)(9786002)(478600001)(110136005)(305945005)(51416003)(54906003)(7696005)(2906002)(76176011)(8676002)(8936002)(50226002)(7636002)(102446001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR02MB2012; H:xir-pvapexch02.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4cb3184e-961e-444e-9f82-08d6cb5c72a1
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328);
 SRVR:CY1PR02MB2012; 
X-MS-TrafficTypeDiagnostic: CY1PR02MB2012:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <CY1PR02MB20125A696CD6D1CDFB1436D0CB3F0@CY1PR02MB2012.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-Forefront-PRVS: 0020414413
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: eVYux5kegjtIBCYpjpS/lSmcxB8SGoKBaXkj/PdFMW50EziwHV1stC1+HJ+t/sX2b+vaGDppty3beDLcymBNSc8BuqzxTP/u402dollCVAZ+Y95RPtLBzW9u/ntHuIgzc/MaHWQhmExHyZ2u0C3a3loWQ3QhkWac4tFGDSPs/raz1lI00D9eDUzUH6aQnjpxXvOGQQmyVE2jFQj1Q8sdQIOmRa3TDwcgsX5agiktU/XwEMi1VNOoXDH82s+V8YQw4O6WSjsUZ0ndbSACtezNvBArwkOhMZfHvDpg5dsEydwNVgU/O0u4ktJIYKIsVVXchMsySdo3W0GU0vzff7/4zmqQCLsjwxFA4G61tA0OZjeMMNULQNF5YZt1zosiRoWOvU/wrdIslX7DUDXA7Bnl+IcdRjGxbW6xX57lhXhCzmc=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2019 22:05:23.4083 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cb3184e-961e-444e-9f82-08d6cb5c72a1
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR02MB2012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_150529_800581_1E3A89E2 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.59 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 drivers/misc/xilinx_sdfec.c      | 123 +++++++++++++++++++++++++++++++++++++++
 include/uapi/misc/xilinx_sdfec.h |  75 ++++++++++++++++++++++++
 2 files changed, 198 insertions(+)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index 32b2e2d..317c5c4 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -203,6 +203,7 @@ struct xsdfec_clks {
  * @dev: pointer to device struct
  * @state: State of the SDFEC device
  * @config: Configuration of the SDFEC device
+ * @intr_enabled: indicates IRQ enabled
  * @state_updated: indicates State updated by interrupt handler
  * @stats_updated: indicates Stats updated by interrupt handler
  * @isr_err_count: Count of ISR errors
@@ -222,6 +223,7 @@ struct xsdfec_dev {
 	struct device *dev;
 	enum xsdfec_state state;
 	struct xsdfec_config config;
+	bool intr_enabled;
 	bool state_updated;
 	bool stats_updated;
 	atomic_t isr_err_count;
@@ -320,6 +322,26 @@ static int xsdfec_dev_release(struct inode *iptr, struct file *fptr)
 	return 0;
 }
 
+static int xsdfec_get_status(struct xsdfec_dev *xsdfec, void __user *arg)
+{
+	struct xsdfec_status status;
+	int err;
+
+	status.fec_id = xsdfec->config.fec_id;
+	spin_lock_irq(&xsdfec->irq_lock);
+	status.state = xsdfec->state;
+	xsdfec->state_updated = false;
+	spin_unlock_irq(&xsdfec->irq_lock);
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
@@ -896,6 +918,80 @@ static int xsdfec_cfg_axi_streams(struct xsdfec_dev *xsdfec)
 	return 0;
 }
 
+static int xsdfec_start(struct xsdfec_dev *xsdfec)
+{
+	u32 regread;
+
+	regread = xsdfec_regread(xsdfec, XSDFEC_FEC_CODE_ADDR);
+	regread &= 0x1;
+	if (regread != xsdfec->config.code) {
+		dev_err(xsdfec->dev,
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
+		dev_err(xsdfec->dev, "Device not started correctly");
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
+	atomic_set(&xsdfec->isr_err_count, 0);
+	atomic_set(&xsdfec->uecc_count, 0);
+	atomic_set(&xsdfec->cecc_count, 0);
+
+	return 0;
+}
+
+static int xsdfec_get_stats(struct xsdfec_dev *xsdfec, void __user *arg)
+{
+	int err;
+	struct xsdfec_stats user_stats;
+
+	spin_lock_irq(&xsdfec->irq_lock);
+	user_stats.isr_err_count = atomic_read(&xsdfec->isr_err_count);
+	user_stats.cecc_count = atomic_read(&xsdfec->cecc_count);
+	user_stats.uecc_count = atomic_read(&xsdfec->uecc_count);
+	xsdfec->stats_updated = false;
+	spin_unlock_irq(&xsdfec->irq_lock);
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
@@ -907,6 +1003,15 @@ static long xsdfec_dev_ioctl(struct file *fptr, unsigned int cmd,
 	if (!xsdfec)
 		return rval;
 
+	/* In failed state allow only reset and get status IOCTLs */
+	if (xsdfec->state == XSDFEC_NEEDS_RESET &&
+	    (cmd != XSDFEC_SET_DEFAULT_CONFIG && cmd != XSDFEC_GET_STATUS &&
+	     cmd != XSDFEC_GET_STATS && cmd != XSDFEC_CLEAR_STATS)) {
+		dev_err(xsdfec->dev, "SDFEC%d in failed state. Reset Required",
+			xsdfec->config.fec_id);
+		return -EPERM;
+	}
+
 	if (_IOC_TYPE(cmd) != XSDFEC_MAGIC)
 		return -ENOTTY;
 
@@ -926,9 +1031,27 @@ static long xsdfec_dev_ioctl(struct file *fptr, unsigned int cmd,
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
index 120f7a3..f406c39 100644
--- a/include/uapi/misc/xilinx_sdfec.h
+++ b/include/uapi/misc/xilinx_sdfec.h
@@ -240,6 +240,21 @@ struct xsdfec_config {
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
@@ -279,6 +294,32 @@ xsdfec_calculate_shared_ldpc_table_entry_size(struct xsdfec_ldpc_params *ldpc,
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
@@ -397,4 +438,38 @@ xsdfec_calculate_shared_ldpc_table_entry_size(struct xsdfec_ldpc_params *ldpc,
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
