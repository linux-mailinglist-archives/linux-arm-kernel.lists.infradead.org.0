Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 507083A29A
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 02:06:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2u7JEk3CqAIk7SfOHVj8ZIHA/ejQyRICfvtan/1BeFQ=; b=iAuu4aDvp1ClNi
	ljieTkk7KKm/xCIYyRcHSWUB9vpn19pO0Yuc1rFY32WKyh/V51KJFLyQ9Sg49La2jJDWCdj69ul1L
	Pg4ulpeRQOdD3oIVmkz4XaAKirDGnADdtNz1TYyV/YI3L2Jy4/4gmTIasDMfGv77vazZ5OMCvGpcz
	QVnyUykYFA2o5b7mQBuY4j8JT1VJHVUXPKMy5GHhm3wlKvEI9snyUy5wkdHvwBYsa7aixt/RpxF3k
	vEaEZYGbesljpM4HB6Go7hlGlArGWxzn6JK7NQrh8KNuoK7wqzXv6ExfOGbG7v7zmAnzJMC5fToVK
	NANFZNtdXB4Fu0JslOBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZlLZ-0000Gu-QA; Sun, 09 Jun 2019 00:06:05 +0000
Received: from mail-eopbgr740040.outbound.protection.outlook.com
 ([40.107.74.40] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZlK3-0006YU-9M
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Jun 2019 00:04:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nM6Y3yKhKtmCTfGCLPea6DQzODdI9Pwi7wm23qT8bBY=;
 b=b7Eecc1KlYUiMez7gu/0igCCNQIx/KVYj3yS+yyvmfev9XRpJrIvabKJIslVjtPTb9mVXznT6XyCotd5qfZVxAvLhHvYLKjclPMzTEbVwnE/AMxrWd0sdBG+doyrffMT599GYAe71WXl7U85ETQ/IsDUVk3ioKCtgOzl6ROeeo8=
Received: from BL0PR02CA0108.namprd02.prod.outlook.com (2603:10b6:208:51::49)
 by SN6PR02MB4942.namprd02.prod.outlook.com (2603:10b6:805:99::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.14; Sun, 9 Jun
 2019 00:04:27 +0000
Received: from BL2NAM02FT056.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::200) by BL0PR02CA0108.outlook.office365.com
 (2603:10b6:208:51::49) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1965.15 via Frontend
 Transport; Sun, 9 Jun 2019 00:04:27 +0000
Authentication-Results: spf=pass (sender IP is 149.199.80.198)
 smtp.mailfrom=xilinx.com; arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.80.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.80.198; helo=xir-pvapexch01.xlnx.xilinx.com;
Received: from xir-pvapexch01.xlnx.xilinx.com (149.199.80.198) by
 BL2NAM02FT056.mail.protection.outlook.com (10.152.77.221) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.1965.12 via Frontend Transport; Sun, 9 Jun 2019 00:04:27 +0000
Received: from xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1531.3; Sun, 9 Jun 2019 01:04:24 +0100
Received: from smtp.xilinx.com (172.21.105.198) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server id
 15.1.1531.3 via Frontend Transport; Sun, 9 Jun 2019 01:04:24 +0100
Received: from [149.199.110.15] (port=48046 helo=xirdraganc40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <dragan.cvetic@xilinx.com>)
 id 1hZlJw-0001PN-8X; Sun, 09 Jun 2019 01:04:24 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH V5 04/11] misc: xilinx_sdfec: Store driver config and state
