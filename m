Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1ABB49E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 00:07:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hHJuxR2PCk5c4HeUFX12ICjxnxR5j3KbJXWZEWvxsT8=; b=Rkxui7MeOVdBIX
	bVzhw+BRH72XgGYvef4cRX/8NCKTPGhfC6JKD5ksrts/bufxKpzc7s7r+MLUno44GX9ee0FwcWoGe
	WfiO0ib3E0exy4Zb4CRSzs9ax/fsvAtbsV2kIKxa98hyzJDdfdHvDtzdmHjYMAiBdVpuTwHrvs+m9
	JtR44ZefyYIRI8IN3oQVX9Bu14oh7lFbh6uoj05S+IsiHHLLMB1VEiY6/OZVMmotTQ80eoBgaDFtc
	hh1kGyKdPPsZnQHWpvgwFjnxyXjQmr2dRYdUGrnmMx4sxqUdFZJ62uDc/KoKBJcMHb87h6sgBlnON
	gv4twXtv5EObmtOzBKSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKVTk-000336-Gx; Sat, 27 Apr 2019 22:07:28 +0000
Received: from mail-eopbgr780083.outbound.protection.outlook.com
 ([40.107.78.83] helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKVRo-0000at-Kh
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Apr 2019 22:05:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0NCvMaM8J4zEBOM/3ReFpwxTlq/xAEeSmJekKF80wos=;
 b=cXteFdFzVIu1K1wVvc7G2dXXBVEQyFNlqK3iT1Jkz0GqRWcdUhSX8nMuZN5Jf+kvol6Zk+vyIlG9hlxUhmJ2STLMRJ2EIay7wBGcqOm5r0h387w3ztDJCH3J4cyt03NZsgNXCfLgWDHw5U8/Nhn9BOeIv04QG7wYtW2a0AMcE1U=
Received: from SN4PR0201CA0031.namprd02.prod.outlook.com
 (2603:10b6:803:2e::17) by BY5PR02MB6018.namprd02.prod.outlook.com
 (2603:10b6:a03:1b5::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1835.14; Sat, 27 Apr
 2019 22:05:26 +0000
Received: from CY1NAM02FT061.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::200) by SN4PR0201CA0031.outlook.office365.com
 (2603:10b6:803:2e::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1835.12 via Frontend
 Transport; Sat, 27 Apr 2019 22:05:26 +0000
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
 15.20.1835.13 via Frontend Transport; Sat, 27 Apr 2019 22:05:25 +0000
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
 id 1hKVRY-0002Gu-7F; Sat, 27 Apr 2019 23:05:12 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH V3 09/12] misc: xilinx_sdfec: Support poll file operation
Date: Sat, 27 Apr 2019 23:05:03 +0100
Message-ID: <1556402706-176271-10-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(136003)(396003)(376002)(39860400002)(346002)(2980300002)(189003)(199004)(76176011)(2201001)(9786002)(26005)(50226002)(2906002)(26826003)(478600001)(8676002)(5660300002)(107886003)(51416003)(316002)(16586007)(36906005)(106002)(8936002)(4326008)(36756003)(110136005)(70206006)(54906003)(7696005)(70586007)(356004)(6666004)(50466002)(30864003)(48376002)(486006)(305945005)(426003)(71366001)(47776003)(126002)(476003)(7636002)(336012)(2616005)(93146003)(446003)(11346002)(956004)(60926002)(186003)(76130400001)(44832011)(246002)(14444005)(28376004)(102446001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR02MB6018; H:xir-pvapexch02.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5fa0a8ae-38b1-4c7f-c356-08d6cb5c73e4
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328);
 SRVR:BY5PR02MB6018; 
X-MS-TrafficTypeDiagnostic: BY5PR02MB6018:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <BY5PR02MB6018EB0AE47E0EB409166C88CB3F0@BY5PR02MB6018.namprd02.prod.outlook.com>
X-Forefront-PRVS: 0020414413
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: VFGRNAv9jdmXJ0g9OB/U1lUrofLAQNhzLBgsv9RASf2//CTy2B3cJtT3pJRwxUrcgL6t/M0tiqP0WmPtL6znbrfXHjkwwOwbPHxqg2SoaxCu3x4NJKmc0l9zWScapTJSvxKv6wcYuYNpnQgVX71UIo/5DsHjgPdc6swXc61MZFFl7tgxjReFXu6AASO2FWHzakbZG1hklqH/GQ5QSjKXX1co1M4m59GtanKPvZBEk7AiBbVigX6yRFIy+5s6UKBs0H1my7DAGe+Ceo3szj2uV59auKqbVwmdnJ3+U+0pqBNCxau9EOC7Vy13llnLVAjJ3gNoT+hW3aaWrpWnmxpQ4csL/KJUzM95D0kXp6Bz3PDeXLkIreQhOYD0IwG334Y49QeBipQYQyglpBnSA511vsoXOy1Uw2hWPiYQyLMzQrM=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2019 22:05:25.5270 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fa0a8ae-38b1-4c7f-c356-08d6cb5c73e4
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_150528_934835_9346ED3E 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.78.83 listed in list.dnswl.org]
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
 drivers/misc/xilinx_sdfec.c      | 283 +++++++++++++++++++++++++++++++++++++++
 include/uapi/misc/xilinx_sdfec.h |  13 ++
 2 files changed, 296 insertions(+)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index 560a2ed..32b2e2d 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -203,8 +203,15 @@ struct xsdfec_clks {
  * @dev: pointer to device struct
  * @state: State of the SDFEC device
  * @config: Configuration of the SDFEC device
+ * @state_updated: indicates State updated by interrupt handler
+ * @stats_updated: indicates Stats updated by interrupt handler
+ * @isr_err_count: Count of ISR errors
+ * @cecc_count: Count of Correctable ECC errors (SBE)
+ * @uecc_count: Count of Uncorrectable ECC errors (MBE)
  * @open_count: Count of char device being opened
+ * @irq: IRQ number
  * @xsdfec_cdev: Character device handle
+ * @waitq: Driver wait queue
  * @irq_lock: Driver spinlock
  * @clks: Clocks managed by the SDFEC driver
  *
@@ -215,8 +222,15 @@ struct xsdfec_dev {
 	struct device *dev;
 	enum xsdfec_state state;
 	struct xsdfec_config config;
+	bool state_updated;
+	bool stats_updated;
+	atomic_t isr_err_count;
+	atomic_t cecc_count;
+	atomic_t uecc_count;
 	atomic_t open_count;
+	int irq;
 	struct cdev xsdfec_cdev;
+	wait_queue_head_t waitq;
 	/* Spinlock to protect state_updated and stats_updated */
 	spinlock_t irq_lock;
 	struct xsdfec_clks clks;
@@ -317,6 +331,90 @@ static int xsdfec_get_config(struct xsdfec_dev *xsdfec, void __user *arg)
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
+			dev_err(xsdfec->dev,
+				"SDFEC enabling irq with IER failed");
+			return -EIO;
+		}
+	} else {
+		/* Disable */
+		xsdfec_regwrite(xsdfec, XSDFEC_IDR_ADDR, XSDFEC_ISR_MASK);
+		mask_read = xsdfec_regread(xsdfec, XSDFEC_IMR_ADDR);
+		if ((mask_read & XSDFEC_ISR_MASK) != XSDFEC_ISR_MASK) {
+			dev_err(xsdfec->dev,
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
+			dev_err(xsdfec->dev,
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
+			dev_err(xsdfec->dev,
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
@@ -831,6 +929,9 @@ static long xsdfec_dev_ioctl(struct file *fptr, unsigned int cmd,
 	case XSDFEC_GET_CONFIG:
 		rval = xsdfec_get_config(xsdfec, arg);
 		break;
+	case XSDFEC_SET_IRQ:
+		rval = xsdfec_set_irq(xsdfec, arg);
+		break;
 	case XSDFEC_SET_TURBO:
 		rval = xsdfec_set_turbo(xsdfec, arg);
 		break;
@@ -865,11 +966,34 @@ static long xsdfec_dev_compat_ioctl(struct file *file, unsigned int cmd,
 }
 #endif
 
+static unsigned int xsdfec_poll(struct file *file, poll_table *wait)
+{
+	unsigned int mask = 0;
+	struct xsdfec_dev *xsdfec = file->private_data;
+
+	if (!xsdfec)
+		return POLLNVAL | POLLHUP;
+
+	poll_wait(file, &xsdfec->waitq, wait);
+
+	/* XSDFEC ISR detected an error */
+	spin_lock_irq(&xsdfec->irq_lock);
+	if (xsdfec->state_updated)
+		mask |= POLLIN | POLLPRI;
+
+	if (xsdfec->stats_updated)
+		mask |= POLLIN | POLLRDNORM;
+	spin_unlock_irq(&xsdfec->irq_lock);
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
@@ -973,6 +1097,146 @@ static int xsdfec_parse_of(struct xsdfec_dev *xsdfec)
 	return 0;
 }
 
+static void xsdfec_count_and_clear_ecc_multi_errors(struct xsdfec_dev *xsdfec,
+						    u32 uecc)
+{
+	u32 uecc_event;
+
+	/* Update ECC ISR error counts */
+	atomic_add(hweight32(uecc), &xsdfec->uecc_count);
+	xsdfec->stats_updated = true;
+
+	/* Clear ECC errors */
+	xsdfec_regwrite(xsdfec, XSDFEC_ECC_ISR_ADDR,
+			XSDFEC_ALL_ECC_ISR_MBE_MASK);
+	/* Clear ECC events */
+	if (uecc & XSDFEC_ECC_ISR_MBE_MASK) {
+		uecc_event = uecc >> XSDFEC_ECC_ISR_MBE_TO_EVENT_SHIFT;
+		xsdfec_regwrite(xsdfec, XSDFEC_ECC_ISR_ADDR, uecc_event);
+	} else if (uecc & XSDFEC_PL_INIT_ECC_ISR_MBE_MASK) {
+		uecc_event = uecc >> XSDFEC_PL_INIT_ECC_ISR_MBE_TO_EVENT_SHIFT;
+		xsdfec_regwrite(xsdfec, XSDFEC_ECC_ISR_ADDR, uecc_event);
+	}
+}
+
+static void xsdfec_count_and_clear_ecc_single_errors(struct xsdfec_dev *xsdfec,
+						     u32 cecc, u32 sbe_mask)
+{
+	/* Update ECC ISR error counts */
+	atomic_add(hweight32(cecc), &xsdfec->cecc_count);
+	xsdfec->stats_updated = true;
+
+	/* Clear ECC errors */
+	xsdfec_regwrite(xsdfec, XSDFEC_ECC_ISR_ADDR, sbe_mask);
+}
+
+static void xsdfec_count_and_clear_isr_errors(struct xsdfec_dev *xsdfec,
+					      u32 isr_err)
+{
+	/* Update ISR error counts */
+	atomic_add(hweight32(isr_err), &xsdfec->isr_err_count);
+	xsdfec->stats_updated = true;
+
+	/* Clear ISR error status */
+	xsdfec_regwrite(xsdfec, XSDFEC_ISR_ADDR, XSDFEC_ISR_MASK);
+}
+
+static void xsdfec_update_state_for_isr_err(struct xsdfec_dev *xsdfec)
+{
+	xsdfec->state = XSDFEC_NEEDS_RESET;
+	xsdfec->state_updated = true;
+}
+
+static void xsdfec_update_state_for_ecc_err(struct xsdfec_dev *xsdfec,
+					    u32 ecc_err)
+{
+	if (ecc_err & XSDFEC_ECC_ISR_MBE_MASK)
+		xsdfec->state = XSDFEC_NEEDS_RESET;
+	else if (ecc_err & XSDFEC_PL_INIT_ECC_ISR_MBE_MASK)
+		xsdfec->state = XSDFEC_PL_RECONFIGURE;
+
+	xsdfec->state_updated = true;
+}
+
+static int xsdfec_get_sbe_mask(u32 ecc_err)
+{
+	u32 sbe_mask = XSDFEC_ALL_ECC_ISR_SBE_MASK;
+
+	if (ecc_err & XSDFEC_ECC_ISR_MBE_MASK) {
+		sbe_mask = (XSDFEC_ECC_ISR_MBE_MASK - ecc_err) >>
+			   XSDFEC_ECC_ISR_MBE_TO_EVENT_SHIFT;
+	} else if (ecc_err & XSDFEC_PL_INIT_ECC_ISR_MBE_MASK)
+		sbe_mask = (XSDFEC_PL_INIT_ECC_ISR_MBE_MASK - ecc_err) >>
+			   XSDFEC_PL_INIT_ECC_ISR_MBE_TO_EVENT_SHIFT;
+
+	return sbe_mask;
+}
+
+static irqreturn_t xsdfec_irq_thread(int irq, void *dev_id)
+{
+	struct xsdfec_dev *xsdfec = dev_id;
+	irqreturn_t ret = IRQ_HANDLED;
+	u32 ecc_err;
+	u32 isr_err;
+	u32 err_value;
+	u32 sbe_mask;
+
+	WARN_ON(xsdfec->irq != irq);
+
+	/* Mask Interrupts */
+	xsdfec_isr_enable(xsdfec, false);
+	xsdfec_ecc_isr_enable(xsdfec, false);
+
+	/* Read Interrupt Status Registers */
+	ecc_err = xsdfec_regread(xsdfec, XSDFEC_ECC_ISR_ADDR);
+	isr_err = xsdfec_regread(xsdfec, XSDFEC_ISR_ADDR);
+
+	spin_lock(&xsdfec->irq_lock);
+
+	err_value = ecc_err & XSDFEC_ALL_ECC_ISR_MBE_MASK;
+	if (err_value) {
+		dev_err(xsdfec->dev, "Multi-bit error on xsdfec%d",
+			xsdfec->config.fec_id);
+		/* Count and clear multi-bit errors and associated events */
+		xsdfec_count_and_clear_ecc_multi_errors(xsdfec, err_value);
+		xsdfec_update_state_for_ecc_err(xsdfec, ecc_err);
+	}
+
+	/*
+	 * Update SBE mask to remove events associated with MBE if present.
+	 * If no MBEs are present will return mask for all SBE bits
+	 */
+	sbe_mask = xsdfec_get_sbe_mask(err_value);
+	err_value = ecc_err & sbe_mask;
+	if (err_value) {
+		dev_info(xsdfec->dev, "Correctable error on xsdfec%d",
+			 xsdfec->config.fec_id);
+		xsdfec_count_and_clear_ecc_single_errors(xsdfec, err_value,
+							 sbe_mask);
+	}
+
+	err_value = isr_err & XSDFEC_ISR_MASK;
+	if (err_value) {
+		dev_err(xsdfec->dev,
+			"Tlast,or DIN_WORDS or DOUT_WORDS not correct");
+		xsdfec_count_and_clear_isr_errors(xsdfec, err_value);
+		xsdfec_update_state_for_isr_err(xsdfec);
+	}
+
+	if (xsdfec->state_updated || xsdfec->stats_updated)
+		wake_up_interruptible(&xsdfec->waitq);
+	else
+		ret = IRQ_NONE;
+
+	/* Unmaks Interrupts */
+	xsdfec_isr_enable(xsdfec, true);
+	xsdfec_ecc_isr_enable(xsdfec, true);
+
+	spin_unlock(&xsdfec->irq_lock);
+
+	return ret;
+}
+
 static int xsdfec_clk_init(struct platform_device *pdev,
 			   struct xsdfec_clks *clks)
 {
@@ -1103,6 +1367,7 @@ static int xsdfec_probe(struct platform_device *pdev)
 	struct device *dev_create;
 	struct resource *res;
 	int err;
+	bool irq_enabled = true;
 
 	xsdfec = devm_kzalloc(&pdev->dev, sizeof(*xsdfec), GFP_KERNEL);
 	if (!xsdfec)
@@ -1125,6 +1390,12 @@ static int xsdfec_probe(struct platform_device *pdev)
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
@@ -1134,6 +1405,18 @@ static int xsdfec_probe(struct platform_device *pdev)
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
 	cdev_init(&xsdfec->xsdfec_cdev, &xsdfec_fops);
 	xsdfec->xsdfec_cdev.owner = THIS_MODULE;
 	err = cdev_add(&xsdfec->xsdfec_cdev,
diff --git a/include/uapi/misc/xilinx_sdfec.h b/include/uapi/misc/xilinx_sdfec.h
index 5532572..120f7a3 100644
--- a/include/uapi/misc/xilinx_sdfec.h
+++ b/include/uapi/misc/xilinx_sdfec.h
@@ -279,6 +279,19 @@ xsdfec_calculate_shared_ldpc_table_entry_size(struct xsdfec_ldpc_params *ldpc,
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
