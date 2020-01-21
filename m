Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E92EE1439F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 10:55:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OyyRHkEo5EzqSAZRypWSiRalBQGet7oxKwlQEJ87H34=; b=Pxn5EXAtDF0muf
	Y1J+MRzBmvtqjgIeAX4wefPACfwZQnj8CLfto5pGUJN82Ib5CnjfwX06tdXzK2qMcnmKn1xVTML2B
	BFR2TtKwoo+b71h6DOamzYacn1CzgllI+TD1v6lBiuhJM40jBEhwMrq/IKrJWMJVc0WATO4oyBIzS
	M4j1IYZQnfvM/V0uFK9du3TraaMdop3jwf9RZGWFfTmD1N278XLk4t6PS4GUgX3efwgK67f+Nbvry
	vqCctZ0OTfjwy/sq9/gWmT/cIGc4gXhHi/yC4WxqKELFAGNaz2USb6WKitik+qrskXzxDNnMk9PNE
	jGf/Xk9ieg2mhuzt9/ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqFd-0000mn-RU; Tue, 21 Jan 2020 09:55:13 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqEY-0008DG-9C; Tue, 21 Jan 2020 09:54:07 +0000
X-UUID: b68f22f2905c4b0093a4ef38328621c7-20200121
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=8IcL7wBmEolfM1aqC7lqWVrzqXRtoYlmHotbd9PKXF4=; 
 b=AoMWYq8hD0hP/vHAxCpY5EPO8oFahWSPqQRn1kPpjcTeYA7Ca0Qmz6U58i4T/GLiDg/gPFyAaucqVax6SSXIcugayG+UtLvcfFOPoLtttX5IhqVvy7yfpovgNgmZum9UVlPs8jQIzo+kBbUqW5eUrfGx6oMb/8DULmDpQYb8P/U=;
X-UUID: b68f22f2905c4b0093a4ef38328621c7-20200121
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 861252485; Tue, 21 Jan 2020 01:54:01 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 Jan 2020 01:54:59 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 Jan 2020 17:53:18 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 21 Jan 2020 17:51:56 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Rick Chang <rick.chang@mediatek.com>
Subject: [PATCH v6 3/5] arm: dts: Add jpeg enc device tree node
Date: Tue, 21 Jan 2020 17:53:19 +0800
Message-ID: <20200121095320.32258-4-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200121095320.32258-1-xia.jiang@mediatek.com>
References: <20200121095320.32258-1-xia.jiang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_015406_364457_D67E6A50 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Xia Jiang <xia.jiang@mediatek.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, linux-mediatek@lists.infradead.org,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add jpeg enc device tree node

Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
---
v6: no changes

v5: no changes
           
v4: no changes
              
v3: change compatible to SoC specific compatible
              
v2: no changes
---
 arch/arm/boot/dts/mt2701.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/boot/dts/mt2701.dtsi b/arch/arm/boot/dts/mt2701.dtsi
index 51e1305c6471..f2f92150b3fb 100644
--- a/arch/arm/boot/dts/mt2701.dtsi
+++ b/arch/arm/boot/dts/mt2701.dtsi
@@ -569,6 +569,19 @@
 			 <&iommu MT2701_M4U_PORT_JPGDEC_BSDMA>;
 	};
 
+	jpegenc: jpegenc@1500a000 {
+		compatible = "mediatek,mt2701-jpgenc",
+			     "mediatek,mtk-jpgenc";
+		reg = <0 0x1500a000 0 0x1000>;
+		interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_LOW>;
+		clocks =  <&imgsys CLK_IMG_VENC>;
+		clock-names = "jpgenc";
+		power-domains = <&scpsys MT2701_POWER_DOMAIN_ISP>;
+		mediatek,larb = <&larb2>;
+		iommus = <&iommu MT2701_M4U_PORT_JPGENC_RDMA>,
+			 <&iommu MT2701_M4U_PORT_JPGENC_BSDMA>;
+	};
+
 	vdecsys: syscon@16000000 {
 		compatible = "mediatek,mt2701-vdecsys", "syscon";
 		reg = <0 0x16000000 0 0x1000>;
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
