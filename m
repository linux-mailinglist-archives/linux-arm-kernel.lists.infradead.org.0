Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A12237119
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 12:01:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P+ijPPckMBiB0n9L+Udlbe1hYQWt4KWc5b9YjSbXq6g=; b=ObO60OO15kya31
	vqYurJzGRcgD3e8hdIkoswiEzWOripMr7OjpmoOO3oJbCnzhEMepD3YchyzM7MN+iDdRmHbQqfDDb
	J33HovQkAdICPom0gLGmbjzXp0qNJ/TNAcbzJeTq6BbnLmrfK4NYPrALS+QF20/fbG8H+tt6iFCFl
	BMLl1c3ARhKVRBYW4KhoasHZB7GRVOKPUU9cylq0fa/sVIrxnDPLuWL/HZgp0htmkNEpryABxussU
	YMVCLz0YQf7X2cLyXwJdHGMN41N6fXELdwc1Y9pX3QGuMiiXWPfNY7RkCSGKYUvmGtE52DsdXCxfo
	izR1Q8jRgVC8isnoMILw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYpCc-0004sD-1E; Thu, 06 Jun 2019 10:00:58 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYpCT-0004rG-Hk; Thu, 06 Jun 2019 10:00:50 +0000
X-UUID: 27c29ecb2d3649fd8097b0a51404ad93-20190606
X-UUID: 27c29ecb2d3649fd8097b0a51404ad93-20190606
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <louis.kuo@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 961695225; Thu, 06 Jun 2019 02:00:46 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 6 Jun 2019 03:00:45 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 6 Jun 2019 18:00:42 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 6 Jun 2019 18:00:42 +0800
From: Louis Kuo <louis.kuo@mediatek.com>
To: <hans.verkuil@cisco.com>, <laurent.pinchart+renesas@ideasonboard.com>,
 <tfiga@chromium.org>, <keiichiw@chromium.org>, <matthias.bgg@gmail.com>,
 <mchehab@kernel.org>
Subject: [RFC PATCH V3 4/4] dts: arm64: mt8183: Add sensor interface nodes
Date: Thu, 6 Jun 2019 18:00:33 +0800
Message-ID: <1559815233-24796-5-git-send-email-louis.kuo@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559815233-24796-1-git-send-email-louis.kuo@mediatek.com>
References: <1559815233-24796-1-git-send-email-louis.kuo@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 745F35D63D56B7E4467BD79ED8DD0542DD4F0EE424B2793DA7791920112282522000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_030049_585905_DBEB13C0 
X-CRM114-Status: UNSURE (   7.14  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com, Rynn.Wu@mediatek.com,
 srv_heupstream@mediatek.com, holmes.chiou@mediatek.com,
 Jerry-ch.Chen@mediatek.com, jungo.lin@mediatek.com, sj.huang@mediatek.com,
 yuzhao@chromium.org, linux-mediatek@lists.infradead.org, zwisler@chromium.org,
 Louis Kuo <louis.kuo@mediatek.com>, christie.yu@mediatek.com,
 frederic.chen@mediatek.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add nodes for Mediatek's sensor interface device. Sensor interface module
embedded in Mediatek SOCs, works as a HW camera interface controller
intended for image and data transmission between cameras and host devices.

Signed-off-by: Louis Kuo <louis.kuo@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 75c4881..d98bb3f 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -370,4 +370,19 @@
 			#clock-cells = <1>;
 		};
 	};
+
+	seninf: seninf@1a040000 {
+		compatible = "mediatek,mt8183-seninf";
+		reg = <0 0x1a040000 0 0x8000>,
+		      <0 0x11C80000 0 0x6000>;
+		reg-names = "base_reg", "rx_reg";
+		interrupts = <GIC_SPI 251 IRQ_TYPE_LEVEL_LOW>;
+		power-domains = <&scpsys MT8183_POWER_DOMAIN_CAM>;
+		clocks =
+				<&camsys CLK_CAM_SENINF>, <&topckgen CLK_TOP_MUX_SENINF>;
+		clock-names =
+			"CLK_CAM_SENINF", "CLK_TOP_MUX_SENINF";
+		status = "disabled";
+		};
+	};
 };
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
