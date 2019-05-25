Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 863D02A425
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 13:38:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PU0nTCznLifYOilZ9F9Np4p2BluNmudm/EgIXMP5ZDc=; b=AvmM7JWDhlAzy/
	4mja33uZkwg/NOa5GMF5fhaDEsyhVJbxujV/E27UkZdgdWNuP2W34U0xZ7IBpVUu+hf5yuH2kHpZ0
	938tyn6NhVf5ICazpbr0R1qCtughvjt+T+dg2BZWmzu2byuqoWlUrGoC+biqzlKxkUZba2v62VAVO
	Jr75D57O/Yv6MB6nyoJdys9a2mHGQx6OYvPBbTdhXiOrNIqEIhDMas17P2fCYTWoWxQAiGOgjtUyV
	SZUlEF71V2YSuFc4dDAkLnwng2fTQBv3pOgq4bP0MNqcIZINjctyg/xcfkVTABl9udmxh8unVvkZ4
	l0G3kpFFHab3zFFILokQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUV0h-0002Vu-S4; Sat, 25 May 2019 11:38:47 +0000
Received: from mail-eopbgr790089.outbound.protection.outlook.com
 ([40.107.79.89] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUUzf-0001SV-8q
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 11:37:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d2/d42icmrR4riWLTT39IUQOcPzzO1DCU+6XeCyVVxw=;
 b=THUFL+Rb7l/c+6n8sTtuYN925pXj434j1cFq62aoXGyTMjRTWdUjP/jMz+ZhBixJvEAHtDYYgfdO1MWkM3vS5SkT01pM+jfKewswv9234svH+nf3VqrrqM6sRwRgQuq2Ot6vktS2qXhNsOzZgRUxCrt5GjLDFnVbtjLCgo6WnzI=
Received: from CY4PR02CA0002.namprd02.prod.outlook.com (10.169.188.12) by
 DM6PR02MB4937.namprd02.prod.outlook.com (20.176.111.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Sat, 25 May 2019 11:37:41 +0000
Received: from SN1NAM02FT047.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::202) by CY4PR02CA0002.outlook.office365.com
 (2603:10b6:903:18::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.17 via Frontend
 Transport; Sat, 25 May 2019 11:37:41 +0000
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
 15.20.1922.16 via Frontend Transport; Sat, 25 May 2019 11:37:40 +0000
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
 id 1hUUzW-00058U-M1; Sat, 25 May 2019 12:37:34 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH V4 05/12] misc: xilinx_sdfec: Store driver config and state
Date: Sat, 25 May 2019 12:37:18 +0100
Message-ID: <1558784245-108751-6-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558784245-108751-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1558784245-108751-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(396003)(376002)(39840400004)(346002)(136003)(2980300002)(199004)(189003)(106002)(36906005)(16586007)(14444005)(2616005)(126002)(50466002)(2201001)(44832011)(70586007)(48376002)(70206006)(305945005)(316002)(76130400001)(71366001)(476003)(26826003)(107886003)(51416003)(47776003)(486006)(956004)(478600001)(11346002)(28376004)(110136005)(7696005)(76176011)(60926002)(7636002)(446003)(54906003)(8676002)(26005)(426003)(30864003)(50226002)(4326008)(336012)(5660300002)(8936002)(9786002)(6666004)(186003)(246002)(36756003)(356004)(2906002)(102446001)(461764006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4937; H:xir-pvapexch01.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e633ac55-9a19-4fec-5b49-08d6e1056549
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(4709054)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328);
 SRVR:DM6PR02MB4937; 
X-MS-TrafficTypeDiagnostic: DM6PR02MB4937:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <DM6PR02MB493780F0F85DB01C9E7ADCD0CB030@DM6PR02MB4937.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-Forefront-PRVS: 0048BCF4DA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: i6CZlUbDNqUkKDETKTZ71F23ndUEVKNJgMXO3NmwqRW2LyLMUil+3U8czzpPbsiR012IzqNQcr2de6d5GFrGLW+g7qKEtIeuzfF6NQt9auMzC2RTvbBJIhmDRCCH86kV5i+ltWegShoNuRdfk6Y3mhKMZJs1XTOcH6hEeZYZhZ3+DqsGTVR7zbHDefaF8pr/OhvgiW8YVqmdI7eMvYzccD0k69w7TjZ6rcRstVW/8ol+GPvSA7nZQkA1FKVNHXUXGEu+/TYZXGkGa4ZaoZQnO+243+D1uM/Yx9pFDPquxzww42l3mmiZn4p+OsuSxuEsIzMBsM3Ak3V1BV24N0Jg4NgE5G/G3neUk9B9P6a3XtL0Stf1H7WBZwzoLeVx6sG1rysA0EclUnNRvWnGwHWASnwhQz9RQOvYg3YfSo97puk=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2019 11:37:40.6163 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e633ac55-9a19-4fec-5b49-08d6e1056549
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch01.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4937
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_043743_444257_F549C405 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.79.89 listed in list.dnswl.org]
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

