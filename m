Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE30355F4E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 04:56:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GPODWvB0fHeiQCnieJuKgX+BxyIpxeVu8qMh/hNR2qY=; b=JT/K9B7KCCWivS
	GVcHxO7p0PaMdxywEs0j5RH0Zh71/dZiNrTNjrmISX/6U+dsgdi0kAxM7y6jTMwtP+o/cujc3nJ0T
	apCRwE9AOIvL96JayT3fm3GCUkXcj1B+uiW4/7Au/tLYbqHPflNxsHsnx4i10IDZqLS0RXNcQidn9
	qn07HTEvLn5AjNS4bXOwpnQAZ0GzPzNppfmMh3m7ZUsctk0bvW3wDR8nxIWMkIc7fznKs8DFDLzUD
	aG76Xz3KestPe8L85likklvmjyI5mOZxOhlRHA5jB8x3F7cTsSVspBWnN1/eeojbo2LuqR2wcZOJE
	xAAgHmv/TrGDEAeAuy5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfy6N-0005Tb-4I; Wed, 26 Jun 2019 02:56:03 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfy4o-0003WC-Pv; Wed, 26 Jun 2019 02:54:28 +0000
X-UUID: b6c9b835c9ad439fb628abe3a574e6c4-20190625
X-UUID: b6c9b835c9ad439fb628abe3a574e6c4-20190625
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1428761049; Tue, 25 Jun 2019 18:54:21 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 25 Jun 2019 19:54:19 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS33DR.mediatek.inc
 (172.27.6.106) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 26 Jun 2019 10:54:15 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS32.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Wed, 26 Jun 2019 10:54:12 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Pawel Moll <pawel.moll@arm.com>, "Mark
 Rutland" <mark.rutland@arm.com>, Ian Campbell
 <ijc+devicetree@hellion.org.uk>, <linux-pwm@vger.kernel.org>, David Airlie
 <airlied@linux.ie>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [v3 3/4] dt-bindings: display: panel: add auo kd101n80-45na panel
 bindings
Date: Wed, 26 Jun 2019 10:53:59 +0800
Message-ID: <20190626025400.109567-4-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190626025400.109567-1-jitao.shi@mediatek.com>
References: <20190626025400.109567-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-AS-Product-Ver: SMEX-12.5.0.1684-8.5.1010-24712.003
X-TM-AS-Result: No-3.890900-8.000000-10
X-TMASE-MatchedRID: icpV8lao858ib7FbSDtRQ+w8wbnnSw8bPz+fM/byAtnfUZT83lbkEEZU
 qiaZ+o8nezYFSWzv4Aj++vFBYLLFFSJrrIAyia6MRORIkLq4xDQ5iooXtStiHoRYHyK7IaoJi9w
 qKeXPJfWPlkcXn2IeyAaIRpZxOPntHRgRCLcbWrgvPGk0keCcJR+qR83NNEVKVptCZRwLvQFKj9
 RzqMBfu9CoiCTf1ntP2SPEr0GBThVv+U6cgdvK9b+Kd/geEyt7fS0Ip2eEHnz3IzXlXlpamPoLR
 4+zsDTtwwUcWQpWasHCjEEV8dP9kwdSqpzbvhxJNghLbJiHVS4z9ebHGXBhcootcdXNgXAjPnQ8
 b0xvxlP6LRYnQF1QeO7uNWa0VYc/XdZYiiD7nm41URakDnXQmkktfpZ7dIYnT2FJac+dZhxC1db
 lKiPrE8C+ksT6a9fy
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--3.890900-8.000000
X-TMASE-Version: SMEX-12.5.0.1684-8.5.1010-24712.003
X-TM-SNTS-SMTP: 513CA5F3815985883FFD06FB1B91990A3B9575F2853E73C9022D53324A99EC532000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_195427_213442_E44D799E 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
 Andy Yan <andy.yan@rock-chips.com>, Sam Ravnborg <sam@ravnborg.org>,
 Ajay Kumar <ajaykumar.rs@samsung.com>, Vincent Palatin <vpalatin@chromium.org>,
 cawa.cheng@mediatek.com, bibby.hsieh@mediatek.com, ck.hu@mediatek.com,
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

Add documentation for auo kd101n80-45na panel.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
---
 .../display/panel/auo,kd101n80-45na.txt       | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/auo,kd101n80-45na.txt

diff --git a/Documentation/devicetree/bindings/display/panel/auo,kd101n80-45na.txt b/Documentation/devicetree/bindings/display/panel/auo,kd101n80-45na.txt
new file mode 100644
index 000000000000..994c2a13f942
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/auo,kd101n80-45na.txt
@@ -0,0 +1,34 @@
+AUO Corporation 10.1" WUXGA TFT LCD panel
+
+Required properties:
+- compatible: should be "auo,kd101n80-45na"
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
+		compatible = "auo,kd101n80-45na";
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
