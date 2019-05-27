Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA3B2B0FC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 11:08:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zz9Pi1qvkbT9RpL+YJpFX4WNJBeoR4n/oay6EdzzDY0=; b=FOkOVUTUMSzJeR
	rn9p6YTekwAwxSBl/PaXXj3V2gEOs4/Lvs0T2ZqRUjthr9yKkXHGInRrzc7JMtOPQOLnKbqefehFz
	4Sx54GLaxq8UZ2jL/MwQt5sxGoFFbp83RABoKXZWJVriRpU3e9tm976z44yLresYYttR7EOAuDuR8
	stDX5sMWBns9WNZCshgnwsnkJuiIXlKpEWKk0E/vC4ttwmdshQ7VAtiJIg89XJUWvtbdX8XvXJcVj
	1h6CkaqZ9y5y7KxzRHxzNq/mZLfbKAQsjAWTMnwR9FH48u4bnhfVnnfUV03/Ursm/yWkPsW+8gipc
	I2fhzdqzA+91skPgFrMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVBc2-0008Fl-Pn; Mon, 27 May 2019 09:08:10 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVBbl-00087Y-OZ; Mon, 27 May 2019 09:07:56 +0000
X-UUID: a9ed5120dfef4098ac5c44156b631241-20190527
X-UUID: a9ed5120dfef4098ac5c44156b631241-20190527
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <erin.lo@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1451335824; Mon, 27 May 2019 01:05:33 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 27 May 2019 02:05:22 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 27 May 2019 17:05:20 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 27 May 2019 17:05:20 +0800
From: Erin Lo <erin.lo@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v11 6/6] arm64: dts: mt8183: add efuse and Mediatek Chip id
 node to read
Date: Mon, 27 May 2019 17:04:47 +0800
Message-ID: <1558947887-31084-7-git-send-email-erin.lo@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1558947887-31084-1-git-send-email-erin.lo@mediatek.com>
References: <1558947887-31084-1-git-send-email-erin.lo@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: BC6772C244BE5BC8E09530FE258C73FF60A08144B109D9253A4ADFC41D8847CA2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_020754_608966_F02F5A64 
X-CRM114-Status: UNSURE (   8.53  )
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
Cc: devicetree@vger.kernel.org, srv_heupstream <srv_heupstream@mediatek.com>,
 erin.lo@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-serial@vger.kernel.org,
 mars.cheng@mediatek.com, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org, Michael Mei <michael.mei@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Michael Mei <michael.mei@mediatek.com>

support for reading chip ID and efuse

Signed-off-by: Michael Mei <michael.mei@mediatek.com>
Signed-off-by: Erin Lo <erin.lo@mediatek.com>
---
This patch is based on this patch:
https://patchwork.kernel.org/patch/10953029/
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 2e3063f..c2749c4 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -156,6 +156,15 @@
 		compatible = "simple-bus";
 		ranges;
 
+		soc_data: soc_data@8000000 {
+			compatible = "mediatek,mt8183-efuse",
+				     "mediatek,efuse";
+			reg = <0 0x08000000 0 0x0010>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			status = "disabled";
+		};
+
 		gic: interrupt-controller@c000000 {
 			compatible = "arm,gic-v3";
 			#interrupt-cells = <4>;
@@ -369,6 +378,12 @@
 			#clock-cells = <1>;
 		};
 
+		efuse: efuse@11f10000 {
+			compatible = "mediatek,mt8183-efuse",
+				     "mediatek,efuse";
+			reg = <0 0x11f10000 0 0x1000>;
+		};
+
 		mfgcfg: syscon@13000000 {
 			compatible = "mediatek,mt8183-mfgcfg", "syscon";
 			reg = <0 0x13000000 0 0x1000>;
-- 
1.8.1.1.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
