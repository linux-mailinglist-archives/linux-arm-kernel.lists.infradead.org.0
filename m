Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CEDDFC56
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 05:55:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1kVe3fDy8wfD3/Dr/LoJXXQPpcT26s/0jkyeVfcArzk=; b=ZzHkycDaC5teXV
	twVOM8Bpu62AAg17Vj/UKugw/IgNV7S276bZnE1Ax9vWhn99rq+SLyndlOBbHTK7RazEstmhey5Rf
	00xNLb86hf4RgvSXDu2Zk7UL1f2TSi4mCaNIjiz+XBdwk/NMBbgvWblZP7kFzFdurH2K3yuHDL5Fh
	lLoMAWmFQXLZ6fkKR1WZUMQWacEk9XEKWa76v7cm7bW4LM/EGcxTzbJ/Zn3hu6ztG/h0YAsgPAtW0
	ylL66LVcvLDcV/s9DQj+VS4OGO7R7ZCHpK1Bb/OMe0wmueqUbRDqar7WK8Zvzn/Jq8tzCGArM6PiZ
	KLdGFWjqCNL9WMPM0c4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMlGZ-0000TA-Dd; Tue, 22 Oct 2019 03:55:27 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMlG1-0007QC-H0; Tue, 22 Oct 2019 03:54:55 +0000
X-UUID: 0d63b214d879452e8290b659214ad073-20191021
X-UUID: 0d63b214d879452e8290b659214ad073-20191021
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <anthony.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 365223903; Mon, 21 Oct 2019 19:55:00 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 21 Oct 2019 20:54:44 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 22 Oct 2019 11:54:43 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 22 Oct 2019 11:54:43 +0800
From: Anthony Huang <anthony.huang@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [RFC PATCH 1/2] dt-bindings: soc: mediatek: Add document for mmdvfs
 driver
Date: Tue, 22 Oct 2019 11:51:52 +0800
Message-ID: <1571716313-10215-2-git-send-email-anthony.huang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1571716313-10215-1-git-send-email-anthony.huang@mediatek.com>
References: <1571716313-10215-1-git-send-email-anthony.huang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_205453_584170_82E56AB2 
X-CRM114-Status: GOOD (  14.62  )
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
 .../devicetree/bindings/soc/mediatek/mmdvfs.txt    |  149 ++++++++++++++++++++
 1 file changed, 149 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/mediatek/mmdvfs.txt

