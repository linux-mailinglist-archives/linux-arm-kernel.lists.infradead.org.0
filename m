Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1A0167C36
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 12:33:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=muHUJSiqktxAo004qhIX9ELxpUHWz4h9sMtd3OA/XOo=; b=ph+96b3sBZSun5
	a7PCiOt5BHQYn86QnpH2BYwgeiRYylZtbF8RZF/bhNU87MZ3RruCNAMlC617+mBRGqoNcJUXS9Crr
	LI540QE7BsWA0VY6H6WqaaLoxaibpPLtGKDNoTOHarZGYFm2p7wEAtkXH0BjnBUTc1FK32WQ21GHs
	Nvi6rSxY3sDcaVoDZRz/DTGIt2am5qxp/+EfaMEQsjRxeCRqXBsTIfwvw5vMALsJ7ExLqqLMNG4Pa
	qyJFniycAnTxZS6+garclXfX3+6bQ8acdnXJbhghiwcs6T0avx6MSxOu3PlD8KtwtlDMhTy4Pp2E6
	AFjsBzt5B5M80v39xCsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j56YO-0002vR-JC; Fri, 21 Feb 2020 11:33:08 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j56Xf-0002NE-PO; Fri, 21 Feb 2020 11:32:25 +0000
X-UUID: 4e8226352c7647acb64c885e5e3dfa60-20200221
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=zFZhXk7fCqXKk9Mb/Rx6jZKFuJRDTSRGsr1lm/b+5DU=; 
 b=ovexBTzC48RueZbJWZ+GrTK/Hn7xV7SIeRvMI8QvWXNouMt+mRI45xOOZMYQ56YgnItVtHVPx1zQqPqEX1FFtOoCoPOg33SJiApGb4RuZWKPH2JfBYn4NurRWrdJ9285hC2nn+3Utvb/YNqgZ/b69tpbPMRtvVBZTv8zN/Ik6Go=;
X-UUID: 4e8226352c7647acb64c885e5e3dfa60-20200221
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 597208939; Fri, 21 Feb 2020 03:32:18 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 21 Feb 2020 03:28:41 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33DR.mediatek.inc
 (172.27.6.106) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 21 Feb 2020 19:23:59 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (10.16.6.18) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Fri, 21 Feb 2020 19:27:34 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v6 1/4] dt-bindings: display: mediatek: update dpi supported
 chips
Date: Fri, 21 Feb 2020 19:28:25 +0800
Message-ID: <20200221112828.55837-2-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200221112828.55837-1-jitao.shi@mediatek.com>
References: <20200221112828.55837-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 45350EF9107AC20D662E832B95D598681BBB945A8E95C707967860581846053F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_033223_828735_8ACEC1A0 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Jitao Shi <jitao.shi@mediatek.com>,
 srv_heupstream@mediatek.com, huijuan.xie@mediatek.com, stonea168@163.com,
 cawa.cheng@mediatek.com, linux-mediatek@lists.infradead.org,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add decriptions about supported chips, including MT2701 & MT8173 &
mt8183

1. Add more chips support. ex. MT2701 & MT8173 & MT8183
2. Add property "dpi_pin_mode_swap" and "pinctrl-names" gpio mode dpi mode and
   gpio oupput-low to avoid leakage current.
3. Add property "dpi_dual_edge" to config the dpi pin output mode dual edge or
   single edge sample data.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
---
 .../bindings/display/mediatek/mediatek,dpi.txt        | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
index b6a7e7397b8b..cd6a1469c8b7 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
@@ -7,6 +7,7 @@ output bus.
 
 Required properties:
 - compatible: "mediatek,<chip>-dpi"
+  the supported chips are mt2701 , mt8173 and mt8183.
 - reg: Physical base address and length of the controller's registers
 - interrupts: The interrupt signal from the function block.
 - clocks: device clocks
@@ -16,6 +17,11 @@ Required properties:
   Documentation/devicetree/bindings/graph.txt. This port should be connected
   to the input port of an attached HDMI or LVDS encoder chip.
 
+Optional properties:
+- dpi_pin_mode_swap: Swap the pin mode between dpi mode and gpio mode.
+- pinctrl-names: Contain "gpiomode" and "dpimode".
+- dpi_dual_edge: Control the RGB 24bit data on 12 pins or 24 pins.
+
 Example:
 
 dpi0: dpi@1401d000 {
@@ -26,6 +32,11 @@ dpi0: dpi@1401d000 {
 		 <&mmsys CLK_MM_DPI_ENGINE>,
 		 <&apmixedsys CLK_APMIXED_TVDPLL>;
 	clock-names = "pixel", "engine", "pll";
+	dpi_dual_edge;
+	dpi_pin_mode_swap;
+	pinctrl-names = "gpiomode", "dpimode";
+	pinctrl-0 = <&dpi_pin_gpio>;
+	pinctrl-1 = <&dpi_pin_func>;
 
 	port {
 		dpi0_out: endpoint {
-- 
2.21.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
