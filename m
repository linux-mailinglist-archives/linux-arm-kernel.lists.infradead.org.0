Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA11D1FEAFC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 07:33:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R6ziNAYEQczmFm0SgxRLc43IwdjnYLnX1dT5cIg+310=; b=sRcL9WPMI9oY9H
	m/UNCoWrLVP4Pp9dXnSBhI0WzSd7lvs37EPfr4vP+0CHJEKe43Zly/Colgp1CStaRfH+k5gb4O3LH
	fIgt2Ojhj5kS+cew+qb28VelhupXFH0DhrgMiAjKCMvti0CJAVa1HgUIqDI8wOjxXWxc6twF7k1WZ
	lENgx32K6Sm3tEX+9bcDEX9Je3jgeWFLepzwlkuhJgFGrsKi5AGw/KJ5ZYLq1Vi9sjlOhkebrvVJg
	qsq7hQrgX3T6BGXpl0GoJDTDV1yFClrrAaRt23JnGipoPjqJGqpTjtzqdtlsQCwTDJJf/Kyqvcy46
	VJAKYJeaBaVmbcC9xAVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlnBF-0005cQ-J2; Thu, 18 Jun 2020 05:33:41 +0000
Received: from mail-dm6nam11on2052.outbound.protection.outlook.com
 ([40.107.223.52] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlnB0-0005bl-H6
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 05:33:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hzsVDldeAO064KbF5q60x1BEl5TtyrfxYDE7fNBda5QHJEZIBotDvn1Oug7AjVtIiKLiLVOM1/D3myjpjP6te7IpV5oHeg49nF+oZNB9xBqLgg7YUt3yK/wWZDV5/GcAvx6toPquqmGyMPU9oC5cSxYRR8xxKAqcKB9QCvrLhM9y26tIu8ai8krc86VPHPFnXnsDTloylE8Iz6dH460JSZfneSteryCmQFbmJaS0tNH7BZO/B7hfsdylsalh7Phs3MiumyPaXPrEr6cq5MfuAcCmfT3R7kh6oEcYEr7IObfODU9Z2rV9tjwMaeGxjc7GtlTnQdveLvGjSy3mk5wCqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iExx+oRWwgd29JD1asEoHD5+PXzyn30ebpqfWTN70go=;
 b=beoDrcgEy0k+ylGBr58iNnfXSrI2qCFoogvEUgzt6POcA/HvngvK2qM2yRwGRuEK1VVNqOn8/ABN6b3x7VTuBYNWgnI/rRCq+M8fg+fFefcVsmWgVUlRbgWU5hQ4ucGcMC9j9a8NcwF3+gRgwdi44+eHLV+a1CG95GseBFnCouLY8y+gCCu9kOgvrzu8Ui2uzWjJINUznIDsZ2S07/dx9GjF26xV6/xp+IC8GYo393ekJxI8dIKiuTzm2vKYMGM9m0aExyWzRzr3iEEfByMgCN9WHKk1It04SGItbvl1VWb90UzaB9F+ZqTWr1INkTBh6+JC4KeoHXSiVM9jguWTpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=ideasonboard.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iExx+oRWwgd29JD1asEoHD5+PXzyn30ebpqfWTN70go=;
 b=IIH+N04CtYhIecN1a5SNwPFtLGSwEPySHIC+21Bjl0jfSMvOQesEeZ+8KrCEsnykkNoE+Sgi+X/ryQXEW0bboaj+WcoBoALINKrmTx0i7Qnrh+rVLprhEHy6PDzzQCCbMQgvQpIm0DC9UqoTY+7n0pMakb+VSjI1RojkvTkgMKc=
Received: from SN4PR0501CA0136.namprd05.prod.outlook.com
 (2603:10b6:803:2c::14) by SN1PR02MB3743.namprd02.prod.outlook.com
 (2603:10b6:802:31::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Thu, 18 Jun
 2020 05:33:22 +0000
Received: from SN1NAM02FT062.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:2c:cafe::cb) by SN4PR0501CA0136.outlook.office365.com
 (2603:10b6:803:2c::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.11 via Frontend
 Transport; Thu, 18 Jun 2020 05:33:22 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; ideasonboard.com; dkim=none (message not signed)
 header.d=none;ideasonboard.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT062.mail.protection.outlook.com (10.152.72.208) with Microsoft SMTP
 Server id 15.20.3088.18 via Frontend Transport; Thu, 18 Jun 2020 05:33:22
 +0000
Received: from [149.199.38.66] (port=58924 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <vishal.sagar@xilinx.com>)
 id 1jln9s-0006ym-FB; Wed, 17 Jun 2020 22:32:16 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <vishal.sagar@xilinx.com>)
 id 1jlnAv-0003RZ-PB; Wed, 17 Jun 2020 22:33:21 -0700
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <vishal.sagar@xilinx.com>)
 id 1jlnAt-0003Ok-7A; Wed, 17 Jun 2020 22:33:19 -0700