Date: Sun, 9 Jun 2019 01:04:09 +0100
Message-ID: <1560038656-380620-5-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560038656-380620-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1560038656-380620-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(136003)(376002)(396003)(39860400002)(346002)(2980300002)(189003)(199004)(50226002)(50466002)(14444005)(7636002)(305945005)(48376002)(107886003)(478600001)(71366001)(9786002)(4326008)(30864003)(8676002)(5660300002)(76130400001)(60926002)(28376004)(70586007)(8936002)(70206006)(186003)(26005)(36756003)(11346002)(44832011)(486006)(16586007)(446003)(106002)(2201001)(54906003)(110136005)(426003)(126002)(336012)(476003)(316002)(36906005)(956004)(2616005)(76176011)(2906002)(246002)(47776003)(51416003)(356004)(6666004)(7696005)(26826003)(102446001)(461764006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB4942; H:xir-pvapexch01.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8d52d8c8-1316-4776-e3ad-08d6ec6e09c0
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:SN6PR02MB4942; 
X-MS-TrafficTypeDiagnostic: SN6PR02MB4942:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <SN6PR02MB494235BFDD305AC208577F8CCB120@SN6PR02MB4942.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-Forefront-PRVS: 006339698F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: d3CD/B7jv1hSFcv967xx9A5K4Ppmi/tu+WhulFFVqOKB92CeuDJzlPdfPdbZkRBtQve+3O0rmagBWKQrcvhcCQXlkpPi4/EUzwFAoEdQbu0XJ/OrXFDNlmLT5k0U6HuvEOMCQUezjTGu+aGWhIstk9fN4fGO+RosxBaKmqLDXWJJhqkKk68yU3NOj1AVV2+/iqfPCpIf1KcmzFcbLqszNCW0cMQ+LZ59owkfoxuqCOdUI7LI8D7dv7A1gfsAuT5Wt1uJdQxlg3UzZclvAP1se4lWw4cGVj+EaiQQ/blQFGfkXRYmBDFI7v+o1BjRvmPhXP9W17f9e5Pg9W27dVTNoPBgGKWnVxpnj4CGuTIBTwllO2Oq40RN8B174Gsx8e08AuCs7zHOVNxqQJQVnS55Y+O+JshKRK/6m+lyeII/J+8=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2019 00:04:27.2076 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d52d8c8-1316-4776-e3ad-08d6ec6e09c0
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch01.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4942
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_170431_393824_C74CBD7D 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.40 listed in list.dnswl.org]
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

Stores configuration based on parameters from the DT
node and values from the SD-FEC core plus reads
the default state from the SD-FEC core. To obtain
values from the core register read, write capabilities
have been added plus related register map details.

Tested-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
---
 drivers/misc/xilinx_sdfec.c      | 293 +++++++++++++++++++++++++++++++++++++++
 include/uapi/misc/xilinx_sdfec.h | 138 ++++++++++++++++++
 2 files changed, 431 insertions(+)
 create mode 100644 include/uapi/misc/xilinx_sdfec.h

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index 4524677..ddfca54 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -20,8 +20,89 @@
 #include <linux/slab.h>
 #include <linux/clk.h>
 
+#include <uapi/misc/xilinx_sdfec.h>
+
 static int xsdfec_ndevs;
 
