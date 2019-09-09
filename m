Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A40ADF56
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 21:23:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dLABQtQi+TzHyPwn2rfL4WDGLf+aQGLbTP6JDy09e7g=; b=vDBEnTp4Cc/M1O
	mPp7E91PK4gGrdCUTfksRONgB8W3p0eywle+uuk8OxLsE7I7g4Tf0yrBq7RKLXX1avyZmlSvDTjuO
	ktxa1JrQYL2XsbWUaLBL89lxOxin6vzRbsko/PZw/NcT8lzDor/ckYRDU+kD4gWspKyFO64XW2a2X
	QDdX1j81xaYhiJyDomcftE863LWcEoqQeSnIrAO8JZrPGL7a84E81Mwz3MX4w4gjIp2aNHUedf6PR
	1l7XW4BanLy8qaxpljVU/PSPBnBbcABKpLXMdyTSFlMJ/VvKM1V+NG91iKnpffvqECrGTH63w24qK
	LY1APhzxzAokUv7moslw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7PGC-0003th-Mn; Mon, 09 Sep 2019 19:23:36 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7PFo-0003hf-CY; Mon, 09 Sep 2019 19:23:14 +0000
X-UUID: 9e7452641235465e9edda691daf9fb1b-20190909
X-UUID: 9e7452641235465e9edda691daf9fb1b-20190909
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <frederic.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 639713974; Mon, 09 Sep 2019 11:23:03 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Sep 2019 12:23:02 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Sep 2019 03:23:01 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 10 Sep 2019 03:23:01 +0800
From: <frederic.chen@mediatek.com>
To: <hans.verkuil@cisco.com>, <laurent.pinchart+renesas@ideasonboard.com>,
 <tfiga@chromium.org>, <matthias.bgg@gmail.com>, <mchehab@kernel.org>
Subject: [RFC PATCH V3 2/5] dts: arm64: mt8183: Add DIP nodes
Date: Tue, 10 Sep 2019 03:22:41 +0800
Message-ID: <20190909192244.9367-3-frederic.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190909192244.9367-1-frederic.chen@mediatek.com>
References: <20190909192244.9367-1-frederic.chen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_122312_427438_2D08E62C 
X-CRM114-Status: UNSURE (   7.70  )
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
Cc: shik@chromium.org, devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 Rynn.Wu@mediatek.com, Allan.Yang@mediatek.com, srv_heupstream@mediatek.com,
 holmes.chiou@mediatek.com, suleiman@chromium.org, Jerry-ch.Chen@mediatek.com,
 jungo.lin@mediatek.com, sj.huang@mediatek.com, yuzhao@chromium.org,
 linux-mediatek@lists.infradead.org, zwisler@chromium.org,
 christie.yu@mediatek.com, frederic.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Frederic Chen <frederic.chen@mediatek.com>

This patch adds nodes for Digital Image Processing (DIP). DIP is
embedded in Mediatek SoCs and works with the co-processor to
adjust image content according to tuning input data. It also
provides image format conversion, resizing, and rotation
features.

Signed-off-by: Frederic Chen <frederic.chen@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 0f2646c9eb65..d7b0fb8230f0 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -513,6 +513,22 @@
 			#clock-cells = <1>;
 		};
 
+		dip: dip@15022000 {
+			compatible = "mediatek,mt8183-dip";
+			mediatek,larb = <&larb5>;
+			mediatek,mdp3 = <&mdp_rdma0>;
+			mediatek,scp = <&scp>;
+			iommus = <&iommu M4U_PORT_CAM_IMGI>;
+			reg = <0 0x15022000 0 0x6000>;
+			interrupts = <GIC_SPI 268 IRQ_TYPE_LEVEL_LOW>;
+			clocks =
+					<&imgsys CLK_IMG_LARB5>,
+					<&imgsys CLK_IMG_DIP>;
+			clock-names =
+					"larb5",
+					"dip";
+		};
+
 		vdecsys: syscon@16000000 {
 			compatible = "mediatek,mt8183-vdecsys", "syscon";
 			reg = <0 0x16000000 0 0x1000>;
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
