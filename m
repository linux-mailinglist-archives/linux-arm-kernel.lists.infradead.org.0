Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B07971A9C00
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 13:19:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1d3l0SK9h6M/4H4IJ9ihk1orS+3VDTysbG/UJqO9cWw=; b=PtxEPhtDrLuebR
	jzgXB1OOsi3rihJnq6orlRwtbFUydjlaulvHIotkdCJ/5hLdQh6O3XwpAGbriax81xrcs48NnReD8
	6KwUnTwjl9Su6K5NOdgQZAXBxhFX/pwmaHpZd3yOd55C4VwVl/OgA/qTE0OzxltY1i0zNrwHqUjTl
	rLrsvdBARm8VgeGcuwRoUFkQxRh+jZpLutMAO7rI7aab6QnKNGklvkieFQVQmIGCjcoR80rBCqZ2T
	EKVe6VktNkVhB/XfdmM4MgO/6u8cnkYouX+0gY2YWeHXF/4UMKvsDdohlhi4BRRpMiMNxrP3+DwL3
	K6auK11KFQdXMtvoJCWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOg54-0001WV-6c; Wed, 15 Apr 2020 11:19:46 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOg4U-0001KL-CI; Wed, 15 Apr 2020 11:19:13 +0000
X-UUID: b5cbb68887254f039c0b712dae06208c-20200415
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=WnKlsLhJX74YWfoFdl9oaQ0btahiulghMcD1I/yVavU=; 
 b=nZjtaCi1meAdYaffwGqz32mxfL5Fl0K/uVStM+X+K+8b6TZDsAp8GA2lrKm8XEHQNudNOdK1NGqmnYS/wpri6DWm7r/YspRVbhh2SASwENguGU6kep5BH0RUq/8g1cg5NuBOYJcCbT44zMExSEUJF0MGzjIbthY2q5sH7QemBJ8=;
X-UUID: b5cbb68887254f039c0b712dae06208c-20200415
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <anthony.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 18302227; Wed, 15 Apr 2020 03:18:54 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 15 Apr 2020 04:19:01 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 15 Apr 2020 19:18:58 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Wed, 15 Apr 2020 19:18:56 +0800
From: Anthony Huang <anthony.huang@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 1/2] dt-bindings: soc: mediatek: Add document for mmdvfs driver
Date: Wed, 15 Apr 2020 19:18:25 +0800
Message-ID: <1586949506-22990-2-git-send-email-anthony.huang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1586949506-22990-1-git-send-email-anthony.huang@mediatek.com>
References: <1586949506-22990-1-git-send-email-anthony.huang@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 6E8016FB62832FDC77AFD38C32ECD32F9BA2BAC1C9D6B2D6531A95EF5A3DC4142000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_041911_735063_0EBE6BB9 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Anthony Huang <anthony.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This document describes the properties what mtk mmdvfs
device node support.

Signed-off-by: Anthony Huang <anthony.huang@mediatek.com>
---
 .../devicetree/bindings/soc/mediatek/mmdvfs.yaml   |  198 ++++++++++++++++++++
 1 file changed, 198 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/mediatek/mmdvfs.yaml

