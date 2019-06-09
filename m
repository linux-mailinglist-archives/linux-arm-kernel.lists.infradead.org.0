Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FA73A29D
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 02:07:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qJ18qWT/7IJ8HR6r6CxadGvpGUIZEhQ/fClJTrEZFNg=; b=j7zdqL62aEm37g
	p/M4gbJP1sGtGWaZDChHlJ+X891t8Rz4qV6E1Z+3PB4ymFrWwwrBsuitBTT8O+h7c/riMUGg44lk/
	a8TKD1fnvMHwFpH9xFXNO+zQJfS6/yaNDjgevjfjp6DjsAAwhm5Y2qUe9Mde/Ci/qCt5vP/DFo6F+
	+9TlYbJ7xYsYFxS4+8OV8gqIVG5IhwiWOX8gO+kXwoJ2cDxI1IK9PkxV5gZYTHv1PGGpl2JymlKEB
	JHN7XblofMIjAvjIPn/pe5oez5nfx5pAye+Umq9oa2EtJOLVQ4deugCICI0yKLFytDe5f9B7gr/jC
	NZlRMhGz+8z19vwc6ENw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZlMd-0001BG-BA; Sun, 09 Jun 2019 00:07:11 +0000
Received: from mail-eopbgr740081.outbound.protection.outlook.com
 ([40.107.74.81] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZlK5-0006Za-3E
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Jun 2019 00:04:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nHIO23OrfM+Yg/HDizZUxwqJkSmO4ppAVzEuSuniLo8=;
 b=qgV3CmS5LwSI45so0b1ik8MiqBVw3VFVbkXvKBcJLKRtCz61gqyYld10/b9+1E1bU4ug726770IChp7+rBN34rNMMaznmKYhtTpPHajwZoTAQo62UtPKPTGKqzcEuS9DMDaZMzC4ab0pwYxb0f2jfoHN7q4LeLg6F30ga0RGvTA=
Received: from CY4PR02CA0048.namprd02.prod.outlook.com (2603:10b6:903:117::34)
 by MN2PR02MB6238.namprd02.prod.outlook.com (2603:10b6:208:1bf::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.17; Sun, 9 Jun
 2019 00:04:30 +0000
Received: from SN1NAM02FT053.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::204) by CY4PR02CA0048.outlook.office365.com
 (2603:10b6:903:117::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1965.12 via Frontend
 Transport; Sun, 9 Jun 2019 00:04:30 +0000
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
 15.20.1965.12 via Frontend Transport; Sun, 9 Jun 2019 00:04:29 +0000
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
 id 1hZlJw-0001PN-9M; Sun, 09 Jun 2019 01:04:24 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH V5 05/11] misc: xilinx_sdfec: Add ability to configure turbo
Date: Sun, 9 Jun 2019 01:04:10 +0100
Message-ID: <1560038656-380620-6-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560038656-380620-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1560038656-380620-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(376002)(346002)(136003)(39850400004)(396003)(2980300002)(199004)(189003)(2906002)(36906005)(16586007)(47776003)(6666004)(356004)(316002)(26005)(5660300002)(51416003)(186003)(26826003)(14444005)(28376004)(107886003)(7696005)(9786002)(76176011)(478600001)(70206006)(336012)(70586007)(36756003)(426003)(7636002)(305945005)(60926002)(50226002)(4326008)(71366001)(8936002)(2201001)(446003)(126002)(50466002)(76130400001)(44832011)(8676002)(956004)(246002)(476003)(2616005)(11346002)(486006)(110136005)(54906003)(106002)(48376002)(102446001)(461764006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6238; H:xir-pvapexch02.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 618c8514-a11f-463b-5d45-08d6ec6e0b4d
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:MN2PR02MB6238; 
X-MS-TrafficTypeDiagnostic: MN2PR02MB6238:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <MN2PR02MB623879418C87F486F04A5B66CB120@MN2PR02MB6238.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 006339698F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 9MoFwDyhQSrPMKuBY+sKDjd6kwNzG0GWTkvE7oM6Tzgs/Y3CoWbSn61nm51tqNtd7lBX8MiK2zK7lNSeDHrpGYH8Ysf203qe4d2NG2RLHe5g10Ifk6KMZKdizDnjEvMxjwzevYeufBKBLDIjnMWeOJDiMCUWcu+HGx1UdvBuG+jnaq4HBZtnNmyQBGyKOAVzlZPvnivKSn2GWvevMwWmPrLjPslcBLic9T8B14HtxXXdi96tD5qDtbVscCVucnhlEGn3giIbo59ym6RVm0yrLen6noCJJS904h8ZbuZYE1MWgdva9Iqs/DAOOjJk4gopIQztdHLthbPC2G+06gFFovyTBSTioQ4v2zMlc5A17iVVW2xNl/MYJyzDy0lFoF4DQ55+XiLMs7c76xnpwCZLrBDn8wQ9f6AC3jkosOwEba8=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2019 00:04:29.5998 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 618c8514-a11f-463b-5d45-08d6ec6e0b4d
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6238
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_170433_145977_FAF206BC 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.81 listed in list.dnswl.org]
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

Add the capability to configure and retrieve turbo mode
via the ioctls XSDFEC_SET_TURBO and XSDFEC_GET_TURBO.
Add char device interface per DT node present and support
file operations:
- open(),
- close(),
- unlocked_ioctl(),
- compat_ioctl().

Tested-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
---
 drivers/misc/xilinx_sdfec.c      | 110 +++++++++++++++++++++++++++++++++++++++
 include/uapi/misc/xilinx_sdfec.h |  67 ++++++++++++++++++++++++
 2 files changed, 177 insertions(+)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index ddfca54..3b59c12 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -19,6 +19,7 @@
 #include <linux/poll.h>
 #include <linux/slab.h>
 #include <linux/clk.h>
+#include <linux/compat.h>
 
 #include <uapi/misc/xilinx_sdfec.h>
 
@@ -103,6 +104,12 @@ static int xsdfec_ndevs;
 /* BYPASS Register */
 #define XSDFEC_BYPASS_ADDR (0x3C)
 
+/* Turbo Code Register */
+#define XSDFEC_TURBO_ADDR (0x100)
+#define XSDFEC_TURBO_SCALE_MASK (0xFFF)
+#define XSDFEC_TURBO_SCALE_BIT_POS (8)
+#define XSDFEC_TURBO_SCALE_MAX (15)
+
 /**
  * struct xsdfec_clks - For managing SD-FEC clocks
  * @core_clk: Main processing clock for core
@@ -207,6 +214,55 @@ static void update_config_from_hw(struct xsdfec_dev *xsdfec)
 		xsdfec->state = XSDFEC_STOPPED;
 }
 
+static int xsdfec_set_turbo(struct xsdfec_dev *xsdfec, void __user *arg)
+{
+	struct xsdfec_turbo turbo;
+	int err;
+	u32 turbo_write;
+
+	err = copy_from_user(&turbo, arg, sizeof(turbo));
+	if (err)
+		return -EFAULT;
+
+	if (turbo.alg >= XSDFEC_TURBO_ALG_MAX)
+		return -EINVAL;
+
+	if (turbo.scale > XSDFEC_TURBO_SCALE_MAX)
+		return -EINVAL;
+
+	/* Check to see what device tree says about the FEC codes */
+	if (xsdfec->config.code == XSDFEC_LDPC_CODE)
+		return -EIO;
+
+	turbo_write = ((turbo.scale & XSDFEC_TURBO_SCALE_MASK)
+		       << XSDFEC_TURBO_SCALE_BIT_POS) |
+		      turbo.alg;
+	xsdfec_regwrite(xsdfec, XSDFEC_TURBO_ADDR, turbo_write);
+	return err;
+}
+
+static int xsdfec_get_turbo(struct xsdfec_dev *xsdfec, void __user *arg)
+{
+	u32 reg_value;
+	struct xsdfec_turbo turbo_params;
+	int err;
+
+	if (xsdfec->config.code == XSDFEC_LDPC_CODE)
+		return -EIO;
+
+	reg_value = xsdfec_regread(xsdfec, XSDFEC_TURBO_ADDR);
+
+	turbo_params.scale = (reg_value & XSDFEC_TURBO_SCALE_MASK) >>
+			     XSDFEC_TURBO_SCALE_BIT_POS;
+	turbo_params.alg = reg_value & 0x1;
+
+	err = copy_to_user(arg, &turbo_params, sizeof(turbo_params));
+	if (err)
+		err = -EFAULT;
+
+	return err;
+}
+
 static u32
 xsdfec_translate_axis_width_cfg_val(enum xsdfec_axis_width axis_width_cfg)
 {
@@ -270,8 +326,62 @@ static int xsdfec_cfg_axi_streams(struct xsdfec_dev *xsdfec)
 	return 0;
 }
 
