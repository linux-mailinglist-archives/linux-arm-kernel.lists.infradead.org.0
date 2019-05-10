Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A3F19E21
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 15:27:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=atgXALj1Q+G9vQRO+b0U8JiDzpQiPFUODmj460/MGw4=; b=Kb7dYQSpl7rspd
	D6K0umIa7FTC7Xg1RoI58rA2VIFbXtx7xeybccKa/X0xQbD7aHAU499bhHBPnLlce0x5xiHSOGsYi
	3/DA8748RgQW+XGntXbwFY5tLWXNpUG9RUYmo1I0R/ss21tEGnOE8GMLSKAwD2M2pslseGrZW32aL
	7LLnIRteTA9lOF/pTQEARRUg7EGJNkOjc4ZME85+rFtfjCNZsFZSJSSsPQgTA+oc1ogPfIUsVSYYD
	mNnasHzBtriqXVhSK/StkA1ldBML9YIeiIhC9WHbNIlqDIm8TMAJE9zqq6jF0M/iPwfDtJDG/vt5z
	ntXj7KTR1ykgSe45E+WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP5Z3-0002EX-JV; Fri, 10 May 2019 13:27:53 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP5YU-0001d1-3z; Fri, 10 May 2019 13:27:23 +0000
X-UUID: 6f9a28d8478740a8bbab601701f55e01-20190510
X-UUID: 6f9a28d8478740a8bbab601701f55e01-20190510
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 121745635; Fri, 10 May 2019 05:27:14 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 May 2019 06:27:12 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 May 2019 21:27:10 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 10 May 2019 21:27:10 +0800
From: michael.kao <michael.kao@mediatek.com>
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, <hsinyi@chromium.org>
Subject: [PATCH v2 2/8] arm64: dts: mt8183: add/update dynamic power
 coefficients
Date: Fri, 10 May 2019 21:27:00 +0800
Message-ID: <1557494826-6044-3-git-send-email-michael.kao@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557494826-6044-1-git-send-email-michael.kao@mediatek.com>
References: <1557494826-6044-1-git-send-email-michael.kao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_062718_396387_6A5F2E88 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
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

Add dynamic power coefficients for all cores and update those of
CPU0 and CPU4.

Signed-off-by: Michael.Kao <michael.kao@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 52ad47e..8f9fd9a 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -58,6 +58,7 @@
 			compatible = "arm,cortex-a53";
 			reg = <0x000>;
 			enable-method = "psci";
+			dynamic-power-coefficient = <84>;
 		};
 
 		cpu1: cpu@1 {
@@ -65,6 +66,7 @@
 			compatible = "arm,cortex-a53";
 			reg = <0x001>;
 			enable-method = "psci";
+			dynamic-power-coefficient = <84>;
 		};
 
 		cpu2: cpu@2 {
@@ -72,6 +74,7 @@
 			compatible = "arm,cortex-a53";
 			reg = <0x002>;
 			enable-method = "psci";
+			dynamic-power-coefficient = <84>;
 		};
 
 		cpu3: cpu@3 {
@@ -79,6 +82,7 @@
 			compatible = "arm,cortex-a53";
 			reg = <0x003>;
 			enable-method = "psci";
+			dynamic-power-coefficient = <84>;
 		};
 
 		cpu4: cpu@100 {
@@ -86,6 +90,7 @@
 			compatible = "arm,cortex-a73";
 			reg = <0x100>;
 			enable-method = "psci";
+			dynamic-power-coefficient = <211>;
 		};
 
 		cpu5: cpu@101 {
@@ -93,6 +98,7 @@
 			compatible = "arm,cortex-a73";
 			reg = <0x101>;
 			enable-method = "psci";
+			dynamic-power-coefficient = <211>;
 		};
 
 		cpu6: cpu@102 {
@@ -100,6 +106,7 @@
 			compatible = "arm,cortex-a73";
 			reg = <0x102>;
 			enable-method = "psci";
+			dynamic-power-coefficient = <211>;
 		};
 
 		cpu7: cpu@103 {
@@ -107,6 +114,7 @@
 			compatible = "arm,cortex-a73";
 			reg = <0x103>;
 			enable-method = "psci";
+			dynamic-power-coefficient = <211>;
 		};
 	};
 
-- 
2.6.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
