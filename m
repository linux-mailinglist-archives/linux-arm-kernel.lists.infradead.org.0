Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDF7CEC2F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 20:53:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BKGG/7CmiafmideBNiQaUX/XSkBdp+9Oie1ujiWXW+M=; b=bCz3k+Dae006D9
	5fbHEL/I1gl8IRpsk0cvbBZUm2hfjmHnwVF89+Pqplw29RrAKU27M6irIZPjmL2DY+DuVBsbtttws
	iY6M8Ubj2p7DcL646tWzejkt7rXlw/E9nynrB7gwZEpoQCIsPHrz6jEfMLI6ipIYraswhH7Ly5/gu
	dDfarRGy4jf4N2p2Fp33s3EumjfWLXpxhVDYcImEvjtgqlmttjjfMB8eV5W6g8ahpnUNHJZVEEL3Q
	KYM8AMr1Yo73JtWUom6tkO1k9DLi8fCF4mg9Xetu81GDA2jWfjhmZREPllpwHl8ziIMTHZjo1PsfO
	qgzh9SzBwoeashkg8kSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHY8G-0001nC-Oz; Mon, 07 Oct 2019 18:53:20 +0000
Received: from mail-eopbgr720045.outbound.protection.outlook.com
 ([40.107.72.45] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHY7u-0001g6-4N
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 18:52:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CZLWnhqO5SrTOmOy69d+NDsSmoW3a0EEPNhH9I59bT0gAThA66HA3vN8N29P05IWn4f0dwvNo+WAlyNs0QjsNFL06zfjcJ/GWb9FJnUF2EKbwqNULy8f1DOljd5ekSgarKC5iH+ZbFpa/+B+7L6ZoQKFrhURN426JnczwhYRtKbHcf8TkZUnLzGDW1vy7/8IMbHX/qmp1fHv4wHSLTaWzicbH4Er/Ck4bwjb2xxCAGhwFuELpYyTUbzklO1Q5C6PtouiHe1IvTivO2Q8vta2d6H+/VJQ4DxH7qjj4TpAnHyVXS9V+zQE3k7qoqdGAWVu+efFJhjCNXpQR43MBxStZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YtFp2Lg4n+5iP5vvY0eUoF0Xjw5rmocbiF6KRjgCDbQ=;
 b=CCP2Yhe0Htzf8LZ3TVFNcGGF1Mu8oaMsKiixmLVM8yolDsEa7eKklq07Nn35ChCP8LVXUWeTRSoTsJhRfu6/xzg2PfWWyad7tZat9hdBsI9wIBwJZ00/qFJH4So2JE13P8PvRwbMVZcBiwKEX3sOognOY1c4J8I4x608Guoc6Q65hXKr/VDX0msMf+4u9VKgnM7VHl1vbEarsCUCAumCg0fS752jBXJZrpMdtsCZTNYRz9a5WYAFCTmE52UNePQK8HXQRK/10/VCq1v7f1mtzPin5AT8Dx0tX+2ZFNDrmZATGzLeVttb+/qRbFgDtYjxylCLN6XPashz45m7oXdNRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YtFp2Lg4n+5iP5vvY0eUoF0Xjw5rmocbiF6KRjgCDbQ=;
 b=e0uOh63GmUBO72tPl6IGyV4FdoXJOdD/NvhEOk/ydDdF0J3n82GcC/Sp3d4lLkCa+Iu0pi1OK/DIOAP3Vp+1tMo9qUXBwJ2Qb8o9LNHfJqqM9UD4eZFy0xY8cdEYx0TLcgTAcl+LxXyXI773RHV+vX67RRmsI4xV0x3mUcws+vE=
Received: from BYAPR02CA0047.namprd02.prod.outlook.com (2603:10b6:a03:54::24)
 by CY4PR0201MB3425.namprd02.prod.outlook.com (2603:10b6:910:8b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2327.24; Mon, 7 Oct
 2019 18:52:52 +0000
Received: from BL2NAM02FT050.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::204) by BYAPR02CA0047.outlook.office365.com
 (2603:10b6:a03:54::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2327.25 via Frontend
 Transport; Mon, 7 Oct 2019 18:52:52 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT050.mail.protection.outlook.com (10.152.77.101) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2327.21
 via Frontend Transport; Mon, 7 Oct 2019 18:52:51 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1iHY7n-0003Ta-43; Mon, 07 Oct 2019 11:52:51 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1iHY7i-0002EM-0P; Mon, 07 Oct 2019 11:52:46 -0700
Received: from xsj-pvapsmtp01 (xsj-smtp1.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x97Iqeqg022512; 
 Mon, 7 Oct 2019 11:52:41 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1iHY7c-00027p-R3; Mon, 07 Oct 2019 11:52:40 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com,
 michal.simek@xilinx.com, robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH v2 1/2] dt-bindings: firmware: Add bindings for Versal firmware
Date: Mon,  7 Oct 2019 11:52:22 -0700
Message-Id: <1570474343-21524-2-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570474343-21524-1-git-send-email-jolly.shah@xilinx.com>
References: <1570474343-21524-1-git-send-email-jolly.shah@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(376002)(136003)(346002)(199004)(189003)(16586007)(70206006)(70586007)(336012)(76176011)(446003)(11346002)(51416003)(7696005)(2616005)(48376002)(8936002)(305945005)(47776003)(7416002)(186003)(36386004)(26005)(316002)(36756003)(126002)(486006)(476003)(44832011)(106002)(426003)(14444005)(2906002)(8676002)(50466002)(356004)(6666004)(107886003)(478600001)(50226002)(9786002)(81166006)(81156014)(4326008)(5660300002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR0201MB3425; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e5641168-fe9c-4245-6cc6-08d74b578e66
X-MS-TrafficTypeDiagnostic: CY4PR0201MB3425:
X-Microsoft-Antispam-PRVS: <CY4PR0201MB342512A214AB55F2118F18FCB89B0@CY4PR0201MB3425.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 01834E39B7
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Vkh4I4z8p7aKRcIpc2VThlcg/QWPRUC/6TPJb9ZaLPh9dki4JpmqiSgw7dCOjQhwNI4S1poH1xqb6bptC73BWj74JMugsfPzcaspDACWNYjYrIa7Uhswscl8iZzubP5WsfLtbYcoLCBWbWn6obp/oIacWXbOH343eBTGLr6UPTACzrFlJjupZMWEQjGTtVjeuNWZNL1cYUUkWjddOT4bdo4rMHYjHxfQvfOYmWKMn87hmLHmWH/n4qyXvxEilKNFwnLCgmS+FAawYLxsuoI4kS5lW7n07JqtjkP+GJeMggo581VkdmK+v+9gS4ethlqbU+S14E0yc1JnDswjwYiH7MZPjvdZ1DL9GcbYxnv5yemzb3iRcPwKXjsdrDg8GIFJbSdMVcmXGQOL4eE0O99nzBY7IbRoZpX5FHfU3inl3B0=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2019 18:52:51.7778 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e5641168-fe9c-4245-6cc6-08d74b578e66
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR0201MB3425
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_115258_179040_5A556450 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.72.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jolly Shah <jolly.shah@xilinx.com>, devicetree@vger.kernel.org,
 rajanv@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ZynqMP firmware driver can be used for versal also.
Add versal compatible string to zynqmp firmware driver
doc.

Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 .../bindings/firmware/xilinx/xlnx,zynqmp-firmware.txt    | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/firmware/xilinx/xlnx,zynqmp-firmware.txt b/Documentation/devicetree/bindings/firmware/xilinx/xlnx,zynqmp-firmware.txt
index a4fe136..18c3aea 100644
--- a/Documentation/devicetree/bindings/firmware/xilinx/xlnx,zynqmp-firmware.txt
+++ b/Documentation/devicetree/bindings/firmware/xilinx/xlnx,zynqmp-firmware.txt
@@ -11,7 +11,9 @@ power management service, FPGA service and other platform management
 services.
 
 Required properties:
- - compatible:	Must contain:	"xlnx,zynqmp-firmware"
+ - compatible:	Must contain any of below:
+		"xlnx,zynqmp-firmware" for Zynq Ultrascale+ MPSoC
+		"xlnx,versal-firmware" for Versal
  - method:	The method of calling the PM-API firmware layer.
 		Permitted values are:
 		  - "smc" : SMC #0, following the SMCCC
@@ -21,6 +23,8 @@ Required properties:
 Example
 -------
 
+Zynq Ultrascale+ MPSoC
+----------------------
 firmware {
 	zynqmp_firmware: zynqmp-firmware {
 		compatible = "xlnx,zynqmp-firmware";
@@ -28,3 +32,13 @@ firmware {
 		...
 	};
 };
+
+Versal
+------
+firmware {
+	versal_firmware: versal-firmware {
+		compatible = "xlnx,versal-firmware";
+		method = "smc";
+		...
+	};
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