+/* Xilinx SDFEC Register Map */
+/* CODE_WRI_PROTECT Register */
+#define XSDFEC_CODE_WR_PROTECT_ADDR (0x4)
+
+/* ACTIVE Register */
+#define XSDFEC_ACTIVE_ADDR (0x8)
+#define XSDFEC_IS_ACTIVITY_SET (0x1)
+
+/* AXIS_WIDTH Register */
+#define XSDFEC_AXIS_WIDTH_ADDR (0xC)
+#define XSDFEC_AXIS_DOUT_WORDS_LSB (5)
+#define XSDFEC_AXIS_DOUT_WIDTH_LSB (3)
+#define XSDFEC_AXIS_DIN_WORDS_LSB (2)
+#define XSDFEC_AXIS_DIN_WIDTH_LSB (0)
+
+/* AXIS_ENABLE Register */
+#define XSDFEC_AXIS_ENABLE_ADDR (0x10)
+#define XSDFEC_AXIS_OUT_ENABLE_MASK (0x38)
+#define XSDFEC_AXIS_IN_ENABLE_MASK (0x7)
+#define XSDFEC_AXIS_ENABLE_MASK                                                \
+	(XSDFEC_AXIS_OUT_ENABLE_MASK | XSDFEC_AXIS_IN_ENABLE_MASK)
+
+/* FEC_CODE Register */
+#define XSDFEC_FEC_CODE_ADDR (0x14)
+
+/* ORDER Register Map */
+#define XSDFEC_ORDER_ADDR (0x18)
+
+/* Interrupt Status Register */
+#define XSDFEC_ISR_ADDR (0x1C)
+/* Interrupt Status Register Bit Mask */
+#define XSDFEC_ISR_MASK (0x3F)
+
+/* Write Only - Interrupt Enable Register */
+#define XSDFEC_IER_ADDR (0x20)
+/* Write Only - Interrupt Disable Register */
+#define XSDFEC_IDR_ADDR (0x24)
+/* Read Only - Interrupt Mask Register */
+#define XSDFEC_IMR_ADDR (0x28)
+
+/* ECC Interrupt Status Register */
+#define XSDFEC_ECC_ISR_ADDR (0x2C)
+/* Single Bit Errors */
+#define XSDFEC_ECC_ISR_SBE_MASK (0x7FF)
+/* PL Initialize Single Bit Errors */
+#define XSDFEC_PL_INIT_ECC_ISR_SBE_MASK (0x3C00000)
+/* Multi Bit Errors */
+#define XSDFEC_ECC_ISR_MBE_MASK (0x3FF800)
+/* PL Initialize Multi Bit Errors */
+#define XSDFEC_PL_INIT_ECC_ISR_MBE_MASK (0x3C000000)
+/* Multi Bit Error to Event Shift */
+#define XSDFEC_ECC_ISR_MBE_TO_EVENT_SHIFT (11)
+/* PL Initialize Multi Bit Error to Event Shift */
+#define XSDFEC_PL_INIT_ECC_ISR_MBE_TO_EVENT_SHIFT (4)
+/* ECC Interrupt Status Bit Mask */
+#define XSDFEC_ECC_ISR_MASK (XSDFEC_ECC_ISR_SBE_MASK | XSDFEC_ECC_ISR_MBE_MASK)
+/* ECC Interrupt Status PL Initialize Bit Mask */
+#define XSDFEC_PL_INIT_ECC_ISR_MASK                                            \
+	(XSDFEC_PL_INIT_ECC_ISR_SBE_MASK | XSDFEC_PL_INIT_ECC_ISR_MBE_MASK)
+/* ECC Interrupt Status All Bit Mask */
+#define XSDFEC_ALL_ECC_ISR_MASK                                                \
+	(XSDFEC_ECC_ISR_MASK | XSDFEC_PL_INIT_ECC_ISR_MASK)
+/* ECC Interrupt Status Single Bit Errors Mask */
+#define XSDFEC_ALL_ECC_ISR_SBE_MASK                                            \
+	(XSDFEC_ECC_ISR_SBE_MASK | XSDFEC_PL_INIT_ECC_ISR_SBE_MASK)
+/* ECC Interrupt Status Multi Bit Errors Mask */
+#define XSDFEC_ALL_ECC_ISR_MBE_MASK                                            \
+	(XSDFEC_ECC_ISR_MBE_MASK | XSDFEC_PL_INIT_ECC_ISR_MBE_MASK)
+
+/* Write Only - ECC Interrupt Enable Register */
+#define XSDFEC_ECC_IER_ADDR (0x30)
+/* Write Only - ECC Interrupt Disable Register */
+#define XSDFEC_ECC_IDR_ADDR (0x34)
+/* Read Only - ECC Interrupt Mask Register */
+#define XSDFEC_ECC_IMR_ADDR (0x38)
+
+/* BYPASS Register */
+#define XSDFEC_BYPASS_ADDR (0x3C)
+
 /**
  * struct xsdfec_clks - For managing SD-FEC clocks
  * @core_clk: Main processing clock for core
@@ -48,6 +129,8 @@ struct xsdfec_clks {
  * struct xsdfec_dev - Driver data for SDFEC
  * @regs: device physical base address
  * @dev: pointer to device struct
+ * @state: State of the SDFEC device
+ * @config: Configuration of the SDFEC device
  * @miscdev: Misc device handle
  * @error_data_lock: Error counter and states spinlock
  * @clks: Clocks managed by the SDFEC driver
@@ -57,16 +140,220 @@ struct xsdfec_clks {
 struct xsdfec_dev {
 	void __iomem *regs;
 	struct device *dev;
+	enum xsdfec_state state;
+	struct xsdfec_config config;
 	struct miscdevice miscdev;
 	/* Spinlock to protect state_updated and stats_updated */
 	spinlock_t error_data_lock;
 	struct xsdfec_clks clks;
 };
 
