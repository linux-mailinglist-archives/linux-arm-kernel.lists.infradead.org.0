Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A54E1B799D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:36:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y9ZYHVQJCFbQpwXq2XLekcV/vOKDtkFiYQAJDBgWXco=; b=dtRo+mktNyFsXg
	CPKKjbNsROOQcSxkgA9sjf8kYMuIqp3KVt3dqlZnKRWn4az/vtyPEU1rMJIkNTPkcyWw+I4RTnTjq
	OZ4IKcPhh2cvSRpEMLciTQ8adQljgTCThKxL3nk1cRriFiFe8TlG5zRwrqI3QpQjmQgPD7rsJDdXL
	DiUOEckLYBQWfXyTBWH+xNW8pggCW5zcdVWCeTrl36gI8/8XyEq3lj40c9vHPNLvkxXLI9jWjgPa/
	MwdPg2kMFezzh8RV7ZjLtCeR0s8Tm/KMj1DsIKu14U0/WEbWpqX5Y2LwJmpI0N0xt61fWHjGQ3JTy
	S1jD76zJ/eBC7//jyxNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0Mo-0007RY-6l; Fri, 24 Apr 2020 15:35:50 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0MX-0007Nz-AE; Fri, 24 Apr 2020 15:35:35 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id DB4EDEB7;
 Fri, 24 Apr 2020 11:35:25 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:35:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Br6jNHTz2Qqeu
 hVMkqvSgmOdnA/EpKz1fVYzAs6ZIJ8=; b=lfBsM9lr8B58WUs5LOQy8+Dy5WUeu
 hPJifN5RjOm8b1Lhl54X5WE6eB7CmT7Bn3LFs+ZTMnbsgBBF/jIBPBDuBil3/5w2
 ylRvb7qbCry6XDvt+jorgFUPSDKvYEvuJA9oRZUyhBQJk8IadxrsEL+KGQtCZ9Ig
 5AHD2mlSDwqM+4/fXCueEeOFYap2+DBx4qzXCxEkgsF7Y27L2vMCsAH9oKgBYfOG
 AAYN/ctIfkfXFEnSqQUufVCvQA+LDG5I1vqP3hQmCYphzAhanGPpV4UFENA98SUD
 hdGE+t1pvJIcA47tFhjcO3HB8UASoJICmkJIgFu6NXH/CFI5oLYUQBUcw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Br6jNHTz2QqeuhVMkqvSgmOdnA/EpKz1fVYzAs6ZIJ8=; b=QRxftHsr
 u7VmOmy4iZfCs33XnJfmS4vejyPV7d7Uk+XJcBBhA6ruTYFyX4UQ7Ff7LwrexQtk
 nP+MQ87zWmvUhJpP5XRotzx42Ph5L8G3KIboSu9hABsa3FWHmFu6z/jlvq+/ouob
 m5PdfEAt/uwbyeJSfMmGHj636X+JPqpomZqBBWctFzUPnXil16arXYcfkNzj78mb
 sfl3tZKX1c2lZMSnsfRnxkgBrDFmbcrGU7r7860LGnWj7nIPKIRL8szgWwIM1xp+
 Zolz007hA0tVLQ3TGzSVvVRT4ffsNVofnBz9JwMWAp2mD5N3/SaKcBDBsD+6D/Bg
 QGu0H7JoZT6Wkw==
X-ME-Sender: <xms:PQejXlftwGQ177D55NSS-EaLTVKFxSSSkmHWlzMiTzI78gH6hq2kqw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
 evohgrshhtrghlqdfhgeduvddqtddvucdludehtddmnecujfgurhephffvufffkffojghf
 ggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgi
 himhgvsegtvghrnhhordhtvggthheqnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdr
 ohhrghenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:PQejXnR7SdLUD0Q8550lOrbKiyCHuI6HvUG7FmAI9plVFSbvzpZz2Q>
 <xmx:PQejXvqtbGvsP8ghq0Z5laapMVGOAElAuMEkf34_h5xgkKWRRsTZFw>
 <xmx:PQejXoUN9bDc8qGNvvOGIQpyIn5vNT2Li3wzcj0jFWqSKBN8SZWMwQ>
 <xmx:PQejXmL_tR172-p7xbbFtZwMuhfi-G1qkx3Nh2BqgGxISsMZZPBgCfQwINc>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 20975328006A;
 Fri, 24 Apr 2020 11:35:25 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 02/91] dt-bindings: arm: bcm: Convert BCM2835 firmware
 binding to YAML
Date: Fri, 24 Apr 2020 17:33:43 +0200
Message-Id: <d99b37ae8684865656bbc941a12596d13f01dd88.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083533_415751_855BB1A8 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Florian Fainelli <f.fainelli@gmail.com>

Convert the Raspberry Pi BCM2835 firmware binding document to YAML.
Verified with dt_binding_check and dtbs_check.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.txt  | 14 --------------
 Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml | 35 +++++++++++++++++++++++++++++++++++
 2 files changed, 35 insertions(+), 14 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml

diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.txt b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.txt
deleted file mode 100644
index 6824b3180ffb..000000000000
--- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.txt
+++ /dev/null
@@ -1,14 +0,0 @@
-Raspberry Pi VideoCore firmware driver
-
-Required properties:
-
-- compatible:		Should be "raspberrypi,bcm2835-firmware"
-- mboxes:		Phandle to the firmware device's Mailbox.
-			  (See: ../mailbox/mailbox.txt for more information)
-
-Example:
-
-firmware {
-	compatible = "raspberrypi,bcm2835-firmware";
-	mboxes = <&mailbox>;
-};
diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
new file mode 100644
index 000000000000..cec540c052b6
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/bcm/raspberrypi,bcm2835-firmware.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Raspberry Pi VideoCore firmware driver
+
+maintainers:
+  - Eric Anholt <eric@anholt.net>
+  - Stefan Wahren <wahrenst@gmx.net>
+
+properties:
+  compatible:
+    items:
+      - const: raspberrypi,bcm2835-firmware
+      - const: simple-bus
+
+  mboxes:
+    $ref: '/schemas/types.yaml#/definitions/phandle'
+    description: |
+      Phandle to the firmware device's Mailbox.
+      (See: ../mailbox/mailbox.txt for more information)
+
+required:
+  - compatible
+  - mboxes
+
+examples:
+  - |
+    firmware {
+        compatible = "raspberrypi,bcm2835-firmware", "simple-bus";
+        mboxes = <&mailbox>;
+    };
+...
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
