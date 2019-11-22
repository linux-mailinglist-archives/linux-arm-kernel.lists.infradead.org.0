Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B0E10684A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 09:46:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DTLBgEfkMC/4SYjgPmJm+281lzBG8mYMOyCPwtsWLe0=; b=NvX2TiGkdf7DWo
	9243Yb/5fELvlMna4t9+90nHHL0aeFzHVC5a0nbonOwm4bpSGOfRuZ5XGhV5Xo1BWBQRKmRqFJgUQ
	RP8Vt0u6+Uzn4++YLBjF5LJlcoUF02GoDnnnNht/BSdxXlc1uRs3lhouH4zQ8STVxOigVyfNf+8s+
	tMNdiea4SH9Roy6ZsxhhH8XgkKyeLMcHUvxdKUbeeIeR9rw3uU3ifQbE19xqc/jGFuh1qJFV7xzoI
	/acve6ITzfgnzUZws4w3Pqs3GPCx9Sz/j6SWvSI5pSSgUg0jgoTVoN5sgraPGFl/f1sW/+vcN42GR
	tux1d9DRrq9K4VTSBg+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY4Zv-0003P9-TC; Fri, 22 Nov 2019 08:46:12 +0000
Received: from mail-eopbgr770082.outbound.protection.outlook.com
 ([40.107.77.82] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY4ZO-00037q-RA
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 08:45:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MhxsusmbLtKp1YqFeaV4Iw3r/16A2zns5cec/CKPda153dwFbisSxqeCmECuGgDwC6vmqXj83wtDMUE9ZLWBFKuN8nISL9yqYU1y+ywhJoHg6/vd2KEUeoWE+0dd6GqyxfDeje22dSodXO6ZdquCGb/MKkqHz+JZqeHWqrxLT/dJmAA1xMNzgFoXZeiqIfM8CDp06IRhyYD76i6n9EwPQPppJSxCd7UvyUP/X+owm9z7CuFFLzeusMveIh7rd7boreVf4wdTyySd29+fug8z77lT+3oyzQu+8E17z8HVl7QT4XJyks3SpJNI+14TNiLftZoN5RNjRvy69T8sZVjaIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k5o1GoiCcCJJs+e6K1pD7kRBxhh36pLZAOpy1eL126k=;
 b=fx8z+9dnCPcAGzuHCWYI+7owTF5t1jnCa9/E7GV3dl97kIee3yJ3Yr1YIlRLJG0ThpPzMImUlio5BLyOlPWK/77DyLVCihpL6U9Vxaz/1760nDSd4366j4xaBDps7qZ/byKAKVgQkrN/thQzEeRVgMK9yXfoVvzDt53/o2wh7vaoz1nee09my/1O7jsWGhU80w7jE4stbS+7qVqJyUiGq0gY22zpXuUscbeiKb3S8H/xJE62SRRcKI3MWVIvIQ35T3oAsnbehk+xr54J8/TfpMAo5q0qWXYVp7zL6LcXXA7P078qayYMfwB2K7m/1xEi7JBtmd+O1emdnetwE1p1Dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k5o1GoiCcCJJs+e6K1pD7kRBxhh36pLZAOpy1eL126k=;
 b=ZxR94BI+MSuTWN+BQ2fzGwJcn0An44atLQByju3Q6bwVKK5s8p+vblHVc5KCEdP9tL1bdiHW5sAv+16jeWmivesixyuO2CTinMlORm2W4DSFn/NvSRMjCYRAo7xhA3VxvRvbp1h2RoJwx7606RFhXScXqBQgjskUwejUCi3NlN0=
Received: from BL0PR02CA0003.namprd02.prod.outlook.com (2603:10b6:207:3c::16)
 by SN1PR02MB3727.namprd02.prod.outlook.com (2603:10b6:802:2d::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.18; Fri, 22 Nov
 2019 08:45:34 +0000
Received: from BL2NAM02FT004.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::202) by BL0PR02CA0003.outlook.office365.com
 (2603:10b6:207:3c::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.19 via Frontend
 Transport; Fri, 22 Nov 2019 08:45:34 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT004.mail.protection.outlook.com (10.152.76.168) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Fri, 22 Nov 2019 08:45:33 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iY4ZI-0006US-Pa; Fri, 22 Nov 2019 00:45:32 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iY4ZD-00053U-Mh; Fri, 22 Nov 2019 00:45:27 -0800
Received: from xsj-pvapsmtp01 (smtp3.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xAM8jKoJ019359; 
 Fri, 22 Nov 2019 00:45:20 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iY4Z6-00052Z-AQ; Fri, 22 Nov 2019 00:45:20 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: sre@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 michal.simek@xilinx.com, jollys@xilinx.com, tejas.patel@xilinx.com
Subject: [PATCH v2 1/2] dt-bindings: power: reset: xilinx: Add bindings for
 ipi mailbox
Date: Fri, 22 Nov 2019 00:44:17 -0800
Message-Id: <1574412258-17988-2-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574412258-17988-1-git-send-email-rajan.vaja@xilinx.com>
References: <1573564851-9275-1-git-send-email-rajan.vaja@xilinx.com>
 <1574412258-17988-1-git-send-email-rajan.vaja@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(346002)(376002)(189003)(199004)(106002)(15650500001)(316002)(44832011)(6666004)(356004)(76176011)(336012)(36756003)(7696005)(51416003)(426003)(6636002)(16586007)(14444005)(4326008)(107886003)(446003)(70586007)(478600001)(36386004)(47776003)(81166006)(81156014)(2906002)(50226002)(70206006)(8676002)(8936002)(48376002)(186003)(50466002)(11346002)(9786002)(2616005)(26005)(305945005)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN1PR02MB3727; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7be48303-79c2-4323-9aab-08d76f2856a1
X-MS-TrafficTypeDiagnostic: SN1PR02MB3727:
X-Microsoft-Antispam-PRVS: <SN1PR02MB3727B7C8DDE39AA9DBDF2992B7490@SN1PR02MB3727.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 02296943FF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yYFJjEP7lSI9qlyTttYm8tfvnrNXihYBKl0nSrCn+66zbsGh5eeAo40TqT5KkxY9HShA9gHyNLOHs6p2IsL5NwyCByruppoP1ghh4Ml6iTe1rePWZ8d7LTt9WgwtaBwBpCDUM2+ptdj9/ZH8ddsePt+Yf6U8kDZmfXem8zqvGWct39tuOW7seiwjCm/NjHRXowO4ByxqlPqDiZXqniRXzwWdd5sdg43B6GreQVDyHwvnoUpIxE21rrUtgo1LZTV+Fa7NgKqrHHqPhqqq4p3Te3tSYtKnP9UmQ+5vL5wsX1c9UMy0mJ36NuOIVG2JcotxFPrER5Me0G1hyIU5l8FdMCm30HVaDavJxSrYoZY0+We6rRPVS5gfwlq4hZpMKwYDZLZYXXcqtHF1uztimxYZANUcqLZvWnHKs+do0lafKvolJwvqIVy0rn05RcUjM2Rt
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2019 08:45:33.7279 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7be48303-79c2-4323-9aab-08d76f2856a1
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1PR02MB3727
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_004538_881762_A403758A 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.82 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add IPI mailbox property and its example in xilinx zynqmp-power
documentation.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
---
Changes in v2:
 - Correct order of tx and rx in mbox-names property.
 - Add interrupts property in example.
---
 .../bindings/power/reset/xlnx,zynqmp-power.txt     | 43 ++++++++++++++++++++--
 1 file changed, 40 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/reset/xlnx,zynqmp-power.txt b/Documentation/devicetree/bindings/power/reset/xlnx,zynqmp-power.txt
index d366f1e..0d74987 100644
--- a/Documentation/devicetree/bindings/power/reset/xlnx,zynqmp-power.txt
+++ b/Documentation/devicetree/bindings/power/reset/xlnx,zynqmp-power.txt
@@ -8,18 +8,55 @@ Required properties:
  - compatible:		Must contain:	"xlnx,zynqmp-power"
  - interrupts:		Interrupt specifier
 
--------
-Example
--------
+Optional properties:
+ - mbox-names	: Name given to channels seen in the 'mboxes' property.
+		  "tx" - Mailbox corresponding to transmit path
+		  "rx" - Mailbox corresponding to receive path
+ - mboxes	: Standard property to specify a Mailbox. Each value of
+		  the mboxes property should contain a phandle to the
+		  mailbox controller device node and an args specifier
+		  that will be the phandle to the intended sub-mailbox
+		  child node to be used for communication. See
+		  Documentation/devicetree/bindings/mailbox/mailbox.txt
+		  for more details about the generic mailbox controller
+		  and client driver bindings. Also see
+		  Documentation/devicetree/bindings/mailbox/ \
+		  xlnx,zynqmp-ipi-mailbox.txt for typical controller that
+		  is used to communicate with this System controllers.
+
+--------
+Examples
+--------
+
+Example with interrupt method:
+
+firmware {
+	zynqmp_firmware: zynqmp-firmware {
+		compatible = "xlnx,zynqmp-firmware";
+		method = "smc";
+
+		zynqmp_power: zynqmp-power {
+			compatible = "xlnx,zynqmp-power";
+			interrupts = <0 35 4>;
+		};
+	};
+};
+
+Example with IPI mailbox method:
 
 firmware {
+
 	zynqmp_firmware: zynqmp-firmware {
 		compatible = "xlnx,zynqmp-firmware";
 		method = "smc";
 
 		zynqmp_power: zynqmp-power {
 			compatible = "xlnx,zynqmp-power";
+			interrupt-parent = <&gic>;
 			interrupts = <0 35 4>;
+			mboxes = <&ipi_mailbox_pmu0 0>,
+				 <&ipi_mailbox_pmu0 1>;
+			mbox-names = "tx", "rx";
 		};
 	};
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
