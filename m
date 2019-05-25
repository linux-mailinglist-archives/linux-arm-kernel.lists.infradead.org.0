Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A269E2A428
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 13:39:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5UY13drdwQSBfjXYd1k8I1Xuag904YI2KB0oBNwfXpU=; b=rdsTryWpi3xvEE
	Zq4qgz+tjc23e6fl6fkT7ND1AaBuoKWRWJkzMIES2VotP+D7BmrIUy5FpbTF6wpCzUoSNy7ekTFWY
	sQ3zFT7G4C1L8KEC+0xlBiQ4LxUe3M5z2RUB+3qkUz9077tG+sM6/NaM8vJfV7I44Uy+v3DBvsobf
	u3x1nMXh0TPLOFE0vSainhfMC50gkS7dx3SEmwSxMyDDTYjIBBp8vYLXQRR7XamzGmlcltP76A0Jr
	Ly3ingwuOY/WJLJI1SBcJMJFqjhI020iPdElDDCLQuDgKA+tVGVWt01sWjtuhfYwBcLsJjxFfzPn/
	9PcVg2zBbG0xE0TM9o9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUV1E-0003Fq-ON; Sat, 25 May 2019 11:39:20 +0000
Received: from mail-bn3nam01on062d.outbound.protection.outlook.com
 ([2a01:111:f400:fe41::62d]
 helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUUzi-0001Ul-Jb
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 11:37:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IS6cjG1C+6jVgFIqCGDdX4D7GaYYbMTHDsTRAaI+3A8=;
 b=S2EuvXAFJJeOyxTY5efq3qynOt/Plbw5yoSNDRb7dJrf6yA5LpIWXxDaNLSUIRak1wiR/vc7qdmenL2mjXcsBPb4SBYDysLCKGirjFVafS6hi3BXrMtzpT8QNskTG1FiMtpWKXRu/Z2KftxGLp/l4dCRJR+8K1KgaCBTZn7ZrQU=
Received: from CY4PR02CA0024.namprd02.prod.outlook.com (10.169.188.34) by
 MWHPR02MB2687.namprd02.prod.outlook.com (10.175.49.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.15; Sat, 25 May 2019 11:37:43 +0000
Received: from SN1NAM02FT047.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::208) by CY4PR02CA0024.outlook.office365.com
 (2603:10b6:903:18::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.16 via Frontend
 Transport; Sat, 25 May 2019 11:37:43 +0000
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
 15.20.1922.16 via Frontend Transport; Sat, 25 May 2019 11:37:43 +0000
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
 id 1hUUzW-00058U-Ih; Sat, 25 May 2019 12:37:34 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH V4 01/12] dt-bindings: xilinx-sdfec: Add SDFEC binding
Date: Sat, 25 May 2019 12:37:14 +0100
Message-ID: <1558784245-108751-2-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558784245-108751-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1558784245-108751-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(376002)(39860400002)(346002)(396003)(136003)(2980300002)(189003)(199004)(186003)(8676002)(9786002)(50226002)(8936002)(26005)(476003)(28376004)(486006)(107886003)(2616005)(126002)(11346002)(70586007)(70206006)(956004)(336012)(60926002)(246002)(316002)(44832011)(110136005)(36906005)(54906003)(16586007)(76130400001)(76176011)(356004)(6666004)(47776003)(71366001)(50466002)(106002)(48376002)(4326008)(426003)(305945005)(478600001)(26826003)(7696005)(2906002)(51416003)(446003)(7636002)(2201001)(5660300002)(36756003)(102446001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR02MB2687; H:xir-pvapexch01.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4b979a6f-8940-4614-2017-08d6e10566c0
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(4709054)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328);
 SRVR:MWHPR02MB2687; 
X-MS-TrafficTypeDiagnostic: MWHPR02MB2687:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <MWHPR02MB2687EC010B28B43775BD3DE0CB030@MWHPR02MB2687.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1122;
X-Forefront-PRVS: 0048BCF4DA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: gDn80cWWbgRs5GvV5smBwh5VFTGvNvral0oPu1w6ULrL60yHBOZNrERnRKiyfSr0JDgNnlJT6fJ9SbAJpaYVTQyQtYmrkQATvxFCNb1JTlFobjN3A78GTtH4q+bKqpljIWh09LwWbmlrDRTLBP7zt3BIaCGcudGrZjhvjxjNAzbdqJIQhllCfHXi8Omn8zyt7GXP4yxxXRGskGtEbz/SHoC6TMnNxDtqg+WosgbZi1DH2XY+XP/xTQTGCMyZSNrHgqv2wWFTs2d7XtvisDYbGEkYQMOoOpqV6r4inTxfUM1OusOaQesnt4Lpn/MDnxdhimFpF4lEbRAGVW4lp11WpMUp8AATModZ6fJVxW9dmg9OuHX0CDyFijW4micErGq/IU7wAksJatTXVtevKeq7vDfgx9WMzODw4hr0Hv3lxF4=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2019 11:37:43.0724 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b979a6f-8940-4614-2017-08d6e10566c0
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch01.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB2687
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_043746_897571_93263CC1 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe41:0:0:0:62d listed in]
 [list.dnswl.org]
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