Stores configuration based on parameters from the DT
node and values from the SD-FEC core plus reads
the default state from the SD-FEC core. To obtain
values from the core register read, write capabilities
have been added plus related register map details.

Tested-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
---
 drivers/misc/xilinx_sdfec.c      | 297 +++++++++++++++++++++++++++++++++++++++
 include/uapi/misc/xilinx_sdfec.h |  94 +++++++++++++
 2 files changed, 391 insertions(+)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index 740b487..c19df6b 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -24,6 +24,85 @@
 
 static atomic_t xsdfec_ndevs = ATOMIC_INIT(0);
 
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
@@ -50,6 +129,7 @@ struct xsdfec_clks {
  * struct xsdfec_dev - Driver data for SDFEC
  * @regs: device physical base address
  * @dev: pointer to device struct
+ * @state: State of the SDFEC device
  * @config: Configuration of the SDFEC device
  * @miscdev: Misc device handle
  * @irq_lock: Driver spinlock
@@ -60,6 +140,7 @@ struct xsdfec_clks {
 struct xsdfec_dev {
 	void __iomem *regs;
 	struct device *dev;
+	enum xsdfec_state state;
 	struct xsdfec_config config;
 	struct miscdevice miscdev;
 	/* Spinlock to protect state_updated and stats_updated */
@@ -67,6 +148,65 @@ struct xsdfec_dev {
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
 static int xsdfec_dev_open(struct inode *iptr, struct file *fptr)
 {
 	return 0;
@@ -77,6 +217,69 @@ static int xsdfec_dev_release(struct inode *iptr, struct file *fptr)
 	return 0;
 }
 
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
 static long xsdfec_dev_ioctl(struct file *fptr, unsigned int cmd,
 			     unsigned long data)
 {
@@ -125,6 +328,94 @@ static const struct file_operations xsdfec_fops = {
 #endif
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
+	if (rval < 0) {
+		return rval;
+	}
+
+	if (!strcasecmp(fec_code, "ldpc")) {
+		xsdfec->config.code = XSDFEC_LDPC_CODE;
+	} else if (!strcasecmp(fec_code, "turbo")) {
+		xsdfec->config.code = XSDFEC_TURBO_CODE;
+	} else {
+		return -EINVAL;
+	}
+
+	rval = of_property_read_u32(node, "xlnx,sdfec-din-words",
+				    &din_word_include);
+	if (rval < 0) {
+		return rval;
+	}
+
+	if (din_word_include < XSDFEC_AXIS_WORDS_INCLUDE_MAX) {
+		xsdfec->config.din_word_include = din_word_include;
+	} else {
+		return -EINVAL;
+	}
+
+	rval = of_property_read_u32(node, "xlnx,sdfec-din-width", &din_width);
+	if (rval < 0) {
+		return rval;
+	}
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
+	if (rval < 0) {
+		return rval;
+	}
+
+	if (dout_word_include < XSDFEC_AXIS_WORDS_INCLUDE_MAX) {
+		xsdfec->config.dout_word_include = dout_word_include;
+	} else {
+		return -EINVAL;
+	}
+
+	rval = of_property_read_u32(node, "xlnx,sdfec-dout-width", &dout_width);
+	if (rval < 0) {
+		return rval;
+	}
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
@@ -308,6 +599,12 @@ static int xsdfec_probe(struct platform_device *pdev)
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
index 791d412..15647ef 100644
--- a/include/uapi/misc/xilinx_sdfec.h
+++ b/include/uapi/misc/xilinx_sdfec.h
@@ -14,6 +14,33 @@
 #include <linux/types.h>
 
 /**
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
  * enum xsdfec_state - State.
  * @XSDFEC_INIT: Driver is initialized.
  * @XSDFEC_STARTED: Driver is started.
@@ -32,13 +59,80 @@ enum xsdfec_state {
 };
 
 /**
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
  * struct xsdfec_config - Configuration of SD-FEC core.
  * @fec_id: ID of SD-FEC instance. ID is limited to the number of active
  *          SD-FEC's in the FPGA and is related to the driver instance
  *          Minor number.
+ * @code: The codes being used by the SD-FEC instance
+ * @order: Order of Operation
+ * @bypass: Is the core being bypassed
+ * @code_wr_protect: Is write protection of LDPC codes enabled
+ * @din_width: Width of the DIN AXI4-Stream
+ * @din_word_include: How DIN_WORDS are inputted
+ * @dout_width: Width of the DOUT AXI4-Stream
+ * @dout_word_include: HOW DOUT_WORDS are outputted
+ * @irq: Enabling or disabling interrupts
  */
 struct xsdfec_config {
 	__s32 fec_id;
+	enum xsdfec_code code;
+	enum xsdfec_order order;
+	__s8 bypass;
+	__s8 code_wr_protect;
+	enum xsdfec_axis_width din_width;
+	enum xsdfec_axis_word_include din_word_include;
+	enum xsdfec_axis_width dout_width;
+	enum xsdfec_axis_word_include dout_word_include;
+	struct xsdfec_irq irq;
 };
 
 /*
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
