Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6FF777AE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 10:36:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0hXyE8yxPqISlXh2SGalPWF6037R82jlsO94JlUOCjo=; b=Gwah8mchKvgQzI
	l1migmJO08/yuRf5w+Wp6f6zQKaOQUcEdf82LQrJb99ufSP9F8fXThUMvPKdTtCPWWbhKZX0MeJ6S
	Gulg/nNkERLyzt1ytTREdSRWrt7oxcPhVLY/uny5QWth+OmBLQjaOj2g+dQ7vXyquAzlxvnGGthEV
	cofShXJS15jhkKXZpSdXVOiMqfVYnFXMI1KBIfT8PhnScoTuIfZ8y5wK/Rl53+yadvSabWLOqtrau
	/89jEXAD9v2lTvePVsO4b+8OJZWLCVsY6Cx++Tsx9gngYjImNmOZU4McunHHW/gfiomiJCJMfqxhB
	Lc/gxeS1xmk1j4RjhmiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrIC5-00084h-Fb; Sat, 27 Jul 2019 08:36:45 +0000
Received: from mail-eopbgr820048.outbound.protection.outlook.com
 ([40.107.82.48] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrI9W-0005YE-CA
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 08:34:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OGJTPZtlyEfOJ1/H1ClN/kWflWhJTkbW4ki/uwR6ylM1te4znBLMGhPC2939rS5uS+G9wS3MDfykqnT18qSqtYR8kdFklGl0aPiYHRAtNWc9jxnoT766CdSwfEyA5uf5DgCmNODFMT+3ED7CYHnEm3OijnChSdqJCWC9fQFQjWH6AK5X8+dCflzshkHGAscyjOJ7ryWF9fK+I6cig9CsZ1lYJZEHruMHODMN1hULFmHAfK9xEyycnmQCBy6Xt8N67mYaRColrnD2OHcaur/gw4ggC5oX4ICTXKDDOljq93CsEMranNHaqEDlAWqBmqBWbwYvByRcIi4FNUXoqL4UuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JKTlFiMl+pU5eQfkdlrqMU7836HTwZMk5jl5TEPPw4o=;
 b=dUJSj5vAFN8HriT3tnBmPIS1aBpNLXbdx39nAbCClSO7FZILVeI7+g+ZnHCE53PrFPaTUtCEmG36K4f9jRx+4wnZ0QT/i62EAEvuDgBOq9wOaYOh3MR1XPLBqkdB7z5QkV+phJpjohy9RXPPEe9g4LSPqIJgNIDqithzZDRteQ0kWu5MbQsEEXq4RjligoJvmGVgSmOd8kvRzNB1BPthkHBnBLoXbDWP9FSFW7WBZtzoEFTE/lNEa48S+RGRKcbIDicd+0lW9jQvyAdPPjjS1r59D/NNnLz7zW3xekFYDKZS6DJCHJDuK0AhqWAJCiFktxZ/CKsMKcRZ4ztJ4l0ePg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass (sender ip is
 149.199.80.198) smtp.rcpttodomain=arndb.de
 smtp.mailfrom=xilinx.com;dmarc=bestguesspass action=none
 header.from=xilinx.com;dkim=none (message not signed);arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JKTlFiMl+pU5eQfkdlrqMU7836HTwZMk5jl5TEPPw4o=;
 b=pLsX8vnDl9SbQFE2+lPjn2dy+Jmagw6i/pEJrqMJUNVrFqajLZVM13L7MMp9KdcZKugkJGAO7ySG2WUouuoXpRBmE3HVy9HLiK3POJvG0DT8mLGKrNL5XQWSA3fbjfdI3283+KPVkLlMUQTWbYx2XBfD0LSBQbe91shgIxr4eYw=
Received: from BN6PR02CA0097.namprd02.prod.outlook.com (2603:10b6:405:60::38)
 by BL0PR02MB4754.namprd02.prod.outlook.com (2603:10b6:208:5d::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2115.14; Sat, 27 Jul
 2019 08:34:03 +0000
Received: from BL2NAM02FT059.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::205) by BN6PR02CA0097.outlook.office365.com
 (2603:10b6:405:60::38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2115.13 via Frontend
 Transport; Sat, 27 Jul 2019 08:34:03 +0000
Authentication-Results: spf=pass (sender IP is 149.199.80.198)
 smtp.mailfrom=xilinx.com; arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.80.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.80.198; helo=xir-pvapexch02.xlnx.xilinx.com;
Received: from xir-pvapexch02.xlnx.xilinx.com (149.199.80.198) by
 BL2NAM02FT059.mail.protection.outlook.com (10.152.76.247) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2115.10 via Frontend Transport; Sat, 27 Jul 2019 08:34:03 +0000
Received: from xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) by
 xir-pvapexch02.xlnx.xilinx.com (172.21.17.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1531.3; Sat, 27 Jul 2019 09:33:59 +0100
Received: from smtp.xilinx.com (172.21.105.197) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server id
 15.1.1531.3 via Frontend Transport; Sat, 27 Jul 2019 09:33:59 +0100
Received: from [149.199.110.15] (port=40508 helo=xirdraganc40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <dragan.cvetic@xilinx.com>)
 id 1hrI9P-00027X-V3; Sat, 27 Jul 2019 09:33:59 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH V9 5/8] misc: xilinx_sdfec: Support poll file operation
Date: Sat, 27 Jul 2019 09:33:55 +0100
Message-ID: <1564216438-322406-6-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564216438-322406-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1564216438-322406-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:IE; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(39860400002)(396003)(346002)(2980300002)(199004)(189003)(305945005)(7636002)(76176011)(36756003)(60926002)(246002)(478600001)(26826003)(356004)(50466002)(107886003)(8936002)(50226002)(48376002)(71366001)(106002)(2201001)(446003)(16586007)(2906002)(426003)(956004)(186003)(54906003)(70586007)(36906005)(4326008)(9786002)(110136005)(30864003)(76130400001)(7696005)(51416003)(5660300002)(8676002)(14444005)(126002)(28376004)(47776003)(486006)(336012)(26005)(44832011)(70206006)(11346002)(2616005)(316002)(476003)(6666004)(102446001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB4754; H:xir-pvapexch02.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7f319f39-185d-43c0-b25d-08d7126d2e30
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:BL0PR02MB4754; 
X-MS-TrafficTypeDiagnostic: BL0PR02MB4754:
X-Microsoft-Antispam-PRVS: <BL0PR02MB4754CADEA4C13A604C3690A3CBC30@BL0PR02MB4754.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3173;
X-Forefront-PRVS: 01110342A5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 7Ud6tu3UvlxKKEWIogCpDMdhg9IJmUSXzKeTk0jvcGRnFUEiodvlOfxc18MMJ77oN0aUS0hNIIwaIJi+vsYJjtrlN3rvXlk35yfhGTrlvSQ5R+0obkKKpNh3zXOZLA1pTq/frKRkWEJM1BjaTiO+4U6LUceJjArI3JuRbHpAFX1Qc2t+eABbCTG6U34TdUt9sid7i5lLxp493pUp9p+96x7PmjhjRi6v8176J8DC5iYbdQfgPynAP9ARLyHqBLPcPAz5O+2iVtkR/IjGrlAMUCf3ulnu0sDqGb1lsTyxxdu8IEIwdpLqBY3QcAYvapTCFR0hK36yHXjcPdbWYF+vzljZq+R7nCn1zLqEjHh3QUTz8EltjsDpgRDsBUw1IQ5DtOkqAP68ma2MYThjCWSUJoH2+SwyLyHk+gN+YR5AXmo=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2019 08:34:03.0241 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f319f39-185d-43c0-b25d-08d7126d2e30
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB4754
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_013406_455300_32C97214 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.48 listed in list.dnswl.org]
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

Support monitoring and detecting the SD-FEC error events
through IRQ and poll file operation.

The SD-FEC device can detect one-error or multi-error events.
An error triggers an interrupt which creates and run the ONE_SHOT
IRQ thread.
The ONE_SHOT IRQ thread detects type of error and pass that
information to the poll function.
The file_operation callback poll(), collects the events and
updates the statistics accordingly.
The function poll blocks() on waiting queue which can be
unblocked by ONE_SHOT IRQ handling thread.

Support SD-FEC interrupt set ioctl callback.
The SD-FEC can detect two type of errors: coding errors (ECC) and
a data interface errors (TLAST).
The errors are  events which can trigger an IRQ if enabled.
The driver can monitor and detect these errors through IRQ.
Also the driver updates the statistical data.

Tested-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
---
 drivers/misc/xilinx_sdfec.c      | 240 ++++++++++++++++++++++++++++++++++++++-
 include/uapi/misc/xilinx_sdfec.h |  13 +++
 2 files changed, 249 insertions(+), 4 deletions(-)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index 579f236..61775c5 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -191,27 +191,43 @@ struct xsdfec_clks {
  * struct xsdfec_dev - Driver data for SDFEC
  * @miscdev: Misc device handle
  * @clks: Clocks managed by the SDFEC driver
- * @regs: device physical base address
- * @dev: pointer to device struct
+ * @waitq: Driver wait queue
  * @config: Configuration of the SDFEC device
  * @dev_name: Device name
+ * @flags: spinlock flags
+ * @regs: device physical base address
+ * @dev: pointer to device struct
  * @state: State of the SDFEC device
  * @error_data_lock: Error counter and states spinlock
  * @dev_id: Device ID
+ * @isr_err_count: Count of ISR errors
+ * @cecc_count: Count of Correctable ECC errors (SBE)
+ * @uecc_count: Count of Uncorrectable ECC errors (MBE)
+ * @irq: IRQ number
+ * @state_updated: indicates State updated by interrupt handler
+ * @stats_updated: indicates Stats updated by interrupt handler
  *
  * This structure contains necessary state for SDFEC driver to operate
  */
 struct xsdfec_dev {
 	struct miscdevice miscdev;
 	struct xsdfec_clks clks;
-	void __iomem *regs;
-	struct device *dev;
+	wait_queue_head_t waitq;
 	struct xsdfec_config config;
 	char dev_name[DEV_NAME_LEN];
+	unsigned long flags;
+	void __iomem *regs;
+	struct device *dev;
 	enum xsdfec_state state;
 	/* Spinlock to protect state_updated and stats_updated */
 	spinlock_t error_data_lock;
 	int dev_id;
+	u32 isr_err_count;
+	u32 cecc_count;
+	u32 uecc_count;
+	int irq;
+	bool state_updated;
+	bool stats_updated;
 };
 
 static inline void xsdfec_regwrite(struct xsdfec_dev *xsdfec, u32 addr,
@@ -284,6 +300,90 @@ static int xsdfec_get_config(struct xsdfec_dev *xsdfec, void __user *arg)
 	return err;
 }
 
+static int xsdfec_isr_enable(struct xsdfec_dev *xsdfec, bool enable)
+{
+	u32 mask_read;
+
+	if (enable) {
+		/* Enable */
+		xsdfec_regwrite(xsdfec, XSDFEC_IER_ADDR, XSDFEC_ISR_MASK);
+		mask_read = xsdfec_regread(xsdfec, XSDFEC_IMR_ADDR);
+		if (mask_read & XSDFEC_ISR_MASK) {
+			dev_dbg(xsdfec->dev,
+				"SDFEC enabling irq with IER failed");
+			return -EIO;
+		}
+	} else {
+		/* Disable */
+		xsdfec_regwrite(xsdfec, XSDFEC_IDR_ADDR, XSDFEC_ISR_MASK);
+		mask_read = xsdfec_regread(xsdfec, XSDFEC_IMR_ADDR);
+		if ((mask_read & XSDFEC_ISR_MASK) != XSDFEC_ISR_MASK) {
+			dev_dbg(xsdfec->dev,
+				"SDFEC disabling irq with IDR failed");
+			return -EIO;
+		}
+	}
+	return 0;
+}
+
+static int xsdfec_ecc_isr_enable(struct xsdfec_dev *xsdfec, bool enable)
+{
+	u32 mask_read;
+
+	if (enable) {
+		/* Enable */
+		xsdfec_regwrite(xsdfec, XSDFEC_ECC_IER_ADDR,
+				XSDFEC_ALL_ECC_ISR_MASK);
+		mask_read = xsdfec_regread(xsdfec, XSDFEC_ECC_IMR_ADDR);
+		if (mask_read & XSDFEC_ALL_ECC_ISR_MASK) {
+			dev_dbg(xsdfec->dev,
+				"SDFEC enabling ECC irq with ECC IER failed");
+			return -EIO;
+		}
+	} else {
+		/* Disable */
+		xsdfec_regwrite(xsdfec, XSDFEC_ECC_IDR_ADDR,
+				XSDFEC_ALL_ECC_ISR_MASK);
+		mask_read = xsdfec_regread(xsdfec, XSDFEC_ECC_IMR_ADDR);
+		if (!(((mask_read & XSDFEC_ALL_ECC_ISR_MASK) ==
+		       XSDFEC_ECC_ISR_MASK) ||
+		      ((mask_read & XSDFEC_ALL_ECC_ISR_MASK) ==
+		       XSDFEC_PL_INIT_ECC_ISR_MASK))) {
+			dev_dbg(xsdfec->dev,
+				"SDFEC disable ECC irq with ECC IDR failed");
+			return -EIO;
+		}
+	}
+	return 0;
+}
+
+static int xsdfec_set_irq(struct xsdfec_dev *xsdfec, void __user *arg)
+{
+	struct xsdfec_irq irq;
+	int err;
+	int isr_err;
+	int ecc_err;
+
+	err = copy_from_user(&irq, arg, sizeof(irq));
+	if (err)
+		return -EFAULT;
+
+	/* Setup tlast related IRQ */
+	isr_err = xsdfec_isr_enable(xsdfec, irq.enable_isr);
+	if (!isr_err)
+		xsdfec->config.irq.enable_isr = irq.enable_isr;
+
+	/* Setup ECC related IRQ */
+	ecc_err = xsdfec_ecc_isr_enable(xsdfec, irq.enable_ecc_isr);
+	if (!ecc_err)
+		xsdfec->config.irq.enable_ecc_isr = irq.enable_ecc_isr;
+
+	if (isr_err < 0 || ecc_err < 0)
+		err = -EIO;
+
+	return err;
+}
+
 static int xsdfec_set_turbo(struct xsdfec_dev *xsdfec, void __user *arg)
 {
 	struct xsdfec_turbo turbo;
@@ -760,6 +860,9 @@ static long xsdfec_dev_ioctl(struct file *fptr, unsigned int cmd,
 	case XSDFEC_GET_CONFIG:
 		rval = xsdfec_get_config(xsdfec, arg);
 		break;
+	case XSDFEC_SET_IRQ:
+		rval = xsdfec_set_irq(xsdfec, arg);
+		break;
 	case XSDFEC_SET_TURBO:
 		rval = xsdfec_set_turbo(xsdfec, arg);
 		break;
@@ -793,11 +896,36 @@ static long xsdfec_dev_compat_ioctl(struct file *file, unsigned int cmd,
 }
 #endif
 
+static unsigned int xsdfec_poll(struct file *file, poll_table *wait)
+{
+	unsigned int mask = 0;
+	struct xsdfec_dev *xsdfec;
+
+	xsdfec = container_of(file->private_data, struct xsdfec_dev, miscdev);
+
+	if (!xsdfec)
+		return POLLNVAL | POLLHUP;
+
+	poll_wait(file, &xsdfec->waitq, wait);
+
+	/* XSDFEC ISR detected an error */
+	spin_lock_irqsave(&xsdfec->error_data_lock, xsdfec->flags);
+	if (xsdfec->state_updated)
+		mask |= POLLIN | POLLPRI;
+
+	if (xsdfec->stats_updated)
+		mask |= POLLIN | POLLRDNORM;
+	spin_unlock_irqrestore(&xsdfec->error_data_lock, xsdfec->flags);
+
+	return mask;
+}
+
 static const struct file_operations xsdfec_fops = {
 	.owner = THIS_MODULE,
 	.open = xsdfec_dev_open,
 	.release = xsdfec_dev_release,
 	.unlocked_ioctl = xsdfec_dev_ioctl,
+	.poll = xsdfec_poll,
 #ifdef CONFIG_COMPAT
 	.compat_ioctl = xsdfec_dev_compat_ioctl,
 #endif
@@ -883,6 +1011,91 @@ static int xsdfec_parse_of(struct xsdfec_dev *xsdfec)
 	return 0;
 }
 
+static irqreturn_t xsdfec_irq_thread(int irq, void *dev_id)
+{
+	struct xsdfec_dev *xsdfec = dev_id;
+	irqreturn_t ret = IRQ_HANDLED;
+	u32 ecc_err;
+	u32 isr_err;
+	u32 uecc_count;
+	u32 cecc_count;
+	u32 isr_err_count;
+	u32 aecc_count;
+	u32 tmp;
+
+	WARN_ON(xsdfec->irq != irq);
+
+	/* Mask Interrupts */
+	xsdfec_isr_enable(xsdfec, false);
+	xsdfec_ecc_isr_enable(xsdfec, false);
+	/* Read ISR */
+	ecc_err = xsdfec_regread(xsdfec, XSDFEC_ECC_ISR_ADDR);
+	isr_err = xsdfec_regread(xsdfec, XSDFEC_ISR_ADDR);
+	/* Clear the interrupts */
+	xsdfec_regwrite(xsdfec, XSDFEC_ECC_ISR_ADDR, ecc_err);
+	xsdfec_regwrite(xsdfec, XSDFEC_ISR_ADDR, isr_err);
+
+	tmp = ecc_err & XSDFEC_ALL_ECC_ISR_MBE_MASK;
+	/* Count uncorrectable 2-bit errors */
+	uecc_count = hweight32(tmp);
+	/* Count all ECC errors */
+	aecc_count = hweight32(ecc_err);
+	/* Number of correctable 1-bit ECC error */
+	cecc_count = aecc_count - 2 * uecc_count;
+	/* Count ISR errors */
+	isr_err_count = hweight32(isr_err);
+	dev_dbg(xsdfec->dev, "tmp=%x, uecc=%x, aecc=%x, cecc=%x, isr=%x", tmp,
+		uecc_count, aecc_count, cecc_count, isr_err_count);
+	dev_dbg(xsdfec->dev, "uecc=%x, cecc=%x, isr=%x", xsdfec->uecc_count,
+		xsdfec->cecc_count, xsdfec->isr_err_count);
+
+	spin_lock_irqsave(&xsdfec->error_data_lock, xsdfec->flags);
+	/* Add new errors to a 2-bits counter */
+	if (uecc_count)
+		xsdfec->uecc_count += uecc_count;
+	/* Add new errors to a 1-bits counter */
+	if (cecc_count)
+		xsdfec->cecc_count += cecc_count;
+	/* Add new errors to a ISR counter */
+	if (isr_err_count)
+		xsdfec->isr_err_count += isr_err_count;
+
+	/* Update state/stats flag */
+	if (uecc_count) {
+		if (ecc_err & XSDFEC_ECC_ISR_MBE_MASK)
+			xsdfec->state = XSDFEC_NEEDS_RESET;
+		else if (ecc_err & XSDFEC_PL_INIT_ECC_ISR_MBE_MASK)
+			xsdfec->state = XSDFEC_PL_RECONFIGURE;
+		xsdfec->stats_updated = true;
+		xsdfec->state_updated = true;
+	}
+
+	if (cecc_count)
+		xsdfec->stats_updated = true;
+
+	if (isr_err_count) {
+		xsdfec->state = XSDFEC_NEEDS_RESET;
+		xsdfec->stats_updated = true;
+		xsdfec->state_updated = true;
+	}
+
+	spin_unlock_irqrestore(&xsdfec->error_data_lock, xsdfec->flags);
+	dev_dbg(xsdfec->dev, "state=%x, stats=%x", xsdfec->state_updated,
+		xsdfec->stats_updated);
+
+	/* Enable another polling */
+	if (xsdfec->state_updated || xsdfec->stats_updated)
+		wake_up_interruptible(&xsdfec->waitq);
+	else
+		ret = IRQ_NONE;
+
+	/* Unmask Interrupts */
+	xsdfec_isr_enable(xsdfec, true);
+	xsdfec_ecc_isr_enable(xsdfec, true);
+
+	return ret;
+}
+
 static int xsdfec_clk_init(struct platform_device *pdev,
 			   struct xsdfec_clks *clks)
 {
@@ -1049,6 +1262,7 @@ static int xsdfec_probe(struct platform_device *pdev)
 	struct device *dev;
 	struct resource *res;
 	int err;
+	bool irq_enabled = true;
 
 	xsdfec = devm_kzalloc(&pdev->dev, sizeof(*xsdfec), GFP_KERNEL);
 	if (!xsdfec)
@@ -1069,6 +1283,12 @@ static int xsdfec_probe(struct platform_device *pdev)
 		goto err_xsdfec_dev;
 	}
 
+	xsdfec->irq = platform_get_irq(pdev, 0);
+	if (xsdfec->irq < 0) {
+		dev_dbg(dev, "platform_get_irq failed");
+		irq_enabled = false;
+	}
+
 	err = xsdfec_parse_of(xsdfec);
 	if (err < 0)
 		goto err_xsdfec_dev;
@@ -1078,6 +1298,18 @@ static int xsdfec_probe(struct platform_device *pdev)
 	/* Save driver private data */
 	platform_set_drvdata(pdev, xsdfec);
 
+	if (irq_enabled) {
+		init_waitqueue_head(&xsdfec->waitq);
+		/* Register IRQ thread */
+		err = devm_request_threaded_irq(dev, xsdfec->irq, NULL,
+						xsdfec_irq_thread, IRQF_ONESHOT,
+						"xilinx-sdfec16", xsdfec);
+		if (err < 0) {
+			dev_err(dev, "unable to request IRQ%d", xsdfec->irq);
+			goto err_xsdfec_dev;
+		}
+	}
+
 	mutex_lock(&dev_idr_lock);
 	err = idr_alloc(&dev_idr, xsdfec->dev_name, 0, 0, GFP_KERNEL);
 	mutex_unlock(&dev_idr_lock);
diff --git a/include/uapi/misc/xilinx_sdfec.h b/include/uapi/misc/xilinx_sdfec.h
index b8897ce..85ee288 100644
--- a/include/uapi/misc/xilinx_sdfec.h
+++ b/include/uapi/misc/xilinx_sdfec.h
@@ -252,6 +252,19 @@ struct xsdfec_ldpc_param_table_sizes {
  */
 #define XSDFEC_MAGIC 'f'
 /**
+ * DOC: XSDFEC_SET_IRQ
+ * @Parameters
+ *
+ * @struct xsdfec_irq *
+ *	Pointer to the &struct xsdfec_irq that contains the interrupt settings
+ *	for the SD-FEC core
+ *
+ * @Description
+ *
+ * ioctl to enable or disable irq
+ */
+#define XSDFEC_SET_IRQ _IOW(XSDFEC_MAGIC, 3, struct xsdfec_irq)
+/**
  * DOC: XSDFEC_SET_TURBO
  * @Parameters
  *
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
