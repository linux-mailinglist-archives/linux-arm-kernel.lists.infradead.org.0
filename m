Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F885916E2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 18 Aug 2019 15:57:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=D9xa7YXdUxg/IAka3BWAfUd0bf5FZ8SaaAbs6AVs30c=; b=llylCkoebjd0r2aj8w+9WAHMR0
	dNBQ1kq0p+YddNiuCiiYjOMctIpFlV+03XmH5lKQxp/Pqxx3rgXBMUsJLOLHFLWXdV9+SlDSwsbjY
	hbsGjSjOxk3UziGBxY/Nyrsw0LHv5RhBYBENnGUIlmbt2XUnfoBp49pA5PPQdYFD8KA4k+wy82EC7
	Ry5y54OrqJgYHz8Z/51sjxTF+dELI2Lata1kA31Ne2PUI6OD68KwbTz8r9ww6SOBO5FHz+eP8VcWG
	awsibmaym3a3gkUgtwX4QiroHGmYlBgRBem0xI8CZoucnBKuT12aW4ydvUm8N76t2TAv7Yhn4jElZ
	pfS7SOTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzLgX-0006Te-P8; Sun, 18 Aug 2019 13:57:29 +0000
Received: from mxwww.masterlogin.de ([2a03:2900:1:1::b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzLfb-0005wN-TN; Sun, 18 Aug 2019 13:56:33 +0000
Received: from mxout2.routing.net (unknown [192.168.10.82])
 by new.mxwww.masterlogin.de (Postfix) with ESMTPS id 2897096DF2;
 Sun, 18 Aug 2019 13:56:25 +0000 (UTC)
Received: from mxbox3.masterlogin.de (unknown [192.168.10.253])
 by mxout2.routing.net (Postfix) with ESMTP id 738156207B;
 Sun, 18 Aug 2019 13:56:25 +0000 (UTC)
Received: from localhost.localdomain (fttx-pool-185.53.43.183.bambit.de
 [185.53.43.183])
 by mxbox3.masterlogin.de (Postfix) with ESMTPSA id AA8F336008B;
 Sun, 18 Aug 2019 15:56:24 +0200 (CEST)
From: Frank Wunderlich <frank-w@public-files.de>
To: linux-mediatek@lists.infradead.org
Subject: [PATCH v6 03/13] dt-bindings: mfd: mediatek: add mt6323
 power-controller
Date: Sun, 18 Aug 2019 15:56:01 +0200
Message-Id: <20190818135611.7776-4-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190818135611.7776-1-frank-w@public-files.de>
References: <20190818135611.7776-1-frank-w@public-files.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_065632_254308_BEAF820D 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a03:2900:1:1:0:0:0:b listed in] [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Sean Wang <sean.wang@mediatek.com>,
 "linux-arm-kernel @ lists . infradead . org Alessandro Zummo"
 <a.zummo@towertech.it>, linux-pm@vger.kernel.org,
 Frank Wunderlich <frank-w@public-files.de>,
 Josef Friedl <josef.friedl@speed.at>, linux-kernel@vger.kernel.org,
 Tianping Fang <tianping.fang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 Sebastian Reichel <sre@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>, Eddie Huang <eddie.huang@mediatek.com>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Josef Friedl <josef.friedl@speed.at>

- add powercontroller-section to existing binding-document
- add mt6323-pwrc bindings-document with example

Suggested-by: Frank Wunderlich <frank-w@public-files.de>
Signed-off-by: Josef Friedl <josef.friedl@speed.at>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
---
changes since v5: split out non-pwrc related changes
changes since v4: none
changes since v3: none
changes since v2: none (=v2 part 7)
---
 .../devicetree/bindings/mfd/mt6397.txt        |  6 ++++++
 .../bindings/power/reset/mt6323-poweroff.txt  | 20 +++++++++++++++++++
 2 files changed, 26 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt

diff --git a/Documentation/devicetree/bindings/mfd/mt6397.txt b/Documentation/devicetree/bindings/mfd/mt6397.txt
index 5fccf987865b..a9b105ac00a8 100644
--- a/Documentation/devicetree/bindings/mfd/mt6397.txt
+++ b/Documentation/devicetree/bindings/mfd/mt6397.txt
@@ -8,6 +8,7 @@ MT6397/MT6323 is a multifunction device with the following sub modules:
 - Clock
 - LED
 - Keys
+- Power controller
 
 It is interfaced to host controller using SPI interface by a proprietary hardware
 called PMIC wrapper or pwrap. MT6397/MT6323 MFD is a child device of pwrap.
@@ -48,6 +49,11 @@ Optional subnodes:
 		- compatible: "mediatek,mt6397-keys" or "mediatek,mt6323-keys"
 	see ../input/mtk-pmic-keys.txt
 
+- power-controller
+	Required properties:
+		- compatible: "mediatek,mt6323-pwrc"
+	For details, see ../power/reset/mt6323-poweroff.txt
+
 Example:
 	pwrap: pwrap@1000f000 {
 		compatible = "mediatek,mt8135-pwrap";
diff --git a/Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt b/Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt
new file mode 100644
index 000000000000..933f0c48e887
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt
@@ -0,0 +1,20 @@
+Device Tree Bindings for Power Controller on MediaTek PMIC
+
+The power controller which could be found on PMIC is responsible for externally
+powering off or on the remote MediaTek SoC through the circuit BBPU.
+
+Required properties:
+- compatible: Should be one of follows
+       "mediatek,mt6323-pwrc": for MT6323 PMIC
+
+Example:
+
+       pmic {
+               compatible = "mediatek,mt6323";
+
+               ...
+
+               power-controller {
+                       compatible = "mediatek,mt6323-pwrc";
+               };
+       }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
