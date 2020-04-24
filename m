Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0881B7D05
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 19:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qcJJrPUB4MGejJ9mhTPG+C+N6ZXNp9iPdw+4ue3Rr38=; b=kvorp/p4LSuso9
	1ygX1zFaV4fc/0UxsuzD4T3OuVtHMISbO31ELFb2Qm/5OjMpKcnYlPGVnLnshC+Nlps8+kvSjKm8a
	tTuoUEjRD0VkkftkZQMEjHb4QtAqMEaoSxzkUaBG5h5WWzLy4Ue0Lh+3zQca1y8qDkXcduQO/K8sF
	MMrdv20zNjYeANfRlWITZc8Zk79k7hWa4WB0t8eMXkPE5XNv222uJVAoHgyCne7RRhK2FlMibnrys
	bzdwnD7PDabxxR0LhJJgOT9CHYG3eWZE17iDBKVUJJsc9nHLStHDtf8YDhBdAzq2bWaciQiJvnSFO
	2vObKN2nbp3YPHP3cUeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS2Gj-0006hZ-EZ; Fri, 24 Apr 2020 17:37:41 +0000
Received: from mail-bn8nam12on2066.outbound.protection.outlook.com
 ([40.107.237.66] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS2FW-0005ot-Dj
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 17:36:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DGxOVKEfDWduG/roj6Le9IHieDtHwfNBwwswk3Mm5YC6i1nj1is0n7RSCQlWLejn3EfoW5ONLgqp/iat54lHsVF19MMaLsdZjTa3Yo/RJyorLnzYeiImwufZYnlNtaaLTOaoFYIepGcvdsZ+tJV9WquSIdNOMBmAUZKyEHBp/eVWI0AIkjaUcD4FILKSeXzEv9tLTx0IKtgp8u5gC6pMbZk7K0vQ7sqppHusac0L6iBeoH3BthmIInYRxheLaArU26VB9W9pvZjLA6MnFh2oyv96LPc9fymI5/2/umIZrHlsZEC7vQSGr2HXKE9BXWYa8ZqGwRXvmSGYGB5qmjLRVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+wcbWwSXccxd5Pq4yOcvRkyhOawiWl5tD0atfwGF4NI=;
 b=ihsoEu/H3sdeCgJTPwGUWYI0vgnOfkMPATlYr5p8vpMGBh/9lJJ5aCkM1YeKOQb2vDZpwr8kFRhuwJ4+QcUh91wbbxCDk/mJ/pz4ugnjYa3E10qg5slTgrjJULu/6ZlaB2tPPet6vi8HwGtkExxmQioMEhT3CMN/uuiKleNvfuc0r/fiw37oY1qr7q8hVIzwbW80DXDuzobErN8phB0IvG1GPPDiG2iC8Sww6+jHpVjErBKkihLz1vtUj4WkjUDSQsOsHZrS5LdjGuZPpJ/cxag3UbpnJ0v5iI7EXr72gYngqj2OagxKE2D/8uab9n0fKVb8f7bs9NC+tJUd07O+Fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+wcbWwSXccxd5Pq4yOcvRkyhOawiWl5tD0atfwGF4NI=;
 b=qCAdPRhkVcxJDLJbz6spXT8bVvOEoYo/W3UtbdmMSzfesI1XSWCjLLX81Bei7X6SBnrqEWYgHoaGiBqTUEXMarhVYCbJKZpg2iqgp1mamuhRK3J5Lm8sWGxlck9WRBnWzBo5kvTjnrwQc3O3WUA9x/M/YQyJLMQxcYIgog+d56k=
Received: from CY4PR02CA0036.namprd02.prod.outlook.com (2603:10b6:903:117::22)
 by CH2PR02MB6648.namprd02.prod.outlook.com (2603:10b6:610:7c::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Fri, 24 Apr
 2020 17:36:22 +0000
Received: from CY1NAM02FT031.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:117:cafe::91) by CY4PR02CA0036.outlook.office365.com
 (2603:10b6:903:117::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13 via Frontend
 Transport; Fri, 24 Apr 2020 17:36:22 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT031.mail.protection.outlook.com (10.152.75.180) with Microsoft SMTP
 Server id 15.20.2937.23 via Frontend Transport; Fri, 24 Apr 2020 17:36:22
 +0000
Received: from [149.199.38.66] (port=41697 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jS2EJ-0005BB-Es; Fri, 24 Apr 2020 10:35:11 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jS2FS-0006l0-0N; Fri, 24 Apr 2020 10:36:22 -0700
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03OHaB3R026370; 
 Fri, 24 Apr 2020 10:36:11 -0700
Received: from [172.19.2.206] (helo=xsjblevinsk50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jS2FG-0006h9-W8; Fri, 24 Apr 2020 10:36:11 -0700
From: Ben Levinsky <ben.levinsky@xilinx.com>
To: ohad@wizery.com, bjorn.andersson@linaro.org, michal.simek@xilinx.com,
 jollys@xilinx.com, rajan.vaja@xilinx.com, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH v4 4/5] dt-bindings: remoteproc: Add documentation for ZynqMP
 R5 rproc bindings
Date: Fri, 24 Apr 2020 10:36:09 -0700
Message-Id: <1587749770-15082-5-git-send-email-ben.levinsky@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587749770-15082-1-git-send-email-ben.levinsky@xilinx.com>
References: <1587749770-15082-1-git-send-email-ben.levinsky@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(136003)(39860400002)(346002)(376002)(396003)(46966005)(478600001)(2616005)(70586007)(82740400003)(54906003)(336012)(316002)(70206006)(186003)(5660300002)(47076004)(26005)(7696005)(107886003)(81166007)(9786002)(44832011)(356005)(426003)(4326008)(81156014)(2906002)(36756003)(8936002)(82310400002)(8676002);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4705532b-738b-4dff-eed3-08d7e876015e
X-MS-TrafficTypeDiagnostic: CH2PR02MB6648:
X-Microsoft-Antispam-PRVS: <CH2PR02MB664883ED001AE8D8EC12868DB5D00@CH2PR02MB6648.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 03838E948C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Gf6u4/jU32vUDWSAFnM+haIx/virt1NWGvsdGiUGbFzIvjcCmLeephse4rn0RF6Ae+ebXNKqA6agfR1lDZSgCUPI7QOQQcOYjvixZsBZ9ff3jqSLVz4MkUWurqCISCuI4/ZFIT8mKQsdWyuXFc4LpnO8nOwyfgby8xoExVGTOjySfNT+WkwMLkCylv6P0qdYSFmU8bwgwERdHPAyC6yasEACqQnuVOIzJVYdzWv2DhH1VbatVlpHxZQNBXiZIB5p7H4MP1fef+0yQ6JJSt2XxTmCBbffgi6imU1BNrev9YZMgTamtfBbztN5ESa/P7MZkfd9Tl+se7uswwhq0aULc1ZIEBgLfoppd4xYVFDjHA+QlsLyxmaduBb2/eJEI6RdxBJbAGjSH6QqdYyFRPV7B9weY/qOHA3kwHsgRLP7yHVYi+x0ICBlY2tTwodsVpPMaRzjtgKm+j7+UjLpj7P6JIC9eKyyiLWffz7hYlXbCo8cm0Q8hpnvQ232C7hDxp1l058xqDtWRnyZnxobFhC9Dt7qz4tdN1XTuPY0IzqK8QacINm75cLuUkgbQCtmTh7ja1Q2eLcfErFUdQI7n/o8hw==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 17:36:22.2878 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4705532b-738b-4dff-eed3-08d7e876015e
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6648
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_103626_474510_E1707BB2 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.237.66 listed in wl.mailspike.net]
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
Changes since 3:
- remove warning '/example-0/rpu@ff9a0000/r5@0:
  node has a unit name, but no reg or ranges property'
  by adding reg to r5 node.
---

 .../remoteproc/xilinx,zynqmp-r5-remoteproc.yaml    | 127 +++++++++++++++++++++
 1 file changed, 127 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.yaml

diff --git a/Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.yaml b/Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.yaml
new file mode 100644
index 0000000..41520b6
--- /dev/null
+++ b/Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.yaml
@@ -0,0 +1,127 @@
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
+               reg = <0xFF9A0100 0x1000>;
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
