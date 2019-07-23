Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E60E71B50
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 17:16:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pVZk2h6vA+CDbZzqEeqo9+f2c+IxJ9JkUxjWPZ678B0=; b=PTH6c/d0S5kx6RPS2os9SYzJ7j
	5qmmK1iJJCjnjd4uKFdGgN64w8AsV9p1E3iNNsXzEm3rFSWpzUq0CP2B06vlo2wDtUIN3z+N7j/Ec
	N2oO0HGWnPPimxfnpM8LL/lUzqw5v09B87E3PeLbKgrDysuaDmANOES7OUKhnmkqHndw+m45o6MpZ
	vNCY7gTfmfYoszsW/SSk3ZOAUdjbMbfT1WZ1lUvNKBomZz71u+tNP4/NZvCoHS86S7a2G7YPhVoPq
	5K9C0kxvR1lXGhFY5NtoB+MjlIz4cLx/ENp/luWpzzkwlIWBN1u0SY0bK3hVV4YkmZ3OvSr3ZcOdw
	+jh/CiaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpwWl-0002FB-L0; Tue, 23 Jul 2019 15:16:31 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpwWG-0001zN-TW
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 15:16:02 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 19A9B1A026D;
 Tue, 23 Jul 2019 17:15:58 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 0DEC41A0235;
 Tue, 23 Jul 2019 17:15:58 +0200 (CEST)
Received: from fsr-ub1664-016.ea.freescale.net
 (fsr-ub1664-016.ea.freescale.net [10.171.71.216])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id A57EB205DD;
 Tue, 23 Jul 2019 17:15:57 +0200 (CEST)
From: Claudiu Manoil <claudiu.manoil@nxp.com>
To: "David S . Miller" <davem@davemloft.net>
Subject: [PATCH net-next 2/3] dt-bindings: net: fsl: enetc: Add bindings for
 the central MDIO PCIe endpoint
Date: Tue, 23 Jul 2019 18:15:54 +0300
Message-Id: <1563894955-545-3-git-send-email-claudiu.manoil@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563894955-545-1-git-send-email-claudiu.manoil@nxp.com>
References: <1563894955-545-1-git-send-email-claudiu.manoil@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_081601_103825_4CF6C185 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 alexandru.marginean@nxp.com, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The on-chip PCIe root complex that integrates the ENETC ethernet
controllers also integrates a PCIe enpoint for the MDIO controller
provinding for cetralized control of the ENETC mdio bus.
Add bindings for this "central" MDIO Integrated PCIe Endpoit.

Signed-off-by: Claudiu Manoil <claudiu.manoil@nxp.com>
---
 .../devicetree/bindings/net/fsl-enetc.txt     | 42 +++++++++++++++++--
 1 file changed, 39 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/fsl-enetc.txt b/Documentation/devicetree/bindings/net/fsl-enetc.txt
index 25fc687419db..c090f6df7a39 100644
--- a/Documentation/devicetree/bindings/net/fsl-enetc.txt
+++ b/Documentation/devicetree/bindings/net/fsl-enetc.txt
@@ -11,7 +11,9 @@ Required properties:
 		  to parent node bindings.
 - compatible	: Should be "fsl,enetc".
 
-1) The ENETC external port is connected to a MDIO configurable phy:
+1. The ENETC external port is connected to a MDIO configurable phy
+
+1.1. Using the local ENETC Port MDIO interface
 
 In this case, the ENETC node should include a "mdio" sub-node
 that in turn should contain the "ethernet-phy" node describing the
@@ -47,8 +49,42 @@ Example:
 		};
 	};
 
-2) The ENETC port is an internal port or has a fixed-link external
-connection:
+1.2. Using the central MDIO PCIe enpoint device
+
+In this case, the mdio node should be defined as another PCIe
+endpoint node, at the same level with the ENETC port nodes.
+
+Required properties:
+
+- reg		: Specifies PCIe Device Number and Function
+		  Number of the ENETC endpoint device, according
+		  to parent node bindings.
+- compatible	: Should be "fsl,enetc-mdio".
+
+The remaining required mdio bus properties are standard, their bindings
+already defined in Documentation/devicetree/bindings/net/mdio.txt.
+
+Example:
+
+	ethernet@0,0 {
+		compatible = "fsl,enetc";
+		reg = <0x000000 0 0 0 0>;
+		phy-handle = <&sgmii_phy0>;
+		phy-connection-type = "sgmii";
+	};
+
+	mdio@0,3 {
+		compatible = "fsl,enetc-mdio";
+		reg = <0x000300 0 0 0 0>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		sgmii_phy0: ethernet-phy@2 {
+			reg = <0x2>;
+		};
+	};
+
+2. The ENETC port is an internal port or has a fixed-link external
+connection
 
 In this case, the ENETC port node defines a fixed link connection,
 as specified by Documentation/devicetree/bindings/net/fixed-link.txt.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
