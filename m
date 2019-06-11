Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B60FC3C1C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 05:57:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ffFnXIcV5G1aRqQZ7gBGuPkkW2J6jekhXuaCOK7Y74=; b=WTb5VDxx1JCmDt
	Sd2oDwsjEjaCTx3a1g/Y7eRydHzL2abvz0XfbkjqIgNKhMIBfvq8pK1fjdF/rMaRJ2mq5zh6Aj8Km
	FjPRuT4MDTqmuifhsofqVdTjf0qRaDmQ1XAgiFNwrXlBGVzla/nOnoOm7Nj0JVDWLEMMgvxX92nNk
	hqaEkSZVaF+LsL1GKJW/54AHTYWD8PKqmLSt378H+xoOUywmSjfi8Yv1rvjafMV7aRGjBkTlqpK30
	n32eUEK3PMhzD5FWgrI/cuzy4aYPQuvvto0gi3WGZ8tk4ekTrz1SqdIqDx0rkoH12x0yX8YTZaLaA
	ltqrsBhBmnW2lsqsuYjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haXuk-0002UO-0K; Tue, 11 Jun 2019 03:57:38 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haXrT-0007RM-1L; Tue, 11 Jun 2019 03:54:18 +0000
X-UUID: 5928145a98b14b53b7b288fc981c6f56-20190610
X-UUID: 5928145a98b14b53b7b288fc981c6f56-20190610
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 393962352; Mon, 10 Jun 2019 19:54:01 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 20:53:59 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 11:53:51 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 11 Jun 2019 11:53:51 +0800
From: Jungo Lin <jungo.lin@mediatek.com>
To: <tfiga@chromium.org>, <hverkuil@xs4all.nl>,
 <laurent.pinchart@ideasonboard.com>, <matthias.bgg@gmail.com>,
 <mchehab@kernel.org>
Subject: [RFC,v3 2/9] dts: arm64: mt8183: Add ISP Pass 1 nodes
Date: Tue, 11 Jun 2019 11:53:37 +0800
Message-ID: <20190611035344.29814-3-jungo.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190611035344.29814-1-jungo.lin@mediatek.com>
References: <jungo.lin@mediatek.com>
 <20190611035344.29814-1-jungo.lin@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 51E3951B510457039F7BF5A18CAC5160CF13C347259EFDA5390D689C6282BB822000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_205415_533763_FCE3FDED 
X-CRM114-Status: UNSURE (   5.96  )
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
Reply-To: jungo.lin@mediatek.com
Cc: devicetree@vger.kernel.org, sean.cheng@mediatek.com, rynn.wu@mediatek.com,
 srv_heupstream@mediatek.com, robh@kernel.org, ryan.yu@mediatek.com,
 frankie.chiu@mediatek.com, jungo.lin@mediatek.com, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, ddavenport@chromium.org,
 frederic.chen@mediatek.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add nodes for Pass 1 unit of Mediatek's camera ISP system.
Pass 1 unit embedded in Mediatek SoCs, works with the
co-processor to process image signal from the image sensor
and output RAW image data.

Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 75c4881bbe5e..8a725357c594 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -369,5 +369,29 @@
 			reg = <0 0x1a000000 0 0x1000>;
 			#clock-cells = <1>;
 		};
+
+		camisp: camisp@1a000000 {
+			compatible = "mediatek,mt8183-camisp", "syscon";
+			reg = <0 0x1a000000 0 0x1000>,
+			      <0 0x1a003000 0 0x1000>,
+			      <0 0x1a004000 0 0x2000>,
+			      <0 0x1a006000 0 0x2000>;
+			reg-names = "cam_sys",
+				    "cam_uni",
+				    "cam_a",
+				    "cam_b";
+			interrupts = <GIC_SPI 253 IRQ_TYPE_LEVEL_LOW>,
+				     <GIC_SPI 254 IRQ_TYPE_LEVEL_LOW>,
+				     <GIC_SPI 255 IRQ_TYPE_LEVEL_LOW>;
+			iommus = <&iommu M4U_PORT_CAM_IMGO>;
+			clocks = <&camsys CLK_CAM_CAM>,
+				 <&camsys CLK_CAM_CAMTG>;
+			clock-names = "camsys_cam_cgpdn",
+				      "camsys_camtg_cgpdn";
+			mediatek,larb = <&larb3>,
+					<&larb6>;
+			mediatek,scp = <&scp>;
+		};
+
 	};
 };
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
