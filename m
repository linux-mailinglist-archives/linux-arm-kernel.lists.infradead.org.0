Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F67B1B7B16
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 18:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uqb0XvW/3dFlPPAih7vhVihZp0jFIQqMAyUwmzlEK4A=; b=gPfg5LadJjHnLD
	zEaxq1fHnmrXOTsLG+TN9fIFlM4JcY3zXkjOHHaWvoo5equzRtMjr0/t89oh0GxIm2o1/x0Qry4dy
	jPe0Em0dVnU3u9x6f6XbV7fQxpPs+Cuyi9HTtHUXYfTJ7qnXqE8dAdlGS1+Gknup0bClkD2gdRgP6
	vBTVjzDcajVMqsDkCmHts81105zQ1ODstsff+9AZAmmjkv+xJkpDXPIebrCavET+RGAJ68cYrwmz/
	DtcD6KXIcjLvln4uctoQK4DCu3rw3DfnH5LPw5gEJuYGjWp9O2Zv3j9uDlhTjlnu+/S22z+mTQ43n
	kRzpsSdJ3YIwVNzimrfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0qB-0006Lu-Jy; Fri, 24 Apr 2020 16:06:11 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0OQ-0000aZ-8p; Fri, 24 Apr 2020 15:37:33 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 865171455;
 Fri, 24 Apr 2020 11:37:28 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:37:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=FzciRgntrUVjR
 Spnb+QBb61aDq9QNcaXOAvosXqRwQ4=; b=tMn5/e2AbkJ6Bb5qdDKg4MieCXMFO
 lfdC7gflTgzHbmol55bMIqkfSpxcwH+k/dkDafHxo7otMKs/m7bO6LU9cYiqpNtE
 UX2A/m0lRe363maqxwCaBQs3MeE0RLDTlgBfu6ep4DJgCJ/EvZt4UO9NP6UgkwAi
 rhJXagWyGlV6d6HmfnppNOn4TGo5iiDBaWDwPli75H4BmuTZ9R/MOrGIWr4vh15J
 aUmuVRM/20XC5n8VLH1eF3ccV8qY37u2VA5ojuxp0nF0nJC3yGYe1xfNbkCLlvjb
 OENaC0ZdkwVMG8cFmsar3IoQSabr1emYFFkWBZ+PvfzFIHAsqGdepOTGA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=FzciRgntrUVjRSpnb+QBb61aDq9QNcaXOAvosXqRwQ4=; b=PeBuWruY
 GWa+BZy+5wtBqhfWMDD5PObCbstHMQRwKb2dnTHLGPyaICg8w1L+v5rigOHfKWTy
 FHRLkdToLbdokqhSTA9OnWJltIMvffbRtHoVpyCktRrxKRCCrEkDtupVKQ7dtWqh
 osXwvz3o75dXA/AZPgn/Y8VJgAXwTY6zsYxjuJISwQKsZufb5pmRgrl/0ZXcjKVn
 n6vwLy6O4Ypag0FnHqaiOaUwS4PC4wKa7gyr6BQxXV19gKATO4/YmzqQsRj5D87D
 w5hisOlHyqNIT710jnU6NsCp14GGfDW1p+pHkYZYa1DQwaP7bY1WYh0JfGf7I9RG
 Y3d+xGTW+UR1pA==
X-ME-Sender: <xms:twejXlpcHRijjQR8D9MlPfFte0qze1gvw1ngdSB1gn4W9CToVgP7YA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
 evohgrshhtrghlqdfhgeduvddqtddvucdludehtddmnecujfgurhephffvufffkffojghf
 ggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgi
 himhgvsegtvghrnhhordhtvggthheqnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdr
 ohhrghenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedvne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:uAejXr4jlnVoWFqxG0QkCIaycK4lDjqDxfh6QmrjCAcwb-UusblkYw>
 <xmx:uAejXtPY3G1bAzgIIHZg6hYx4hyGkzgu2s6sUpliucpKrhvTo_QHNA>
 <xmx:uAejXlPtWB0ldfXuC5sUrhvwtQzZRtB6XUAXodyR2NqNqSJU-PfNmw>
 <xmx:uAejXlVUoA317VBkUWodXQqqEWSeRA9KzRmcUMgW2dG6U1RGjdve3dWtrdQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B1D81328005E;
 Fri, 24 Apr 2020 11:37:27 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 90/91] dt-bindings: display: vc4: hdmi: Add BCM2711 HDMI
 controllers bindings
Date: Fri, 24 Apr 2020 17:35:11 +0200
Message-Id: <9bdee4024b3f95bed9b55c642f0f9415c22fc506.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083730_387521_16954ACE 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The HDMI controllers found in the BCM2711 SoC need some adjustments to the
bindings, especially since the registers have been shuffled around in more
register ranges.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml | 109 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 109 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
new file mode 100644
index 000000000000..6091fe3d315b
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
@@ -0,0 +1,109 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/brcm,bcm2711-hdmi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom BCM2711 HDMI Controller Device Tree Bindings
+
+maintainers:
+  - Eric Anholt <eric@anholt.net>
+
+properties:
+  compatible:
+    enum:
+      - brcm,bcm2711-hdmi0
+      - brcm,bcm2711-hdmi1
+
+  reg:
+    items:
+      - description: HDMI controller register range
+      - description: DVP register range
+      - description: HDMI PHY register range
+      - description: Rate Manager register range
+      - description: Packet RAM register range
+      - description: Metadata RAM register range
+      - description: CSC register range
+      - description: CEC register range
+      - description: HD register range
+
+  reg-names:
+    items:
+      - const: hdmi
+      - const: dvp
+      - const: phy
+      - const: rm
+      - const: packet
+      - const: metadata
+      - const: csc
+      - const: cec
+      - const: hd
+
+  clocks:
+    description: The HDMI state machine clock
+
+  clock-names:
+    const: hdmi
+
+  ddc:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/phandle
+    description: >
+      Phandle of the I2C controller used for DDC EDID probing
+
+  hpd-gpios:
+    description: >
+      The GPIO pin for the HDMI hotplug detect (if it doesn't appear
+      as an interrupt/status bit in the HDMI controller itself)
+
+  dmas:
+    maxItems: 1
+    description: >
+      Should contain one entry pointing to the DMA channel used to
+      transfer audio data.
+
+  dma-names:
+    const: audio-rx
+
+  resets:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - resets
+  - ddc
+
+additionalProperties: false
+
+examples:
+  - |
+    hdmi0: hdmi@7ef00700 {
+        compatible = "brcm,bcm2711-hdmi0";
+        reg = <0x7ef00700 0x300>,
+              <0x7ef00300 0x200>,
+              <0x7ef00f00 0x80>,
+              <0x7ef00f80 0x80>,
+              <0x7ef01b00 0x200>,
+              <0x7ef01f00 0x400>,
+              <0x7ef00200 0x80>,
+              <0x7ef04300 0x100>,
+              <0x7ef20000 0x100>;
+        reg-names = "hdmi",
+                    "dvp",
+                    "phy",
+                    "rm",
+                    "packet",
+                    "metadata",
+                    "csc",
+                    "cec",
+                    "hd";
+        clocks = <&firmware_clocks 13>;
+        clock-names = "hdmi";
+        resets = <&dvp 0>;
+        ddc = <&ddc0>;
+    };
+
+...
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