From: Vishal Sagar <vishal.sagar@xilinx.com>
To: hyunk@xilinx.com, laurent.pinchart@ideasonboard.com, hverkuil@xs4all.nl,
 mchehab@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 michals@xilinx.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, joe@perches.com
Subject: [PATCH v3 2/3] media: dt-bindings: media: xilinx: Add Xilinx UHD-SDI
 Receiver Subsystem
Date: Thu, 18 Jun 2020 11:03:03 +0530
Message-Id: <20200618053304.14551-3-vishal.sagar@xilinx.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200618053304.14551-1-vishal.sagar@xilinx.com>
References: <20200618053304.14551-1-vishal.sagar@xilinx.com>
MIME-Version: 1.0
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(346002)(396003)(136003)(376002)(39860400002)(46966005)(70586007)(186003)(70206006)(8936002)(26005)(2906002)(8676002)(7416002)(47076004)(81166007)(356005)(83380400001)(9786002)(82310400002)(316002)(7696005)(1076003)(6666004)(36756003)(336012)(82740400003)(426003)(2616005)(44832011)(478600001)(107886003)(4326008)(966005)(5660300002)(921003);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 02ceabce-9612-4963-21c4-08d813491d89
X-MS-TrafficTypeDiagnostic: SN1PR02MB3743:
X-Microsoft-Antispam-PRVS: <SN1PR02MB3743DF0260CEF073AF36E59FA79B0@SN1PR02MB3743.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:1091;
X-Forefront-PRVS: 0438F90F17
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VdEXt77vkxjYILF9zHNBJPU08SDH7qOckgYCMGkDqXan4peHMPXiDB9/Dq0E35mDJFfdRYVA+VBzHMthXEi8t9kRUMRi0uwQP/IZqMMTYNmdvQhVfN8cmPN5p2ITDEmD+Rjw/6IzBZHswutu7uPzl9McE/S+u71x+NpZRPdAbBl74AcxMLOfI7dXTWoO9qBRaHiSYX9nUCadYWN8PUblp+fvNOieIHGL4CXstwya1+XvdPn+6GWBfDJspjHSXWVsh0WwUzdcQMpgk9UmLbS3hKHQBjTtPZKluraXp+3RbnoP+e5T72i589EZNWn92UlQ1tNSiitJ4EX6g1ARpGbqkf59v4eR0Fj+D8CpTWisJWbJ6H3nFr4iWDgatvYgIWzqoNAztekOwn99BmyzSIjf7JPu3duDYpWvRKSSWXydIv7y3eWKSDDAPtxeO8WBIeKNeOIE6VPz3hrZl7qQQinNrOLs7BfRhJLWrXgVh9KSC6R3SxvN/rkgf4a0ijZwiX0C
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2020 05:33:22.1382 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 02ceabce-9612-4963-21c4-08d813491d89
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1PR02MB3743
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_223326_568499_34499617 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.223.52 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.223.52 listed in wl.mailspike.net]
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
Cc: sandipk@xilinx.com, dineshk@xilinx.com,
 Vishal Sagar <vishal.sagar@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add bindings documentation for Xilinx UHD-SDI Receiver Subsystem.

The Xilinx UHD-SDI Receiver Subsystem consists of SMPTE UHD-SDI (RX) IP
core, an SDI RX to Video Bridge IP core to convert SDI video to native
video and a Video In to AXI4-Stream IP core to convert native video to
AXI4-Stream.

Signed-off-by: Vishal Sagar <vishal.sagar@xilinx.com>
---
v3
- bpc instead of bpp
- removed bpc as required property (default to 10 bpc)
- add dt-bindings/media/xilinx-sdi.h
- made line-rate as u32 instead of string
- fixed reg
- fixed s/upto/up to/

v2
- Removed references to xlnx,video*
- Fixed as per Sakari Ailus and Rob Herring's comments
- Converted to yaml format

 .../bindings/media/xilinx/xlnx,sdirxss.yaml   | 132 ++++++++++++++++++
 include/dt-bindings/media/xilinx-sdi.h        |  20 +++
 2 files changed, 152 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/xilinx/xlnx,sdirxss.yaml
 create mode 100644 include/dt-bindings/media/xilinx-sdi.h

