Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD5316AE27
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:54:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L8/UA20Hf7r6DePVq+bK9aj+LaUwg/zAPzsmb0bexzQ=; b=t1/Mut1guKT6wl
	1ueCIAiC0pa6APu0c/CjL2jVfltZCzladEL/GQWT2cc9FO4zEyTztyMm/mTzDvJGFjBAch+7iPfKh
	YYYKIJSYe7/qgrC50OVAMyMLyf4BfV/d+F/gp1XR8SH1w5RY48Vo3xKAY++cHKUxIGmJ1+f+rCTl+
	/C7DgOIR5jVkPDeDdjq1GyqgTuNt9AE+YDGqrti3A4sJqTwnqlJJl9wEFC6BTDGX4X1RRfvy9kIYq
	kP9U2qJSrG8nPhtFZlEsuVsdzoXkQB9S2g8B6Uxfp+xzO0pVQU7aYcwXgaLXR9rTY+QT1MEbjmzAT
	Xx+/+fMJPGKc6pJKMaKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6HvT-0000KR-3T; Mon, 24 Feb 2020 17:53:51 +0000
Received: from mail-eopbgr690053.outbound.protection.outlook.com
 ([40.107.69.53] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6HuP-00083X-4b
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 17:52:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CR32V3qLTYoKvZSrR9pCiZVHPLhs71/5dQnrY5BlidIQiyGzyYQh/+75VrFWr98W+YV9kfwFnDr7k9ak2xaVyy8d98ErtxmofwzAILOarGyC1QYQ0acxWVHQfGNj53CHMKjIGhXTHjvhnAH1SbGT84URe16wQP4sVld4h2uBk83qaog/PfHezuMcSIH6cc7W4Lgyv7rCBRgnavD+0Xxdb3kqhwEETZIFP4jBufOLZTulYC4zPZZvEuOVS6iK8AEvDs3UoTjsKDDZhDtC+DUI8sjMNKxjUGmwjlM678j43pAPe2CUJKTcp7HZ/hjxUu6wjtQQ1XmmoGmP5VJ4TlsD1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j1Vble9omunl338hCJkj7zEz2/0MvqqxrDXvoYW6dKI=;
 b=C+l1+MDHAOwx2+8Ie+VSqy73a2Nxp1D8LO214tB1Q5OPowIcQQJtWP03cabDM5DIVygT4Z0/e/SJ1X021xciBtTmWHRk5vswULnAEtH+YbCOLHsivrZlNJNQumV6DXbxiJ0/SZr8gFAOO/ebwha/INPmEG7TSkZ/nCxuCtra1116i3x1muF1DAoOhWtyTRqe/02QAcGvl3GWMGkxaYcmIJ1BfUQmTpHT+MgthtLGO9hHeLXmxnID/UQxTBsdY7TtuiY9hHlqkBstOkkgbuwcygiUIfUTb1OBTTP0F52oBwb2ZLevbn4rAyzr+NveWWCqgdlfqo4LNOJZMNE5iFODZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j1Vble9omunl338hCJkj7zEz2/0MvqqxrDXvoYW6dKI=;
 b=RqV5d4hkilVQZbyAweURflmf1zev04VXwKqWrJkO+BmrvFV3+2RhtyMN59nqBImFYnSULTpdGRQSyZOdcfs/AByMWJx/I6Vcq//hj6GH3nAnDodQN4bLGT2zryYYZigu3NRJhIwSpc8gz1HWukRIbfhncLckRdVKNtM4pJq/d/8=
Received: from BN7PR02CA0006.namprd02.prod.outlook.com (2603:10b6:408:20::19)
 by DM6PR02MB4476.namprd02.prod.outlook.com (2603:10b6:5:1e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.18; Mon, 24 Feb
 2020 17:52:41 +0000
Received: from SN1NAM02FT025.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::200) by BN7PR02CA0006.outlook.office365.com
 (2603:10b6:408:20::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.17 via Frontend
 Transport; Mon, 24 Feb 2020 17:52:41 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT025.mail.protection.outlook.com (10.152.72.87) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2750.19
 via Frontend Transport; Mon, 24 Feb 2020 17:52:41 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1j6HuK-0006VF-Qi; Mon, 24 Feb 2020 09:52:40 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1j6HuF-0007aa-Nb; Mon, 24 Feb 2020 09:52:35 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 01OHqVQm015190; 
 Mon, 24 Feb 2020 09:52:31 -0800
Received: from [172.19.2.206] (helo=xsjblevinsk50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1j6HuB-0007aE-N9; Mon, 24 Feb 2020 09:52:31 -0800
From: Ben Levinsky <ben.levinsky@xilinx.com>
To: ohad@wizery.com, bjorn.andersson@linaro.org, michal.simek@xilinx.com,
 jollys@xilinx.com, rajan.vaja@xilinx.com, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH 4/5] dt-bindings: remoteproc: Add documentation for ZynqMP R5
 rproc bindings
Date: Mon, 24 Feb 2020 09:52:30 -0800
Message-Id: <1582566751-13118-5-git-send-email-ben.levinsky@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582566751-13118-1-git-send-email-ben.levinsky@xilinx.com>
References: <1582566751-13118-1-git-send-email-ben.levinsky@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39850400004)(396003)(376002)(346002)(199004)(189003)(70206006)(107886003)(8676002)(2906002)(70586007)(81166006)(81156014)(5660300002)(356004)(8936002)(4326008)(9786002)(54906003)(186003)(2616005)(478600001)(336012)(426003)(26005)(44832011)(316002)(36756003)(7696005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4476; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 11784d72-633b-4387-4b1b-08d7b9525823
X-MS-TrafficTypeDiagnostic: DM6PR02MB4476:
X-Microsoft-Antispam-PRVS: <DM6PR02MB44766EA8764F6C3F836CD06DB5EC0@DM6PR02MB4476.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 032334F434
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QoaQ352fwhUcORqVph7wDRNsOz65Vi1VMhPR3qCNaI8ztAEQQy2vfoeq5euCQxz43ZWO3pKwpw7TuYsmGTd1vV1QbUs4BkBflt7Z0qc6Wymekf02LVaeluC/DTb/CnbbCgnIM0qmWZJ4vQ1+XR8teFtvlP5YWk6biZxceMe/+AZYpnDdVMM+YtbBxw+/kpFploAfYw6lKL+UssCH5D+6cIjiL7qfCFRMAMtn/UPceAQRFv10M5bCOte1oHH+oX5NWt7HwFjWWnEV5bO8UjH/B5ix2IvcDl9E78XsLDHgnAtloQ9EyKS+oBY24pRZhmH1NdQe3YLazVpiV6MYhuSSbLI/kgVOgGlT1edxWKp2YdYf4+ChpyIDImcyODaOcOrGaqVRA3JJsvk8v4yPhBBgdMS+RynHLaIT6OnXMQmR7DxSXYzLXhXwrGNYYZ3AhfYB
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2020 17:52:41.1908 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 11784d72-633b-4387-4b1b-08d7b9525823
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4476
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_095245_190048_F772BA77 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.53 listed in list.dnswl.org]
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

From: Jason Wu <j.wu@xilinx.com>

Add binding for ZynqMP R5 OpenAMP.

Represent the RPU domain resources in one device node. Each RPU
processor is a subnode of the top RPU domain node.

Signed-off-by: Jason Wu <j.wu@xilinx.com>
Signed-off-by: Wendy Liang <jliang@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---
 .../remoteproc/xilinx,zynqmp-r5-remoteproc.txt     | 135 +++++++++++++++++++++
 1 file changed, 135 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.txt

diff --git a/Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.txt b/Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.txt
new file mode 100644
index 0000000..ee7a515
--- /dev/null
+++ b/Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.txt
@@ -0,0 +1,135 @@
+Xilinx ARM Cortex A53-R5 remoteproc driver
+==========================================
+
+ZynqMP family of devices use two Cortex R5 processors to help with various
+low power / real time tasks.
+
+This driver requires specific ZynqMP hardware design.
+
+ZynqMP R5 Device Node:
+=================================
+A ZynqMP R5 device node is used to represent RPU domain
+within ZynqMP SoC. This device node contains RPU processor
+subnodes.
+
+Required Properties:
+--------------------
+ - compatible : Should be "xlnx,zynqmp-r5-remoteproc-1.0"
+ - core_conf : R5 core configuration (valid string - split or lock-step)
+ - interrupts : Interrupt mapping for remoteproc IPI. It is required if the
+                user uses the remoteproc driver with the RPMsg kernel driver.
+ - interrupt-parent : Phandle for the interrupt controller. It is required if
+                      the user uses the remoteproc driver with the RPMsg kernel
+                      kernel driver.
+
+ZynqMP R5 Remoteproc Device Node:
+=================================
+A ZynqMP R5 Remoteproc device node is used to represent a RPU processor.
+It is a subnode to the ZynqMP R5 device node. It also contains tightly
+coupled memory subnodes.
+
+Required Properties:
+--------------------
+ - pnode-id:	ZynqMP R5 processor power domain ID which will be used by
+		ZynqMP power management unit to idetify the processor.
+
+Optional Properties:
+--------------------
+ - memory-region: reserved memory which will be used by R5 processor
+
+
+ZynqMP R5 Remoteproc Device Node:
+=================================
+A ZynqMP R5 Remoteproc device node is used to represent a RPU processor.
+It is a subnode to the ZynqMP R5 device node.
+
+Required Properties:
+--------------------
+ - pnode-id:	ZynqMP R5 processor power domain ID which will be used by
+		ZynqMP power management unit to idetify the processor.
+
+Optional Properties:
+--------------------
+ - memory-region:	reserved memory which will be used by R5 processor
+ - mboxes:		Specify tx and rx mailboxes
+ - mbox-names:		List of identifier strings for tx/rx mailbox channel.
+
+ZynqMP R5 TCM Device Node:
+=================================
+The ZynqMP R5 TCM device node is used to represent the TCM memory.
+It is a subnode to the ZynqMP R5 processor.
+
+Required Properties:
+--------------------
+ - reg:		TCM address range
+ - pnode-id:	TCM power domain ID
+
+
+Example:
+--------
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+		/* R5 0 firmware memory in DDR */
+		rproc_0_fw_reserved: rproc@3ed000000 {
+			no-map;
+			reg = <0x0 0x3ed00000 0x0 0x40000>;
+		};
+		/* DMA shared memory between APU and RPU */
+		rpu0vdev0buffer: rpu0vdev0buffer@3ed400000 {
+			compatible = "shared-dma-pool";
+			no-map;
+			reg = <0x0 0x3ed40000 0x0 0x100000>;
+		};
+	};
+
+	zynqmp-r5-remoteproc@0 {
+		compatible = "xlnx,zynqmp-r5-remoteproc-1.0";
+		core_conf = "split";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+		r5-0: r5@0 {
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+			memory-region = <&rproc_0_fw_reserved>,
+					<&rpu0vdev0buffer>;
+			pnode-id = <0x7>;
+			mboxes = <&ipi_mailbox_rpu0 0>, <&ipi_mailbox_rpu0 1>;
+			mbox-names = "tx", "rx";
+			tcm-a: tcm@0 {
+				reg = <0x0 0xFFE00000 0x0 0x10000>,
+				pnode-id = <0xf>;
+			};
+			tcm-b: tcm@1 {
+				reg = <0x0 0xFFE20000 0x0 0x10000>,
+				pnode-id = <0x10>;
+			};
+		};
+	} ;
+
+	zynqmp_ipi {
+		compatible = "xlnx,zynqmp-ipi-mailbox";
+		interrupt-parent = <&gic>;
+		interrupts = <0 29 4>;
+		xlnx,ipi-id = <7>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		/* APU<->RPU0 IPI mailbox controller */
+		ipi_mailbox_rpu0: mailbox@ff90600 {
+			reg = <0xff990600 0x20>,
+			      <0xff990620 0x20>,
+			      <0xff9900c0 0x20>,
+			      <0xff9900e0 0x20>;
+			reg-names = "local_request_region",
+				    "local_response_region",
+				    "remote_request_region",
+				    "remote_response_region";
+			#mbox-cells = <1>;
+			xlnx,ipi-id = <1>;
+		};
+	};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
