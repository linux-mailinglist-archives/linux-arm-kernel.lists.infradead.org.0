Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8516414C774
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 09:27:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BEV4OqX+gTdwPJScLEkR/GfvZqhWFZCd0MBpqXbuQlo=; b=cjp4H6RdMgtuQa
	6gNirdk1o6Em6+7dXZgeg6BTxtUwHgHmy6K94/N+78TJBzN4iZF9rmnmCD5X2Hd+ZVJRlo3hM2fc0
	RMQSs9Wdq/rn4dsDJtHAvrwofsUGsRv7aYQGESbiGHG2YanhDwizU/FUoO6Lmhg0J+l5wEMjz9d7i
	b87OqyOskBt0Nor0tjaDs3RrdDhvGWIV1frr6+qP5lo/H5CSEv9G+b4UWIInwEMB0UXJfwF3bZIBd
	8juIMEUJvqNPKywZah82+muaFaH9jjN1wrlOIGYEzAKLK1yEJ5FrHpqL/qrRTwneYmlj7oPFo+kxj
	adLtVwwYp6zW4Qm50uxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwih5-0002bQ-KU; Wed, 29 Jan 2020 08:27:27 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwigv-0002aw-FX; Wed, 29 Jan 2020 08:27:19 +0000
X-UUID: 0ee1fe3ce2a14726926d4f54c23bb4dd-20200129
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=INKR0i+Hxnse1nE1cbIAERiSPrh/G+JRIrLKl829tUM=; 
 b=SoApOkEQfNl4+LmTGWfcntVeiW7jBTtcokAr6b7ZgbKlpmdwzqhNZXf+4ikn8RJX1OCx2F0OEYZitAMw09NhKlsxqIfLDgKAweLgNHiPMuBMxMEgcVb064CWUHEIJLQw+l/hXFbauUQgqN37jqHGYPr5XDyF26/rS/ZHQ59DwMY=;
X-UUID: 0ee1fe3ce2a14726926d4f54c23bb4dd-20200129
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <louis.kuo@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2146697617; Wed, 29 Jan 2020 00:27:15 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 Jan 2020 00:18:26 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 Jan 2020 16:15:45 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 29 Jan 2020 16:17:12 +0800
From: Louis Kuo <louis.kuo@mediatek.com>
To: <hans.verkuil@cisco.com>, <laurent.pinchart+renesas@ideasonboard.com>,
 <tfiga@chromium.org>, <keiichiw@chromium.org>, <matthias.bgg@gmail.com>,
 <mchehab@kernel.org>
Subject: [RFC PATCH V5 2/3] dt-bindings: mt8183: Add sensor interface
 dt-bindings
Date: Wed, 29 Jan 2020 16:16:49 +0800
Message-ID: <20200129081650.8027-3-louis.kuo@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200129081650.8027-1-louis.kuo@mediatek.com>
References: <20200129081650.8027-1-louis.kuo@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_002717_528276_F21CE4DC 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com, Rynn.Wu@mediatek.com,
 srv_heupstream@mediatek.com, Jerry-ch.Chen@mediatek.com,
 jungo.lin@mediatek.com, sj.huang@mediatek.com, yuzhao@chromium.org,
 linux-mediatek@lists.infradead.org, zwisler@chromium.org,
 louis.kuo@mediatek.com, christie.yu@mediatek.com, frederic.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the DT binding documentation for the sensor interface
module in Mediatek SoCs.

Signed-off-by: Louis Kuo <louis.kuo@mediatek.com>
---
 .../bindings/media/mediatek-seninf.txt        | 66 +++++++++++++++++++
 1 file changed, 66 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/mediatek-seninf.txt

diff --git a/Documentation/devicetree/bindings/media/mediatek-seninf.txt b/Documentation/devicetree/bindings/media/mediatek-seninf.txt
new file mode 100644
index 000000000000..85a990814bdf
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/mediatek-seninf.txt
@@ -0,0 +1,66 @@
+ ca* Mediatek seninf MIPI-CSI2 host driver
+
+Seninf MIPI-CSI2 host driver is a HW camera interface controller. It support
+a widely adopted, simple, high-speed protocol primarily intended for
+point-to-point image and video transmission between cameras and host devices.
+
+Required properties:
+  - compatible: "mediatek,mt8183-seninf"
+  - reg: Must contain an entry for each entry in reg-names.
+  - reg-names: Must include the following entries:
+    "base": seninf registers base
+    "rx": Rx analog registers base
+  - interrupts: interrupt number to the cpu.
+  - clocks : clock name from clock manager.
+  - clock-names: must be CLK_CAM_SENINF and CLK_TOP_MUX_SENINF,
+    It is the clocks of seninf.
+  - ports : list port node of endpoint.
+  - port : describe endpoint for each remote device port connected to this
+  		   port.
+  	reg : port reg 0 must be main camera, port reg 1 must be sub camera,
+  		  since seninf driver support upto 4 cameras, so camisp is reg 4.
+
+Example:
+		seninf: seninf@1a040000 {
+			compatible = "mediatek,mt8183-seninf";
+			reg = <0 0x1a040000 0 0x8000>,
+			      <0 0x11c80000 0 0x6000>;
+			reg-names = "base", "rx";
+			interrupts = <GIC_SPI 251 IRQ_TYPE_LEVEL_LOW>;
+			power-domains = <&scpsys MT8183_POWER_DOMAIN_CAM>;
+			clocks = <&camsys CLK_CAM_SENINF>,
+				 <&topckgen CLK_TOP_MUX_SENINF>;
+			clock-names = "CLK_CAM_SENINF", "CLK_TOP_MUX_SENINF";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					seninf_port0_endpoint: endpoint {
+						data-lanes = <0 1 3 4>;
+						remote-endpoint = <&ov8856_endpoint>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					seninf_port1_endpoint: endpoint {
+						data-lanes = <1>;
+						remote-endpoint = <&ov02a10_endpoint>;
+					};
+				};
+
+				port@4 {
+					reg = <4>;
+
+					seninf_camisp_endpoint: endpoint {
+						remote-endpoint = <&camisp_endpoint>;
+					};
+				};
+			};
+		};
+
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
