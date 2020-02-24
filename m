Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D49E16A276
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:38:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jfeQlWoow2l5ukuBiF9uoDBJ4XNgiN3NAwYK/xD8uWA=; b=cxtKv6LK/Gv66w
	uybJG9z+4at+Yk+lLJiOYxD1MHe6OAHI+7LgWybPJJHFseIBJEJ6hYcFR+ORSK7BkG5JD9kzZOUzz
	kn7gf9izW/GsBfXnESBz5XN7BhH+8IyFCjzuLxNxbV2gchqNXp88L8nWbGLMwvRrmMhOZYq89/PE0
	bDEcTn1bezwyf3xDoN5caW45A8EvoJLs1t26zB4XiFuDfo95jvvQUTjyGxavs1WAkj/567u9RnK3Y
	nstPEjmYEk5/ZBP21fRweo5gLlmRp12sTwFgzTO0Q6Wk1hFe5XtUwND0TtLcuZAgyINic80bccnlP
	AItJt6hZ+2EKvKqQBm5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ACE-0007NU-A6; Mon, 24 Feb 2020 09:38:38 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69lR-0003xH-TL; Mon, 24 Feb 2020 09:11:00 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 9C404616;
 Mon, 24 Feb 2020 04:10:56 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:10:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Oud9k5YAKLNlL
 n76NcHUsNmMIyu3RhEvhCjZPCxILhQ=; b=WysXComRQOrkzVlOkF0bcvuvALVz0
 rQ6dt34fmbM75rf+U5ZUnyHQiQRJWlMVRppvsg2UKvIl4jliYb4FFNsl7/hL/6yl
 vE8Ujrrk+msBRhzEd84CUO83HJnS+YNITQMxTcCRjG+POhHHCggMhdJ8GzQswaOj
 HXwFeOVPhfkL6UNu4A0ipulQMsfMpf9gjCGZpOieU8W5zwwBMI8DLVu/0NPLTzwF
 j6i1x4pz/i83EoZ0Jov3q2osUgvFSh8JidQ0T+wxjl6cowGLX2Lz6OMzZ/S5kUlr
 in+ofHGt2gtHJmYMBSq06ylie536CXk5aqsglvf+yCnyfulyNrBfiugQg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Oud9k5YAKLNlLn76NcHUsNmMIyu3RhEvhCjZPCxILhQ=; b=YaYzNuQK
 e2tA4DzVHpnZCSZ/pcCU+WKFrQCbAkUj7+RBEly3ZW4bsxpmp2gy6GCOnd4SSNbk
 DiMh1GCh/LXsEXnKS6ULsNH0imQIgzPi3WpNZ1UaZlKVdI/3gXL8br8Y7SONvPYY
 18SPhLedLxTpG2SR5FZOrrL+VnejS7zB50cDZ/HfVnvOURMEBARbdrvAv60wzlU8
 T/2zV0UjIeTwzsLpNrgxPbk3I4eVGfGxJCMLQnODxac/5mprfqQIe87GXqW5OXq9
 IQ6t2nOaSmzq+6MAaTuGtecdZxYCXQZ9aVIyDhVF/hfJ7V8G8kstQb7CGUdpLDXv
 hST4qG21pqODwg==
X-ME-Sender: <xms:IJNTXrmqQf_QmKhXHa6PLjCt_aWxZvKV-BlbJhq-yD_jEe0g-QCneA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepvdejnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:IJNTXnpW99XgU9_zmu5L0K7fm8deu1fwXREmL4BCu2FMCxXbZbg0sg>
 <xmx:IJNTXokoTthE2z8foRhGg-mPt2MqINc2aVoTZmgqPbdMqXaV6JYu6w>
 <xmx:IJNTXtKNcUjqF3p-1FtLBqwjwtxiHsroAciYrQvGEEkGvHV_WwQ1oQ>
 <xmx:IJNTXlovYgJyGoTx1wGLxT-WYZbyOT9NWY1e7qKKMp4gMjNBgdtk1pXgGa0>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id DDF17328005A;
 Mon, 24 Feb 2020 04:10:55 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 88/89] dt-bindings: display: vc4: hdmi: Add BCM2711 HDMI
 controllers bindings
Date: Mon, 24 Feb 2020 10:07:30 +0100
Message-Id: <4c21dda4f0b73977de1e54d408d7bf6bf3b6d238.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011058_010516_E2411967 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
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
 Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml | 118 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++------
 1 file changed, 109 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml
index 52b3cdac0bdf..a9d24e1cf684 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml
@@ -11,24 +11,58 @@ maintainers:
 
 properties:
   compatible:
-    const: brcm,bcm2835-hdmi
+    enum:
+      - brcm,bcm2835-hdmi
+      - brcm,bcm2711-hdmi0
+      - brcm,bcm2711-hdmi1
 
   reg:
+    oneOf:
+      - items:
+        - description: HDMI register range
+        - description: HD register range
+
+      - items:
+        - description: HDMI controller register range
+        - description: DVP register range
+        - description: HDMI PHY register range
+        - description: Rate Manager register range
+        - description: Packet RAM register range
+        - description: Metadata RAM register range
+        - description: CSC register range
+        - description: CEC register range
+        - description: HD register range
+
+  reg-names:
     items:
-      - description: HDMI register range
-      - description: HD register range
+      - const: hdmi
+      - const: dvp
+      - const: phy
+      - const: rm
+      - const: packet
+      - const: metadata
+      - const: csc
+      - const: cec
+      - const: hd
 
   interrupts:
     minItems: 2
 
   clocks:
-    items:
-      - description: The pixel clock
-      - description: The HDMI state machine clock
+    oneOf:
+      - items:
+        - description: The pixel clock
+        - description: The HDMI state machine clock
+
+      - items:
+        - description: The HDMI state machine clock
 
   clock-names:
-    items:
-      - const: pixel
+    oneOf:
+      - items:
+        - const: pixel
+        - const: hdmi
+
       - const: hdmi
 
   ddc:
@@ -51,15 +85,54 @@ properties:
   dma-names:
     const: audio-rx
 
+  resets:
+    maxItems: 1
+
 required:
   - compatible
   - reg
-  - interrupts
   - clocks
   - ddc
 
 additionalProperties: false
 
+if:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - brcm,bcm2711-hdmi0
+          - brcm,bcm2711-hdmi1
+
+then:
+  properties:
+    reg:
+      minItems: 9
+
+    clocks:
+      maxItems: 1
+
+    clock-names:
+      maxItems: 1
+
+  required:
+    - reg-names
+    - resets
+
+else:
+  properties:
+    reg:
+      maxItems: 2
+
+    clocks:
+      minItems: 2
+
+    clock-names:
+      minItems: 2
+
+  required:
+    - interrupts
+
 examples:
   - |
     #include <dt-bindings/clock/bcm2835.h>
@@ -77,4 +150,31 @@ examples:
         clock-names = "pixel", "hdmi";
     };
 
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
 ...
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