+static inline void xsdfec_regwrite(struct xsdfec_dev *xsdfec, u32 addr,
+				   u32 value)
+{
+	dev_dbg(xsdfec->dev, "Writing 0x%x to offset 0x%x", value, addr);
+	iowrite32(value, xsdfec->regs + addr);
+}
+
+static inline u32 xsdfec_regread(struct xsdfec_dev *xsdfec, u32 addr)
+{
+	u32 rval;
+
+	rval = ioread32(xsdfec->regs + addr);
+	dev_dbg(xsdfec->dev, "Read value = 0x%x from offset 0x%x", rval, addr);
+	return rval;
+}
+
+static void update_bool_config_from_reg(struct xsdfec_dev *xsdfec,
+					u32 reg_offset, u32 bit_num,
+					char *config_value)
+{
+	u32 reg_val;
+	u32 bit_mask = 1 << bit_num;
+
+	reg_val = xsdfec_regread(xsdfec, reg_offset);
+	*config_value = (reg_val & bit_mask) > 0;
+}
+
+static void update_config_from_hw(struct xsdfec_dev *xsdfec)
+{
+	u32 reg_value;
+	bool sdfec_started;
+
+	/* Update the Order */
+	reg_value = xsdfec_regread(xsdfec, XSDFEC_ORDER_ADDR);
+	xsdfec->config.order = reg_value;
+
+	update_bool_config_from_reg(xsdfec, XSDFEC_BYPASS_ADDR,
+				    0, /* Bit Number, maybe change to mask */
+				    &xsdfec->config.bypass);
+
+	update_bool_config_from_reg(xsdfec, XSDFEC_CODE_WR_PROTECT_ADDR,
+				    0, /* Bit Number */
+				    &xsdfec->config.code_wr_protect);
+
+	reg_value = xsdfec_regread(xsdfec, XSDFEC_IMR_ADDR);
+	xsdfec->config.irq.enable_isr = (reg_value & XSDFEC_ISR_MASK) > 0;
+
+	reg_value = xsdfec_regread(xsdfec, XSDFEC_ECC_IMR_ADDR);
+	xsdfec->config.irq.enable_ecc_isr =
+		(reg_value & XSDFEC_ECC_ISR_MASK) > 0;
+
+	reg_value = xsdfec_regread(xsdfec, XSDFEC_AXIS_ENABLE_ADDR);
+	sdfec_started = (reg_value & XSDFEC_AXIS_IN_ENABLE_MASK) > 0;
+	if (sdfec_started)
+		xsdfec->state = XSDFEC_STARTED;
+	else
+		xsdfec->state = XSDFEC_STOPPED;
+}
+
+static u32
+xsdfec_translate_axis_width_cfg_val(enum xsdfec_axis_width axis_width_cfg)
+{
+	u32 axis_width_field = 0;
+
+	switch (axis_width_cfg) {
+	case XSDFEC_1x128b:
+		axis_width_field = 0;
+		break;
+	case XSDFEC_2x128b:
+		axis_width_field = 1;
+		break;
+	case XSDFEC_4x128b:
+		axis_width_field = 2;
+		break;
+	}
+
+	return axis_width_field;
+}
+
+static u32 xsdfec_translate_axis_words_cfg_val(enum xsdfec_axis_word_include
+	axis_word_inc_cfg)
+{
+	u32 axis_words_field = 0;
+
+	if (axis_word_inc_cfg == XSDFEC_FIXED_VALUE ||
+	    axis_word_inc_cfg == XSDFEC_IN_BLOCK)
+		axis_words_field = 0;
+	else if (axis_word_inc_cfg == XSDFEC_PER_AXI_TRANSACTION)
+		axis_words_field = 1;
+
+	return axis_words_field;
+}
+
+static int xsdfec_cfg_axi_streams(struct xsdfec_dev *xsdfec)
+{
+	u32 reg_value;
+	u32 dout_words_field;
+	u32 dout_width_field;
+	u32 din_words_field;
+	u32 din_width_field;
+	struct xsdfec_config *config = &xsdfec->config;
+
+	/* translate config info to register values */
+	dout_words_field =
+		xsdfec_translate_axis_words_cfg_val(config->dout_word_include);
+	dout_width_field =
+		xsdfec_translate_axis_width_cfg_val(config->dout_width);
+	din_words_field =
+		xsdfec_translate_axis_words_cfg_val(config->din_word_include);
+	din_width_field =
+		xsdfec_translate_axis_width_cfg_val(config->din_width);
+
+	reg_value = dout_words_field << XSDFEC_AXIS_DOUT_WORDS_LSB;
+	reg_value |= dout_width_field << XSDFEC_AXIS_DOUT_WIDTH_LSB;
+	reg_value |= din_words_field << XSDFEC_AXIS_DIN_WORDS_LSB;
+	reg_value |= din_width_field << XSDFEC_AXIS_DIN_WIDTH_LSB;
+
+	xsdfec_regwrite(xsdfec, XSDFEC_AXIS_WIDTH_ADDR, reg_value);
+
+	return 0;
+}
+
 static const struct file_operations xsdfec_fops = {
 	.owner = THIS_MODULE,
 };
 
