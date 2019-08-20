Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA6297064
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 05:31:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cW/X9RWbaYy2iNufUTVU23t+dmw6C5JSWPmGyE16uPo=; b=r5SQGBti1C5tac
	i4s8DkgkHizkxOgFI4g9WDomiBDJGPk8a9AtX8RlFL0KS/2mXogyM9CeJxf8n0aBO8zP3X8VeGoEA
	EPw5w6xApYCnsIs2mMaQg7lp6jK0U8cbxYIRm1BUZml28sU2l9jJ6EgDISV8SqXb1quA8zAuIMZFc
	HgE4K8AKmyB5FPLKd2S7+ovnHxh0hz3ACp5Aavhsq89v9btW5zpSQnsMauXtpmof4YDK2imMxWyi+
	PzlAIxUV/eNW4bOBZd3qKAcG965Qorek7KF+FgcUe5xO6hk3/UDdWJNNLNHzFm5cK961oOW1jgJnp
	yTyOfV0pCBd2i7c6Ucww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0HLn-00011N-MN; Wed, 21 Aug 2019 03:31:55 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0HFY-0007ZL-4q; Wed, 21 Aug 2019 03:25:30 +0000
X-UUID: b3a01de3806f436085a5c4f5f515ca66-20190820
X-UUID: b3a01de3806f436085a5c4f5f515ca66-20190820
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 195459330; Tue, 20 Aug 2019 00:36:39 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 20 Aug 2019 01:36:38 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 20 Aug 2019 16:36:37 +0800
Received: from mtkslt209.mediatek.inc (10.21.15.96) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 20 Aug 2019 16:36:36 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>, CK HU
 <ck.hu@mediatek.com>
Subject: [PATCH v13 12/12] arm64: dts: add gce node for mt8183
Date: Tue, 20 Aug 2019 16:36:35 +0800
Message-ID: <20190820083635.5404-13-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190820083635.5404-1-bibby.hsieh@mediatek.com>
References: <20190820083635.5404-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_202528_529757_E98BE3E1 
X-CRM114-Status: GOOD (  10.95  )
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
Cc: devicetree@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, srv_heupstream@mediatek.com,
 Daoyuan Huang <daoyuan.huang@mediatek.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Daniel Kurtz <djkurtz@chromium.org>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 linux-mediatek@lists.infradead.org, Houlong Wei <houlong.wei@mediatek.com>,
 Sascha Hauer <kernel@pengutronix.de>, YT Shen <yt.shen@mediatek.com>,
 Jiaguang Zhang <jiaguang.zhang@mediatek.com>,
 Bibby Hsieh <bibby.hsieh@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 ginny.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

add gce device node for mt8183

Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 08274bfcebd8..a81c995bbea9 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/clock/mt8183-clk.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/gce/mt8183-gce.h>
 
 / {
 	compatible = "mediatek,mt8183";
@@ -212,6 +213,15 @@
 			clock-names = "spi", "wrap";
 		};
 
+		gce: mailbox@10238000 {
+			compatible = "mediatek,mt8183-gce";
+			reg = <0 0x10238000 0 0x4000>;
+			interrupts = <GIC_SPI 162 IRQ_TYPE_LEVEL_LOW>;
+			#mbox-cells = <3>;
+			clocks = <&infracfg CLK_INFRA_GCE>;
+			clock-names = "gce";
+		};
+
 		uart0: serial@11002000 {
 			compatible = "mediatek,mt8183-uart",
 				     "mediatek,mt6577-uart";
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
