Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3867A3D449
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 19:33:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hjaJYs7SC8pB4XbpxCheHr443xitOpGF2V/rhAcnyTA=; b=IuZL8Pdh6vFak8
	R/uu/N3iNqzqStmLTQVTF7tuug+JjXOcq4/171D6STf0ajTIgcNPA9fHv7v1udWjD+MC8/djEBBR7
	YeFLU4XPYe1KfGxmGLtfWnyMzc61f4XmV2qej8XNUwGtUpV1LUOHSPJ/e7L8sZoLH42pBYCmLXq3m
	Dtioa9oCI9RyGv0m3dWBt+c5hU7sjXTubEivgNEfYupoIy/KqSzN3gky5R+eKenHyig8NIUowbUdd
	xjUR7uwgSfbZyuHR3nBUzkXdWjRJdifgcbZVeAMkFRv2cMs5VXmq1hFDJu0ZYkdI6G3gjq0jc3+Sm
	L3jsk6fn+Jr7NBZhBipg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hakeT-0002Ha-7G; Tue, 11 Jun 2019 17:33:41 +0000
Received: from mail-co1nam03on062a.outbound.protection.outlook.com
 ([2a01:111:f400:fe48::62a]
 helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hakav-0006gS-2M
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 17:30:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eEVQZVkgsLWd0bboPceslpI62v02mXWwxXXR6OaW8F8=;
 b=HnGjw7IjkKHOEnj9VMF4H69mdihr9Bl4yhPIn1p9CJA4HJUdd7jOqmxRhC5rdpUDuxi+5nZLO1bi8R4mtxlzfi5V/vni6AmtX1Wl114xdKYb8FOdogIMNQSAFfQaMar+rl0t+vYdV3ch8YVMRsCNLBSYNs0D9NjV6eDCvwHo/Go=
Received: from BN6PR02CA0089.namprd02.prod.outlook.com (2603:10b6:405:60::30)
 by BYAPR02MB4935.namprd02.prod.outlook.com (2603:10b6:a03:47::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1987.10; Tue, 11 Jun
 2019 17:29:55 +0000
Received: from BL2NAM02FT035.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::200) by BN6PR02CA0089.outlook.office365.com
 (2603:10b6:405:60::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1965.12 via Frontend
 Transport; Tue, 11 Jun 2019 17:29:54 +0000
Authentication-Results: spf=pass (sender IP is 149.199.80.198)
 smtp.mailfrom=xilinx.com; arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.80.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.80.198; helo=xir-pvapexch02.xlnx.xilinx.com;
Received: from xir-pvapexch02.xlnx.xilinx.com (149.199.80.198) by
 BL2NAM02FT035.mail.protection.outlook.com (10.152.77.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.1965.12 via Frontend Transport; Tue, 11 Jun 2019 17:29:54 +0000
Received: from xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) by
 xir-pvapexch02.xlnx.xilinx.com (172.21.17.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1531.3; Tue, 11 Jun 2019 18:29:48 +0100
Received: from smtp.xilinx.com (172.21.105.198) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server id
 15.1.1531.3 via Frontend Transport; Tue, 11 Jun 2019 18:29:48 +0100
Received: from [149.199.110.15] (port=50346 helo=xirdraganc40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <dragan.cvetic@xilinx.com>)
 id 1hakai-0002MF-R4; Tue, 11 Jun 2019 18:29:48 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH V7 08/11] misc: xilinx_sdfec: Support poll file operation
Date: Tue, 11 Jun 2019 18:29:42 +0100
Message-ID: <1560274185-264438-9-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560274185-264438-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1560274185-264438-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(1496009)(136003)(346002)(376002)(39860400002)(396003)(2980300002)(189003)(199004)(8676002)(7636002)(305945005)(71366001)(110136005)(54906003)(16586007)(316002)(60926002)(26826003)(246002)(478600001)(36906005)(50226002)(356004)(8936002)(6666004)(47776003)(5660300002)(50466002)(48376002)(14444005)(476003)(426003)(70586007)(126002)(36756003)(70206006)(486006)(446003)(11346002)(956004)(2616005)(336012)(76130400001)(76176011)(7696005)(51416003)(26005)(9786002)(4326008)(44832011)(30864003)(186003)(2906002)(107886003)(2201001)(28376004)(106002)(102446001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4935; H:xir-pvapexch02.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e30c23fc-3f94-449c-f7ad-08d6ee926afa
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:BYAPR02MB4935; 
X-MS-TrafficTypeDiagnostic: BYAPR02MB4935:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <BYAPR02MB493576878FB6AF5314E3FC96CBED0@BYAPR02MB4935.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3173;
X-Forefront-PRVS: 006546F32A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: cx2WObKdlFIP2aODFdU5kld1cDxAjKDHg79EQ3/38YbyFmavEedFij3kcrcMX1x6iWwmhvqri/iv+dCx8RZM6+cdn9bWKy5o8WMzpjZyumwqRcPq7ptr0wkMOdgSDlqyJeQEW+63woOHMW469a7axfGkIh9nP7Er3C6osDYA5ZFVoMyEJxQNjHgOn+IJYygDvQpMrJ9MOK4dk/Uf9WiMrHxf9wtKZKQY5Eap/ORQmR7cApiczpqiyT3FX/quf2oRQwHjaXsIcI5zzeLffZWfTzHFs5YLBst3ANnSlm3km82dqMKeeJHf/PEtYx0qC3TD8wy57TX6xUHuHLxrjZ/DwkSv2Mr5v3z4rHbB0esaWB+Z0DDQy8D1z0mINAcG+0pPl0GjsmuDr8uLPNOBSNL8GOewCfumIpsXXIcqpAjAs/A=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2019 17:29:54.5350 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e30c23fc-3f94-449c-f7ad-08d6ee926afa
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4935
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_103001_149044_9666B50F 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe48:0:0:0:62a listed in]
 [list.dnswl.org]
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
 drivers/misc/xilinx_sdfec.c      | 231 +++++++++++++++++++++++++++++++++++++++
 include/uapi/misc/xilinx_sdfec.h |  13 +++
 2 files changed, 244 insertions(+)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index 83de77e..040dc59 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -193,7 +193,14 @@ struct xsdfec_clks {
  * @dev: pointer to device struct
  * @state: State of the SDFEC device
  * @config: Configuration of the SDFEC device
+ * @state_updated: indicates State updated by interrupt handler
+ * @stats_updated: indicates Stats updated by interrupt handler
+ * @isr_err_count: Count of ISR errors
+ * @cecc_count: Count of Correctable ECC errors (SBE)
+ * @uecc_count: Count of Uncorrectable ECC errors (MBE)
+ * @irq: IRQ number
  * @miscdev: Misc device handle
+ * @waitq: Driver wait queue
  * @error_data_lock: Error counter and states spinlock
  * @clks: Clocks managed by the SDFEC driver
  * @dev_name: Device name
@@ -206,9 +213,17 @@ struct xsdfec_dev {
 	struct device *dev;
 	enum xsdfec_state state;
 	struct xsdfec_config config;
+	bool state_updated;
+	bool stats_updated;
+	u32 isr_err_count;
+	u32 cecc_count;
+	u32 uecc_count;
+	int irq;
 	struct miscdevice miscdev;
+	wait_queue_head_t waitq;
 	/* Spinlock to protect state_updated and stats_updated */
 	spinlock_t error_data_lock;
+	unsigned long flags;
 	struct xsdfec_clks clks;
 	char dev_name[DEV_NAME_LEN];
 	int dev_id;
@@ -284,6 +299,90 @@ static int xsdfec_get_config(struct xsdfec_dev *xsdfec, void __user *arg)
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
@@ -760,6 +859,9 @@ static long xsdfec_dev_ioctl(struct file *fptr, unsigned int cmd,
 	case XSDFEC_GET_CONFIG:
 		rval = xsdfec_get_config(xsdfec, arg);
 		break;
+	case XSDFEC_SET_IRQ:
+		rval = xsdfec_set_irq(xsdfec, arg);
+		break;
 	case XSDFEC_SET_TURBO:
 		rval = xsdfec_set_turbo(xsdfec, arg);
 		break;
@@ -793,11 +895,36 @@ static long xsdfec_dev_compat_ioctl(struct file *file, unsigned int cmd,
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
@@ -883,6 +1010,91 @@ static int xsdfec_parse_of(struct xsdfec_dev *xsdfec)
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
@@ -1049,6 +1261,7 @@ static int xsdfec_probe(struct platform_device *pdev)
 	struct device *dev;
 	struct resource *res;
 	int err;
+	bool irq_enabled = true;
 
 	xsdfec = devm_kzalloc(&pdev->dev, sizeof(*xsdfec), GFP_KERNEL);
 	if (!xsdfec)
@@ -1069,6 +1282,12 @@ static int xsdfec_probe(struct platform_device *pdev)
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
@@ -1078,6 +1297,18 @@ static int xsdfec_probe(struct platform_device *pdev)
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
index 163dff6..59ee10c 100644
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
