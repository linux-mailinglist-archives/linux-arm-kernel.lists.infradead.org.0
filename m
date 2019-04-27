Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01BFFB49A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 00:06:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=likfHY210qKRRbpElwWMQ6qlyhIfGUqcFh732O9QMAc=; b=klOxEejCwbpiYH
	W6ndzadQdbG8EXZLzjvhpR/WwnM/i0Wu0gBEWFA5am+Qhg6bT4/kbhUxy9+7Oz5Yqt37K1MfiDNRW
	/lW17yqfZU9lJq8oGq7swAwEhJrKpS3TxrZeG3AamDic6IqXmYxDk67+0pGwB7o8ObUNoM1lE0UmS
	IuNrIT4Szkv+yqHPFEWcVbytMwQK/TCsXDMIcbZ0MO21o7o7YO5HA+Y4fDbOqGsGmF+BqHKzZ5n5c
	FLhetMq9Ke6IGRtSyQHlMS28R8dY1QdB68j/+69YE+wiLyTk8jgxXjE1n0EBz5RPBDvFnnNqrO8MU
	VjztHUR5IdwznvlNBamg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKVT7-000249-3V; Sat, 27 Apr 2019 22:06:49 +0000
Received: from mail-eopbgr720080.outbound.protection.outlook.com
 ([40.107.72.80] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKVRk-0000Vt-Ca
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Apr 2019 22:05:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IvDDwBwAAZ7T/PLR8Gx8JKZI4k0ibtaHAaNUgJDOl4c=;
 b=wz1kjrXh9SSK4Li/kCyMrpjwo4DzcOvTxexTwgvMrrg+id+Cx6EJOO/wBTjnUEFW4vJhWhG2R/V6lyBB4MSGkxx0bFbnTuW0u8GmlEAqboiHWo5Rb0jGSQ2TQSbdGgpxS38wWkzx+Dgrf+NcuUJlIA2vwfGk6iFRzLdCg1XetNI=
Received: from SN4PR0201CA0031.namprd02.prod.outlook.com
 (2603:10b6:803:2e::17) by BY2PR02MB2005.namprd02.prod.outlook.com
 (2a01:111:e400:c504::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1835.15; Sat, 27 Apr
 2019 22:05:20 +0000
Received: from CY1NAM02FT061.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::200) by SN4PR0201CA0031.outlook.office365.com
 (2603:10b6:803:2e::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1835.12 via Frontend
 Transport; Sat, 27 Apr 2019 22:05:20 +0000
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
 15.20.1835.13 via Frontend Transport; Sat, 27 Apr 2019 22:05:19 +0000
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
 id 1hKVRY-0002Gu-4G; Sat, 27 Apr 2019 23:05:12 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH V3 06/12] misc: xilinx_sdfec: Add ability to configure turbo
Date: Sat, 27 Apr 2019 23:05:00 +0100
Message-ID: <1556402706-176271-7-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(346002)(396003)(136003)(376002)(39860400002)(2980300002)(199004)(189003)(36756003)(28376004)(5660300002)(71366001)(14444005)(47776003)(44832011)(60926002)(11346002)(16586007)(316002)(446003)(956004)(486006)(54906003)(126002)(110136005)(476003)(2616005)(426003)(36906005)(7636002)(106002)(305945005)(336012)(2201001)(93146003)(48376002)(70586007)(70206006)(26826003)(478600001)(7696005)(186003)(50226002)(9786002)(50466002)(26005)(107886003)(246002)(4326008)(8676002)(76130400001)(76176011)(2906002)(51416003)(8936002)(356004)(6666004)(102446001)(461764006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY2PR02MB2005; H:xir-pvapexch02.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: be1e9f5e-fbe9-43d0-8fe0-08d6cb5c7065
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328);
 SRVR:BY2PR02MB2005; 
X-MS-TrafficTypeDiagnostic: BY2PR02MB2005:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <BY2PR02MB20050A925AD16EFD76C016D0CB3F0@BY2PR02MB2005.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:873;
X-Forefront-PRVS: 0020414413
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: ryLiig+S6JLn8QIizCqVuhq2icRhDXdepGPXF7ORsVQlWlsEzYmXtnjdNJb+jkp4uqk8vCykcGmNnszgyWhYEpaiyL6acDBZ1uV3eunxHi3qjk2NNTEjvBhdAWPSlgCliyg9csV2SkrK1TqH6vvMXtwab3zM4nh64SEnGi0qGlp9js9pTCqSdQVqN26QDUEoWUbYE5SMEScBYVG/2GaHUKjt/ofwRgNvw6PrHMKqPVJzZlSHEIQgNH6PARoykR0wBF5rvjqID0YrRtJ5DL2GQAbe2A8vWfYON7rg8Hq8AE3pwXOkRgH3mRtPaEJIR/GEycunjlCiuLrvZnvXLqACuMD7ly/NefJ2uz1PF04jonekJ25v6iBnrIHMXuuKayosO13M10448WH0uEnEmY83v37OvO0xJ8EUL3+0XTQssEQ=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2019 22:05:19.6572 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: be1e9f5e-fbe9-43d0-8fe0-08d6cb5c7065
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR02MB2005
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_150524_712849_7EB3B8DB 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.72.80 listed in list.dnswl.org]
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