diff --git a/Documentation/devicetree/bindings/media/xilinx/xlnx,sdirxss.yaml b/Documentation/devicetree/bindings/media/xilinx/xlnx,sdirxss.yaml
new file mode 100644
index 000000000000..6cfc18ca435f
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/xilinx/xlnx,sdirxss.yaml
@@ -0,0 +1,132 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/xilinx/xlnx,sdirxss.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+
+title: Xilinx SMPTE UHD-SDI Receiver Subsystem
+
+maintainers:
+  - Vishal Sagar <vishal.sagar@xilinx.com>
+
+description: |
+  The SMPTE UHD-SDI Receiver (RX) Subsystem allows you to quickly create systems
+  based on SMPTE SDI protocols. It receives unaligned native SDI streams from
+  the SDI GT PHY and outputs an AXI4-Stream video stream, native video, or
+  native SDI using Xilinx transceivers as the physical layer.
+
+  The subsystem consists of
+  1 - SMPTE UHD-SDI Rx
+  2 - SDI Rx to Native Video Bridge
+  3 - Video In to AXI4-Stream Bridge
+
+  The subsystem can capture SDI streams in up to 12G mode 8 data streams and output
+  a dual pixel per clock RGB/YUV444,422/420 10/12 bits per component AXI4-Stream.
+
+properties:
+  compatible:
+    items:
+      - enum:
+        - xlnx,v-smpte-uhdsdi-rx-ss-2.0
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    description: List of clock specifiers
+    items:
+      - description: AXI4-Lite clock
+      - description: SMPTE UHD-SDI Rx core clock
+      - description: Video clock
+
+  clock-names:
+    items:
+      - const: s_axi_aclk
+      - const: sdi_rx_clk
+      - const: video_out_clk
+
+  xlnx,bpc:
+    description: Bits per component supported. Can be 10 or 12 bits per component only.
+    allOf:
+      - $ref: "/schemas/types.yaml#/definitions/uint32"
+      - enum: [10, 12]
+
+  xlnx,line-rate:
+    description: |
+      The maximum mode supported by the design. Possible values are as below
+      0 - XSDI_STD_3G      -  3G mode
+      1 - XSDI_STD_6G      -  6G mode
+      2 - XSDI_STD_12G_8DS - 12G mode with 8 data streams
+    allOf:
+      - $ref: "/schemas/types.yaml#/definitions/uint32"
+      - enum: [0, 1, 2]
+
+  xlnx,include-edh:
+    type: boolean
+    description: |
+      This is present when the Error Detection and Handling processor is
+      enabled in design.
+
+  ports:
+    type: object
+    description: |
+      Generally the SDI port is connected to a device like SDI Broadcast camera
+      which is independently controlled. Hence port@0 is a source port which can be
+      connected to downstream IP which can work with AXI4 Stream data.
+    properties:
+      port@0:
+        type: object
+        description: Source port
+        properties:
+          reg:
+            const: 0
+          endpoint:
+            type: object
+            properties:
+              remote-endpoint: true
+            required:
+              - remote-endpoint
+            additionalProperties: false
+        additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - xlnx,line-rate
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/media/xilinx-sdi.h>
+    uhdsdirxss: v-smpte-uhdsdi-rxss@80000000 {
+      compatible = "xlnx,v-smpte-uhdsdi-rx-ss-2.0";
+      interrupt-parent = <&gic>;
+      interrupts = <0 89 4>;
+      reg = <0x80000000 0x10000>;
+      xlnx,include-edh;
+      xlnx,line-rate = <XSDI_STD_12G_8DS>;
+      clocks = <&clk_1>, <&si570_1>, <&clk_2>;
+      clock-names = "s_axi_aclk", "sdi_rx_clk", "video_out_clk";
+      xlnx,bpc = <10>;
+
+      ports {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        port@0 {
+          reg = <0>;
+          sdirx_out: endpoint {
+            remote-endpoint = <&vcap_sdirx_in>;
+          };
+        };
+      };
+    };
+...
diff --git a/include/dt-bindings/media/xilinx-sdi.h b/include/dt-bindings/media/xilinx-sdi.h
new file mode 100644
index 000000000000..11938fade041
--- /dev/null
+++ b/include/dt-bindings/media/xilinx-sdi.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Xilinx SDI device tree bindings
+ *
+ * Copyright (C) 2020 Xilinx, Inc.
+ *
+ * Contacts: Vishal Sagar <vishal.sagar@xilinx.com>
+ */
+
+#ifndef __DT_BINDINGS_MEDIA_XILINX_SDI_H__
+#define __DT_BINDINGS_MEDIA_XILINX_SDI_H__
+
+/*
+ * SDI Configurations
+ */
+#define XSDI_STD_3G		0
+#define XSDI_STD_6G		1
+#define XSDI_STD_12G_8DS	2
+
+#endif /* __DT_BINDINGS_MEDIA_XILINX_SDI_H__ */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
