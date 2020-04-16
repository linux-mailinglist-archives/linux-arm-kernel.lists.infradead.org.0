Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F34A21AD260
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 23:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JNAEZQoFR571RYD8feC2c2CwgJi4qhSszV67uwOuHuI=; b=ofNLs6TffR620J
	6kuTCzrTyPOPSLhBN+48XEdU5DM1J18Q+AIwZtKCjqKTS/YmEdG37ZkO1DbnBHiNCvVS+SDDfqf6X
	WSRfrIVL/FvYrnWfvuUuzoWjuxMdS6nPKR+5iWua1QLyX6y7wyRjcn4lOUhpOjItzvIBUZkYNV9ou
	vZtJfbYFD2o7Tbw3XwKwMhmDI9TcrT/jaVS5TUCR8oDNbZCox1Dx8WVXRqiGKYv1FzdENHstxqNxW
	7FmdhBYkeEcSrqWV2oT3MYWL9T+bedO+pdUF9IVeSUgyeSN2owMqGKSrQEaU/nyHaDFMpj9pKPzqt
	UtrzGAGUn4zpz2GKg64Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPCUl-0006Dc-Er; Thu, 16 Apr 2020 21:56:27 +0000
Received: from mail-bn8nam12on2047.outbound.protection.outlook.com
 ([40.107.237.47] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPCTE-0002of-Uq
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 21:54:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QfVm5Svk10RgStWRfSmNkTfqmPsH7hOUutqrCkZJNXTdFZYWyGfzkDAuJ3n/8mQk5IIAxRB5+SJYrPk/9/BwNNmQltGTRZoo58Jlxp6SU5KstQoaRYqblA9CoOKL+6krNGwpbDjpZVtOPV33IMP/NmG/oW/t0Hx+1O2C93Abtkv49XqppjrO+ZVWnl5aUTOjKmyJPTJ6AZaeI98aVO1ArHX7GUIijEDmd2iYOLRjFvAxxwOxGARhBS1o6jtPceeiMUZWiJInBORw3ig/PRNLo3tr+r3HNAK7yNvZzbSwyh/VZFfTbwvf1eUn1A7kpd25sG51k1+HSizhtJXCwMUTqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=azTVLFszMpSzhCnvfyJAmWasG6qEOP3q9lLEae9VxOg=;
 b=CNf+/jnpgfmBRuxscMXWHSUW7CTcLMHqxtbXWaFTZQ1gYDy5c2/fYTICrhPnznt1CjyPQ6dzUG0Qk9Cq6j2h528JMbLGXIgi+1XdpulR1zFCYcft18nFR/lkgwyWRHc6B6Y/kKjGRVi9MVQ9MXNW0eSDk5DCgmHHh9ldnSVRKTe28yB6iP/Eq5uL+kTeA6XzJbKP6We0KTC6VvEYX7DmlYpeBGI9cJvPxAU7zezQ4zB9P8cnyJjcrLBgpYwHKFVY2iyNjek/ynIP2hWE6H6aKMXshBgCE2qRrmhEPSJDD5evwt2xGodiVeZwOJN/buDzag5CJtzyWKUaSjsxwdpMmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=wizery.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=azTVLFszMpSzhCnvfyJAmWasG6qEOP3q9lLEae9VxOg=;
 b=MSCbxBudc8ceo+yZ+vhw/8+XhzJcEfh8auKHzmW8ekrl+QkTzNypRZ5vKOpADgx7yWMP77lyNPWWByj3wXoi2EOqD2oc2Wd480PAqKzfxJeK2wyA8FOyugABIPB6eObNoKQSPxzpke710KtaEpbYmT5jPbuiLWeo9p2XfUF5SaA=
Received: from SN4PR0501CA0087.namprd05.prod.outlook.com
 (2603:10b6:803:22::25) by MN2PR02MB5885.namprd02.prod.outlook.com
 (2603:10b6:208:11c::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.26; Thu, 16 Apr
 2020 21:54:48 +0000
Received: from SN1NAM02FT063.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:22:cafe::1b) by SN4PR0501CA0087.outlook.office365.com
 (2603:10b6:803:22::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.6 via Frontend
 Transport; Thu, 16 Apr 2020 21:54:48 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; wizery.com; dkim=none (message not signed)
 header.d=none;wizery.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT063.mail.protection.outlook.com (10.152.72.213) with Microsoft SMTP
 Server id 15.20.2900.18 via Frontend Transport; Thu, 16 Apr 2020 21:54:47
 +0000
Received: from [149.199.38.66] (port=38403 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jPCSN-0004ce-Kd; Thu, 16 Apr 2020 14:53:59 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jPCT8-0003e3-RR; Thu, 16 Apr 2020 14:54:46 -0700
Received: from [172.19.2.206] (helo=xsjblevinsk50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jPCT4-0003cm-81; Thu, 16 Apr 2020 14:54:42 -0700
From: Ben Levinsky <ben.levinsky@xilinx.com>
To: ohad@wizery.com, bjorn.andersson@linaro.org, michal.simek@xilinx.com,
 jollys@xilinx.com, rajan.vaja@xilinx.com, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH v2 4/5] dt-bindings: remoteproc: Add documentation for ZynqMP
 R5 rproc bindings
Date: Thu, 16 Apr 2020 14:54:41 -0700
Message-Id: <1587074082-14836-5-git-send-email-ben.levinsky@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587074082-14836-1-git-send-email-ben.levinsky@xilinx.com>
References: <1587074082-14836-1-git-send-email-ben.levinsky@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(39860400002)(136003)(346002)(396003)(46966005)(44832011)(70206006)(2616005)(36756003)(336012)(7696005)(186003)(107886003)(8936002)(81156014)(9786002)(70586007)(316002)(426003)(81166007)(356005)(5660300002)(478600001)(4326008)(26005)(54906003)(2906002)(82740400003)(47076004)(8676002);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5581ed08-0080-4391-28d3-08d7e250c7db
X-MS-TrafficTypeDiagnostic: MN2PR02MB5885:
X-Microsoft-Antispam-PRVS: <MN2PR02MB5885F153ABA59622390970B7B5D80@MN2PR02MB5885.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-Forefront-PRVS: 0375972289
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kUrKuf1jzqkRYkh/YwmSxsOSJWpNCXtIZ95MfWxqdHKxgaHHLwCpR6M5Tu9OggaufKvWj+2etA/E74195RboR87YLYf667NkxXHlJGx8LvqV8+Se30jpioMqPZsKbZglmIGEXyniWmJ6NUNkxFOHwHccLYeBatsx/Is9ZDI8bwo1pChxcHEivUIKXCeKIxd5JaY0J2GlOk5/ooONjC5TNz5HUHmIdgToapD6xkRBMxUAVMJ13nweP7IKET56+2iAoTClnCvhfP5BorIuBvRAv9ImFxAoDk3tUy3zOlMscDqCEXBm8X7ZGU8+C6JzQoVPX9CbRR6ZzV8GEVcnBIi4C6XZh4ETgApC5UCtxRYMHo6K+4Kc1mKpxMlGc+3VjYBMSeb07KUCZrcgP7vmZO4kjvCX3foUWRdHREsUMiPOQtkmMPAunJ9tCgYPtr40hVMlZKUTTr8PP1cVkgUal4mg0iB8Kmx23qMNqYA4R2CxdwAFwdhQR6BqMZId3rVreGeX1+04GfKOFQ+xtxz4uZ5pXw6eRTj5MrUCpgW3vhjfAS+MinIfSkq7ngA6jr9mKXvgmskx/Cl9gwrWBZOn0TNhcg==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2020 21:54:47.4374 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5581ed08-0080-4391-28d3-08d7e250c7db
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB5885
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_145453_003686_E0721841 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.47 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Wendy Liang <jliang@xilinx.com>,
 Jason Wu <j.wu@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add binding for ZynqMP R5 OpenAMP.

Represent the RPU domain resources in one device node. Each RPU
processor is a subnode of the top RPU domain node.

Signed-off-by: Ben Levinsky <ben.levinsky@xilinx.com>
Signed-off-by: Jason Wu <j.wu@xilinx.com>
Signed-off-by: Wendy Liang <jliang@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---
 .../remoteproc/xilinx,zynqmp-r5-remoteproc.yaml    | 119 +++++++++++++++++++++
 1 file changed, 119 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.yaml

diff --git a/Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.yaml b/Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.yaml
new file mode 100644
index 0000000..ed3d125d
--- /dev/null
+++ b/Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.yaml
@@ -0,0 +1,119 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/remoteproc/xilinx,zynqmp-r5-remoteproc.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Xilinx R5 remote processor controller bindings
+
+description:
+  This document defines the binding for the remoteproc component that loads and
+  boots firmwares on the Xilinx Zynqmp and Versal family chipset.
+
+maintainers:
+  - Ed Mooring <ed.mooring@xilinx.com>
+  - Ben Levinsky <ben.levinsky@xilinx.com>
+
+properties:
+  compatible:
+    const: "xlnx,zynqmp-r5-remoteproc-1.0"
+
+  core_conf:
+    description:
+      R5 core configuration (valid string - split or lock-step)
+    maxItems: 1
+
+  interrupts:
+    description:
+      Interrupt mapping for remoteproc IPI. It is required if the
+      user uses the remoteproc driver with the RPMsg kernel driver.
+    maxItems: 6
+
+  memory-region:
+    maxItems: 4
+    minItems: 4
+  pnode-id:
+    maxItems: 1
+  mboxes:
+    maxItems: 2
+  mbox-names:
+    maxItems: 2
+
+additionalProperties: false
+
+examples:
+  - |
+     reserved-memory {
+          #address-cells = <2>;
+          #size-cells = <2>;
+          ranges;
+          rpu0vdev0vring0: rpu0vdev0vring0@3ed40000 {
+               no-map;
+               reg = <0x0 0x3ed40000 0x0 0x4000>;
+          };
+          rpu0vdev0vring1: rpu0vdev0vring1@3ed44000 {
+               no-map;
+               reg = <0x0 0x3ed44000 0x0 0x4000>;
+          };
+          rpu0vdev0buffer: rpu0vdev0buffer@3ed48000 {
+               no-map;
+               reg = <0x0 0x3ed48000 0x0 0x100000>;
+          };
+          rproc_0_reserved: rproc@3ed000000 {
+               no-map;
+               reg = <0x0 0x3ed00000 0x0 0x40000>;
+          };
+     };
+
+     zynqmp-rpu {
+          compatible = "xlnx,zynqmp-r5-remoteproc-1.0";
+          #address-cells = <2>;
+          #size-cells = <2>;
+          ranges;
+          core_conf = "split";
+          reg = <0x0 0xFF9A0000 0x0 0x10000>;
+          r5_0: r5@0 {
+               #address-cells = <2>;
+               #size-cells = <2>;
+               ranges;
+               memory-region = <&rproc_0_reserved>, <&rpu0vdev0buffer>, <&rpu0vdev0vring0>, <&rpu0vdev0vring1>;
+               pnode-id = <0x7>;
+               mboxes = <&ipi_mailbox_rpu0 0>, <&ipi_mailbox_rpu0 1>;
+               mbox-names = "tx", "rx";
+               tcm_0_a: tcm_0@0 {
+                    reg = <0x0 0xFFE00000 0x0 0x10000>;
+                    pnode-id = <0xf>;
+               };
+               tcm_0_b: tcm_0@1 {
+                    reg = <0x0 0xFFE20000 0x0 0x10000>;
+                    pnode-id = <0x10>;
+               };
+          };
+     };
+
+
+     zynqmp_ipi1 {
+          compatible = "xlnx,zynqmp-ipi-mailbox";
+          interrupt-parent = <&gic>;
+          interrupts = <0 29 4>;
+          xlnx,ipi-id = <7>;
+          #address-cells = <1>;
+          #size-cells = <1>;
+          ranges;
+
+          /* APU<->RPU0 IPI mailbox controller */
+          ipi_mailbox_rpu0: mailbox@ff90000 {
+               reg = <0xff990600 0x20>,
+                     <0xff990620 0x20>,
+                     <0xff9900c0 0x20>,
+                     <0xff9900e0 0x20>;
+               reg-names = "local_request_region",
+                        "local_response_region",
+                        "remote_request_region",
+                        "remote_response_region";
+               #mbox-cells = <1>;
+               xlnx,ipi-id = <1>;
+          };
+     };
+
+...
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
