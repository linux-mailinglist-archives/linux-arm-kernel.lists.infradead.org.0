Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DD418548B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 04:48:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EafUnWDh/81Og8QMxTzZZJ3zD+UuEbuyTEf5xcNfNYI=; b=ffwjuBCWpA5SaCVu+2dTxZaHLh
	+S04dHNTbX4b2ZdlOF8dQJRnpXZCT5B250g+hpCkMvXdPbF2GlrJdEwsAhsrQF0INovS7hTvOBL9b
	xOpuz1T31IyB3BaJ9g/MCl0az1q+f82qvofOzb67i5ZgKzXun/QLknTC64ZFsw2ZSORNddpRGWOmN
	+5d3GJLZ9cYnwsN1LjdoZRo65z4T8Jo9Wuob5DZF6yqel0kn7AZjkhvVxBl8r3ctyk0BgGugb+Bht
	DINxlhCzMhchgSnnJaoLxOSiRCIQouIqIb8Fvxk7CuJhEEfNSveLXXTCBGpMG+9dSYp34HfaPx17U
	U1eQWVbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCxmT-0007a6-1y; Sat, 14 Mar 2020 03:48:09 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCxjM-0003lu-Kt
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 03:44:59 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 28D8D200060;
 Sat, 14 Mar 2020 04:44:55 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 62295200449;
 Sat, 14 Mar 2020 04:44:45 +0100 (CET)
Received: from titan.ap.freescale.net (titan.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 2CF83402E8;
 Sat, 14 Mar 2020 11:44:33 +0800 (SGT)
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: Zhiqiang.Hou@nxp.com, Minghuan.Lian@nxp.com, mingkai.hu@nxp.com,
 bhelgaas@google.com, robh+dt@kernel.org, shawnguo@kernel.org,
 leoyang.li@nxp.com, kishon@ti.com, lorenzo.pieralisi@arm.com,
 roy.zang@nxp.com, amurray@thegoodpenguin.co.uk, jingoohan1@gmail.com,
 gustavo.pimentel@synopsys.com, andrew.murray@arm.com,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org
Subject: [PATCH v6 10/11] arm64: dts: layerscape: Add PCIe EP node for ls1088a
Date: Sat, 14 Mar 2020 11:30:37 +0800
Message-Id: <20200314033038.24844-11-xiaowei.bao@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20200314033038.24844-1-xiaowei.bao@nxp.com>
References: <20200314033038.24844-1-xiaowei.bao@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_204456_863786_D86B4AD6 
X-CRM114-Status: UNSURE (   6.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

Add PCIe EP node for ls1088a to support EP mode.

Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
---
v2:
 - Remove the pf-offset proparty.
v3:
 - No change.
v4:
 - No change.
v5:
 - No change.
v6:
 - No change.
 
 arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 31 ++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
index ec6013a..cb0805b 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
@@ -497,6 +497,17 @@
 			status = "disabled";
 		};
 
+		pcie_ep@3400000 {
+			compatible = "fsl,ls1088a-pcie-ep","fsl,ls-pcie-ep";
+			reg = <0x00 0x03400000 0x0 0x00100000
+			       0x20 0x00000000 0x8 0x00000000>;
+			reg-names = "regs", "addr_space";
+			num-ib-windows = <24>;
+			num-ob-windows = <128>;
+			max-functions = /bits/ 8 <2>;
+			status = "disabled";
+		};
+
 		pcie@3500000 {
 			compatible = "fsl,ls1088a-pcie";
 			reg = <0x00 0x03500000 0x0 0x00100000   /* controller registers */
@@ -522,6 +533,16 @@
 			status = "disabled";
 		};
 
+		pcie_ep@3500000 {
+			compatible = "fsl,ls1088a-pcie-ep","fsl,ls-pcie-ep";
+			reg = <0x00 0x03500000 0x0 0x00100000
+			       0x28 0x00000000 0x8 0x00000000>;
+			reg-names = "regs", "addr_space";
+			num-ib-windows = <6>;
+			num-ob-windows = <8>;
+			status = "disabled";
+		};
+
 		pcie@3600000 {
 			compatible = "fsl,ls1088a-pcie";
 			reg = <0x00 0x03600000 0x0 0x00100000   /* controller registers */
@@ -547,6 +568,16 @@
 			status = "disabled";
 		};
 
+		pcie_ep@3600000 {
+			compatible = "fsl,ls1088a-pcie-ep","fsl,ls-pcie-ep";
+			reg = <0x00 0x03600000 0x0 0x00100000
+			       0x30 0x00000000 0x8 0x00000000>;
+			reg-names = "regs", "addr_space";
+			num-ib-windows = <6>;
+			num-ob-windows = <8>;
+			status = "disabled";
+		};
+
 		smmu: iommu@5000000 {
 			compatible = "arm,mmu-500";
 			reg = <0 0x5000000 0 0x800000>;
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
