Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5761B197B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 00:28:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLUHp/Udg4sUZUtQH61iEnC2HSdh37vkQUITsa/4WMQ=; b=Tz9mIsqjQ336YQ
	a6irtSCTzQTiSbNRH4LeoM2n8hs1tHrQOReBTrYAgDPxzZqCY1SPHr+Ei/j0xa+DPr79v8n6IQCo7
	tMYtL0v8pyRbhVfRzjczlPG1IXfKcOUjZ6ZuvVrudJFJu35ktqR6vmxklbJlN46HgzgLdm2MOvkvd
	5tESC6t/I/MyrXCRLv8nWO3usD/HwDOE5ZtihGcIkV1MsqU4R1S2k4gldj3rjXMtnTv/aGINqt8B0
	YMawa60BJ6yZU/L50FNvOri4RhlSu2cbWvOanPuP/YLPg2FvdMURHea9jJnWmGUbYT/EB46bc8WvY
	ugGCTR6EJAupT4HMczpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQetR-00028v-JT; Mon, 20 Apr 2020 22:27:57 +0000
Received: from mail-dm6nam10on20611.outbound.protection.outlook.com
 ([2a01:111:f400:7e88::611]
 helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQess-0001qb-Pk
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 22:27:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UpiLRtsGTaFzZMAvAd3OqcelqpDNI2JfyyenhKJzKXg7AtATanVxzsMpSfv67q/wnfxIirwcBjXPE53JYuUrRxA2ZlZXW0ItWvCgSotpUre4o2TUYU0j+VK8w4f2IMaQ7Rhlrbp5VlD5xWrUVitT1PiAzK+b6VQ/1fmX2DIOLEg7QAAI7M/iyTjj9r2u0m1AoiR/QGCuxJGF5AfwLnS8/QoYrHOysq3LmixyEfPzTHI7D3YeAQx641DRWKPla9tsOSG8/lOCVDhvEZZJJR4NWKaYKEckH4DSdtz3x7JQeFmTCBsMZb9eXQu1FEc2nopD4kxLJ37J13VZdiq60t+ywA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Uf62ckIJXUHEvdiJURQrlEdK1oQIW9gQCt5kukF+r1g=;
 b=Tg9N3C5qo13Wncoohdy2tYVGhq+Cp6csBGGaKLcVQbz7OH2zOI5WmrYuTmFAcTU4upavCqf0KXDaND449Sdz7vjAw3WyomcR/c1RkveCilWx2QI4iTMr0iRCXdQuKlXYm4VlNaoU1C0fQevcOu5R/jHpBw1vOXCyqOxlpLzJ077KryTuBMCA7iCZ2FOSB3r1DZBzuNFDU1fUV0Yrwm2OWxSuFl6LZ4zZNe69VOciE++YTY5474lFNbY1yaFPht6flq6n8vIH/D+lFuhhWmAsA6S6C91yZMlKnynXHa5Cy6ZlR5BgaLDY479vLTNwNsaAofzF3eCifTgyXuu+ngdGgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Uf62ckIJXUHEvdiJURQrlEdK1oQIW9gQCt5kukF+r1g=;
 b=NRS0c1VGRkqZ/oH8jfak6BfriATjSxc/dnfDmGj9og2MxILRTLzA8FlnL97c/VGJ2K2rwd46n51SuClGv/F4b8IVak35cFIMjZbTIopLuuUISqGOJJU1/aTFw4AMGxEOas0HlAp0LuSP64bHXubzxYQHVrORGWAXwVExMZZxEY4=
Received: from CY1PR03CA0018.namprd03.prod.outlook.com (2603:10b6:600::28) by
 CY4PR02MB2200.namprd02.prod.outlook.com (2603:10b6:903:13::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.27; Mon, 20 Apr 2020 22:27:20 +0000
Received: from CY1NAM02FT039.eop-nam02.prod.protection.outlook.com
 (2603:10b6:600:0:cafe::e2) by CY1PR03CA0018.outlook.office365.com
 (2603:10b6:600::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25 via Frontend
 Transport; Mon, 20 Apr 2020 22:27:19 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT039.mail.protection.outlook.com (10.152.75.140) with Microsoft SMTP
 Server id 15.20.2921.25 via Frontend Transport; Mon, 20 Apr 2020 22:27:19
 +0000
Received: from [149.199.38.66] (port=33649 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jQers-0000Sd-2d; Mon, 20 Apr 2020 15:26:20 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jQesp-0008OD-7k; Mon, 20 Apr 2020 15:27:19 -0700
Received: from xsj-pvapsmtp01 (smtp3.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03KMR9gB006358; 
 Mon, 20 Apr 2020 15:27:09 -0700
Received: from [172.19.2.206] (helo=xsjblevinsk50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jQesf-0008MN-Cr; Mon, 20 Apr 2020 15:27:09 -0700
From: Ben Levinsky <ben.levinsky@xilinx.com>
To: ohad@wizery.com, bjorn.andersson@linaro.org, michal.simek@xilinx.com,
 jollys@xilinx.com, rajan.vaja@xilinx.com, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH v3 4/5] dt-bindings: remoteproc: Add documentation for ZynqMP
 R5 rproc bindings
Date: Mon, 20 Apr 2020 15:27:08 -0700
Message-Id: <1587421629-914-5-git-send-email-ben.levinsky@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587421629-914-1-git-send-email-ben.levinsky@xilinx.com>
References: <1587421629-914-1-git-send-email-ben.levinsky@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(136003)(346002)(39860400002)(396003)(46966005)(7696005)(9786002)(82740400003)(54906003)(356005)(4326008)(81166007)(81156014)(8676002)(44832011)(478600001)(336012)(2906002)(426003)(8936002)(107886003)(26005)(36756003)(2616005)(5660300002)(316002)(47076004)(70206006)(186003)(70586007);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6d557720-a012-4628-f616-08d7e579fd0d
X-MS-TrafficTypeDiagnostic: CY4PR02MB2200:
X-Microsoft-Antispam-PRVS: <CY4PR02MB220032FFE142FC005092FFCEB5D40@CY4PR02MB2200.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 03793408BA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0+NuoUunW2uRGnL3iyTuz6jbCLoDtLF9Vsh4FpRWP/4cxuuXaklFymDsK7q4AIb99/HUCm2731CmPSXt9V4NBk7wq965OAzpSSvJp4RQyE338oz0Kx2b+rGM/uVdoc7NTqJL4J4IjMp2O7yzvvcB+K3o/pfIVev9PHltBeZbxmvzAExDGwJCGXt0y/e8MgAvUWmny9dFijebN5MChzNqSUAaGUK7isAyXdJGTili02k0/TRXwfy7dhESwjizZ5Rn8uQC/+1GK1uhCTfWb1CfcdYx0Tvs01iLdlvJGz5NkRlvr9MGQ/FtMXqqNBzG1u5hOYA0MP4KtFVILy2Hc4IJNNAnEH2ifwIRpctd6ZQjEAHkg6dBLxrVhAAcyoR2w5RtUa2o7VTqKhxMUEEyAU9d/o34hMLABvzmH6j4sZjJDfTXHPe4FbILyoAOL6MdPhpgObSAStnDH2C+F9+cbYZrFDp5TOJa6NLtBMBUZYxbYYOeH/ozqdh2TRbsUNsab1hnDW6OgQcPCyeUqHEfcY35z+opA6Wtl+rnnEJVNbOW+n1uthnPIyNvgBQ57xZtel+oBvWJzC801lGQhLtOXBhZFg==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2020 22:27:19.5448 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d557720-a012-4628-f616-08d7e579fd0d
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB2200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_152722_837415_BF5500B7 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Changes since v2:
	- update zynqmp_r5 yaml parsing to not raise warnings for extra
	 information in children of R5 node. The warning "node has a unit
	 name, but no reg or ranges property" will still be raised though 
	 as this particular node is needed to describe the
	 '#address-cells' and '#size-cells' information.
---
 .../remoteproc/xilinx,zynqmp-r5-remoteproc.yaml    | 126 +++++++++++++++++++++
 1 file changed, 126 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.yaml

diff --git a/Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.yaml b/Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.yaml
new file mode 100644
index 0000000..e7d1496
--- /dev/null
+++ b/Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.yaml
@@ -0,0 +1,126 @@
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
+  r5@0:
+    type: object
+    required:
+        - '#address-cells'
+        - '#size-cells'
+        - pnode-id
+examples:
+  - |
+     reserved-memory {
+          #address-cells = <1>;
+          #size-cells = <1>;
+          ranges;
+          rpu0vdev0vring0: rpu0vdev0vring0@3ed40000 {
+               no-map;
+               reg = <0x3ed40000 0x4000>;
+          };
+          rpu0vdev0vring1: rpu0vdev0vring1@3ed44000 {
+               no-map;
+               reg = <0x3ed44000 0x4000>;
+          };
+          rpu0vdev0buffer: rpu0vdev0buffer@3ed48000 {
+               no-map;
+               reg = <0x3ed48000 0x100000>;
+          };
+          rproc_0_reserved: rproc@3ed000000 {
+               no-map;
+               reg = <0x3ed00000 0x40000>;
+          };
+     };
+     rpu: rpu@ff9a0000 {
+          compatible = "xlnx,zynqmp-r5-remoteproc-1.0";
+          #address-cells = <1>;
+          #size-cells = <1>;
+          ranges;
+          core_conf = "split";
+          reg = <0xFF9A0000 0x10000>;
+          r5_0: r5@0 {
+               ranges;
+               #address-cells = <1>;
+               #size-cells = <1>;
+               memory-region = <&rproc_0_reserved>, <&rpu0vdev0buffer>, <&rpu0vdev0vring0>, <&rpu0vdev0vring1>;
+               pnode-id = <0x7>;
+               mboxes = <&ipi_mailbox_rpu0 0>, <&ipi_mailbox_rpu0 1>;
+               mbox-names = "tx", "rx";
+               tcm_0_a: tcm_0@0 {
+                    #address-cells = <1>;
+                    #size-cells = <1>;
+                    reg = <0xFFE00000 0x10000>;
+                    pnode-id = <0xf>;
+               };
+               tcm_0_b: tcm_0@1 {
+                    #address-cells = <2>;
+                    #size-cells = <2>;
+                    reg = <0xFFE20000 0x10000>;
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