+static int xsdfec_parse_of(struct xsdfec_dev *xsdfec)
+{
+	struct device *dev = xsdfec->dev;
+	struct device_node *node = dev->of_node;
+	int rval;
+	const char *fec_code;
+	u32 din_width;
+	u32 din_word_include;
+	u32 dout_width;
+	u32 dout_word_include;
+
+	rval = of_property_read_string(node, "xlnx,sdfec-code", &fec_code);
+	if (rval < 0)
+		return rval;
+
+	if (!strcasecmp(fec_code, "ldpc"))
+		xsdfec->config.code = XSDFEC_LDPC_CODE;
+	else if (!strcasecmp(fec_code, "turbo"))
+		xsdfec->config.code = XSDFEC_TURBO_CODE;
+	else
+		return -EINVAL;
+
+	rval = of_property_read_u32(node, "xlnx,sdfec-din-words",
+				    &din_word_include);
+	if (rval < 0)
+		return rval;
+
+	if (din_word_include < XSDFEC_AXIS_WORDS_INCLUDE_MAX)
+		xsdfec->config.din_word_include = din_word_include;
+	else
+		return -EINVAL;
+
+	rval = of_property_read_u32(node, "xlnx,sdfec-din-width", &din_width);
+	if (rval < 0)
+		return rval;
+
+	switch (din_width) {
+	/* Fall through and set for valid values */
+	case XSDFEC_1x128b:
+	case XSDFEC_2x128b:
+	case XSDFEC_4x128b:
+		xsdfec->config.din_width = din_width;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	rval = of_property_read_u32(node, "xlnx,sdfec-dout-words",
+				    &dout_word_include);
+	if (rval < 0)
+		return rval;
+
+	if (dout_word_include < XSDFEC_AXIS_WORDS_INCLUDE_MAX)
+		xsdfec->config.dout_word_include = dout_word_include;
+	else
+		return -EINVAL;
+
+	rval = of_property_read_u32(node, "xlnx,sdfec-dout-width", &dout_width);
+	if (rval < 0)
+		return rval;
+
+	switch (dout_width) {
+	/* Fall through and set for valid values */
+	case XSDFEC_1x128b:
+	case XSDFEC_2x128b:
+	case XSDFEC_4x128b:
+		xsdfec->config.dout_width = dout_width;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	/* Write LDPC to CODE Register */
+	xsdfec_regwrite(xsdfec, XSDFEC_FEC_CODE_ADDR, xsdfec->config.code);
+
+	xsdfec_cfg_axi_streams(xsdfec);
+
+	return 0;
+}
+
 static int xsdfec_clk_init(struct platform_device *pdev,
 			   struct xsdfec_clks *clks)
 {
@@ -247,6 +534,12 @@ static int xsdfec_probe(struct platform_device *pdev)
 		goto err_xsdfec_dev;
 	}
 
+	err = xsdfec_parse_of(xsdfec);
+	if (err < 0)
+		goto err_xsdfec_dev;
+
+	update_config_from_hw(xsdfec);
+
 	/* Save driver private data */
 	platform_set_drvdata(pdev, xsdfec);
 
diff --git a/include/uapi/misc/xilinx_sdfec.h b/include/uapi/misc/xilinx_sdfec.h
new file mode 100644
index 0000000..7b47a4c
--- /dev/null
+++ b/include/uapi/misc/xilinx_sdfec.h
@@ -0,0 +1,138 @@
+/* SPDX-License-Identifier: GPL-2.0+ WITH Linux-syscall-note */
+/*
+ * Xilinx SD-FEC
+ *
+ * Copyright (C) 2016 - 2017 Xilinx, Inc.
+ *
+ * Description:
+ * This driver is developed for SDFEC16 IP. It provides a char device
+ * in sysfs and supports file operations like open(), close() and ioctl().
+ */
+#ifndef __XILINX_SDFEC_H__
+#define __XILINX_SDFEC_H__
+
+#include <linux/types.h>
+
+/**
+ * enum xsdfec_code - Code Type.
+ * @XSDFEC_TURBO_CODE: Driver is configured for Turbo mode.
+ * @XSDFEC_LDPC_CODE: Driver is configured for LDPC mode.
+ *
+ * This enum is used to indicate the mode of the driver. The mode is determined
+ * by checking which codes are set in the driver. Note that the mode cannot be
+ * changed by the driver.
+ */
+enum xsdfec_code {
+	XSDFEC_TURBO_CODE = 0,
+	XSDFEC_LDPC_CODE,
+};
+
+/**
+ * enum xsdfec_order - Order
+ * @XSDFEC_MAINTAIN_ORDER: Maintain order execution of blocks.
+ * @XSDFEC_OUT_OF_ORDER: Out-of-order execution of blocks.
+ *
+ * This enum is used to indicate whether the order of blocks can change from
+ * input to output.
+ */
+enum xsdfec_order {
+	XSDFEC_MAINTAIN_ORDER = 0,
+	XSDFEC_OUT_OF_ORDER,
+};
+
+/**
+ * enum xsdfec_state - State.
+ * @XSDFEC_INIT: Driver is initialized.
+ * @XSDFEC_STARTED: Driver is started.
+ * @XSDFEC_STOPPED: Driver is stopped.
+ * @XSDFEC_NEEDS_RESET: Driver needs to be reset.
+ * @XSDFEC_PL_RECONFIGURE: Programmable Logic needs to be recofigured.
+ *
+ * This enum is used to indicate the state of the driver.
+ */
+enum xsdfec_state {
+	XSDFEC_INIT = 0,
+	XSDFEC_STARTED,
+	XSDFEC_STOPPED,
+	XSDFEC_NEEDS_RESET,
+	XSDFEC_PL_RECONFIGURE,
+};
+
+/**
+ * enum xsdfec_axis_width - AXIS_WIDTH.DIN Setting for 128-bit width.
+ * @XSDFEC_1x128b: DIN data input stream consists of a 128-bit lane
+ * @XSDFEC_2x128b: DIN data input stream consists of two 128-bit lanes
+ * @XSDFEC_4x128b: DIN data input stream consists of four 128-bit lanes
+ *
+ * This enum is used to indicate the AXIS_WIDTH.DIN setting for 128-bit width.
+ * The number of lanes of the DIN data input stream depends upon the
+ * AXIS_WIDTH.DIN parameter.
+ */
+enum xsdfec_axis_width {
+	XSDFEC_1x128b = 1,
+	XSDFEC_2x128b = 2,
+	XSDFEC_4x128b = 4,
+};
+
+/**
+ * enum xsdfec_axis_word_include - Words Configuration.
+ * @XSDFEC_FIXED_VALUE: Fixed, the DIN_WORDS AXI4-Stream interface is removed
+ *			from the IP instance and is driven with the specified
+ *			number of words.
+ * @XSDFEC_IN_BLOCK: In Block, configures the IP instance to expect a single
+ *		     DIN_WORDS value per input code block. The DIN_WORDS
+ *		     interface is present.
+ * @XSDFEC_PER_AXI_TRANSACTION: Per Transaction, configures the IP instance to
+ * expect one DIN_WORDS value per input transaction on the DIN interface. The
+ * DIN_WORDS interface is present.
+ * @XSDFEC_AXIS_WORDS_INCLUDE_MAX: Used to indicate out of bound Words
+ *				   Configurations.
+ *
+ * This enum is used to specify the DIN_WORDS configuration.
+ */
+enum xsdfec_axis_word_include {
+	XSDFEC_FIXED_VALUE = 0,
+	XSDFEC_IN_BLOCK,
+	XSDFEC_PER_AXI_TRANSACTION,
+	XSDFEC_AXIS_WORDS_INCLUDE_MAX,
+};
+
+/**
+ * struct xsdfec_irq - Enabling or Disabling Interrupts.
+ * @enable_isr: If true enables the ISR
+ * @enable_ecc_isr: If true enables the ECC ISR
+ */
+struct xsdfec_irq {
+	__s8 enable_isr;
+	__s8 enable_ecc_isr;
+};
+
+/**
+ * struct xsdfec_config - Configuration of SD-FEC core.
+ * @code: The codes being used by the SD-FEC instance
+ * @order: Order of Operation
+ * @bypass: Is the core being bypassed
+ * @code_wr_protect: Is write protection of LDPC codes enabled
+ * @din_width: Width of the DIN AXI4-Stream
+ * @din_word_include: How DIN_WORDS are inputted
+ * @dout_width: Width of the DOUT AXI4-Stream
+ * @dout_word_include: HOW DOUT_WORDS are outputted
+ * @irq: Enabling or disabling interrupts
+ */
+struct xsdfec_config {
+	enum xsdfec_code code;
+	enum xsdfec_order order;
+	__s8 bypass;
+	__s8 code_wr_protect;
+	enum xsdfec_axis_width din_width;
+	enum xsdfec_axis_word_include din_word_include;
+	enum xsdfec_axis_width dout_width;
+	enum xsdfec_axis_word_include dout_word_include;
+	struct xsdfec_irq irq;
+};
+
+/*
+ * XSDFEC IOCTL List
+ */
+#define XSDFEC_MAGIC 'f'
+#endif /* __XILINX_SDFEC_H__ */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
