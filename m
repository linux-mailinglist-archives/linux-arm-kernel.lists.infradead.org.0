Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFDBB3341
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 04:28:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=n3S4Xrwgj+Si3UvOeJsJ5DBR9ZaQu1+vJ0BhOYcmuNk=; b=b+c6fqaLqgK7VmleIrWQ9hyTFE
	bvt3R98YuzkhOMJ4Qon/WXO74vFAjyOXUYsZ5j2PYpdOhpqpl6/LfyMsdTJXZA07M3gCCBTZAC2l/
	e3vVvaMQAIpdVAPx6kB++tI0wBKGHWkRmI0Ih25/wR+bHyXYfmA8fwXR3RRDTBiZL8KzQHIpLgTXf
	VnXlcCoa6LAu8qY+8huJacItQ8+nnqQfc006po46C62mnqhWY1RscWnGnC5cp4q6x2hKkuS/pUali
	6CJt5R/4+wwFbAL04wnwuOkG8ih4W6PiMkN0YRgbxOWEwAiUIqe+ZPUc22r3pY8J2niBhfucdOe9R
	fyLO5Luw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9gkr-0003D8-0b; Mon, 16 Sep 2019 02:28:41 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9gkf-00039y-DU
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 02:28:30 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4124A200512;
 Mon, 16 Sep 2019 04:28:25 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 2D4AD200513;
 Mon, 16 Sep 2019 04:28:18 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id B1612402CA;
 Mon, 16 Sep 2019 10:28:09 +0800 (SGT)
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: Zhiqiang.Hou@nxp.com, bhelgaas@google.com, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, leoyang.li@nxp.com,
 kishon@ti.com, lorenzo.pieralisi@arm.com, Minghuan.Lian@nxp.com,
 andrew.murray@arm.com, mingkai.hu@nxp.com, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/6] dt-bindings: Add DT binding for PCIE GEN4 EP of the
 layerscape
Date: Mon, 16 Sep 2019 10:17:38 +0800
Message-Id: <20190916021742.22844-3-xiaowei.bao@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190916021742.22844-1-xiaowei.bao@nxp.com>
References: <20190916021742.22844-1-xiaowei.bao@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_192829_590995_4491EEA8 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Xiaowei Bao <xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the documentation for the Device Tree binding of the layerscape
PCIe GEN4 controller with EP mode.

Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
---
 .../bindings/pci/layerscape-pcie-gen4.txt          | 28 +++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/layerscape-pcie-gen4.txt b/Documentation/devicetree/bindings/pci/layerscape-pcie-gen4.txt
index b40fb5d..414a86c 100644
--- a/Documentation/devicetree/bindings/pci/layerscape-pcie-gen4.txt
+++ b/Documentation/devicetree/bindings/pci/layerscape-pcie-gen4.txt
@@ -3,6 +3,8 @@ NXP Layerscape PCIe Gen4 controller
 This PCIe controller is based on the Mobiveil PCIe IP and thus inherits all
 the common properties defined in mobiveil-pcie.txt.
 
+HOST MODE
+=========
 Required properties:
 - compatible: should contain the platform identifier such as:
   "fsl,lx2160a-pcie"
@@ -23,7 +25,20 @@ Required properties:
 - msi-parent : See the generic MSI binding described in
   Documentation/devicetree/bindings/interrupt-controller/msi.txt.
 
-Example:
+DEVICE MODE
+=========
+Required properties:
+- compatible: should contain the platform identifier such as:
+  "fsl,lx2160a-pcie-ep"
+- reg: base addresses and lengths of the PCIe controller register blocks.
+  "regs": PCIe controller registers.
+  "addr_space" EP device CPU address.
+- apio-wins: number of requested apio outbound windows.
+
+Optional Property:
+- max-functions: Maximum number of functions that can be configured (default 1).
+
+RC Example:
 
 	pcie@3400000 {
 		compatible = "fsl,lx2160a-pcie";
@@ -50,3 +65,14 @@ Example:
 				<0000 0 0 3 &gic 0 0 GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>,
 				<0000 0 0 4 &gic 0 0 GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
 	};
+
+EP Example:
+
+	pcie_ep@3400000 {
+		compatible = "fsl,lx2160a-pcie-ep";
+		reg = <0x00 0x03400000 0x0 0x00100000
+		       0x80 0x00000000 0x8 0x00000000>;
+		reg-names = "regs", "addr_space";
+		apio-wins = <8>;
+		status = "disabled";
+	};
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
