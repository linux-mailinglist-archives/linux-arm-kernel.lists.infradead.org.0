Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46ABCF0DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 09:05:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U48NnOZvQPXgwYt3bsgakgXqPA0EDXko5PeCB1DbJmE=; b=nGrKuFoUP9m8sd
	CjAVQEJsh++okhzIOC3LKwPmSk2gNVMbd++7FNp2ry4sakRGnHxTYltKsFWPNqnLYB+UuFnGnRLCc
	mX6bGXG7aI17gC5MOxjYUCyySqztdExIF/H0m9HeckoVSC32JnidXhtPwlfYzC0FDk/Ce0jZPdRHj
	yqjkh4Xh5Uphm4XBy8knUYqskEv3TCBQ/ohPuYMjlAAa5k/sReqYYhKXvSYhjLlgJX490euk3HGs5
	99Re3DZabxJvIi37XBzn2OCrcttXKtSOEKn+dq67kDJhBGLn8awIXfB9go1D+8dqCSXEHHN36h6+n
	BCCMr4EZopDOovkS+rZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLMpF-0005dp-2v; Tue, 30 Apr 2019 07:05:13 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLMp8-0004Qm-Di; Tue, 30 Apr 2019 07:05:07 +0000
X-UUID: 097c65216bc94b53ad744e4bde1932bd-20190429
X-UUID: 097c65216bc94b53ad744e4bde1932bd-20190429
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <yong.liang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 649377364; Mon, 29 Apr 2019 23:04:54 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 00:04:53 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 15:04:51 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 30 Apr 2019 15:04:51 +0800
From: Yong Liang <yong.liang@mediatek.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>, <matthias.bgg@gmail.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>, <drinkcat@chromium.org>,
 <weiyi.lu@mediatek.com>, <jamesjj.liao@mediatek.com>, <jasu@njomotys.info>,
 <owen.chen@mediatek.com>, <chunhui.dai@mediatek.com>, <erin.lo@mediatek.com>, 
 <eddie.huang@mediatek.com>, <p.zabel@pengutronix.de>
Subject: [PATCH v3 1/2] arm64: dts: mt8183: Add reset-cells in infracfg
Date: Tue, 30 Apr 2019 15:04:47 +0800
Message-ID: <1556607888-10301-1-git-send-email-yong.liang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_000506_471457_FC7378AF 
X-CRM114-Status: UNSURE (   7.95  )
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
Cc: "yong.liang" <yong.liang@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "yong.liang" <yong.liang@mediatek.com>

Include mt8183-resets.h and add reset-cells in infracfg
in dtsi file.

Signed-off-by: yong.liang <yong.liang@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 08274bf..2589e94 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/clock/mt8183-clk.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/reset-controller/mt8183-resets.h>
 
 / {
 	compatible = "mediatek,mt8183";
@@ -194,6 +195,7 @@
 			compatible = "mediatek,mt8183-infracfg", "syscon";
 			reg = <0 0x10001000 0 0x1000>;
 			#clock-cells = <1>;
+			#reset-cells = <1>;
 		};
 
 		apmixedsys: syscon@1000c000 {
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
