Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5164012AB5A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 10:41:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TiH2sgK7+EMPy/SWInvEAGMAwJwBxjj4wtqBBVIrXgc=; b=VDjATZT71+VyXB
	qV9UO51G4AhMktvhWPTmuuywY1R0VWJpkP7MXew0Bfc9Qe7HBAo7Zw8k2HHbhnYiwxvfqJMuyP0QI
	ROLX/cfiIIntKLlLPBcAv2o2beZcdnyF+h6QuAVz+XY/rOrPPxB+cYncf7efs+6fpOwM6P0ZB7IDI
	O/aag6+SBHv295F3KT52Plw0yTkv8Il4+UXSA5zD992ExPNF9QRHf5ZS3AaKwn0NlXTgbzrLh3ZS9
	Ctn411hW3ecqzFt4+xyYOyTsnqBGsLJejgO7HYYFAZX4QVTuHlvS3yxBqyhfBFoMhBeGkJiW7lw/E
	/0ELpZfNAViwsBEl5NJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikPdZ-0000Og-Li; Thu, 26 Dec 2019 09:40:57 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikPdK-0000OH-Oi; Thu, 26 Dec 2019 09:40:44 +0000
X-UUID: b74aae5665f34f318918e2fce1864fa3-20191226
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=G72ihj4+vKRQawP385JqnMOAFlVY9C4u038qvj/EOmM=; 
 b=CcO1nEfGeenm64ygIwxVhVOpRji4w8BF6+en4ZoPNtN8jmAyR9udSuvyjfUu4jGPbvbqcnMXKtcys84NPNs5oRdwzL7YVWtT0WCARDx0dHjAZc/3hY1xre7OUjR+B5/eivTf67gQgIBh69W8Ewu5lRpa3XyuKWjDz5hMaq4DlG8=;
X-UUID: b74aae5665f34f318918e2fce1864fa3-20191226
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <yong.liang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 807251076; Thu, 26 Dec 2019 01:40:38 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 26 Dec 2019 01:41:04 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 26 Dec 2019 17:39:29 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 26 Dec 2019 17:40:05 +0800
From: Yong Liang <yong.liang@mediatek.com>
To: <matthias.bgg@gmail.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v1 1/1] amr64: dts: modify mt8183.dtsi
Date: Thu, 26 Dec 2019 17:39:30 +0800
Message-ID: <20191226093930.22413-2-yong.liang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191226093930.22413-1-yong.liang@mediatek.com>
References: <20191226093930.22413-1-yong.liang@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 65218FE8B39C48C3940BA86F10982CD6553602425CFCD5578F8792C6F04CD2B52000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_014042_808338_FD364E55 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "yong.liang" <yong.liang@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "yong.liang" <yong.liang@mediatek.com>

Include mt8183-reset.h and add reset-cells in infracfg
in dtsi file

Signed-off-by: yong.liang <yong.liang@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 10b32471bc7b..76bfcbdf097a 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/clock/mt8183-clk.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/reset-controller/mt8183-resets.h>
 #include "mt8183-pinfunc.h"
 
 / {
@@ -227,6 +228,7 @@
 			compatible = "mediatek,mt8183-infracfg", "syscon";
 			reg = <0 0x10001000 0 0x1000>;
 			#clock-cells = <1>;
+			#reset-cells = <1>;
 		};
 
 		pio: pinctrl@10005000 {
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