+static int xsdfec_dev_open(struct inode *iptr, struct file *fptr)
+{
+	return 0;
+}
+
+static int xsdfec_dev_release(struct inode *iptr, struct file *fptr)
+{
+	return 0;
+}
+
+static long xsdfec_dev_ioctl(struct file *fptr, unsigned int cmd,
+			     unsigned long data)
+{
+	struct xsdfec_dev *xsdfec;
+	void __user *arg = NULL;
+	int rval = -EINVAL;
+
+	xsdfec = container_of(fptr->private_data, struct xsdfec_dev, miscdev);
+
+	/* check if ioctl argument is present and valid */
+	if (_IOC_DIR(cmd) != _IOC_NONE) {
+		arg = (void __user *)data;
+		if (!arg)
+			return rval;
+	}
+
+	switch (cmd) {
+	case XSDFEC_SET_TURBO:
+		rval = xsdfec_set_turbo(xsdfec, arg);
+		break;
+	case XSDFEC_GET_TURBO:
+		rval = xsdfec_get_turbo(xsdfec, arg);
+		break;
+	default:
+		/* Should not get here */
+		break;
+	}
+	return rval;
+}
+
+#ifdef CONFIG_COMPAT
+static long xsdfec_dev_compat_ioctl(struct file *file, unsigned int cmd,
+				    unsigned long data)
+{
+	return xsdfec_dev_ioctl(file, cmd, (unsigned long)compat_ptr(data));
+}
+#endif
+
 static const struct file_operations xsdfec_fops = {
 	.owner = THIS_MODULE,
+	.open = xsdfec_dev_open,
+	.release = xsdfec_dev_release,
+	.unlocked_ioctl = xsdfec_dev_ioctl,
+#ifdef CONFIG_COMPAT
+	.compat_ioctl = xsdfec_dev_compat_ioctl,
+#endif
 };
 
 static int xsdfec_parse_of(struct xsdfec_dev *xsdfec)
