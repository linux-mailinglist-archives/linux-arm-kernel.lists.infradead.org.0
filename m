Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4320D66A49
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 11:45:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a1eWRwsBJ/iKz26RFqdasInWh/nI9z2w6gPLdCXVbpE=; b=X5ESUQQ9Mxb8wa
	xnfBMOIyi+//d+l0I5TbYFmRgb9418eVzVhLxpiDM2/bkZC6CdIy4kRQvjPLwk060Hxq0MBDrQD1d
	mixeglbJWijaxAcy65iycaLKslK30Us9Zay+nf3s2sji5M6CJlmszOEDwYcgixj0QML4jzY4mpNr1
	Pj8QpZvuuQ/soZQos+Foo8RGIxlNz5wGFVKxcZfte0Y0ssogeWalXo728PAe5h77OUOoJwBdEelEo
	T5GGHOEQrFKCDI/aAsMv3YOVDCURMK1pahkv3RpQTdY3SpLzwYAnnQ632GufOa+taUUqWxL7NXPen
	sFz1fEgs/LircVMBxEng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hls7c-00086C-WA; Fri, 12 Jul 2019 09:45:45 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hls7L-00084c-OT; Fri, 12 Jul 2019 09:45:29 +0000
X-UUID: 7a4c216b0f5f461a89f0224da95a46c5-20190712
X-UUID: 7a4c216b0f5f461a89f0224da95a46c5-20190712
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 664486757; Fri, 12 Jul 2019 01:44:52 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 12 Jul 2019 02:44:50 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 12 Jul 2019 17:44:49 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 12 Jul 2019 17:44:49 +0800
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Ryder Lee <ryder.lee@mediatek.com>, Stephen Boyd <sboyd@kernel.org>, "Sean
 Wang" <sean.wang@mediatek.com>, Mars Cheng <mars.cheng@mediatek.com>, "Owen
 Chen" <owen.chen@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>, 
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v6 1/8] dt-bindings: clock: mediatek: document clk bindings
 for Mediatek MT6765 SoC
Date: Fri, 12 Jul 2019 17:43:37 +0800
Message-ID: <1562924653-10056-2-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1562924653-10056-1-git-send-email-macpaul.lin@mediatek.com>
References: <1562924653-10056-1-git-send-email-macpaul.lin@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_024527_799706_44F3EE03 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, Loda Chou <loda.chou@mediatek.com>,
 Macpaul Lin <macpaul.lin@mediatek.com>, linux-serial@vger.kernel.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mars Cheng <mars.cheng@mediatek.com>

This patch adds the binding documentation for apmixedsys, audsys, camsys,
imgsys, infracfg, mipi0a, topckgen, vcodecsys

Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>
Signed-off-by: Owen Chen <owen.chen@mediatek.com>
Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
---
 .../arm/mediatek/mediatek,apmixedsys.txt      |  1 +
 .../bindings/arm/mediatek/mediatek,audsys.txt |  1 +
 .../bindings/arm/mediatek/mediatek,camsys.txt |  1 +
 .../bindings/arm/mediatek/mediatek,imgsys.txt |  1 +
 .../arm/mediatek/mediatek,infracfg.txt        |  1 +
 .../bindings/arm/mediatek/mediatek,mipi0a.txt | 28 +++++++++++++++++++
 .../bindings/arm/mediatek/mediatek,mmsys.txt  |  1 +
 .../arm/mediatek/mediatek,pericfg.txt         |  1 +
 .../arm/mediatek/mediatek,topckgen.txt        |  1 +
 .../arm/mediatek/mediatek,vcodecsys.txt       | 27 ++++++++++++++++++
 10 files changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,mipi0a.txt
 create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,vcodecsys.txt

diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,apmixedsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,apmixedsys.txt
index 161e63a6c254..5f2757e0f844 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,apmixedsys.txt
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,apmixedsys.txt
@@ -8,6 +8,7 @@ Required Properties:
 - compatible: Should be one of:
 	- "mediatek,mt2701-apmixedsys"
 	- "mediatek,mt2712-apmixedsys", "syscon"
+	- "mediatek,mt6765-apmixedsys", "syscon"
 	- "mediatek,mt6797-apmixedsys"
 	- "mediatek,mt7622-apmixedsys"
 	- "mediatek,mt7623-apmixedsys", "mediatek,mt2701-apmixedsys"
diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.txt
index f3cef1a6d95c..243db5275438 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.txt
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.txt
@@ -7,6 +7,7 @@ Required Properties:
 
 - compatible: Should be one of:
 	- "mediatek,mt2701-audsys", "syscon"
+	- "mediatek,mt6765-audsys", "syscon"
 	- "mediatek,mt7622-audsys", "syscon"
 	- "mediatek,mt7623-audsys", "mediatek,mt2701-audsys", "syscon"
 	- "mediatek,mt8183-audiosys", "syscon"
diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,camsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,camsys.txt
index d8930f64aa98..17acc4c5402c 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,camsys.txt
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,camsys.txt
@@ -6,6 +6,7 @@ The MediaTek camsys controller provides various clocks to the system.
 Required Properties:
 
 - compatible: Should be one of:
+	- "mediatek,mt6765-camsys", "syscon"
 	- "mediatek,mt8183-camsys", "syscon"
 - #clock-cells: Must be 1
 
diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,imgsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,imgsys.txt
index e3bc4a1e7a6e..4e7b617acfb6 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,imgsys.txt
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,imgsys.txt
@@ -8,6 +8,7 @@ Required Properties:
 - compatible: Should be one of:
 	- "mediatek,mt2701-imgsys", "syscon"
 	- "mediatek,mt2712-imgsys", "syscon"
+	- "mediatek,mt6765-imgsys", "syscon"
 	- "mediatek,mt6797-imgsys", "syscon"
 	- "mediatek,mt7623-imgsys", "mediatek,mt2701-imgsys", "syscon"
 	- "mediatek,mt8173-imgsys", "syscon"
diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,infracfg.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,infracfg.txt
index a90913988d7e..6a6ffb61dd29 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,infracfg.txt
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,infracfg.txt
@@ -9,6 +9,7 @@ Required Properties:
 - compatible: Should be one of:
 	- "mediatek,mt2701-infracfg", "syscon"
 	- "mediatek,mt2712-infracfg", "syscon"
+	- "mediatek,mt6765-infracfg", "syscon"
 	- "mediatek,mt6797-infracfg", "syscon"
 	- "mediatek,mt7622-infracfg", "syscon"
 	- "mediatek,mt7623-infracfg", "mediatek,mt2701-infracfg", "syscon"
diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mipi0a.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mipi0a.txt
new file mode 100644
index 000000000000..49313055e574
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mipi0a.txt
@@ -0,0 +1,28 @@
+Mediatek mipi0a (mipi_rx_ana_csi0a) controller
+============================
+
+The Mediatek mipi0a controller provides various clocks
+to the system.
+
+Required Properties:
+
+- compatible: Should be one of:
+	- "mediatek,mt6765-mipi0a", "syscon"
+- #clock-cells: Must be 1
+
+The mipi0a controller uses the common clk binding from
+Documentation/devicetree/bindings/clock/clock-bindings.txt
+The available clocks are defined in dt-bindings/clock/mt*-clk.h.
+
+The mipi0a controller also uses the common power domain from
+Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
+The available power doamins are defined in dt-bindings/power/mt*-power.h.
+
+Example:
+
+mipi0a: mipi0a@11c10000 {
+	compatible = "mediatek,mt6765-mipi0a", "syscon";
+	reg = <0 0x11c10000 0 0x1000>;
+	power-domains = <&scpsys MT6765_POWER_DOMAIN_CAM>;
+	#clock-cells = <1>;
+};
diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt
index 545eab717c96..0c7b1698b98e 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt
@@ -8,6 +8,7 @@ Required Properties:
 - compatible: Should be one of:
 	- "mediatek,mt2701-mmsys", "syscon"
 	- "mediatek,mt2712-mmsys", "syscon"
+	- "mediatek,mt6765-mmsys", "syscon"
 	- "mediatek,mt6797-mmsys", "syscon"
 	- "mediatek,mt7623-mmsys", "mediatek,mt2701-mmsys", "syscon"
 	- "mediatek,mt8173-mmsys", "syscon"
diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.txt
index 4c7e478117a0..b49b40741be1 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.txt
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.txt
@@ -9,6 +9,7 @@ Required Properties:
 - compatible: Should be one of:
 	- "mediatek,mt2701-pericfg", "syscon"
 	- "mediatek,mt2712-pericfg", "syscon"
+	- "mediatek,mt6765-pericfg", "syscon"
 	- "mediatek,mt7622-pericfg", "syscon"
 	- "mediatek,mt7623-pericfg", "mediatek,mt2701-pericfg", "syscon"
 	- "mediatek,mt7629-pericfg", "syscon"
diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,topckgen.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,topckgen.txt
index a023b8338960..21ad416bfeec 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,topckgen.txt
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,topckgen.txt
@@ -8,6 +8,7 @@ Required Properties:
 - compatible: Should be one of:
 	- "mediatek,mt2701-topckgen"
 	- "mediatek,mt2712-topckgen", "syscon"
+	- "mediatek,mt6765-topckgen", "syscon"
 	- "mediatek,mt6797-topckgen"
 	- "mediatek,mt7622-topckgen"
 	- "mediatek,mt7623-topckgen", "mediatek,mt2701-topckgen"
diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,vcodecsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,vcodecsys.txt
new file mode 100644
index 000000000000..83f7f8634943
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,vcodecsys.txt
@@ -0,0 +1,27 @@
+Mediatek vcodecsys controller
+============================
+
+The Mediatek vcodecsys controller provides various clocks to the system.
+
+Required Properties:
+
+- compatible: Should be one of:
+	- "mediatek,mt6765-vcodecsys", "syscon"
+- #clock-cells: Must be 1
+
+The vcodecsys controller uses the common clk binding from
+Documentation/devicetree/bindings/clock/clock-bindings.txt
+The available clocks are defined in dt-bindings/clock/mt*-clk.h.
+
+The vcodecsys controller also uses the common power domain from
+Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
+The available power doamins are defined in dt-bindings/power/mt*-power.h.
+
+Example:
+
+venc_gcon: venc_gcon@17000000 {
+	compatible = "mediatek,mt6765-vcodecsys", "syscon";
+	reg = <0 0x17000000 0 0x10000>;
+	power-domains = <&scpsys MT6765_POWER_DOMAIN_VCODEC>;
+	#clock-cells = <1>;
+};
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
