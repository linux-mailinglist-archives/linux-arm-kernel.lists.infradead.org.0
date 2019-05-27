Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3FD2B0E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 11:05:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UgsxKNtmPsVxRLFN0xHsE6NIWSdeB/rifyPFMWqRDgw=; b=UjeHSxxXq2ppP4
	e6qFsAMXT8pwWA5CMnAnENQyDYolumK1ypZpXJIQy+oPihYAZRI6uRLEdhcuRCOza8FDbesu6xTwy
	nZf1jkgPokjQS9QpXGCUF4m/7wXDXMXQiXyG6nyqnIcBiKKE3Q6rsXA3NTYw/rvEp729dUn4kj3W8
	py2oYDSoxjsS+pNW+hm2w+OFcVY1a0gLV8jCQ45U1iOv7tXqaoCU9+H5x5a3f3/W/ms9od2OUOG44
	nT7Mf7RVgOBdXKrf5aHTo6eZtpaaoH6eE87/J16Axc4dkqtOG4YzYXjD4pdaaT0gdoImVKa/o4XEc
	jUJj5JcI5LZCL3jYY+jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVBZr-0007BK-58; Mon, 27 May 2019 09:05:55 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVBZK-0006i4-UN; Mon, 27 May 2019 09:05:27 +0000
X-UUID: ca1018be1b8e4bf08c36e08a93053315-20190527
X-UUID: ca1018be1b8e4bf08c36e08a93053315-20190527
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <erin.lo@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 400417633; Mon, 27 May 2019 01:05:12 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 27 May 2019 02:05:11 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 27 May 2019 17:05:09 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 27 May 2019 17:05:09 +0800
From: Erin Lo <erin.lo@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v11 2/6] arm64: dts: mt8183: add capacity-dmips-mhz
Date: Mon, 27 May 2019 17:04:43 +0800
Message-ID: <1558947887-31084-3-git-send-email-erin.lo@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1558947887-31084-1-git-send-email-erin.lo@mediatek.com>
References: <1558947887-31084-1-git-send-email-erin.lo@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: BEBDBD6161B4C7896DDE90CE14127A1A65E236348D2D7160142575FA14673EBB2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_020523_442484_D837291F 
X-CRM114-Status: UNSURE (   7.75  )
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
 linux-mediatek@lists.infradead.org, linux-serial@vger.kernel.org, "Hsin-Yi,
 Wang" <hsinyi@chromium.org>, mars.cheng@mediatek.com, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Hsin-Yi, Wang" <hsinyi@chromium.org>

Pinned the frequency to the max and run dhrystone to get the value.
little cpu: 11071 (max freq: 1989000)
big cpu: 15293 (max freq: 1989000)

11071 : 15293 ~= 741 : 1024

Signed-off-by: Erin Lo <erin.lo@mediatek.com>
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>

---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 08274bf..5b34ec6 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -56,6 +56,7 @@
 			compatible = "arm,cortex-a53";
 			reg = <0x000>;
 			enable-method = "psci";
+			capacity-dmips-mhz = <741>;
 		};
 
 		cpu1: cpu@1 {
@@ -63,6 +64,7 @@
 			compatible = "arm,cortex-a53";
 			reg = <0x001>;
 			enable-method = "psci";
+			capacity-dmips-mhz = <741>;
 		};
 
 		cpu2: cpu@2 {
@@ -70,6 +72,7 @@
 			compatible = "arm,cortex-a53";
 			reg = <0x002>;
 			enable-method = "psci";
+			capacity-dmips-mhz = <741>;
 		};
 
 		cpu3: cpu@3 {
@@ -77,6 +80,7 @@
 			compatible = "arm,cortex-a53";
 			reg = <0x003>;
 			enable-method = "psci";
+			capacity-dmips-mhz = <741>;
 		};
 
 		cpu4: cpu@100 {
@@ -84,6 +88,7 @@
 			compatible = "arm,cortex-a73";
 			reg = <0x100>;
 			enable-method = "psci";
+			capacity-dmips-mhz = <1024>;
 		};
 
 		cpu5: cpu@101 {
@@ -91,6 +96,7 @@
 			compatible = "arm,cortex-a73";
 			reg = <0x101>;
 			enable-method = "psci";
+			capacity-dmips-mhz = <1024>;
 		};
 
 		cpu6: cpu@102 {
@@ -98,6 +104,7 @@
 			compatible = "arm,cortex-a73";
 			reg = <0x102>;
 			enable-method = "psci";
+			capacity-dmips-mhz = <1024>;
 		};
 
 		cpu7: cpu@103 {
@@ -105,6 +112,7 @@
 			compatible = "arm,cortex-a73";
 			reg = <0x103>;
 			enable-method = "psci";
+			capacity-dmips-mhz = <1024>;
 		};
 	};
 
-- 
1.8.1.1.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
