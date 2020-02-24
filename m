Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9948416A134
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:11:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tHbTVxxduDLMpa/y3TAmGoNcFn6fC0ZZaaRiEOiun78=; b=D7d6xvLMR6G24v
	7iH9SjTsD5ahkohE70rBZWhQwZ4iXL/+ttGl0eX4Jma1C+9C8Kk6HXCCupE+3VJcLSYetmS6CTaGd
	LcRZJVzkNTqTSrlsVroM0NSTLwvj/d8izZAJc/Soi2hsl2pW6DU2t3yRIEt9g7quKx3HaKi9sC2d3
	0q5oQ38BZ7Lm+SHN3AwZ9G1VAc23pGHEoWnaNLBUdGPE2y3OugN5/syPGGlZzHWgkDQMcsVIhl/CM
	WzMDGVG+JQ7IpoJgEa3ki3TCv8tyAG7tx/WXWlqEFxcA9XmMLf1iCNXlCSODa40bAfzxYJh8AG/hE
	gGq9Xg+cUnpM2E4ailcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69lw-0003vq-W2; Mon, 24 Feb 2020 09:11:29 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69ja-0001Qr-Ts; Mon, 24 Feb 2020 09:09:11 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 4CD3B4AB;
 Mon, 24 Feb 2020 04:08:56 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:08:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=MWuEelg9MTdO9
 PYjQ6DDeRPe8i75Vlfg90HjY3N5/Co=; b=lCZcMwQ8ILSRfPlSVJhwU2gCbZjpL
 wkiphS3LaiM8ihe7gPFmTMrSKM582Qz1BF9aMLBwzewJ9Ls70izbCJ8+pFK1DL4l
 6OLtC5EJE8kMxviGr8kjAY5/bRkfPRP8g54b8S4LejYJDzs1e5NTUEo0G4yR1YkS
 hr2MEr1Fzd8O3NnCB7rwl/j2B3YTeL8E3f8mtrJegYmmUmq/T3HYvcQWInJsulDL
 MfYy9zQaIiRYbKBNH6KGY+zEY3UBL2CyQo3aJXAMPewaX+BBDudaa0C4cz5wz4dm
 6Pb5wqUo4r2fvFMxAmV//1EzYo/seAcBxZPFWA9ikr8NyvMLY3AGXlD9g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=MWuEelg9MTdO9PYjQ6DDeRPe8i75Vlfg90HjY3N5/Co=; b=z0Pw8W/v
 JV+34kCfgps/S4Xac0oXvJR1N/jnjlsE0CQ/y6Jn3MTR1DdnTZyioa8xdP4kV+qH
 FrejhIdSm8YDMkHqblP77PxYUJMX9Y6s79Xzhk9PGyewZqMz9oV5APN/hB5TmRhe
 JgdLekuAYB+QlPVMzUzm6teTjpTnMQXgVav/faGrWMIttPtoOxmM2p9/QD/7i8xC
 QlPgYNvrKGQHZw9bn3Qd+akoXLdRfY9+d3AtcyHSMsT5xwwlvwxnrIzMypiGF1Aq
 aQY3AgXQgUGvEOf3+t/cjnpudUnjMokMO3GuyJKBIopqQCyVuMI03gyDcN/Lc6Ms
 TkRNLkc4aWYp3Q==
X-ME-Sender: <xms:o5JTXkhx-72TTdKGljILwh9TJ9YBki3SG5ECNXL4nG0DQ55TObhjXw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnegovehorg
 hsthgrlhdqhfeguddvqddtvdculdduhedtmdenucfjughrpefhvffufffkofgjfhgggfes
 tdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrgigihhmvg
 estggvrhhnohdrthgvtghhqeenucffohhmrghinhepuggvvhhitggvthhrvggvrdhorhhg
 necukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrg
 hrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:o5JTXnFLg_wvUzlKlyjZViXjdSy5sePp4-Qol9_rlunLIa4keSujVg>
 <xmx:o5JTXr8AtXffe_r6y8WebYzR1e2bTW-3Lct8AJYfTT_Jbu9qAdOQFA>
 <xmx:o5JTXmzmOXeIon-rNgQtuRTp-Mhb6coOA1fV_queZ1DfzHWHd0hd8w>
 <xmx:p5JTXolrE6rnd5x55Znx-r0HqXNSpSAHfpjcmjNV3Mm8XxFzu3_-8Ai3J2g>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0D3803060FCB;
 Mon, 24 Feb 2020 04:08:50 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 01/89] dt-bindings: i2c: brcmstb: Convert the BRCMSTB binding
 to a schema