diff --git a/include/uapi/misc/xilinx_sdfec.h b/include/uapi/misc/xilinx_sdfec.h
index 7b47a4c..dc9d4a3 100644
--- a/include/uapi/misc/xilinx_sdfec.h
+++ b/include/uapi/misc/xilinx_sdfec.h
@@ -41,6 +41,22 @@ enum xsdfec_order {
 };
 
 /**
+ * enum xsdfec_turbo_alg - Turbo Algorithm Type.
+ * @XSDFEC_MAX_SCALE: Max Log-Map algorithm with extrinsic scaling. When
+ *		      scaling is set to this is equivalent to the Max Log-Map
+ *		      algorithm.
+ * @XSDFEC_MAX_STAR: Log-Map algorithm.
+ * @XSDFEC_TURBO_ALG_MAX: Used to indicate out of bound Turbo algorithms.
+ *
+ * This enum specifies which Turbo Decode algorithm is in use.
+ */
+enum xsdfec_turbo_alg {
+	XSDFEC_MAX_SCALE = 0,
+	XSDFEC_MAX_STAR,
+	XSDFEC_TURBO_ALG_MAX,
+};
+
+/**
  * enum xsdfec_state - State.
  * @XSDFEC_INIT: Driver is initialized.
  * @XSDFEC_STARTED: Driver is started.
@@ -98,6 +114,29 @@ enum xsdfec_axis_word_include {
 };
 
 /**
+ * struct xsdfec_turbo - User data for Turbo codes.
+ * @alg: Specifies which Turbo decode algorithm to use
+ * @scale: Specifies the extrinsic scaling to apply when the Max Scale algorithm
+ *	   has been selected
+ *
+ * Turbo code structure to communicate parameters to XSDFEC driver.
+ */
+struct xsdfec_turbo {
+	enum xsdfec_turbo_alg alg;
+	__u8 scale;
+};
+
+/**
+ * struct xsdfec_status - Status of SD-FEC core.
+ * @state: State of the SD-FEC core
+ * @activity: Describes if the SD-FEC instance is Active
+ */
+struct xsdfec_status {
+	enum xsdfec_state state;
+	__s8 activity;
+};
+
+/**
  * struct xsdfec_irq - Enabling or Disabling Interrupts.
  * @enable_isr: If true enables the ISR
  * @enable_ecc_isr: If true enables the ECC ISR
@@ -135,4 +174,32 @@ struct xsdfec_config {
  * XSDFEC IOCTL List
  */
 #define XSDFEC_MAGIC 'f'
+/**
+ * DOC: XSDFEC_SET_TURBO
+ * @Parameters
+ *
+ * @struct xsdfec_turbo *
+ *	Pointer to the &struct xsdfec_turbo that contains the Turbo decode
+ *	settings for the SD-FEC core
+ *
+ * @Description
+ *
+ * ioctl that sets the SD-FEC Turbo parameter values
+ *
+ * This can only be used when the driver is in the XSDFEC_STOPPED state
+ */
+#define XSDFEC_SET_TURBO _IOW(XSDFEC_MAGIC, 4, struct xsdfec_turbo)
+/**
+ * DOC: XSDFEC_GET_TURBO
+ * @Parameters
+ *
+ * @struct xsdfec_turbo *
+ *	Pointer to the &struct xsdfec_turbo that contains the current Turbo
+ *	decode settings of the SD-FEC Block
+ *
+ * @Description
+ *
+ * ioctl that returns SD-FEC turbo param values
+ */
+#define XSDFEC_GET_TURBO _IOR(XSDFEC_MAGIC, 7, struct xsdfec_turbo)
 #endif /* __XILINX_SDFEC_H__ */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
