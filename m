Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F33F0501DB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 08:04:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=REuy2C+YJVCI4uJEAhqmh6GCvr8mQsdT78ygAd4qahI=; b=IU7WK5MriBD+jr
	QC75oSth846G/txvAWfSHyUfC2JU7Qm5AkW0ppCTvIz+TaWOViyBEaQoAy8KCsYEk725npq7L+Jg+
	s1RV+gMOdAKz5fWrq612kHDKENwkbBeRfKzk/z26VJDKfFP6M+DoLnZ8gwdTVtWqasTEVgw7H/YHA
	K7fFXpAXRrwLBCzN3W4aaXIYPVKnqCuQo5G4H3lVS9BBQle5B3HmoSxdh/5rrqeEOOf25dFkDBin1
	djJh6GSFGq3+ll4g5v7WitiPhaanQbVf6O1bxEd7q2o1P+3wd55RB/BNs1S0YhHQJZLSX54ePDL05
	scZ4g3dXp2WtYrNbKrxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfI5o-0000De-2G; Mon, 24 Jun 2019 06:04:40 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfI5S-00009E-SC; Mon, 24 Jun 2019 06:04:20 +0000
X-UUID: 0ad52f4a253446b8b1e4ad8433bf3c6d-20190623
X-UUID: 0ad52f4a253446b8b1e4ad8433bf3c6d-20190623
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 456585990; Sun, 23 Jun 2019 22:03:58 -0800
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 23 Jun 2019 23:03:56 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS33N2.mediatek.inc
 (172.27.4.76) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 24 Jun 2019 14:03:53 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS32.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Mon, 24 Jun 2019 14:03:51 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Pawel Moll <pawel.moll@arm.com>, "Mark
 Rutland" <mark.rutland@arm.com>, Ian Campbell
 <ijc+devicetree@hellion.org.uk>, <linux-pwm@vger.kernel.org>, David Airlie
 <airlied@linux.ie>, "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: [v2 1/2] dt-bindngs: display: panel: Add BOE tv101wum-n16 panel
 bindings
Date: Mon, 24 Jun 2019 14:03:42 +0800
Message-ID: <20190624060343.62451-2-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190624060343.62451-1-jitao.shi@mediatek.com>
References: <20190624060343.62451-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_230418_914676_190F25CC 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
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
Cc: stonea168@163.com, dri-devel@lists.freedesktop.org,
 Andy Yan <andy.yan@rock-chips.com>, Ajay Kumar <ajaykumar.rs@samsung.com>,
 Vincent Palatin <vpalatin@chromium.org>, cawa.cheng@mediatek.com,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Thierry Reding <treding@nvidia.com>, devicetree@vger.kernel.org,
 Jitao Shi <jitao.shi@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Inki Dae <inki.dae@samsung.com>, linux-mediatek@lists.infradead.org,
 yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org, Rahul Sharma <rahul.sharma@samsung.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add documentation for boe tv101wum-n16 panel.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
---
 .../display/panel/boe,tv101wum-nl6.txt        | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.txt

diff --git a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.txt b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.txt
new file mode 100644
index 000000000000..bd44af636390
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.txt
@@ -0,0 +1,34 @@
+Boe Corporation 10.1" WUXGA TFT LCD panel
+
+Required properties:
+- compatible: should be "boe,tv101wum-nl6"
+- reg: the virtual channel number of a DSI peripheral
+- enable-gpios: a GPIO spec for the enable pin
+- pp1800-supply: core voltage supply
+- avdd-supply: phandle of the regulator that provides positive voltage
+- avee-supply: phandle of the regulator that provides negative voltage
+- backlight: phandle of the backlight device attached to the panel
+
+The device node can contain one 'port' child node with one child
+'endpoint' node, according to the bindings defined in
+media/video-interfaces.txt. This node should describe panel's video bus.
+
+Example:
+&dsi {
+	...
+	panel@0 {
+		compatible = "boe,tv101wum-nl6";
+		reg = <0>;
+		enable-gpios = <&pio 45 0>;
+		avdd-supply = <&ppvarn_lcd>;
+		avee-supply = <&ppvarp_lcd>;
+		pp1800-supply = <&pp1800_lcd>;
+		backlight = <&backlight_lcd0>;
+		status = "okay";
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&dsi_out>;
+			};
+		};
+	};
+};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