Date: Mon, 24 Feb 2020 10:06:03 +0100
Message-Id: <6649111e9c585f267762bb6c6dd96128e5cfb4ba.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010903_021297_B810D770 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Wolfram Sang <wsa@the-dreams.de>, Kamal Dasu <kdasu.kdev@gmail.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-i2c@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch the DT binding to a YAML schema to enable the DT validation.

Cc: Kamal Dasu <kdasu.kdev@gmail.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Wolfram Sang <wsa@the-dreams.de>
Cc: bcm-kernel-feedback-list@broadcom.com
Cc: linux-i2c@vger.kernel.org
Cc: devicetree@vger.kernel.org
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/i2c/brcm,brcmstb-i2c.yaml | 59 +++++++-
 Documentation/devicetree/bindings/i2c/i2c-brcmstb.txt       | 26 +---
 MAINTAINERS                                                 |  2 +-
 3 files changed, 60 insertions(+), 27 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/i2c/brcm,brcmstb-i2c.yaml
 delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-brcmstb.txt

diff --git a/Documentation/devicetree/bindings/i2c/brcm,brcmstb-i2c.yaml b/Documentation/devicetree/bindings/i2c/brcm,brcmstb-i2c.yaml
new file mode 100644
index 000000000000..3189d74096e8
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/brcm,brcmstb-i2c.yaml
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i2c/brcm,brcmstb-i2c.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom STB BSC IIC Master Controller
+
+maintainers:
+  - Kamal Dasu <kdasu.kdev@gmail.com>
+
+allOf:
+  - $ref: /schemas/i2c/i2c-controller.yaml#
+
+properties:
+  compatible:
+    enum:
+      - brcm,brcmstb-i2c
+      - brcm,brcmper-i2c
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-names:
+    maxItems: 1
+
+  clock-frequency:
+    enum:
+      - 46875
+      - 50000
+      - 93750
+      - 97500
+      - 187500
+      - 200000
+      - 375000
+      - 390000
+
+required:
+  - compatible
+  - reg
+  - clock-frequency
+
+unevaluatedProperties: false
+
+examples:
+  - |
+      bsca: i2c@f0406200 {
+          clock-frequency = <390000>;
+          compatible = "brcm,brcmstb-i2c";
+          interrupt-parent = <&irq0_intc>;
+          reg = <0xf0406200 0x58>;
+          interrupts = <0x18>;
+          interrupt-names = "upg_bsca";
+      };
+
+...
diff --git a/Documentation/devicetree/bindings/i2c/i2c-brcmstb.txt b/Documentation/devicetree/bindings/i2c/i2c-brcmstb.txt
deleted file mode 100644
index 0380609b177a..000000000000
--- a/Documentation/devicetree/bindings/i2c/i2c-brcmstb.txt
+++ /dev/null
@@ -1,26 +0,0 @@
-Broadcom stb bsc iic master controller
-
-Required properties:
-
-- compatible: should be "brcm,brcmstb-i2c" or "brcm,brcmper-i2c"
-- clock-frequency: 32-bit decimal value of iic master clock freqency in Hz
-		   valid values are 375000, 390000, 187500, 200000
-		   93750, 97500, 46875 and 50000
-- reg: specifies the base physical address and size of the registers
-
-Optional properties :
-
-- interrupts: specifies the interrupt number, the irq line to be used
-- interrupt-names: Interrupt name string
-
-Example:
-
-bsca: i2c@f0406200 {
-      clock-frequency = <390000>;
-      compatible = "brcm,brcmstb-i2c";
-      interrupt-parent = <&irq0_intc>;
-      reg = <0xf0406200 0x58>;
-      interrupts = <0x18>;
-      interrupt-names = "upg_bsca";
-};
-
diff --git a/MAINTAINERS b/MAINTAINERS
index 38fe2f3f7b6f..9e45ed8be540 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3431,7 +3431,7 @@ L:	linux-i2c@vger.kernel.org
 L:	bcm-kernel-feedback-list@broadcom.com
 S:	Supported
 F:	drivers/i2c/busses/i2c-brcmstb.c
-F:	Documentation/devicetree/bindings/i2c/i2c-brcmstb.txt
+F:	Documentation/devicetree/bindings/i2c/brcm,brcmstb-i2c.yaml
 
 BROADCOM BRCMSTB USB2 and USB3 PHY DRIVER
 M:	Al Cooper <alcooperx@gmail.com>
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
