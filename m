Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85BCB3A299
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 02:05:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fl0XQGcdMsK6lJ6/dm3+9gzKUFeq/FpwOBJhY9SdMRE=; b=px3D9W27Go07AR
	GUGog/dTMkX79YJUrdWK1YPmZqWSsLk8DSWjyJX2ay4I8rgaj9vuhwdSnFZPsY0dzcmjHVeSAXvHx
	ZdGhkp2i8OxmGKVAfOXadxo51hvImM/IRCqoRPVDAAD+ttVaRhzvjfht69n7injq0vyUwnuQPH3jV
	WG4E0d+8+HTsKHseh2r/WpUIebaa0gVVUlrdzoR5diO5ZPvQyrU5UE7YGbLiQC6YElZKz7gFtBr/o
	39OVmuCMGdXSiPXIUb2b4hEO0aDbVnUxpaAVeaEe9RlbpLtMp9vQNWKxa8OeP+H28z2dRXyVHIHHl
	I261jvh5Ys7zxhalFGOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZlLH-0008Ru-Ut; Sun, 09 Jun 2019 00:05:48 +0000
Received: from mail-eopbgr680067.outbound.protection.outlook.com
 ([40.107.68.67] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZlK2-0006Y1-1B
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Jun 2019 00:04:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lb3scf/LzCRH/ECLe+oB5otZDn/Nihb4B3Ncvf7QNts=;
 b=jQlwi7yXQStEnkgEAUwKzbyIHnrAZgfFkxcTVNLZX8SVKdeCdvppFk6KloQrL3zA3CtKT3PhEQHE8s0OZaWIEKb1IAbmg7g6bc94CFiUkXCW8Bb8CikFmeWjuf00XPLSfiZtJicPpI01LpMvk4MGBxr2LGDA4TTJkbaxwAnBRWk=
Received: from BL0PR02CA0108.namprd02.prod.outlook.com (2603:10b6:208:51::49)
 by DM5PR02MB2681.namprd02.prod.outlook.com (2603:10b6:3:10b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.17; Sun, 9 Jun
 2019 00:04:25 +0000
Received: from BL2NAM02FT056.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::200) by BL0PR02CA0108.outlook.office365.com
 (2603:10b6:208:51::49) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1965.15 via Frontend
 Transport; Sun, 9 Jun 2019 00:04:25 +0000
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
 15.20.1965.12 via Frontend Transport; Sun, 9 Jun 2019 00:04:25 +0000
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
 id 1hZlJw-0001PN-A3; Sun, 09 Jun 2019 01:04:24 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH V5 06/11] misc: xilinx_sdfec: Add ability to configure LDPC
Date: Sun, 9 Jun 2019 01:04:11 +0100
Message-ID: <1560038656-380620-7-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560038656-380620-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1560038656-380620-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(396003)(346002)(376002)(136003)(39860400002)(2980300002)(199004)(189003)(476003)(8676002)(2616005)(486006)(7636002)(26826003)(28376004)(305945005)(246002)(8936002)(316002)(36756003)(9786002)(11346002)(956004)(76130400001)(336012)(14444005)(50226002)(126002)(478600001)(36906005)(26005)(106002)(6666004)(356004)(110136005)(54906003)(70206006)(16586007)(70586007)(186003)(44832011)(71366001)(60926002)(5660300002)(30864003)(50466002)(4326008)(48376002)(107886003)(2906002)(2201001)(446003)(76176011)(47776003)(51416003)(426003)(7696005)(102446001)(461764006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR02MB2681; H:xir-pvapexch01.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4f70f300-15c7-4197-abb7-08d6ec6e0889
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:DM5PR02MB2681; 
X-MS-TrafficTypeDiagnostic: DM5PR02MB2681:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <DM5PR02MB2681577CFAC0C3D5E4B1E0EFCB120@DM5PR02MB2681.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1923;
X-Forefront-PRVS: 006339698F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 26sTgofWsI9njw7wpELi2xCXVG/QJLeyaWdBpORXZHvLJc0wraWNrlR0lWqmf1BrThkvYbOgZGr7hDUaD758BFSQOkYelVzn3KRthBMAhIQ3hNwdWB3qDMVZ5jLHhaoFMiI6unjw9FobOHeQ3fwZulADxq7y6bF8CoYTSnvrWMLeg5Olvui0kP+qYpP3ZPURVXP15mZKU0y+gctzBgoPHi4JHVQBUpY2lX8f6SPOcf+lK6eMyd0W6aauaQbunufMg16orxebSa80iUa4JPW9DADtZmsqBaXjIv9r83Tm3Q0vHEwyXv76E1ORZ5EIP2wRZe+9AqhZJiNDdOSiI+AJwACkhdzwIZL3IRuKXJIH7mzqX2Z8rNqFcEKAHlrrCyWAv7WQQyPFYDB/F98JErIZVo1hxt47W3RskjPz7IrA7do=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2019 00:04:25.1670 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f70f300-15c7-4197-abb7-08d6ec6e0889
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch01.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB2681
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_170430_140424_2611D077 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: -0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.67 listed in list.dnswl.org]
 -0.6 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.68.67 listed in wl.mailspike.net]
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

