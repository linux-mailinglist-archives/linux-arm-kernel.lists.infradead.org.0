Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E099611FE25
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 06:40:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uiyxA+wLzTABQKkV1rRvA6NHNgIfqpRQEbV9KYsqSAY=; b=g9lFoiHS7iovSe
	1r/hsu4pDIvxRuNRG431VWIQ8fOi3JdBf9/iMgM9ikCQxoLhkdTpCwTw5tHKJbwGnTGcEltOF2j9N
	3742TV6cyhC7g5OmAJeYn/ZfwUFmeCTl4gf5PPTBDvxz1AM13QOD+HjwJ3HD+nZo6dCIb8afN2grH
	xXEB4tgvcv6HkgBiaKxf0MJWzIqahtvwBvYHcvakSMVjDyExo9HaWtZl4j0BG5oVVVu/XuGRsOM6k
	WcDGU6XBJakZZvEhmrG4G4QQkr1hE3gv/MkEwImGoBJZMyCi7RdBLdIYyeZkLaBH7/1WXHZ+IbfKy
	YvLQR2NgtRShxAc0gFmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igj7P-0001Zv-0q; Mon, 16 Dec 2019 05:40:31 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igj7F-0001Xf-5K; Mon, 16 Dec 2019 05:40:23 +0000
X-UUID: 504978ae64904107abacae3ce720c231-20191215
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=ZFK5ya63Cy6wgpbjF8WuGV2/7oL5ZesSkDZ/6F6akns=; 
 b=SLD234SHVdhqgz9HUvHWvCnWHg4ygBq/6pKuoWNaISH33SGn7Mt9i30ZnAe45k1G5s7Zs3ZUOGrcmpjEJb4JklR3OpZfqOqLZc9MnxdC3wB7xt4kMVmuQDoiN/eUA5mI44FD3voDrnNhRcoM5AbkLV3/Ci8HvoW238UI78ji1VI=;
X-UUID: 504978ae64904107abacae3ce720c231-20191215
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2002216749; Sun, 15 Dec 2019 21:40:11 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 15 Dec 2019 21:40:25 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Dec 2019 13:40:30 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 16 Dec 2019 13:39:22 +0800
From: Biao Huang <biao.huang@mediatek.com>
To: <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>, Andrew Lunn
 <andrew@lunn.ch>
Subject: [v2,
 PATCH 2/2] net-next: dt-binding: dwmac-mediatek: add more description
 for RMII
Date: Mon, 16 Dec 2019 13:39:58 +0800
Message-ID: <20191216053958.26130-3-biao.huang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191216053958.26130-1-biao.huang@mediatek.com>
References: <20191216053958.26130-1-biao.huang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_214021_209424_73EF642A 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Biao Huang <biao.huang@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, yt.shen@mediatek.com, Jose
 Abreu <joabreu@synopsys.com>, linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MT2712 SoC can provide RMII reference clock,
so add corresponding description in dt-binding.

Signed-off-by: Biao Huang <biao.huang@mediatek.com>
---
 .../bindings/net/mediatek-dwmac.txt           | 33 +++++++++++++------
 1 file changed, 23 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/mediatek-dwmac.txt b/Documentation/devicetree/bindings/net/mediatek-dwmac.txt
index 8a08621a5b54..afbcaebf062e 100644
--- a/Documentation/devicetree/bindings/net/mediatek-dwmac.txt
+++ b/Documentation/devicetree/bindings/net/mediatek-dwmac.txt
@@ -14,7 +14,7 @@ Required properties:
 	Should be "macirq" for the main MAC IRQ
 - clocks: Must contain a phandle for each entry in clock-names.
 - clock-names: The name of the clock listed in the clocks property. These are
-	"axi", "apb", "mac_main", "ptp_ref" for MT2712 SoC
+	"axi", "apb", "mac_main", "ptp_ref", "rmii_internal" for MT2712 SoC.
 - mac-address: See ethernet.txt in the same directory
 - phy-mode: See ethernet.txt in the same directory
 - mediatek,pericfg: A phandle to the syscon node that control ethernet
@@ -23,8 +23,10 @@ Required properties:
 Optional properties:
 - mediatek,tx-delay-ps: TX clock delay macro value. Default is 0.
 	It should be defined for RGMII/MII interface.
