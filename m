Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3C53215C
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Jun 2019 03:04:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iv3uHQmzB6S6DyPwPQM6/olG2tGfrAxSGLNVZ+ZnsX4=; b=VcmJ7vTc1JCBHj
	JC6lMJxsXTMWQLxpN6Z5paMMLC5MlSvnQ0eIhSf9uDu6wqBZPUZYgO8/QoSbJCQlGrP7azwjfAN0y
	gncdLnZZsbraucHxIiF3b0HeNhjYvvuOwaa1O614Ib0f7WRf9V+BAvFgwpJjqmxzz78knHLLEYGiz
	L5GdvWXLK+VxEVEg+DKfqjZl90Udf1T/1t6eiloySLMIyLimHZlcOYp7LTiI6sM1v1KtHc4y7T9v/
	LUEOBkr7IyYZMK+nbU0lc3shZBF3q+Ec/WTNYhu6L5SCnpwDVqmGJVpN/EHvPKzkYUBplfT9V0L2M
	WSPZHjpSYqSXcYgZQiLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXEvX-0000Hp-Oj; Sun, 02 Jun 2019 01:04:47 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXEvG-00009R-W4; Sun, 02 Jun 2019 01:04:32 +0000
X-UUID: a0fed3cef6c3437c94085f8759fc446f-20190601
X-UUID: a0fed3cef6c3437c94085f8759fc446f-20190601
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <sean.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 697020393; Sat, 01 Jun 2019 17:04:23 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 1 Jun 2019 18:04:21 -0700
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Sun, 2 Jun 2019 09:04:20 +0800
From: <sean.wang@mediatek.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>, <marcel@holtmann.org>,
 <johan.hedberg@gmail.com>
Subject: [PATCH v1 1/4] dt-bindings: net: bluetooth: add boot-gpios property
 to UART-based device
Date: Sun, 2 Jun 2019 09:04:14 +0800
Message-ID: <1559437457-26766-2-git-send-email-sean.wang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1559437457-26766-1-git-send-email-sean.wang@mediatek.com>
References: <1559437457-26766-1-git-send-email-sean.wang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_180431_030733_2BD65911 
X-CRM114-Status: UNSURE (   8.51  )
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
Cc: devicetree@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sean Wang <sean.wang@mediatek.com>

Not every platform has the pinctrl device integrates the GPIO the function
such as MT7621 whose pinctrl and GPIO are separate hardware so adding an
additional boot-gpios property for such platform allows them to bring up
the device.

Signed-off-by: Sean Wang <sean.wang@mediatek.com>
---
 .../devicetree/bindings/net/mediatek-bluetooth.txt  | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/mediatek-bluetooth.txt b/Documentation/devicetree/bindings/net/mediatek-bluetooth.txt
index 41a7dcc80f5b..14f23b354a6d 100644
--- a/Documentation/devicetree/bindings/net/mediatek-bluetooth.txt
+++ b/Documentation/devicetree/bindings/net/mediatek-bluetooth.txt
@@ -50,11 +50,24 @@ Required properties:
 		  "mediatek,mt7663u-bluetooth": for MT7663U device
 		  "mediatek,mt7668u-bluetooth": for MT7668U device
 - vcc-supply:	Main voltage regulator
+
+If the pin controller on the platform can support both pinmux and GPIO
+control such as the most of MediaTek platform. Please use below properties.
+
 - pinctrl-names: Should be "default", "runtime"
 - pinctrl-0: Should contain UART RXD low when the device is powered up to
 	     enter proper bootstrap mode.
 - pinctrl-1: Should contain UART mode pin ctrl
 
+Else, the pin controller on the platform only can support pinmux control and
+the GPIO control still has to rely on the dedicated GPIO controller such as
+a legacy MediaTek SoC, MT7621. Please use the below properties.
+
+- boot-gpios:	GPIO same to the pin as UART RXD and used to keep LOW when
+		the device is powered up to enter proper bootstrap mode when
+- pinctrl-names: Should be "default"
+- pinctrl-0: Should contain UART mode pin ctrl
+
 Optional properties:
 
 - reset-gpios:	GPIO used to reset the device whose initial state keeps low,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