mode

Add the capability to configure and retrieve turbo mode
via the ioctls XSDFEC_SET_TURBO and XSDFEC_GET_TURBO.

Tested-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
---
 drivers/misc/xilinx_sdfec.c      | 77 ++++++++++++++++++++++++++++++++++++++++
 include/uapi/misc/xilinx_sdfec.h | 71 ++++++++++++++++++++++++++++++++++++
 2 files changed, 148 insertions(+)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index 77ee62d..19b5f96 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -116,6 +116,12 @@ static dev_t xsdfec_devt;
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
@@ -247,6 +253,71 @@ static int xsdfec_dev_release(struct inode *iptr, struct file *fptr)
 	return 0;
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
+	if (turbo.alg >= XSDFEC_TURBO_ALG_MAX) {
+		dev_err(xsdfec->dev,
+			"%s invalid turbo alg value %d for SDFEC%d", __func__,
+			turbo.alg, xsdfec->config.fec_id);
+		return -EINVAL;
+	}
+
+	if (turbo.scale > XSDFEC_TURBO_SCALE_MAX) {
+		dev_err(xsdfec->dev,
+			"%s invalid turbo scale value %d for SDFEC%d", __func__,
+			turbo.scale, xsdfec->config.fec_id);
+		return -EINVAL;
+	}
+
+	/* Check to see what device tree says about the FEC codes */
+	if (xsdfec->config.code == XSDFEC_LDPC_CODE) {
+		dev_err(xsdfec->dev,
+			"%s: Unable to write Turbo to SDFEC%d check DT",
+			__func__, xsdfec->config.fec_id);
+		return -EIO;
+	}
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
+	if (xsdfec->config.code == XSDFEC_LDPC_CODE) {
+		dev_err(xsdfec->dev,
+			"%s: SDFEC%d is configured for LDPC, check DT",
+			__func__, xsdfec->config.fec_id);
+		return -EIO;
+	}
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
@@ -340,6 +411,12 @@ static long xsdfec_dev_ioctl(struct file *fptr, unsigned int cmd,
 	}
 
 	switch (cmd) {
+	case XSDFEC_SET_TURBO:
+		rval = xsdfec_set_turbo(xsdfec, arg);
+		break;
+	case XSDFEC_GET_TURBO:
+		rval = xsdfec_get_turbo(xsdfec, arg);
+		break;
 	default:
 		/* Should not get here */
 		dev_err(xsdfec->dev, "Undefined SDFEC IOCTL");
diff --git a/include/uapi/misc/xilinx_sdfec.h b/include/uapi/misc/xilinx_sdfec.h
index 68eeb94..3dc8c53 100644
--- a/include/uapi/misc/xilinx_sdfec.h
+++ b/include/uapi/misc/xilinx_sdfec.h
@@ -39,6 +39,22 @@ enum xsdfec_order {
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
@@ -96,6 +112,33 @@ enum xsdfec_axis_word_include {
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
+ * @fec_id: ID of SD-FEC instance. ID is limited to the number of active
+ *          SD-FEC's in the FPGA and is related to the driver instance
+ *          Minor number.
+ * @state: State of the SD-FEC core
+ * @activity: Describes if the SD-FEC instance is Active
+ */
+struct xsdfec_status {
+	__s32 fec_id;
+	enum xsdfec_state state;
+	__s8 activity;
+};
+
+/**
  * struct xsdfec_irq - Enabling or Disabling Interrupts.
  * @enable_isr: If true enables the ISR
  * @enable_ecc_isr: If true enables the ECC ISR
@@ -137,4 +180,32 @@ struct xsdfec_config {
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
