Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4827818F202
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 10:41:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=94Y//PDnf3tWFrv3uVN0qyAQbnCXJsvd5fiAYEkEfwc=; b=o12dUrLccA4xBhdhOi++CliJxV
	YFuHKukw1jU3WCb9qwAC26rLhjvQa+x6HAvOhB2GrAM5S1C3kUOyUnSup4o8N6LPGcERedL1yWL08
	uepNxZ/5GIWrfCOaxuECVr/aR0NYDohAq5xH0m6W3FYGB+XxYyWaXdiDi1RlP36gg3DwdvTuCixBX
	+/T1nSIKMmmlcm8FJQ3Bp60BJ5W2/f0ZcFpwaeReoM4ERk80y/bDbwzmaPsivxkaK52SN5GKvlEsf
	CNjF/LX33s47agO4y7qfh3Kr17iyrpwHX2LjkdoMvacsWkqtVlCVOGe1fbvU5X4/siY8nwhtBVioZ
	bZTgvD/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGJaK-0006n1-Qu; Mon, 23 Mar 2020 09:41:28 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGJZw-0006dP-9j
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 09:41:05 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 23 Mar 2020 18:41:03 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 9461960057;
 Mon, 23 Mar 2020 18:41:03 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Mon, 23 Mar 2020 18:41:03 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 13AED1A12AD;
 Mon, 23 Mar 2020 18:41:03 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v3 1/2] dt-bindings: PCI: Add UniPhier PCIe endpoint
 controller description
Date: Mon, 23 Mar 2020 18:40:53 +0900
Message-Id: <1584956454-8829-2-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584956454-8829-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1584956454-8829-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_024104_562105_0DEB16D5 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jassi Brar <jaswinder.singh@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DT bindings for PCIe controller implemented in UniPhier SoCs
when configured in endpoint mode. This controller is based on
the DesignWare PCIe core.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/pci/uniphier-pcie-ep.txt   | 53 ++++++++++++++++++++++
 MAINTAINERS                                        |  2 +-
 2 files changed, 54 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/pci/uniphier-pcie-ep.txt

diff --git a/Documentation/devicetree/bindings/pci/uniphier-pcie-ep.txt b/Documentation/devicetree/bindings/pci/uniphier-pcie-ep.txt
new file mode 100644
index 0000000..072dc78
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/uniphier-pcie-ep.txt
@@ -0,0 +1,53 @@
+Socionext UniPhier PCIe endpoint controller bindings
+
+This describes the devicetree bindings for PCIe endpoint controller
+implemented on Socionext UniPhier SoCs.
+
+UniPhier PCIe endpoint controller is based on the Synopsys DesignWare
+PCI core. It shares common functions with the PCIe DesignWare core driver
+and inherits common properties defined in
+Documentation/devicetree/bindings/pci/designware-pcie.txt.
+
+Required properties:
+- compatible: Should be
+	"socionext,uniphier-pro5-pcie-ep" for Pro5 SoC
+- reg: Specifies offset and length of the register set for the device.
+	According to the reg-names, appropriate register sets are required.
+- reg-names: Must include the following entries:
+	"dbi"        - controller configuration registers
+	"dbi2"       - controller configuration registers for shadow
+	"link"       - SoC-specific glue layer registers
+	"addr_space" - PCIe configuration space
+- clocks: A phandle to the clock gate for PCIe glue layer including
+	the endpoint controller.
+- clock-names: Should contain the following:
+	"gio", "link" - for Pro5 SoC
+- resets: A phandle to the reset line for PCIe glue layer including
+	the endpoint controller.
+- reset-names: Should contain the following:
+	"gio", "link" - for Pro5 SoC
+
+Optional properties:
+- phys: A phandle to generic PCIe PHY. According to the phy-names, appropriate
+	phys are required.
+- phy-names: Must be "pcie-phy".
+
+Example:
+
+	pcie_ep: pcie-ep@66000000 {
+		compatible = "socionext,uniphier-pro5-pcie-ep",
+			     "snps,dw-pcie-ep";
+		status = "disabled";
+		reg-names = "dbi", "dbi2", "link", "addr_space";
+		reg = <0x66000000 0x1000>, <0x66001000 0x1000>,
+		      <0x66010000 0x10000>, <0x67000000 0x400000>;
+		clock-names = "gio", "link";
+		clocks = <&sys_clk 12>, <&sys_clk 24>;
+		reset-names = "gio", "link";
+		clocks = <&sys_rst 12>, <&sys_rst 24>;
+		num-ib-windows = <16>;
+		num-ob-windows = <16>;
+		num-lanes = <4>;
+		phy-names = "pcie-phy";
+		phys = <&pcie_phy>;
+	};
diff --git a/MAINTAINERS b/MAINTAINERS
index 50e8b90..01a4631 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13151,7 +13151,7 @@ PCIE DRIVER FOR SOCIONEXT UNIPHIER
 M:	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
 L:	linux-pci@vger.kernel.org
 S:	Maintained
-F:	Documentation/devicetree/bindings/pci/uniphier-pcie.txt
+F:	Documentation/devicetree/bindings/pci/uniphier-pcie*.txt
 F:	drivers/pci/controller/dwc/pcie-uniphier.c
 
 PCIE DRIVER FOR ST SPEAR13XX
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
