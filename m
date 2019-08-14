Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5318D050
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 12:07:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GBlzr4M0k/W6dNAtzkev3AATreOtCBd0KwWIO+Z4RcE=; b=IsZafcEmq6wn9H
	F36fAkISoHPU/F33mE4P8nd3us8ExAtQ9YBFxahT1z2i7pPcIdLSlRd2U0JfcFYlQ53AuYEz1I+0K
	5PBca9k4KSmE2ocpZBlx36fu80iTWOzlkdG9FplsRVcII9/cJCZd8+0PORlk9qAx0ZCcBZeZ5smxu
	tIhA7m8F50WmsCiHv4dz+ESQykP/AKJx0qqmxCxkJcFmscStVaOGC97oFR+cir2uVudZw7XXni4I9
	hCb+vYfQyCWwQIZeq5o/j7S9Dan9ko33beBxP8fnxqtbPtbfJ00U0JUAq0UoYhJLY8eY0FvHU9do/
	1FWkOGBfXSMP1jqgofWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxqCB-0003jY-1g; Wed, 14 Aug 2019 10:07:55 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxqBQ-0003RP-6G; Wed, 14 Aug 2019 10:07:09 +0000
X-UUID: 665d0be825064c9f85c389f523b64fb8-20190814
X-UUID: 665d0be825064c9f85c389f523b64fb8-20190814
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1641125749; Wed, 14 Aug 2019 02:06:55 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 14 Aug 2019 03:06:55 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 14 Aug 2019 18:06:53 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 14 Aug 2019 18:06:53 +0800
From: Michael Kao <michael.kao@mediatek.com>
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, <hsinyi@chromium.org>
Subject: [PATCH 2/4] arm64: dts: mt8183: add dynamic power coefficients
Date: Wed, 14 Aug 2019 18:06:47 +0800
Message-ID: <1565777209-21869-3-git-send-email-michael.kao@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1565777209-21869-1-git-send-email-michael.kao@mediatek.com>
References: <1565777209-21869-1-git-send-email-michael.kao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_030708_229667_905E49E7 
X-CRM114-Status: UNSURE (   8.75  )
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, "michael.kao" <michael.kao@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "michael.kao" <michael.kao@mediatek.com>

Add dynamic power coefficients for all cores.

Signed-off-by: michael.kao <michael.kao@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 47bde49..9de706a 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -58,6 +58,7 @@
 			reg = <0x000>;
 			enable-method = "psci";
 			capacity-dmips-mhz = <741>;
+			dynamic-power-coefficient = <84>;
 		};
 
 		cpu1: cpu@1 {
@@ -66,6 +67,7 @@
 			reg = <0x001>;
 			enable-method = "psci";
 			capacity-dmips-mhz = <741>;
+			dynamic-power-coefficient = <84>;
 		};
 
 		cpu2: cpu@2 {
@@ -74,6 +76,7 @@
 			reg = <0x002>;
 			enable-method = "psci";
 			capacity-dmips-mhz = <741>;
+			dynamic-power-coefficient = <84>;
 		};
 
 		cpu3: cpu@3 {
@@ -82,6 +85,7 @@
 			reg = <0x003>;
 			enable-method = "psci";
 			capacity-dmips-mhz = <741>;
+			dynamic-power-coefficient = <84>;
 		};
 
 		cpu4: cpu@100 {
@@ -90,6 +94,7 @@
 			reg = <0x100>;
 			enable-method = "psci";
 			capacity-dmips-mhz = <1024>;
+			dynamic-power-coefficient = <211>;
 		};
 
 		cpu5: cpu@101 {
@@ -98,6 +103,7 @@
 			reg = <0x101>;
 			enable-method = "psci";
 			capacity-dmips-mhz = <1024>;
+			dynamic-power-coefficient = <211>;
 		};
 
 		cpu6: cpu@102 {
@@ -106,6 +112,7 @@
 			reg = <0x102>;
 			enable-method = "psci";
 			capacity-dmips-mhz = <1024>;
+			dynamic-power-coefficient = <211>;
 		};
 
 		cpu7: cpu@103 {
@@ -114,6 +121,7 @@
 			reg = <0x103>;
 			enable-method = "psci";
 			capacity-dmips-mhz = <1024>;
+			dynamic-power-coefficient = <211>;
 		};
 	};
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