diff --git a/Documentation/devicetree/bindings/soc/mediatek/mmdvfs.yaml b/Documentation/devicetree/bindings/soc/mediatek/mmdvfs.yaml
new file mode 100644
index 0000000..9ef1833
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/mediatek/mmdvfs.yaml
@@ -0,0 +1,198 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/mediatek/mmdvfs.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mediatek MMDVFS driver binding
+
+maintainers:
+  - Rob Herring <robh+dt@kernel.org>
+  - Mark Rutland <mark.rutland@arm.com>
+
+description: |
+  The Mediatek MMDVFS(Multimedia Dynamic Voltage and Frequency Scaling) driver
+  is used to set clk for Mediatek multimedia hardwares, such as display,
+  camera, mdp and video codec. MMDVFS driver reads which clock muxes and clock
+  sources are used on this platform from DTS, and sets current clock according
+  to current voltage informed by regulator callback.
+
+properties:
+  compatible:
+    items:
+      - const: mediatek,mmdvfs
+
+  operating-points-v2:
+    description:
+      Contains any one of opp tables for multimedia modules.
+      MMDVFS uses it to get voltage setting on this platform.
+
+  mediatek,support_mux:
+    description: A list of clock mux names defined in clock-names.
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/string-array
+
+  clocks:
+    description:
+      A list of phandles of clock muxes and clock sources for
+      multimedia hardwares.
+
+  clock-names:
+    description:
+      A list of name strings of clock muxes and clock sources for
+      multimedia hardwares.
+
+  # If the platform needs frequency hopping for some clock sources, these
+  # following properties should be set.
+
+  mediatek,support_hopping:
+    description: a list of clock names supporting frequency hopping.
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/string-array
+
+  mediatek,action:
+    description:
+      A cell with one entry.
+      It represents the action taken when setting clocks.
+      0 means not setting frequency hopping and just set clock mux.
+      1 means setting frequency hopping first if the voltage is increasing, but
+      setting clock mux first if the voltage is decreasing.
+    allOf:
+      - $ref: "/schemas/types.yaml#/definitions/uint32"
+      - enum: [0, 1]
+    maxItems: 1
+
+patternProperties:
+  "^mediatek,mux_+$":
+    description:
+      A series of properties with "mediatek,mux_" prefix.
+      Each property represents one clock mux, and its value is a list of all
+      the clock sources for it. The postfix and every item in the property
+      must be from the clock-names.
+
+  "^mediatek,hopping_+$":
+    description:
+      A cell with the same size as opp numbers of an opp table for any MM module
+      and each entry represents the clock rate for each opp. For example, the
+      first entry is the clock rate set in opp-0, and the second entry is the
+      clock rate set in opp-1.
+
+required:
+  - compatible
+  - operating-points-v2
+  - mediatek,support_mux
+  - clock
+  - clock-names
+
+examples:
+  - |
+    #include <dt-bindings/clock/mt6779-clk.h>
+
+    opp_table_mm: opp-table-mm {
+        compatible = "operating-points-v2";
+
+        opp-0 {
+            opp-hz = /bits/ 64 <315000000>;
+            opp-microvolt = <650000>;
+        };
+        opp-1 {
+            opp-hz = /bits/ 64 <450000000>;
+            opp-microvolt = <725000>;
+        };
+        opp-2 {
+            opp-hz = /bits/ 64 <606000000>;
+            opp-microvolt = <825000>;
+        };
+    };
+
+    opp_table_cam: opp-table-cam {
+        compatible = "operating-points-v2";
+
+        opp-0 {
+            opp-hz = /bits/ 64 <315000000>;
+            opp-microvolt = <650000>;
+        };
+        opp-1 {
+            opp-hz = /bits/ 64 <416000000>;
+            opp-microvolt = <725000>;
+        };
+        opp-2 {
+            opp-hz = /bits/ 64 <560000000>;
+            opp-microvolt = <825000>;
+        };
+    };
+
+    /* Other opp tables for multimedia modules */
+
+    mmdvfs {
+        compatible = "mediatek,mmdvfs";
+
+        operating-points-v2 = <&opp_table_mm>;
+
+        mediatek,support_mux = "mm", "cam", "img", "ipe",
+            "venc", "vdec", "dpe", "ccu";
+
+        mediatek,mux_mm = "clk_mmpll_d5_d2",
+            "clk_mmpll_d7", "clk_tvdpll_mainpll_d2_ck";
+        mediatek,mux_cam = "clk_mmpll_d5_d2",
+            "clk_univpll_d3", "clk_adsppll_d5";
+        mediatek,mux_img = "clk_mmpll_d5_d2",
+            "clk_univpll_d3", "clk_tvdpll_mainpll_d2_ck";
+        mediatek,mux_ipe = "clk_mmpll_d5_d2",
+            "clk_univpll_d3", "clk_mainpll_d2";
+        mediatek,mux_venc = "clk_mainpll_d3",
+            "clk_mmpll_d7", "clk_mmpll_d5";
+        mediatek,mux_vdec = "clk_univpll_d2_d2",
+            "clk_univpll_d3", "clk_univpll_d2";
+        mediatek,mux_dpe = "clk_mainpll_d3",
+            "clk_mmpll_d7", "clk_mainpll_d2";
+        mediatek,mux_ccu = "clk_mmpll_d5_d2",
+            "clk_univpll_d3", "clk_adsppll_d5";
+
+        mediatek,support_hopping = "clk_mmpll_ck";
+        mediatek,hopping_clk_mmpll_ck = <630000000 630000000 650000000>;
+        mediatek,action = <1>;
+
+
+        clocks = <&topckgen CLK_TOP_MM>,
+                <&topckgen CLK_TOP_CAM>,
+                <&topckgen CLK_TOP_IMG>,
+                <&topckgen CLK_TOP_IPE>,
+                <&topckgen CLK_TOP_VENC>,
+                <&topckgen CLK_TOP_VDEC>,
+                <&topckgen CLK_TOP_DPE>,
+                <&topckgen CLK_TOP_CCU>,
+                <&topckgen CLK_TOP_MMPLL_D5>,
+                <&topckgen CLK_TOP_UNIVPLL_D2>,
+                <&topckgen CLK_TOP_TVDPLL_MAINPLL_D2_CK>,
+                <&topckgen CLK_TOP_ADSPPLL_D5>,
+                <&topckgen CLK_TOP_MAINPLL_D2>,
+                <&topckgen CLK_TOP_MMPLL_D6>,
+                <&topckgen CLK_TOP_MMPLL_D7>,
+                <&topckgen CLK_TOP_UNIVPLL_D3>,
+                <&topckgen CLK_TOP_MAINPLL_D3>,
+                <&topckgen CLK_TOP_MMPLL_D5_D2>,
+                <&topckgen CLK_TOP_UNIVPLL_D2_D2>,
+                <&topckgen CLK_TOP_MMPLL_CK>;
+        clock-names = "mm",
+                "cam",
+                "img",
+                "ipe",
+                "venc",
+                "vdec",
+                "dpe",
+                "ccu",
+                "clk_mmpll_d5",
+                "clk_univpll_d2",
+                "clk_tvdpll_mainpll_d2_ck",
+                "clk_adsppll_d5",
+                "clk_mainpll_d2",
+                "clk_mmpll_d6",
+                "clk_mmpll_d7",
+                "clk_univpll_d3",
+                "clk_mainpll_d3",
+                "clk_mmpll_d5_d2",
+                "clk_univpll_d2_d2",
+                "clk_mmpll_ck";
+    };
+...
-- 
1.7.9.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
