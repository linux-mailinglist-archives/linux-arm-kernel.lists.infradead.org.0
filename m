Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD70519E7A7
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 22:49:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IAotUYbDTTqdK9rJv+4iAjhYFeke54r3sBBo6i2qCIo=; b=javNUX7X2Zng59
	KGXHdzbBJDg8dIaLt2AtNJARBSjxpooNU2vgwd7SUj/yZw6GYP0HSjQFuTHBIhB0gBnebUacVEl8+
	USHQafKRgVTq+cdB4um3ZcXJ5mxfif/vrxyGOp52DozFmtUWnxdxA0fayXKqkBDddaVC1MdRZqA3H
	ut8Oom2OXtndiY7zoc9EI7Oq1ovOkhsr5Iwku4pAx4B4CISMYRM4T8SeQTPbUHbetMJ59+ghMGEtl
	1j0hjSAMwSu7SSaom8C9+s23zSaPRdaiSmYnUFAPIn4aLSd+MYYomPSxmwOV/2DI2pOOpc18CCSON
	YqwLPXcL3fwVkVDyvYlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKpjS-00072G-2v; Sat, 04 Apr 2020 20:49:34 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKpj7-0006vG-4t
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Apr 2020 20:49:15 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 7778D5801D3;
 Sat,  4 Apr 2020 16:49:02 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Sat, 04 Apr 2020 16:49:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alistair23.me;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=KIJG0IcLzxmdwV/29oXvU5STaA
 F5Yt1sQAOEbJBudyg=; b=fwgHoggIwUNk27OoEb3usYPdeA9UCO0xb9BV76jWWy
 dLuWCX9T+VBcHNpivWvRCBaSLxJmHSFWfcVxy6BcaRBnquaMJhWcr7HP2LB0OupD
 ajqkX1w4xKcXIAvwkqwrSe30eVei42nWI0XWUaYXxNTCr242WyEUPxxI7EteHeRW
 7Pjv/DVXfGjqHD7+wQQ5ayiUkYwofUuZY2mCtgW8lcUBPDcQhWm0KCEOsjV7sSUJ
 k5FvMOweq1jyvTBZKa8eA9TUt4jGg8Tnjf8dbo1pwAL0TszwtNsxf6mzf89jhmfv
 ctfOfqqXMOtd0UtgMPk2EOa3xwWY6a95gFlWr1K7H7jg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=KIJG0IcLzxmdwV/29
 oXvU5STaAF5Yt1sQAOEbJBudyg=; b=YsKOgJsKal1FFidz1nafJNO9MUS4BeOsg
 ImS0Oul8/L/Ef9BTgMDusRFsa4PdvVu5000/AFykyjbuEqWiORva7uz7I1xbYi1h
 NBTC9uzaSLDHXguCRX6NK3RTn4QPKJTcT30aaInnL8R+oaac/6TnXQnyEu1DRZTJ
 x1yVG4+Oh8gj69jh+czllJihn/kpTAsE7QMobQyaSDkJwsqBGLs+mgYEqVaKLz7+
 KXjl5Zh1kNDcUxG0FY0XsG0E6QmAYO+iPhPNtyzTOukPSpZfx9kZ6vl2cvvnycjx
 w5TWkRREHXFh/KyhKf5L8/hHCBQQX6nZcgAkIrvSzb4IXolbgrikQ==
X-ME-Sender: <xms:vfKIXnnPLjQBsXhwm-4V265kssvsw8tP5tncSUhMuI8i4IKNrTk-9Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrtdekgdduheduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomheptehlihhsthgrihhrucfhrhgrnhgtihhsuceorghlihhsthgrihhr
 segrlhhishhtrghirhdvfedrmhgvqeenucffohhmrghinhepuggvvhhitggvthhrvggvrd
 horhhgnecukfhppeejfedrleefrdekgedrvddtkeenucevlhhushhtvghrufhiiigvpedt
 necurfgrrhgrmhepmhgrihhlfhhrohhmpegrlhhishhtrghirhesrghlihhsthgrihhrvd
 efrdhmvg
X-ME-Proxy: <xmx:vfKIXstkpaJa-1MGh_rbimMwU1cSzFNnDg_KzfBBeHR2K-qRoezmrw>
 <xmx:vfKIXix-fL9JOyrj1gXNXN9hbLv1kQL1gVy3cCQ-XOXiqjLmEjxRAQ>
 <xmx:vfKIXvypviPSGQNwsQnflgudlGWAFDMLoahNMvsNrmqKh8fgYVefGA>
 <xmx:vvKIXgwBPwApEj8zw3xESkszjG3zce-c12K7RhfKR_UfGR7hwa9wlg>
Received: from alistair-xps-14z.alistair23.me
 (c-73-93-84-208.hsd1.ca.comcast.net [73.93.84.208])
 by mail.messagingengine.com (Postfix) with ESMTPA id DD9663280065;
 Sat,  4 Apr 2020 16:48:59 -0400 (EDT)
From: Alistair Francis <alistair@alistair23.me>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, marcel@holtmann.org,
 johan.hedberg@gmail.com, linux-bluetooth@vger.kernel.org,
 mripard@kernel.org, wens@csie.org
Subject: [PATCH 1/3] dt-bindings: net: bluetooth: Add rtl8723bs-bluetooth
Date: Sat,  4 Apr 2020 13:48:48 -0700
Message-Id: <20200404204850.405050-1-alistair@alistair23.me>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_134913_326365_C622A47C 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Alistair Francis <alistair@alistair23.me>,
 linux-arm-kernel@lists.infradead.org, alistair23@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vasily Khoruzhick <anarsoul@gmail.com>

Add binding document for bluetooth part of RTL8723BS/RTL8723CS

Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
Signed-off-by: Alistair Francis <alistair@alistair23.me>
---
 .../bindings/net/realtek,rtl8723bs-bt.yaml    | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.yaml

diff --git a/Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.yaml b/Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.yaml
new file mode 100644
index 000000000000..9e212954f629
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.yaml
@@ -0,0 +1,56 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/realtek,rtl8723bs-bt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RTL8723BS/RTL8723CS Bluetooth Device Tree Bindings
+
+maintainers:
+  - Vasily Khoruzhick <anarsoul@gmail.com>
+  - Alistair Francis <alistair@alistair23.me>
+
+description:
+  RTL8723CS/RTL8723CS is WiFi + BT chip. WiFi part is connected over SDIO, while
+  BT is connected over serial. It speaks H5 protocol with few extra commands
+  to upload firmware and change module speed.
+
+properties:
+  compatible:
+    oneOf:
+      - "realtek,rtl8723bs-bt"
+      - "realtek,rtl8723cs-bt"
+
+  device-wake-gpios:
+    description:
+      GPIO specifier, used to wakeup the BT module (active high)
+
+  enable-gpios:
+    description:
+      GPIO specifier, used to enable the BT module (active high)
+
+  host-wake-gpios:
+    desciption:
+      GPIO specifier, used to wakeup the host processor (active high)
+
+firmware-postfix: firmware postfix to be used for firmware config
+reset-gpios: GPIO specifier, used to reset the BT module (active high)
+
+required:
+  - compatible
+
+examples:
+  - |
+    &uart1 {
+        pinctrl-names = "default";
+        pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
+        status = "okay";
+
+        bluetooth {
+            compatible = "realtek,rtl8723bs-bt";
+            reset-gpios = <&r_pio 0 4 GPIO_ACTIVE_LOW>; /* PL4 */
+            device-wake-gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>; /* PL5 */
+            host-wakeup-gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
+            firmware-postfix="pine64";
+        };
+    };
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
