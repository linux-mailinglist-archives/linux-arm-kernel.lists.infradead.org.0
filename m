Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41142A5043
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 09:52:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=boXogav+4K4IN3oMyjU/8iETCaZrwgKGSVSivXkKK0A=; b=TeB593hp3BCEv8
	yjCfIzyPdl4fQf6Wc9QyB28EgFjIhnIYESPxJpcRU+TOTXuGmXHc9o/7/DbVRRuP8et4gew2Uevpw
	KB3/8+0n2p4KTl2QMSal62xnjr4sGRElV3dMLbtPAxG37kKhceE3pmlVC2OVZl7ZuVUOgxTjpknDt
	Xu8jp02Bc7kyaeS+ny0eI78a0myiRzdoAv5pdnGPhBzkL6qLN/L6RaILUaNeuZ5b8+tylT4qTiEvz
	CXoKxUmA8O8/1PHYQFvIXpHC2P6srC7uaZJCZQdItoMZKze+BubhLCOqY25MT6dobYDMN2eKXt5Z3
	+Iry0UzvjihqgWiV4WyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4h8E-0006RW-62; Mon, 02 Sep 2019 07:52:10 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4h80-0006Qf-4f; Mon, 02 Sep 2019 07:51:57 +0000
X-UUID: 4886dd28672f426485891138531b9597-20190901
X-UUID: 4886dd28672f426485891138531b9597-20190901
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1030222058; Sun, 01 Sep 2019 23:51:55 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Sep 2019 00:51:53 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Sep 2019 15:51:50 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 2 Sep 2019 15:51:52 +0800
From: Jungo Lin <jungo.lin@mediatek.com>
To: <tfiga@chromium.org>, <hverkuil-cisco@xs4all.nl>,
 <laurent.pinchart@ideasonboard.com>, <matthias.bgg@gmail.com>,
 <mchehab@kernel.org>
Subject: [RFC,v5, 2/5] dts: arm64: mt8183: Add ISP Pass 1 nodes
Date: Mon, 2 Sep 2019 15:51:32 +0800
Message-ID: <20190902075135.1332-3-jungo.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190902075135.1332-1-jungo.lin@mediatek.com>
References: <Jungo Lin <jungo.lin@mediatek.com>
 <20190902075135.1332-1-jungo.lin@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_005156_180509_5A594136 
X-CRM114-Status: UNSURE (   5.90  )
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
Reply-To: Jungo Lin <jungo.lin@mediatek.com>
Cc: shik@chromium.org, devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 suleiman@chromium.org, Rynn.Wu@mediatek.com, srv_heupstream@mediatek.com,
 robh@kernel.org, ryan.yu@mediatek.com, Jerry-ch.Chen@mediatek.com,
 frankie.chiu@mediatek.com, jungo.lin@mediatek.com, sj.huang@mediatek.com,
 yuzhao@chromium.org, linux-mediatek@lists.infradead.org, zwisler@chromium.org,
 ddavenport@chromium.org, frederic.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
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
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 30 ++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 66aaa07f6cec..0d607342d4f1 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -505,5 +505,35 @@
 			reg = <0 0x1a000000 0 0x1000>;
 			#clock-cells = <1>;
 		};
+		camisp: camisp@1a000000 {
+			compatible = "mediatek,mt8183-camisp";
+			reg = <0 0x1a000000 0 0x1000>,
+					<0 0x1a003000 0 0x1000>,
+					<0 0x1a004000 0 0x2000>,
+					<0 0x1a006000 0 0x2000>,
+					<0 0x1a008000 0 0x2000>;
+			reg-names = "cam_sys",
+					"cam_uni",
+					"cam_a",
+					"cam_b",
+					"cam_c";
+			interrupts = <GIC_SPI 253 IRQ_TYPE_LEVEL_LOW>,
+					<GIC_SPI 254 IRQ_TYPE_LEVEL_LOW>,
+					<GIC_SPI 255 IRQ_TYPE_LEVEL_LOW>,
+					<GIC_SPI 256 IRQ_TYPE_LEVEL_LOW>;
+			interrupt-names = "cam_uni",
+					"cam_a",
+					"cam_b",
+					"cam_c";
+			iommus = <&iommu M4U_PORT_CAM_IMGO>;
+			clocks = <&camsys CLK_CAM_CAM>,
+					<&camsys CLK_CAM_CAMTG>;
+			clock-names = "camsys_cam_cgpdn",
+					"camsys_camtg_cgpdn";
+			mediatek,larb = <&larb3>,
+					<&larb6>;
+			power-domains = <&scpsys MT8183_POWER_DOMAIN_CAM>;
+			mediatek,scp = <&scp>;
+		};
 	};
 };
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
