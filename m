Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E030EB49B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 00:07:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2V2mdFV0C5fnuwgwmthDbMOkslrUtt/guNvNOEIi6j0=; b=HTS71seUPkNwei
	CMdQ9g3c/ZoxEvY0pXfBac1eqjlF42xQQMrbrrnwI/EHaPEQcGqBsJbjm+xHX+UohSXy/lmqimGcW
	YhlNNZXgS0r5IUbBnDzI4Hv1ouVH8TJQuwwIFuz46PzrQxIO1uRCkt6Zo6O0L3Z2E9fCFz3iSU6o9
	tOErKmArRy+yV5B7Fk2N3DjBClwLUDzdxSuLglfPszcQ8i+0+dNvOE04xB0jqkiFf8IOa4GdP7MDP
	GSXaeMEInBVKfGHVLMeBgEy2vXNI1Rvtz/a2DHq3W/0tVbw5JoNsnyMfDXtx13JyPgu3EbIT/Bibw
	mKFE2pQvnfABXRljiq6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKVTI-0002IA-GO; Sat, 27 Apr 2019 22:07:00 +0000
Received: from mail-eopbgr700084.outbound.protection.outlook.com
 ([40.107.70.84] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKVRi-0000Tz-Nl
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Apr 2019 22:05:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OkFs9Y6hX8TWtsjImjy2Uy6knUcI7cLW2qtz0BF4x8Q=;
 b=rDTAJRjO13BXmEMb9RfLxLuRdnNg4N2HA+O5U8uGljuFHrwFB/EJ4he5p/82ax9or9aPgMwJRxoOojhlAv4eB18QF+k3VRviOkWDFlmRSSaCvTEYi+c+Jn7qHh1LuVjjmYP2lFAC4FilESEy/TCh9Yxbv3iRBjLuhwlZhuKjVZ8=
Received: from BL0PR02CA0075.namprd02.prod.outlook.com (2603:10b6:208:51::16)
 by BN1PR02MB151.namprd02.prod.outlook.com (2a01:111:e400:20::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.1835.13; Sat, 27
 Apr 2019 22:05:17 +0000
Received: from BL2NAM02FT013.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::200) by BL0PR02CA0075.outlook.office365.com
 (2603:10b6:208:51::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1835.12 via Frontend
 Transport; Sat, 27 Apr 2019 22:05:16 +0000
Authentication-Results: spf=pass (sender IP is 149.199.80.198)
 smtp.mailfrom=xilinx.com; arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.80.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.80.198; helo=xir-pvapexch01.xlnx.xilinx.com;
Received: from xir-pvapexch01.xlnx.xilinx.com (149.199.80.198) by
 BL2NAM02FT013.mail.protection.outlook.com (10.152.77.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.1835.13 via Frontend Transport; Sat, 27 Apr 2019 22:05:16 +0000
Received: from xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1531.3; Sat, 27 Apr 2019 23:05:12 +0100
Received: from smtp.xilinx.com (172.21.105.197) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server id
 15.1.1531.3 via Frontend Transport; Sat, 27 Apr 2019 23:05:12 +0100
Received: from [149.199.110.15] (port=52636 helo=xirdraganc40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <dragan.cvetic@xilinx.com>)
 id 1hKVRY-0002Gu-4s; Sat, 27 Apr 2019 23:05:12 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH V3 07/12] misc: xilinx_sdfec: Add ability to configure LDPC
Date: Sat, 27 Apr 2019 23:05:01 +0100
Message-ID: <1556402706-176271-8-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(979002)(346002)(396003)(136003)(376002)(39860400002)(2980300002)(189003)(199004)(26005)(336012)(11346002)(2906002)(44832011)(2616005)(956004)(126002)(48376002)(476003)(356004)(8676002)(478600001)(51416003)(76176011)(186003)(6666004)(446003)(486006)(7696005)(426003)(50466002)(9786002)(26826003)(93146003)(107886003)(110136005)(316002)(36906005)(16586007)(76130400001)(28376004)(7636002)(50226002)(36756003)(60926002)(5660300002)(8936002)(305945005)(54906003)(4326008)(70586007)(70206006)(71366001)(106002)(246002)(47776003)(30864003)(14444005)(2201001)(102446001)(461764006)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN1PR02MB151; H:xir-pvapexch01.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a9262486-1a6a-4d9e-f95b-08d6cb5c6e68
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328);
 SRVR:BN1PR02MB151; 
X-MS-TrafficTypeDiagnostic: BN1PR02MB151:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <BN1PR02MB151696B09DBB3C810749FC4CB3F0@BN1PR02MB151.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:219;
X-Forefront-PRVS: 0020414413
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: YarKaMjkQDNldhYGxstlV3oPTJq8aYir+utlfr+9uhI/Ukm3zaeeq9687YJ8BVqUShgJ0lHzFh2hnFwOhMRT2SrZ4sRIfH2G9pTon6gOSS3BRX3ywGzjIh7uc9LGS2HpgePUWEhhMUMHlibXCIJtJWc9lHHJ0sWbiJNstlWTTetbOrVfu9sLMniip4imd/3BtxPbaOxdFartIaqbCOuoDcv97VjoT3VJQs2dLdKGpaTwJQPCnfmrKOvxXDPFuY62IkDOq51oS2ExuK0dixm4gotPbNb2Frycc6TD5EYU8YypMEdUKATgfCk8ZGgHnUtQE/Pam6bffSuNHoswrw20tXs+WAJ7O0eV1sG/rEfO9cyspncNHx6Jz+GGXBoUL42G3uSGTncAn8OuZ3AXvWMP/zWiiaRgwDWggWkkEJhg1Qc=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2019 22:05:16.7685 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a9262486-1a6a-4d9e-f95b-08d6cb5c6e68
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch01.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN1PR02MB151
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_150523_041792_8ABD4FBC 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.84 listed in list.dnswl.org]
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