Add the Soft Decision Forward Error Correction (SDFEC) Engine
bindings which is available for the Zynq UltraScale+ RFSoC
FPGA's.

Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
---
 .../devicetree/bindings/misc/xlnx,sd-fec.txt       | 58 ++++++++++++++++++++++
 1 file changed, 58 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/misc/xlnx,sd-fec.txt

diff --git a/Documentation/devicetree/bindings/misc/xlnx,sd-fec.txt b/Documentation/devicetree/bindings/misc/xlnx,sd-fec.txt
new file mode 100644
index 0000000..e328963
--- /dev/null
+++ b/Documentation/devicetree/bindings/misc/xlnx,sd-fec.txt
@@ -0,0 +1,58 @@
+* Xilinx SDFEC(16nm) IP *
+
+The Soft Decision Forward Error Correction (SDFEC) Engine is a Hard IP block
+which provides high-throughput LDPC and Turbo Code implementations.
+The LDPC decode & encode functionality is capable of covering a range of
+customer specified Quasi-cyclic (QC) codes. The Turbo decode functionality
+principally covers codes used by LTE. The FEC Engine offers significant
+power and area savings versus implementations done in the FPGA fabric.
+
+
+Required properties:
+- compatible: Must be "xlnx,sd-fec-1.1"
+- clock-names : List of input clock names from the following:
+    - "core_clk", Main processing clock for processing core (required)
+    - "s_axi_aclk", AXI4-Lite memory-mapped slave interface clock (required)
+    - "s_axis_din_aclk", DIN AXI4-Stream Slave interface clock (optional)
+    - "s_axis_din_words-aclk", DIN_WORDS AXI4-Stream Slave interface clock (optional)
+    - "s_axis_ctrl_aclk",  Control input AXI4-Stream Slave interface clock (optional)
+    - "m_axis_dout_aclk", DOUT AXI4-Stream Master interface clock (optional)
+    - "m_axis_dout_words_aclk", DOUT_WORDS AXI4-Stream Master interface clock (optional)
+    - "m_axis_status_aclk", Status output AXI4-Stream Master interface clock (optional)
+- clocks : Clock phandles (see clock_bindings.txt for details).
+- reg: Should contain Xilinx SDFEC 16nm Hardened IP block registers
+  location and length.
+- xlnx,sdfec-code : Should contain "ldpc" or "turbo" to describe the codes
+  being used.
+- xlnx,sdfec-din-words : A value 0 indicates that the DIN_WORDS interface is
+  driven with a fixed value and is not present on the device, a value of 1
+  configures the DIN_WORDS to be block based, while a value of 2 configures the
+  DIN_WORDS input to be supplied for each AXI transaction.
+- xlnx,sdfec-din-width : Configures the DIN AXI stream where a value of 1
+  configures a width of "1x128b", 2 a width of "2x128b" and 4 configures a width
+  of "4x128b".
+- xlnx,sdfec-dout-words : A value 0 indicates that the DOUT_WORDS interface is
+  driven with a fixed value and is not present on the device, a value of 1
+  configures the DOUT_WORDS to be block based, while a value of 2 configures the
+  DOUT_WORDS input to be supplied for each AXI transaction.
+- xlnx,sdfec-dout-width : Configures the DOUT AXI stream where a value of 1
+  configures a width of "1x128b", 2 a width of "2x128b" and 4 configures a width
+  of "4x128b".
+Optional properties:
+- interrupts: should contain SDFEC interrupt number
+
+Example
+---------------------------------------
+	sd_fec_0: sd-fec@a0040000 {
+		compatible = "xlnx,sd-fec-1.1";
+		clock-names = "core_clk","s_axi_aclk","s_axis_ctrl_aclk","s_axis_din_aclk","m_axis_status_aclk","m_axis_dout_aclk";
+		clocks = <&misc_clk_2>,<&misc_clk_0>,<&misc_clk_1>,<&misc_clk_1>,<&misc_clk_1>, <&misc_clk_1>;
+		reg = <0x0 0xa0040000 0x0 0x40000>;
+		interrupt-parent = <&axi_intc>;
+		interrupts = <1 0>;
+		xlnx,sdfec-code = "ldpc";
+		xlnx,sdfec-din-words = <0>;
+		xlnx,sdfec-din-width = <2>;
+		xlnx,sdfec-dout-words = <0>;
+		xlnx,sdfec-dout-width = <1>;
+	};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