diff --git a/Documentation/devicetree/bindings/soc/mediatek/mmdvfs.txt b/Documentation/devicetree/bindings/soc/mediatek/mmdvfs.txt
new file mode 100644
index 0000000..bf33d79
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/mediatek/mmdvfs.txt
@@ -0,0 +1,149 @@
+Mediatek MMDVFS driver binding
+=========================================
+
+The Mediatek MMDVFS(Multimedia Dynamic Voltage and Frequency Scaling) driver
+is used to set clk for Mediatek multimedia hardwares, such as display, camera,
+mdp and video codec. MMDVFS driver reads which clock muxes and clock sources
+are used on this platform from DTS, and sets current clock according to current
+voltage informed by regulator callback.
+
+
+Required properties:
+- compatible : shall contain "mediatek,mmdvfs".
+- operating-points-v2: contains any one of opp tables for multimedia modules.
+                       MMDVFS uses it to get voltage setting on this platform.
+- mediatek,support_mux: contains a list of clock mux names defined
+                        in clock-names.
+- mediatek,mux_*: a series of properties with "mediatek,mux_" prefix.
+		  Each property represents one clock mux, and its value is a
+		  list of all the clock sources for it. The postfix * and every
+		  item in the property must be from the clock-names.
+- clock, clock-names: lists all clock muxes and clock sources for multimedia
+		      hardwares.
+
+Optional properties:
+If the platform needs frequency hopping for some clock sources, these following
+properties should be set.
+
+- mediatek,support_hopping: a list of clock names supporting frequency hopping.
+- mediatek,hopping_*: a cell with the same size as opp numbers of an opp table
+		      for any MM module and each entry represents the clock
+		      rate for each opp. For example, the first entry is the
+		      clock rate set in opp-0, and the second entry is the
+		      clock rate set in opp-1.
+- mediatek,action: a cell with one entry.
+		   It represents the action taken when setting clocks.
+		   0 or this property is not set:
+		   	Do not set frequency hopping and just set clock mux.
+		   1:
+		   	If the voltage is increasing, set frequency hopping
+		   	first. If the voltage is decreasing, set clock mux
+		   	first.
+
+Example:
+	opp_table_mm: opp-table-mm {
+		compatible = "operating-points-v2";
+
+		opp-0 {
+			opp-hz = /bits/ 64 <315000000>;
+			opp-microvolt = <650000>;
+		};
+		opp-1 {
+			opp-hz = /bits/ 64 <450000000>;
+			opp-microvolt = <725000>;
+		};
+		opp-2 {
+			opp-hz = /bits/ 64 <606000000>;
+			opp-microvolt = <825000>;
+		};
+	};
+
+	opp_table_cam: opp-table-cam {
+		compatible = "operating-points-v2";
+
+		opp-0 {
+			opp-hz = /bits/ 64 <315000000>;
+			opp-microvolt = <650000>;
+		};
+		opp-1 {
+			opp-hz = /bits/ 64 <416000000>;
+			opp-microvolt = <725000>;
+		};
+		opp-2 {
+			opp-hz = /bits/ 64 <560000000>;
+			opp-microvolt = <825000>;
+		};
+	};
+	.... /* Other opp tables for multimedia modules */
+
+	mmdvfs {
+		compatible = "mediatek,mmdvfs";
+
+		operating-points-v2 = <&opp_table_mm>;
+
+		mediatek,support_mux = "mm", "cam", "img", "ipe",
+			"venc", "vdec", "dpe", "ccu";
+
+		mediatek,mux_mm = "clk_mmpll_d5_d2",
+			"clk_mmpll_d7", "clk_tvdpll_mainpll_d2_ck";
+		mediatek,mux_cam = "clk_mmpll_d5_d2",
+			"clk_univpll_d3", "clk_adsppll_d5";
+		mediatek,mux_img = "clk_mmpll_d5_d2",
+			"clk_univpll_d3", "clk_tvdpll_mainpll_d2_ck";
+		mediatek,mux_ipe = "clk_mmpll_d5_d2",
+			"clk_univpll_d3", "clk_mainpll_d2";
+		mediatek,mux_venc = "clk_mainpll_d3",
+			"clk_mmpll_d7", "clk_mmpll_d5";
+		mediatek,mux_vdec = "clk_univpll_d2_d2",
+			"clk_univpll_d3", "clk_univpll_d2";
+		mediatek,mux_dpe = "clk_mainpll_d3",
+			"clk_mmpll_d7", "clk_mainpll_d2";
+		mediatek,mux_ccu = "clk_mmpll_d5_d2",
+			"clk_univpll_d3", "clk_adsppll_d5";
+
+		mediatek,support_hopping = "clk_mmpll_ck";
+		mediatek,hopping_clk_mmpll_ck = <630000000 630000000 650000000>;
+		mediatek,action = <1>;
+
+
+		clocks = <&topckgen CLK_TOP_MM>,
+			<&topckgen CLK_TOP_CAM>,
+			<&topckgen CLK_TOP_IMG>,
+			<&topckgen CLK_TOP_IPE>,
+			<&topckgen CLK_TOP_VENC>,
+			<&topckgen CLK_TOP_VDEC>,
+			<&topckgen CLK_TOP_DPE>,
+			<&topckgen CLK_TOP_CCU>,
+			<&topckgen CLK_TOP_MMPLL_D5>,
+			<&topckgen CLK_TOP_UNIVPLL_D2>,
+			<&topckgen CLK_TOP_TVDPLL_MAINPLL_D2_CK>,
+			<&topckgen CLK_TOP_ADSPPLL_D5>,
+			<&topckgen CLK_TOP_MAINPLL_D2>,
+			<&topckgen CLK_TOP_MMPLL_D6>,
+			<&topckgen CLK_TOP_MMPLL_D7>,
+			<&topckgen CLK_TOP_UNIVPLL_D3>,
+			<&topckgen CLK_TOP_MAINPLL_D3>,
+			<&topckgen CLK_TOP_MMPLL_D5_D2>,
+			<&topckgen CLK_TOP_UNIVPLL_D2_D2>,
+			<&topckgen CLK_TOP_MMPLL_CK>;
+		clock-names = "mm",
+			"cam",
+			"img",
+			"ipe",
+			"venc",
+			"vdec",
+			"dpe",
+			"ccu",
+			"clk_mmpll_d5",
+			"clk_univpll_d2",
+			"clk_tvdpll_mainpll_d2_ck",
+			"clk_adsppll_d5",
+			"clk_mainpll_d2",
+			"clk_mmpll_d6",
+			"clk_mmpll_d7",
+			"clk_univpll_d3",
+			"clk_mainpll_d3",
+			"clk_mmpll_d5_d2",
+			"clk_univpll_d2_d2",
+			"clk_mmpll_ck";
+	};
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
