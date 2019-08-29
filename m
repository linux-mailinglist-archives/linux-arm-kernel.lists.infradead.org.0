Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A9CA1DC1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 16:52:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=go/tjYxU4evaUYFuqeOocPJNxz6ddv3x3AjlRCqp8l4=; b=s+sw0O4SriWwLq
	yN31P+gtl1N00RL+58/QuK7mKdVQZ5muNatzJP7npaCjs33XivXEf++puKhxZk6pVqAqJQ/d2uX7g
	C+RyZyZcvRPmkp1J/2g27aaeyxcZmOHzfJoWECaomk9eL7r/LI+yhhn3gOPzNu6rq/T4H0FTXJbkW
	6Sho+LlCwqZwA44E+/pQpP4YHytf+XHwcKBcyKrGXiB7WhCgcMnnMQ6+zIwKqpRWMqP6AecH4isCG
	p/GraQpUduw3R06D9eZZdzB0xZYJkj/OH1c3DFuHJIzmNb5VYeAdQ2ImDI3/XWhVO3C7KDgPcN92n
	4atjjmGLls2+qIPyjWDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Lmd-0005sW-AY; Thu, 29 Aug 2019 14:52:19 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3LlY-0005ht-No; Thu, 29 Aug 2019 14:51:14 +0000
X-UUID: f4dacd49844d4a8a9acd715371209d3a-20190829
X-UUID: f4dacd49844d4a8a9acd715371209d3a-20190829
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1572378286; Thu, 29 Aug 2019 06:51:14 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 07:51:12 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 22:51:08 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 29 Aug 2019 22:51:07 +0800
From: <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, "Rob
 Herring" <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v5,
 01/32] dt-bindings: mediatek: add binding for mt8183 display
Date: Thu, 29 Aug 2019 22:50:23 +0800
Message-ID: <1567090254-15566-2-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: CD518F2D9425BB27412A521C8A4BF32488C9E74A8EAC953394182163C1A7FC1C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_075112_791108_77638E69 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yongqiang Niu <yongqiang.niu@mediatek.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yongqiang Niu <yongqiang.niu@mediatek.com>

Update device tree binding documention for the display subsystem for
Mediatek MT8183 SOCs

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
---
 .../bindings/display/mediatek/mediatek,display.txt  | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,display.txt

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,display.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,display.txt
new file mode 100644
index 0000000..951d2a8
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,display.txt
@@ -0,0 +1,21 @@
+Mediatek Display Device
+============================
+
+The Mediatek Display Device provides power control to the system.
+
+Required Properties:
+
+- compatible: Should be one of:
+	- "mediatek,mt8183-display"
+
+The Display Device power name are defined in
+include\dt-bindings\power\mt*-power.h
+
+
+Example:
+
+display_components: dispsys@14000000 {
+	compatible = "mediatek,mt8183-display";
+	reg = <0 0x14000000 0 0x1000>;
+	power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
+};
\ No newline at end of file
-- 
1.8.1.1.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