Add the capability to configure LDPC mode via the ioctl
XSDFEC_ADD_LDPC_CODE_PARAMS.

Tested-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
---
 drivers/misc/xilinx_sdfec.c      | 324 +++++++++++++++++++++++++++++++++++++++
 include/uapi/misc/xilinx_sdfec.h |  98 ++++++++++++
 2 files changed, 422 insertions(+)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index 3b59c12..aa33679 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -20,6 +20,7 @@
 #include <linux/slab.h>
 #include <linux/clk.h>
 #include <linux/compat.h>
+#include <linux/highmem.h>
 
 #include <uapi/misc/xilinx_sdfec.h>
 
@@ -110,6 +111,57 @@ static int xsdfec_ndevs;
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
@@ -263,6 +315,275 @@ static int xsdfec_get_turbo(struct xsdfec_dev *xsdfec, void __user *arg)
 	return err;
 }
 
+static int xsdfec_reg0_write(struct xsdfec_dev *xsdfec, u32 n, u32 k, u32 psize,
+			     u32 offset)
+{
+	u32 wdata;
+
+	if (n < XSDFEC_REG0_N_MIN || n > XSDFEC_REG0_N_MAX ||
+	    (n > XSDFEC_REG0_N_MUL_P * psize) || n <= k || ((n % psize) != 0)) {
+		dev_dbg(xsdfec->dev, "N value is not in range");
+		return -EINVAL;
+	}
+	n <<= XSDFEC_REG0_N_LSB;
+
+	if (k < XSDFEC_REG0_K_MIN || k > XSDFEC_REG0_K_MAX ||
+	    (k > XSDFEC_REG0_K_MUL_P * psize) || ((k % psize) != 0)) {
+		dev_dbg(xsdfec->dev, "K value is not in range");
+		return -EINVAL;
+	}
+	k = k << XSDFEC_REG0_K_LSB;
+	wdata = k | n;
+
+	if (XSDFEC_LDPC_CODE_REG0_ADDR_BASE + (offset * XSDFEC_LDPC_REG_JUMP) >
+	    XSDFEC_LDPC_CODE_REG0_ADDR_HIGH) {
+		dev_dbg(xsdfec->dev, "Writing outside of LDPC reg0 space 0x%x",
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
+		dev_dbg(xsdfec->dev, "Psize is not in range");
+		return -EINVAL;
+	}
+
+	if (no_packing != 0 && no_packing != 1)
+		dev_dbg(xsdfec->dev, "No-packing bit register invalid");
+	no_packing = ((no_packing << XSDFEC_REG1_NO_PACKING_LSB) &
+		      XSDFEC_REG1_NO_PACKING_MASK);
+
+	if (nm & ~(XSDFEC_REG1_NM_MASK >> XSDFEC_REG1_NM_LSB))
+		dev_dbg(xsdfec->dev, "NM is beyond 10 bits");
+	nm = (nm << XSDFEC_REG1_NM_LSB) & XSDFEC_REG1_NM_MASK;
+
+	wdata = nm | no_packing | psize;
+	if (XSDFEC_LDPC_CODE_REG1_ADDR_BASE + (offset * XSDFEC_LDPC_REG_JUMP) >
+	    XSDFEC_LDPC_CODE_REG1_ADDR_HIGH) {
+		dev_dbg(xsdfec->dev, "Writing outside of LDPC reg1 space 0x%x",
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
+		dev_dbg(xsdfec->dev, "Nlayers is not in range");
+		return -EINVAL;
+	}
+
+	if (nmqc & ~(XSDFEC_REG2_NNMQC_MASK >> XSDFEC_REG2_NMQC_LSB))
+		dev_dbg(xsdfec->dev, "NMQC exceeds 11 bits");
+	nmqc = (nmqc << XSDFEC_REG2_NMQC_LSB) & XSDFEC_REG2_NNMQC_MASK;
+
+	if (norm_type > 1)
+		dev_dbg(xsdfec->dev, "Norm type is invalid");
+	norm_type = ((norm_type << XSDFEC_REG2_NORM_TYPE_LSB) &
+		     XSDFEC_REG2_NORM_TYPE_MASK);
+	if (special_qc > 1)
+		dev_dbg(xsdfec->dev, "Special QC in invalid");
+	special_qc = ((special_qc << XSDFEC_REG2_SPEICAL_QC_LSB) &
+		      XSDFEC_REG2_SPECIAL_QC_MASK);
+
+	if (no_final_parity > 1)
+		dev_dbg(xsdfec->dev, "No final parity check invalid");
+	no_final_parity =
+		((no_final_parity << XSDFEC_REG2_NO_FINAL_PARITY_LSB) &
+		 XSDFEC_REG2_NO_FINAL_PARITY_MASK);
+	if (max_schedule &
+	    ~(XSDFEC_REG2_MAX_SCHEDULE_MASK >> XSDFEC_REG2_MAX_SCHEDULE_LSB))
+		dev_dbg(xsdfec->dev, "Max Schdule exceeds 2 bits");
+	max_schedule = ((max_schedule << XSDFEC_REG2_MAX_SCHEDULE_LSB) &
+			XSDFEC_REG2_MAX_SCHEDULE_MASK);
+
+	wdata = (max_schedule | no_final_parity | special_qc | norm_type |
+		 nmqc | nlayers);
+
+	if (XSDFEC_LDPC_CODE_REG2_ADDR_BASE + (offset * XSDFEC_LDPC_REG_JUMP) >
+	    XSDFEC_LDPC_CODE_REG2_ADDR_HIGH) {
+		dev_dbg(xsdfec->dev, "Writing outside of LDPC reg2 space 0x%x",
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
+		dev_dbg(xsdfec->dev, "Writing outside of LDPC reg3 space 0x%x",
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
+		dev_dbg(xsdfec->dev, "Write exceeds SC table length");
+		return -EINVAL;
+	}
+
+	n = (len * XSDFEC_REG_WIDTH_JUMP) / PAGE_SIZE;
+	if ((len * XSDFEC_REG_WIDTH_JUMP) % PAGE_SIZE)
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
+		} while ((reg < len) &&
+			 ((reg * XSDFEC_REG_WIDTH_JUMP) % PAGE_SIZE));
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
+		ret = -EIO;
+		goto err_out;
+	}
+
+	/* Verify Device has not started */
+	if (xsdfec->state == XSDFEC_STARTED) {
+		ret = -EIO;
+		goto err_out;
+	}
+
+	if (xsdfec->config.code_wr_protect) {
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
@@ -359,6 +680,9 @@ static long xsdfec_dev_ioctl(struct file *fptr, unsigned int cmd,
 	case XSDFEC_GET_TURBO:
 		rval = xsdfec_get_turbo(xsdfec, arg);
 		break;
+	case XSDFEC_ADD_LDPC_CODE_PARAMS:
+		rval = xsdfec_add_ldpc(xsdfec, arg);
+		break;
 	default:
 		/* Should not get here */
 		break;
diff --git a/include/uapi/misc/xilinx_sdfec.h b/include/uapi/misc/xilinx_sdfec.h
index dc9d4a3..9e3e8d5 100644
--- a/include/uapi/misc/xilinx_sdfec.h
+++ b/include/uapi/misc/xilinx_sdfec.h
@@ -13,6 +13,22 @@
 
 #include <linux/types.h>
 
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
@@ -127,6 +143,53 @@ struct xsdfec_turbo {
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
  * @state: State of the SD-FEC core
  * @activity: Describes if the SD-FEC instance is Active
@@ -170,6 +233,20 @@ struct xsdfec_config {
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
 /*
  * XSDFEC IOCTL List
  */
@@ -190,6 +267,27 @@ struct xsdfec_config {
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
