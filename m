Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 283E2D7184
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 10:48:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Q8MSmD5sSEwGkJfrRIBTkK0bSQT3rTuTjnlqRiBgK2k=; b=ASSuqP32P7zW41Akk1OwPyg4is
	w/Ty2vW4M6b0a0aUhxBhilIE9ahalhYCpaji+UmKt1NFfTPuvYMEgrwU/hqhvua7IaEvrVzNGsV1m
	q4a2LgqqwBMlzMstJtHbNXnnP7p187qp9QZS2Tug3aKPGbL8kEGFj2aEotKqtJdAImUb/9h4Ob2Gh
	NkYmwpfGgNigtU2PJF6SlBTkW+TPdRa+KYW1uzKvO72cVB+NTAy+uQsfdZak59s1Luh9tSwWGpnBn
	sMs0YzQxUEbU1dRATBgtK8LEWFEXeIuocN6bQMOWXRNFb3knExWS5wbyOIGAFZWpM6xj1peXmm+4H
	3r4/cmTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKIVS-0003mT-9L; Tue, 15 Oct 2019 08:48:38 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKIUz-0003YR-6Q
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 08:48:10 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E280C200056;
 Tue, 15 Oct 2019 10:48:07 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 14D55200913;
 Tue, 15 Oct 2019 10:48:01 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 7354A402CA;
 Tue, 15 Oct 2019 16:47:52 +0800 (SGT)
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: Zhiqiang.Hou@nxp.com, bhelgaas@google.com, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, leoyang.li@nxp.com,
 kishon@ti.com, lorenzo.pieralisi@arm.com, Minghuan.Lian@nxp.com,
 andrew.murray@arm.com, mingkai.hu@nxp.com, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/6] dt-bindings: Add DT binding for PCIE GEN4 EP of the
 layerscape
Date: Tue, 15 Oct 2019 16:36:58 +0800
Message-Id: <20191015083702.21792-3-xiaowei.bao@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20191015083702.21792-1-xiaowei.bao@nxp.com>
References: <20191015083702.21792-1-xiaowei.bao@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_014809_370354_F9F118FE 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
v2: 
 - remove the status entry in EP Example.

 .../bindings/pci/layerscape-pcie-gen4.txt          | 27 +++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/layerscape-pcie-gen4.txt b/Documentation/devicetree/bindings/pci/layerscape-pcie-gen4.txt
index b40fb5d..06f9309 100644
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
@@ -50,3 +65,13 @@ Example:
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
+	};
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
