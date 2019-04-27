Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F15B6B496
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 00:06:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b7gTC8OYEfajNO9ewLQ17pFcWDwZ+6u9ghR1w3yRzi8=; b=K0jv70thuwcDeQ
	F1ojykmTEFbuidRSvvfLgu2QWxSXIxyRkgV7si8vf6DEAvGzv49J8vgVtR1xWReLV+3kO8eS6i3lT
	YG/CU6FYL7JrzSd5dkBPeJHezME/Ld4tCM8psMHk0ffsWdhXdptLiWIB2xonC4geo618ajczwOwXg
	b+a03Hf67Vl9L1vVMaG8ou9X7iwoMmf4K6w3STT/Ozl0LYeVZrye8f0sRR6lauZjGsILNMMW0gYnA
	c23kdl+pwenLhjCfWL+6bdhKgkwGWL/+cuDDsjnGVCl8vaF/MtMLVh+f+YnWyiSy78HNBCSmC+IE8
	KmyDWfEa7WlhI5PtJ3sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKVSP-00019Z-7G; Sat, 27 Apr 2019 22:06:05 +0000
Received: from mail-eopbgr810045.outbound.protection.outlook.com
 ([40.107.81.45] helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKVRi-0000Ts-1l
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Apr 2019 22:05:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W8ldoAaRKvQA6aCh4sahZP6dqibxAHoT0k3zfkvTSVI=;
 b=etT4fo26mm7lHTDN1YlP7ezQQWTgX+lRB5cFmw2DctePRZhbXAOftARK62Wj4nrkKcuO2OFNXQQ2FyUxveYO/RB2OJP++JbhEUkP3JT1nHjq2CKTWtYjAZrKURDL0sdhPXIHE5auan4NduqZjOPKAyn3K5AMgJvZx/SRO5t7780=
Received: from SN4PR0201CA0031.namprd02.prod.outlook.com
 (2603:10b6:803:2e::17) by BY2PR02MB153.namprd02.prod.outlook.com
 (2a01:111:e400:2c20::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.1835.14; Sat, 27
 Apr 2019 22:05:16 +0000
Received: from CY1NAM02FT061.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::200) by SN4PR0201CA0031.outlook.office365.com
 (2603:10b6:803:2e::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1835.12 via Frontend
 Transport; Sat, 27 Apr 2019 22:05:16 +0000
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
 15.20.1835.13 via Frontend Transport; Sat, 27 Apr 2019 22:05:15 +0000
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
 id 1hKVRY-0002Gu-0f; Sat, 27 Apr 2019 23:05:12 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH V3 01/12] dt-bindings: xilinx-sdfec: Add SDFEC binding
Date: Sat, 27 Apr 2019 23:04:55 +0100
Message-ID: <1556402706-176271-2-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(346002)(376002)(136003)(2980300002)(189003)(199004)(956004)(11346002)(2616005)(50466002)(476003)(106002)(48376002)(60926002)(446003)(5660300002)(93146003)(54906003)(426003)(16586007)(110136005)(316002)(126002)(70586007)(36906005)(70206006)(305945005)(4326008)(71366001)(47776003)(336012)(478600001)(186003)(7636002)(356004)(6666004)(2201001)(44832011)(50226002)(26826003)(9786002)(26005)(51416003)(2906002)(8676002)(8936002)(246002)(486006)(7696005)(28376004)(76176011)(36756003)(107886003)(76130400001)(102446001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY2PR02MB153; H:xir-pvapexch02.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4ac64a8e-9f47-474e-67db-08d6cb5c6de3
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328);
 SRVR:BY2PR02MB153; 
X-MS-TrafficTypeDiagnostic: BY2PR02MB153:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <BY2PR02MB1539DB183D195CFA49FABA6CB3F0@BY2PR02MB153.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1122;
X-Forefront-PRVS: 0020414413
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: I7clnLU/oymyewParZBai4KzYIbzMBG+bfDU5XRkaeSs9NP1Ajx0KtHMyJRVvqTjLlNZnLb09amFgzPPLCUtAUVswckzi4llW9UFLwVTpLmh9J2oruPJLQqVD1mn54JTipkUd9d5DbMVgf9AzNvBgkqoNZhTglvRPYiySItglW+ww3fNcl6IpqqcKl31vuaruYuVl+Tw039H4lYS4HqYcXX44zzZxMNrRlHNSpcSuPfbEMzPBQVy/gz/bk6vRjS0BnCirkx2Atyif5YjBPYg+PuZG8LSpJ1ELrgrqm5x5RbxZcFM43P2LzalNBPhAnCr3Le9WYbd0mKyLBFzd2W792yISekqLyS92zjUKR0j2n9M72OuBBsEYidojZjlft57nftg51SaBa6W+NA7fF4ji/5F1DlnDJ3mJS0Pjfq2g+w=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2019 22:05:15.4508 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ac64a8e-9f47-474e-67db-08d6cb5c6de3
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR02MB153
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_150522_241860_F2A71BC1 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.81.45 listed in list.dnswl.org]
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
index 0000000..425b6a6
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
+		interrupt-parent = <&gic>;
+		interrupts = <0 89 4>;
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