Add the capability to configure LDPC mode via the ioctl
XSDFEC_ADD_LDPC_CODE_PARAMS.

Tested-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
---
 drivers/misc/xilinx_sdfec.c      | 333 +++++++++++++++++++++++++++++++++++++++
 include/uapi/misc/xilinx_sdfec.h | 119 ++++++++++++++
 2 files changed, 452 insertions(+)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index 19b5f96..18e7ae2 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -26,6 +26,8 @@
 #include <linux/spinlock.h>
 #include <linux/clk.h>
 #include <linux/compat.h>
+#include <linux/mm.h>
+#include <linux/highmem.h>
 
 #include <uapi/misc/xilinx_sdfec.h>
 
@@ -122,6 +124,57 @@ static dev_t xsdfec_devt;
 #define XSDFEC_TURBO_SCALE_BIT_POS (8)
 #define XSDFEC_TURBO_SCALE_MAX (15)
 
+/* REG0 Register */
+#define XSDFEC_LDPC_CODE_REG0_ADDR_BASE (0x2000)
+#define XSDFEC_LDPC_CODE_REG0_ADDR_HIGH (0x27F0)
+#define XSDFEC_REG0_N_MIN (4)
+#define XSDFEC_REG0_N_MAX (32768)
+#define XSDFEC_REG0_N_MUL_P (256)
+#define XSDFEC_REG0_N_LSB (0)
+#define XSDFEC_REG0_K_MIN (2)
+#define XSDFEC_REG0_K_MAX (32766)
+#define XSDFEC_REG0_K_MUL_P (256)
+#define XSDFEC_REG0_K_LSB (16)
+
+/* REG1 Register */
+#define XSDFEC_LDPC_CODE_REG1_ADDR_BASE (0x2004)
+#define XSDFEC_LDPC_CODE_REG1_ADDR_HIGH (0x27f4)
+#define XSDFEC_REG1_PSIZE_MIN (2)
+#define XSDFEC_REG1_PSIZE_MAX (512)
+#define XSDFEC_REG1_NO_PACKING_MASK (0x400)
+#define XSDFEC_REG1_NO_PACKING_LSB (10)
+#define XSDFEC_REG1_NM_MASK (0xFF800)
+#define XSDFEC_REG1_NM_LSB (11)
+#define XSDFEC_REG1_BYPASS_MASK (0x100000)
+
+/* REG2 Register */
+#define XSDFEC_LDPC_CODE_REG2_ADDR_BASE (0x2008)
+#define XSDFEC_LDPC_CODE_REG2_ADDR_HIGH (0x27f8)
+#define XSDFEC_REG2_NLAYERS_MIN (1)
+#define XSDFEC_REG2_NLAYERS_MAX (256)
+#define XSDFEC_REG2_NNMQC_MASK (0xFFE00)
+#define XSDFEC_REG2_NMQC_LSB (9)
+#define XSDFEC_REG2_NORM_TYPE_MASK (0x100000)
+#define XSDFEC_REG2_NORM_TYPE_LSB (20)
+#define XSDFEC_REG2_SPECIAL_QC_MASK (0x200000)
+#define XSDFEC_REG2_SPEICAL_QC_LSB (21)
+#define XSDFEC_REG2_NO_FINAL_PARITY_MASK (0x400000)
+#define XSDFEC_REG2_NO_FINAL_PARITY_LSB (22)
+#define XSDFEC_REG2_MAX_SCHEDULE_MASK (0x1800000)
+#define XSDFEC_REG2_MAX_SCHEDULE_LSB (23)
+
+/* REG3 Register */
+#define XSDFEC_LDPC_CODE_REG3_ADDR_BASE (0x200C)
+#define XSDFEC_LDPC_CODE_REG3_ADDR_HIGH (0x27FC)
+#define XSDFEC_REG3_LA_OFF_LSB (8)
+#define XSDFEC_REG3_QC_OFF_LSB (16)
+
+#define XSDFEC_LDPC_REG_JUMP (0x10)
+#define XSDFEC_REG_WIDTH_JUMP (4)
+
+/* The maximum number of pinned pages */
+#define MAX_NUM_PAGES ((XSDFEC_QC_TABLE_DEPTH / PAGE_SIZE) + 1)
+
 /**
  * struct xsdfec_clks - For managing SD-FEC clocks
  * @core_clk: Main processing clock for core
@@ -318,6 +371,283 @@ static int xsdfec_get_turbo(struct xsdfec_dev *xsdfec, void __user *arg)
 	return err;
 }
 
+static int xsdfec_reg0_write(struct xsdfec_dev *xsdfec, u32 n, u32 k, u32 psize,
+			     u32 offset)
+{
+	u32 wdata;
+
+	if (n < XSDFEC_REG0_N_MIN || n > XSDFEC_REG0_N_MAX ||
+	    (n > XSDFEC_REG0_N_MUL_P * psize) || n <= k || ((n % psize) != 0)) {
+		dev_err(xsdfec->dev, "N value is not in range");
+		return -EINVAL;
+	}
+	n <<= XSDFEC_REG0_N_LSB;
+
+	if (k < XSDFEC_REG0_K_MIN || k > XSDFEC_REG0_K_MAX ||
+	    (k > XSDFEC_REG0_K_MUL_P * psize) || ((k % psize) != 0)) {
+		dev_err(xsdfec->dev, "K value is not in range");
+		return -EINVAL;
+	}
+	k = k << XSDFEC_REG0_K_LSB;
+	wdata = k | n;
+
+	if (XSDFEC_LDPC_CODE_REG0_ADDR_BASE + (offset * XSDFEC_LDPC_REG_JUMP) >
+	    XSDFEC_LDPC_CODE_REG0_ADDR_HIGH) {
+		dev_err(xsdfec->dev, "Writing outside of LDPC reg0 space 0x%x",
+			XSDFEC_LDPC_CODE_REG0_ADDR_BASE +
+				(offset * XSDFEC_LDPC_REG_JUMP));
+		return -EINVAL;
+	}
+	xsdfec_regwrite(xsdfec,
+			XSDFEC_LDPC_CODE_REG0_ADDR_BASE +
+				(offset * XSDFEC_LDPC_REG_JUMP),
+			wdata);
+	return 0;
+}
+
+static int xsdfec_reg1_write(struct xsdfec_dev *xsdfec, u32 psize,
+			     u32 no_packing, u32 nm, u32 offset)
+{
+	u32 wdata;
+
+	if (psize < XSDFEC_REG1_PSIZE_MIN || psize > XSDFEC_REG1_PSIZE_MAX) {
+		dev_err(xsdfec->dev, "Psize is not in range");
+		return -EINVAL;
+	}
+
+	if (no_packing != 0 && no_packing != 1)
+		dev_err(xsdfec->dev, "No-packing bit register invalid");
+	no_packing = ((no_packing << XSDFEC_REG1_NO_PACKING_LSB) &
+		      XSDFEC_REG1_NO_PACKING_MASK);
+
+	if (nm & ~(XSDFEC_REG1_NM_MASK >> XSDFEC_REG1_NM_LSB))
+		dev_err(xsdfec->dev, "NM is beyond 10 bits");
+	nm = (nm << XSDFEC_REG1_NM_LSB) & XSDFEC_REG1_NM_MASK;
+
+	wdata = nm | no_packing | psize;
+	if (XSDFEC_LDPC_CODE_REG1_ADDR_BASE + (offset * XSDFEC_LDPC_REG_JUMP) >
+	    XSDFEC_LDPC_CODE_REG1_ADDR_HIGH) {
+		dev_err(xsdfec->dev, "Writing outside of LDPC reg1 space 0x%x",
+			XSDFEC_LDPC_CODE_REG1_ADDR_BASE +
+				(offset * XSDFEC_LDPC_REG_JUMP));
+		return -EINVAL;
+	}
+	xsdfec_regwrite(xsdfec,
+			XSDFEC_LDPC_CODE_REG1_ADDR_BASE +
+				(offset * XSDFEC_LDPC_REG_JUMP),
+			wdata);
+	return 0;
+}
+
+static int xsdfec_reg2_write(struct xsdfec_dev *xsdfec, u32 nlayers, u32 nmqc,
+			     u32 norm_type, u32 special_qc, u32 no_final_parity,
+			     u32 max_schedule, u32 offset)
+{
+	u32 wdata;
+
+	if (nlayers < XSDFEC_REG2_NLAYERS_MIN ||
+	    nlayers > XSDFEC_REG2_NLAYERS_MAX) {
+		dev_err(xsdfec->dev, "Nlayers is not in range");
+		return -EINVAL;
+	}
+
+	if (nmqc & ~(XSDFEC_REG2_NNMQC_MASK >> XSDFEC_REG2_NMQC_LSB))
+		dev_err(xsdfec->dev, "NMQC exceeds 11 bits");
+	nmqc = (nmqc << XSDFEC_REG2_NMQC_LSB) & XSDFEC_REG2_NNMQC_MASK;
+
+	if (norm_type > 1)
+		dev_err(xsdfec->dev, "Norm type is invalid");
+	norm_type = ((norm_type << XSDFEC_REG2_NORM_TYPE_LSB) &
+		     XSDFEC_REG2_NORM_TYPE_MASK);
+	if (special_qc > 1)
+		dev_err(xsdfec->dev, "Special QC in invalid");
+	special_qc = ((special_qc << XSDFEC_REG2_SPEICAL_QC_LSB) &
+		      XSDFEC_REG2_SPECIAL_QC_MASK);
+
+	if (no_final_parity > 1)
+		dev_err(xsdfec->dev, "No final parity check invalid");
+	no_final_parity =
+		((no_final_parity << XSDFEC_REG2_NO_FINAL_PARITY_LSB) &
+		 XSDFEC_REG2_NO_FINAL_PARITY_MASK);
+	if (max_schedule &
+	    ~(XSDFEC_REG2_MAX_SCHEDULE_MASK >> XSDFEC_REG2_MAX_SCHEDULE_LSB))
+		dev_err(xsdfec->dev, "Max Schdule exceeds 2 bits");
+	max_schedule = ((max_schedule << XSDFEC_REG2_MAX_SCHEDULE_LSB) &
+			XSDFEC_REG2_MAX_SCHEDULE_MASK);
+
+	wdata = (max_schedule | no_final_parity | special_qc | norm_type |
+		 nmqc | nlayers);
+
+	if (XSDFEC_LDPC_CODE_REG2_ADDR_BASE + (offset * XSDFEC_LDPC_REG_JUMP) >
+	    XSDFEC_LDPC_CODE_REG2_ADDR_HIGH) {
+		dev_err(xsdfec->dev, "Writing outside of LDPC reg2 space 0x%x",
+			XSDFEC_LDPC_CODE_REG2_ADDR_BASE +
+				(offset * XSDFEC_LDPC_REG_JUMP));
+		return -EINVAL;
+	}
+	xsdfec_regwrite(xsdfec,
+			XSDFEC_LDPC_CODE_REG2_ADDR_BASE +
+				(offset * XSDFEC_LDPC_REG_JUMP),
+			wdata);
+	return 0;
+}
+
+static int xsdfec_reg3_write(struct xsdfec_dev *xsdfec, u8 sc_off, u8 la_off,
+			     u16 qc_off, u32 offset)
+{
+	u32 wdata;
+
+	wdata = ((qc_off << XSDFEC_REG3_QC_OFF_LSB) |
+		 (la_off << XSDFEC_REG3_LA_OFF_LSB) | sc_off);
+	if (XSDFEC_LDPC_CODE_REG3_ADDR_BASE + (offset * XSDFEC_LDPC_REG_JUMP) >
+	    XSDFEC_LDPC_CODE_REG3_ADDR_HIGH) {
+		dev_err(xsdfec->dev, "Writing outside of LDPC reg3 space 0x%x",
+			XSDFEC_LDPC_CODE_REG3_ADDR_BASE +
+				(offset * XSDFEC_LDPC_REG_JUMP));
+		return -EINVAL;
+	}
+	xsdfec_regwrite(xsdfec,
+			XSDFEC_LDPC_CODE_REG3_ADDR_BASE +
+				(offset * XSDFEC_LDPC_REG_JUMP),
+			wdata);
+	return 0;
+}
+
+static int xsdfec_table_write(struct xsdfec_dev *xsdfec, u32 offset,
+			      u32 *src_ptr, u32 len, const u32 base_addr,
+			      const u32 depth)
+{
+	u32 reg = 0;
+	u32 res;
+	u32 n, i;
+	u32 *addr = NULL;
+	struct page *page[MAX_NUM_PAGES];
+
+	/*
+	 * Writes that go beyond the length of
+	 * Shared Scale(SC) table should fail
+	 */
+	if ((XSDFEC_REG_WIDTH_JUMP * (offset + len)) > depth) {
+		dev_err(xsdfec->dev, "Write exceeds SC table length");
+		return -EINVAL;
+	}
+
+	n = len / PAGE_SIZE;
+	if (len % PAGE_SIZE)
+		n += 1;
+
+	res = get_user_pages_fast((unsigned long)src_ptr, n, 0, page);
+	if (res < n) {
+		for (i = 0; i < res; i++)
+			put_page(page[i]);
+		return -EINVAL;
+	}
+
+	for (i = 0; i < n; i++) {
+		addr = kmap(page[i]);
+		do {
+			xsdfec_regwrite(xsdfec,
+					base_addr + ((offset + reg) *
+						     XSDFEC_REG_WIDTH_JUMP),
+					addr[reg]);
+			reg++;
+		} while ((reg < len) && (reg % PAGE_SIZE));
+		put_page(page[i]);
+	}
+	return reg;
+}
+
+static int xsdfec_add_ldpc(struct xsdfec_dev *xsdfec, void __user *arg)
+{
+	struct xsdfec_ldpc_params *ldpc;
+	int ret, n;
+
+	ldpc = kzalloc(sizeof(*ldpc), GFP_KERNEL);
+	if (!ldpc)
+		return -ENOMEM;
+
+	ret = copy_from_user(ldpc, arg, sizeof(*ldpc));
+	if (ret)
+		goto err_out;
+
+	if (xsdfec->config.code == XSDFEC_TURBO_CODE) {
+		dev_err(xsdfec->dev,
+			"%s: Unable to write LDPC to SDFEC%d check DT",
+			__func__, xsdfec->config.fec_id);
+		ret = -EIO;
+		goto err_out;
+	}
+
+	/* Verify Device has not started */
+	if (xsdfec->state == XSDFEC_STARTED) {
+		dev_err(xsdfec->dev,
+			"%s attempting to write LDPC code while started for SDFEC%d",
+			__func__, xsdfec->config.fec_id);
+		ret = -EIO;
+		goto err_out;
+	}
+
+	if (xsdfec->config.code_wr_protect) {
+		dev_err(xsdfec->dev,
+			"%s writing LDPC code while Code Write Protection enabled for SDFEC%d",
+			__func__, xsdfec->config.fec_id);
+		ret = -EIO;
+		goto err_out;
+	}
+
+	/* Write Reg 0 */
+	ret = xsdfec_reg0_write(xsdfec, ldpc->n, ldpc->k, ldpc->psize,
+				ldpc->code_id);
+	if (ret)
+		goto err_out;
+
+	/* Write Reg 1 */
+	ret = xsdfec_reg1_write(xsdfec, ldpc->psize, ldpc->no_packing, ldpc->nm,
+				ldpc->code_id);
+	if (ret)
+		goto err_out;
+
+	/* Write Reg 2 */
+	ret = xsdfec_reg2_write(xsdfec, ldpc->nlayers, ldpc->nmqc,
+				ldpc->norm_type, ldpc->special_qc,
+				ldpc->no_final_parity, ldpc->max_schedule,
+				ldpc->code_id);
+	if (ret)
+		goto err_out;
+
+	/* Write Reg 3 */
+	ret = xsdfec_reg3_write(xsdfec, ldpc->sc_off, ldpc->la_off,
+				ldpc->qc_off, ldpc->code_id);
+	if (ret)
+		goto err_out;
+
+	/* Write Shared Codes */
+	n = ldpc->nlayers / 4;
+	if (ldpc->nlayers % 4)
+		n++;
+
+	ret = xsdfec_table_write(xsdfec, ldpc->sc_off, ldpc->sc_table, n,
+				 XSDFEC_LDPC_SC_TABLE_ADDR_BASE,
+				 XSDFEC_SC_TABLE_DEPTH);
+	if (ret < 0)
+		goto err_out;
+
+	ret = xsdfec_table_write(xsdfec, 4 * ldpc->la_off, ldpc->la_table,
+				 ldpc->nlayers, XSDFEC_LDPC_LA_TABLE_ADDR_BASE,
+				 XSDFEC_LA_TABLE_DEPTH);
+	if (ret < 0)
+		goto err_out;
+
+	ret = xsdfec_table_write(xsdfec, 4 * ldpc->qc_off, ldpc->qc_table,
+				 ldpc->nqc, XSDFEC_LDPC_QC_TABLE_ADDR_BASE,
+				 XSDFEC_QC_TABLE_DEPTH);
+	if (ret > 0)
+		ret = 0;
+err_out:
+	kfree(ldpc);
+	return ret;
+}
+
 static u32
 xsdfec_translate_axis_width_cfg_val(enum xsdfec_axis_width axis_width_cfg)
 {
@@ -417,6 +747,9 @@ static long xsdfec_dev_ioctl(struct file *fptr, unsigned int cmd,
 	case XSDFEC_GET_TURBO:
 		rval = xsdfec_get_turbo(xsdfec, arg);
 		break;
+	case XSDFEC_ADD_LDPC_CODE_PARAMS:
+		rval = xsdfec_add_ldpc(xsdfec, arg);
+		break;
 	default:
 		/* Should not get here */
 		dev_err(xsdfec->dev, "Undefined SDFEC IOCTL");
diff --git a/include/uapi/misc/xilinx_sdfec.h b/include/uapi/misc/xilinx_sdfec.h
index 3dc8c53..b6987c5 100644
--- a/include/uapi/misc/xilinx_sdfec.h
+++ b/include/uapi/misc/xilinx_sdfec.h
@@ -11,6 +11,22 @@
 #ifndef __XILINX_SDFEC_H__
 #define __XILINX_SDFEC_H__
 
+/* Shared LDPC Tables */
+#define XSDFEC_LDPC_SC_TABLE_ADDR_BASE (0x10000)
+#define XSDFEC_LDPC_SC_TABLE_ADDR_HIGH (0x10400)
+#define XSDFEC_LDPC_LA_TABLE_ADDR_BASE (0x18000)
+#define XSDFEC_LDPC_LA_TABLE_ADDR_HIGH (0x19000)
+#define XSDFEC_LDPC_QC_TABLE_ADDR_BASE (0x20000)
+#define XSDFEC_LDPC_QC_TABLE_ADDR_HIGH (0x28000)
+
+/* LDPC tables depth */
+#define XSDFEC_SC_TABLE_DEPTH                                                  \
+	(XSDFEC_LDPC_SC_TABLE_ADDR_HIGH - XSDFEC_LDPC_SC_TABLE_ADDR_BASE)
+#define XSDFEC_LA_TABLE_DEPTH                                                  \
+	(XSDFEC_LDPC_LA_TABLE_ADDR_HIGH - XSDFEC_LDPC_LA_TABLE_ADDR_BASE)
+#define XSDFEC_QC_TABLE_DEPTH                                                  \
+	(XSDFEC_LDPC_QC_TABLE_ADDR_HIGH - XSDFEC_LDPC_QC_TABLE_ADDR_BASE)
+
 /**
  * enum xsdfec_code - Code Type.
  * @XSDFEC_TURBO_CODE: Driver is configured for Turbo mode.
@@ -125,6 +141,53 @@ struct xsdfec_turbo {
 };
 
 /**
+ * struct xsdfec_ldpc_params - User data for LDPC codes.
+ * @n: Number of code word bits
+ * @k: Number of information bits
+ * @psize: Size of sub-matrix
+ * @nlayers: Number of layers in code
+ * @nqc: Quasi Cyclic Number
+ * @nmqc: Number of M-sized QC operations in parity check matrix
+ * @nm: Number of M-size vectors in N
+ * @norm_type: Normalization required or not
+ * @no_packing: Determines if multiple QC ops should be performed
+ * @special_qc: Sub-Matrix property for Circulant weight > 0
+ * @no_final_parity: Decide if final parity check needs to be performed
+ * @max_schedule: Experimental code word scheduling limit
+ * @sc_off: SC offset
+ * @la_off: LA offset
+ * @qc_off: QC offset
+ * @sc_table: Pointer to SC Table which must be page aligned
+ * @la_table: Pointer to LA Table which must be page aligned
+ * @qc_table: Pointer to QC Table which must be page aligned
+ * @code_id: LDPC Code
+ *
+ * This structure describes the LDPC code that is passed to the driver by the
+ * application.
+ */
+struct xsdfec_ldpc_params {
+	__u32 n;
+	__u32 k;
+	__u32 psize;
+	__u32 nlayers;
+	__u32 nqc;
+	__u32 nmqc;
+	__u32 nm;
+	__u32 norm_type;
+	__u32 no_packing;
+	__u32 special_qc;
+	__u32 no_final_parity;
+	__u32 max_schedule;
+	__u32 sc_off;
+	__u32 la_off;
+	__u32 qc_off;
+	__u32 *sc_table;
+	__u32 *la_table;
+	__u32 *qc_table;
+	__u16 code_id;
+};
+
+/**
  * struct xsdfec_status - Status of SD-FEC core.
  * @fec_id: ID of SD-FEC instance. ID is limited to the number of active
  *          SD-FEC's in the FPGA and is related to the driver instance
@@ -176,6 +239,41 @@ struct xsdfec_config {
 	struct xsdfec_irq irq;
 };
 
+/**
+ * struct xsdfec_ldpc_param_table_sizes - Used to store sizes of SD-FEC table
+ *					  entries for an individual LPDC code
+ *					  parameter.
+ * @sc_size: Size of SC table used
+ * @la_size: Size of LA table used
+ * @qc_size: Size of QC table used
+ */
+struct xsdfec_ldpc_param_table_sizes {
+	__u32 sc_size;
+	__u32 la_size;
+	__u32 qc_size;
+};
+
+/**
+ * xsdfec_calculate_shared_ldpc_table_entry_size - Calculates shared code
+ * table sizes.
+ * @ldpc: Pointer to the LPDC Code Parameters
+ * @table_sizes: Pointer to structure containing the calculated table sizes
+ *
+ * Calculates the size of shared LDPC code tables used for a specified LPDC code
+ * parameters.
+ */
+inline void
+xsdfec_calculate_shared_ldpc_table_entry_size(struct xsdfec_ldpc_params *ldpc,
+	struct xsdfec_ldpc_param_table_sizes *table_sizes)
+{
+	/* Calculate the sc_size in 32 bit words */
+	table_sizes->sc_size = (ldpc->nlayers + 3) >> 2;
+	/* Calculate the la_size in 256 bit words */
+	table_sizes->la_size = ((ldpc->nlayers << 2) + 15) >> 4;
+	/* Calculate the qc_size in 256 bit words */
+	table_sizes->qc_size = ((ldpc->nqc << 2) + 15) >> 4;
+}
+
 /*
  * XSDFEC IOCTL List
  */
@@ -196,6 +294,27 @@ struct xsdfec_config {
  */
 #define XSDFEC_SET_TURBO _IOW(XSDFEC_MAGIC, 4, struct xsdfec_turbo)
 /**
+ * DOC: XSDFEC_ADD_LDPC_CODE_PARAMS
+ * @Parameters
+ *
+ * @struct xsdfec_ldpc_params *
+ *	Pointer to the &struct xsdfec_ldpc_params that contains the LDPC code
+ *	parameters to be added to the SD-FEC Block
+ *
+ * @Description
+ * ioctl to add an LDPC code to the SD-FEC LDPC codes
+ *
+ * This can only be used when:
+ *
+ * - Driver is in the XSDFEC_STOPPED state
+ *
+ * - SD-FEC core is configured as LPDC
+ *
+ * - SD-FEC Code Write Protection is disabled
+ */
+#define XSDFEC_ADD_LDPC_CODE_PARAMS                                            \
+	_IOW(XSDFEC_MAGIC, 5, struct xsdfec_ldpc_params)
+/**
  * DOC: XSDFEC_GET_TURBO
  * @Parameters
  *
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
