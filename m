Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAC4CDC43
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 09:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GnRBc2n6emw1V2w5VSMu1X0n5fB/SQdR4UgDF4lbSAM=; b=khMV4aUJ/YchK4
	2rWyTJo8jxqwGlJR+Y0Qj8REza+IcADXk3y0ID19/C7PSKT53C4hSzYy7SrjkXdH0kaKrSrGmOm/O
	/2qlYMzHK0bnIF9xfAO5WD2kfzejeDrWNIVTrY4TM5tqFJ1cRQqIwJn26atJHbBP9fKKiXpn3jfE9
	zzVQOLb0MNF+YucropNPZa8PXxyme45mcPAv7SYwQ1Or9wKZ0D/GVvznbeZgOeT5fxndDBdGg9kT8
	yroRkf3P2MarkTeiOUoxexnr3B07Q82Qs932QNVCnmikiKKIx31unXv3aSxDXRFNYBtzHC06R7DsJ
	6Emwlb9VtCunFuXFnYUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHN9H-0001ej-3e; Mon, 07 Oct 2019 07:09:39 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHN8X-00017M-3P; Mon, 07 Oct 2019 07:08:55 +0000
X-UUID: cd723c875c4547dfb194ac8cc54029ac-20191006
X-UUID: cd723c875c4547dfb194ac8cc54029ac-20191006
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <mark-mc.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 926014291; Sun, 06 Oct 2019 23:08:45 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 7 Oct 2019 00:08:45 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 7 Oct 2019 15:08:44 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 7 Oct 2019 15:08:44 +0800
From: MarkLee <Mark-MC.Lee@mediatek.com>
To: "David S. Miller" <davem@davemloft.net>, Sean Wang
 <sean.wang@mediatek.com>, John Crispin <john@phrozen.org>, Nelson Chang
 <nelson.chang@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH net,
 v2 2/2] arm: dts: mediatek: Fix mt7629 dts to reflect the latest
 dt-binding
Date: Mon, 7 Oct 2019 15:08:44 +0800
Message-ID: <20191007070844.14212-3-Mark-MC.Lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191007070844.14212-1-Mark-MC.Lee@mediatek.com>
References: <20191007070844.14212-1-Mark-MC.Lee@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_000853_140332_6124E8D5 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rene van Dorst <opensource@vdorst.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, MarkLee <Mark-MC.Lee@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Removes mediatek,physpeed property from dtsi that is useless in PHYLINK
* Use the fixed-link property speed = <2500> to set the phy in 2.5Gbit.
* Set gmac1 to gmii mode that connect to a internal gphy

Signed-off-by: MarkLee <Mark-MC.Lee@mediatek.com>
--
v1->v2:
* SGMII port only support BASE-X at 2.5Gbit.
---
 arch/arm/boot/dts/mt7629-rfb.dts | 13 ++++++++++++-
 arch/arm/boot/dts/mt7629.dtsi    |  2 --
 2 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/mt7629-rfb.dts b/arch/arm/boot/dts/mt7629-rfb.dts
index 3621b7d2b22a..9980c10c6e29 100644
--- a/arch/arm/boot/dts/mt7629-rfb.dts
+++ b/arch/arm/boot/dts/mt7629-rfb.dts
@@ -66,9 +66,21 @@
 	pinctrl-1 = <&ephy_leds_pins>;
 	status = "okay";
 
+	gmac0: mac@0 {
+		compatible = "mediatek,eth-mac";
+		reg = <0>;
+		phy-mode = "2500base-x";
+		fixed-link {
+			speed = <2500>;
+			full-duplex;
+			pause;
+		};
+	};
+
 	gmac1: mac@1 {
 		compatible = "mediatek,eth-mac";
 		reg = <1>;
+		phy-mode = "gmii";
 		phy-handle = <&phy0>;
 	};
 
@@ -78,7 +90,6 @@
 
 		phy0: ethernet-phy@0 {
 			reg = <0>;
-			phy-mode = "gmii";
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/mt7629.dtsi b/arch/arm/boot/dts/mt7629.dtsi
index 9608bc2ccb3f..867b88103b9d 100644
--- a/arch/arm/boot/dts/mt7629.dtsi
+++ b/arch/arm/boot/dts/mt7629.dtsi
@@ -468,14 +468,12 @@
 			compatible = "mediatek,mt7629-sgmiisys", "syscon";
 			reg = <0x1b128000 0x3000>;
 			#clock-cells = <1>;
-			mediatek,physpeed = "2500";
 		};
 
 		sgmiisys1: syscon@1b130000 {
 			compatible = "mediatek,mt7629-sgmiisys", "syscon";
 			reg = <0x1b130000 0x3000>;
 			#clock-cells = <1>;
-			mediatek,physpeed = "2500";
 		};
 	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
