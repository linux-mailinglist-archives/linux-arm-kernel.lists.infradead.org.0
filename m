Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7268F19E33
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 15:29:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nRG+pZwiTNQkhC2L6GsfnSWY3v6WxlAfHOjvquwerZw=; b=MS6bwflLfhYJtW
	S1noxqsUUElH0rSu0whgUZ5jCdMPMLkEU8nHKGkkY9jGAaElKnYdDzYJVP57unMJ2bXxtS68PNXWM
	9KsGxt05fIqRm58FqO8ZaC3qF1OaJGmFuBB/BmAUGG6KncLiN81DJZxWoyma71+RZDivqFYu8l0OX
	Eep159pY0RilB9GXhPr4QasaMYSWxTUy32aGpZu7on/WfDF8hFUZIAvqF7dHTZ4bst86FHhxwkJUa
	KJcQaus1ZkYmIWizAoXMm4xNbC/e6Bv8CQzzTD2QWyP0FF1lG6zIM5zfPw0piHoCtPhQJeP+FzEue
	uiaEvN5K+QsxS/Ou482A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP5aa-0003ue-QK; Fri, 10 May 2019 13:29:28 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP5aR-0003tD-1U; Fri, 10 May 2019 13:29:20 +0000
X-UUID: 92cc804760f94725af861b0e063b64cf-20190510
X-UUID: 92cc804760f94725af861b0e063b64cf-20190510
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 725766648; Fri, 10 May 2019 05:27:26 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 May 2019 06:27:25 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 May 2019 21:27:10 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 10 May 2019 21:27:10 +0800
From: michael.kao <michael.kao@mediatek.com>
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, <hsinyi@chromium.org>
Subject: [PATCH v2 3/8] arm64: dts: mt8183: Add #cooling-cells to CPU nodes
Date: Fri, 10 May 2019 21:27:01 +0800
Message-ID: <1557494826-6044-4-git-send-email-michael.kao@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557494826-6044-1-git-send-email-michael.kao@mediatek.com>
References: <1557494826-6044-1-git-send-email-michael.kao@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 8336847EAA702472685A4546EE562E7D2DA13545CC464BBBB765F6D87EB3AE712000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_062919_083457_2F7918CF 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, "michael.kao" <michael.kao@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The #cooling-cells property needs to be specified to allow a CPU
to be used as cooling device.

Signed-off-by: Michael.Kao <michael.kao@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 8f9fd9a..bf8b0a8 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -11,6 +11,8 @@
 #include <dt-bindings/power/mt8183-power.h>
 #include <dt-bindings/reset-controller/mt8183-resets.h>
 #include "mt8183-pinfunc.h"
+#include <dt-bindings/thermal/thermal.h>
+
 / {
 	compatible = "mediatek,mt8183";
 	interrupt-parent = <&sysirq>;
@@ -59,6 +61,7 @@
 			reg = <0x000>;
 			enable-method = "psci";
 			dynamic-power-coefficient = <84>;
+			#cooling-cells = <2>;
 		};
 
 		cpu1: cpu@1 {
@@ -67,6 +70,7 @@
 			reg = <0x001>;
 			enable-method = "psci";
 			dynamic-power-coefficient = <84>;
+			#cooling-cells = <2>;
 		};
 
 		cpu2: cpu@2 {
@@ -75,6 +79,7 @@
 			reg = <0x002>;
 			enable-method = "psci";
 			dynamic-power-coefficient = <84>;
+			#cooling-cells = <2>;
 		};
 
 		cpu3: cpu@3 {
@@ -83,6 +88,7 @@
 			reg = <0x003>;
 			enable-method = "psci";
 			dynamic-power-coefficient = <84>;
+			#cooling-cells = <2>;
 		};
 
 		cpu4: cpu@100 {
@@ -91,6 +97,7 @@
 			reg = <0x100>;
 			enable-method = "psci";
 			dynamic-power-coefficient = <211>;
+			#cooling-cells = <2>;
 		};
 
 		cpu5: cpu@101 {
@@ -99,6 +106,7 @@
 			reg = <0x101>;
 			enable-method = "psci";
 			dynamic-power-coefficient = <211>;
+			#cooling-cells = <2>;
 		};
 
 		cpu6: cpu@102 {
@@ -107,6 +115,7 @@
 			reg = <0x102>;
 			enable-method = "psci";
 			dynamic-power-coefficient = <211>;
+			#cooling-cells = <2>;
 		};
 
 		cpu7: cpu@103 {
@@ -115,6 +124,7 @@
 			reg = <0x103>;
 			enable-method = "psci";
 			dynamic-power-coefficient = <211>;
+			#cooling-cells = <2>;
 		};
 	};
 
-- 
2.6.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