+	It should be defined for RMII interface when the reference clock is from MT2712 SoC.
 - mediatek,rx-delay-ps: RX clock delay macro value. Default is 0.
-	It should be defined for RGMII/MII/RMII interface.
+	It should be defined for RGMII/MII interface.
+	It should be defined for RMII interface.
 Both delay properties need to be a multiple of 170 for RGMII interface,
 or will round down. Range 0~31*170.
 Both delay properties need to be a multiple of 550 for MII/RMII interface,
@@ -34,13 +36,20 @@ or will round down. Range 0~31*550.
 	reference clock, which is from external PHYs, is connected to RXC pin
 	on MT2712 SoC.
 	Otherwise, is connected to TXC pin.
+- mediatek,rmii-clk-from-mac: boolean property, if present indicates that
+	MT2712 SoC provides the RMII reference clock, which outputs to TXC pin only.
 - mediatek,txc-inverse: boolean property, if present indicates that
 	1. tx clock will be inversed in MII/RGMII case,
 	2. tx clock inside MAC will be inversed relative to reference clock
 	   which is from external PHYs in RMII case, and it rarely happen.
+	3. the reference clock, which outputs to TXC pin will be inversed in RMII case
+	   when the reference clock is from MT2712 SoC.
 - mediatek,rxc-inverse: boolean property, if present indicates that
 	1. rx clock will be inversed in MII/RGMII case.
-	2. reference clock will be inversed when arrived at MAC in RMII case.
+	2. reference clock will be inversed when arrived at MAC in RMII case, when
+	   the reference clock is from external PHYs.
+	3. the inside clock, which be sent to MAC, will be inversed in RMII case when
+	   the reference clock is from MT2712 SoC.
 - assigned-clocks: mac_main and ptp_ref clocks
 - assigned-clock-parents: parent clocks of the assigned clocks
 
@@ -50,29 +59,33 @@ Example:
 		reg = <0 0x1101c000 0 0x1300>;
 		interrupts = <GIC_SPI 237 IRQ_TYPE_LEVEL_LOW>;
 		interrupt-names = "macirq";
-		phy-mode ="rgmii";
+		phy-mode ="rgmii-rxid";
 		mac-address = [00 55 7b b5 7d f7];
 		clock-names = "axi",
 			      "apb",
 			      "mac_main",
 			      "ptp_ref",
-			      "ptp_top";
+			      "rmii_internal";
 		clocks = <&pericfg CLK_PERI_GMAC>,
 			 <&pericfg CLK_PERI_GMAC_PCLK>,
 			 <&topckgen CLK_TOP_ETHER_125M_SEL>,
-			 <&topckgen CLK_TOP_ETHER_50M_SEL>;
+			 <&topckgen CLK_TOP_ETHER_50M_SEL>,
+			 <&topckgen CLK_TOP_ETHER_50M_RMII_SEL>;
 		assigned-clocks = <&topckgen CLK_TOP_ETHER_125M_SEL>,
-				  <&topckgen CLK_TOP_ETHER_50M_SEL>;
+				  <&topckgen CLK_TOP_ETHER_50M_SEL>,
+				  <&topckgen CLK_TOP_ETHER_50M_RMII_SEL>;
 		assigned-clock-parents = <&topckgen CLK_TOP_ETHERPLL_125M>,
-					 <&topckgen CLK_TOP_APLL1_D3>;
+					 <&topckgen CLK_TOP_APLL1_D3>,
+					 <&topckgen CLK_TOP_ETHERPLL_50M>;
+		power-domains = <&scpsys MT2712_POWER_DOMAIN_AUDIO>;
 		mediatek,pericfg = <&pericfg>;
 		mediatek,tx-delay-ps = <1530>;
 		mediatek,rx-delay-ps = <1530>;
 		mediatek,rmii-rxc;
 		mediatek,txc-inverse;
 		mediatek,rxc-inverse;
-		snps,txpbl = <32>;
-		snps,rxpbl = <32>;
+		snps,txpbl = <1>;
+		snps,rxpbl = <1>;
 		snps,reset-gpio = <&pio 87 GPIO_ACTIVE_LOW>;
 		snps,reset-active-low;
 	};
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
