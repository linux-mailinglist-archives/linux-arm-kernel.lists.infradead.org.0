Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B5EC10C5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Sep 2019 14:09:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fsUpXqj0gBYadgWYdEsLEKiTZimxsVq/R3+PkEBRwyY=; b=B9t+/8iRtoC2+zHrESqmTI3vfV
	pN1e8qUoVx99FzFwGCopABIpek3Y24DBUmiFj4LeAhUnuWAu7mMIf9x1vPBdKnUtkDuEXcs2h9ahZ
	rS47pd3eZoE8etqDhNVKkZveoe+yP+ruOTguULkYJLhEw2jywuHDYULP2ZHQmBMrCUoXCiVFWcMJB
	jAsn85WMBUVq4yfv72FIFUolM6J9QK3kHW9C80rfLgj1l57crb8tgTzHYuBI16F2fxDFCSFflEZUL
	PgtRe1edYMm5XUIDdg8BbQQu1b85ICiqVBBotBsQjVIjyX1sByKyptgbesaoK951tlSfKOQ7Oj7bG
	HzKU4PXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEBXt-0008CW-Ep; Sat, 28 Sep 2019 12:09:53 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEBVv-0006Ze-Dt
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Sep 2019 12:07:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1569672461;
 bh=LcMfsnxhO6kOSa0AnNgyK4h2O4iLYDQzsFLyoMwIwo0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=LJMWIwR6fr4u/J0cYrsdwudckU5DsEl7uoVq3B3GnVHdVv3mPGTamGMc8yJohKfBr
 muhF4QzWMRkD8UqNeXRH+esr9ak1Fu/Z/yRLHRRPkqP+3GyxdvWOCKeEl0oBnEy42o
 5784rCn/75wCGNXLXMMzWLkrVpu65uSONrlNk3KQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.130]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MtwZ4-1htLIz3GRQ-00uM7d; Sat, 28 Sep 2019 14:07:37 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Subject: [PATCH V3 4/8] dt-bindings: arm: Convert BCM2835 board/soc bindings
 to json-schema
Date: Sat, 28 Sep 2019 14:07:10 +0200
Message-Id: <1569672435-19823-5-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:qCLesiR7aMyeuVf0Jo2XSEWUMK56WxEpBx6SzZOdv1TuiLRnkOp
 FU2nqvIFrW+ITQAWS8kh9iMcwjS6r9cSwLHjuNH7aD4DLf10a++s2QAGvO7i5/1MICdSume
 yEgpUfKnpBvtrociexzhl5NexVys3Q/1jCiIv4A2Eq4dGjBs6Th8iH0F+i33kG8gAMSDmiM
 5687Z+2Ok/TB6TB67OXkA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:x7zZ/15bT08=:WUtswYPaaSeE68BNhB9CCP
 L/xSpDqdwE4NSac3JJLPvxKG7Au2zdGeoyaFREbvnTXjHrb+LoV/Svg2YjFmE52EyCHNFiIoI
 2pZai13x9DeODRPC21U4NENOZGAh9gu/rIU7JpiWkTXMoqGDOXB3q9UrvRAJoTxBPDdW8yaDt
 W/osS1/yO6MgYRuwEQsI+q7w32e12JXRpqIpkfBrid/1ZkQZ0vMho+NLZhYolnY6tEmfPHxTB
 51lMSJtjNHMHSKKcoB4m2D6Pemv/W1N1SPznFyD+Fn2K8z+VPCmHRcXl2ZTcBprHy+jwHCMgL
 J9vBaVGpDtmr8oPt+qUy0xjQh8HgMBzxJnnAegJL9mvyx/rFKIYvRkykMVIHe7GNgrab4W9mU
 K3c2FF5NUWmcozYmXc17BKcUcy5Hd1itOh8VyXOeW+GksxQLt3bAGdExonjhYUyhEcDWEa+/W
 YEomW0pqpJ1lax2+BEbVaZg9pz9cxs3ETS1eqw7GxJV1p4pUT68hs4FTaFqVMR9NliWAhqn7u
 6ciS8l1jwDBoE0m4s/46PLSGka1IL7yjUK7hYKvdE28SBDPknZlNQyi0e5mNPGuGBTpI7CvsE
 irOSxEswBEjrAJkI08nwifuBRKCGCaNeKGMtasSWgYjtKel0FOAd0gvJqLTbNqlVLA+X/2Esp
 wCroaMwHI1/+TTuigklJHQxCygkfMC1khNxW3JNGMKJWfLyE/bG1nLlhukwQ0pSLbyn96JDfh
 dKYhCGQ5esvMIDV9SAdpWsOrL0hTFPDPBrNAHvXqxpJRUnD3GOdxXg4MCosB5M4cUqaF6ROX0
 2DuCwdC63sCHkX0XmsWurr5xiqjNEkC09pAi3J4ANFczaoc60J6BNYGHdwmJONNjPUthrdmWr
 vEZ9dQaQBSJ9qriwtw2t8fpBZe2nf7hqKigAD+CE6kv4yIB+RXNDFpJPWXNsBuhNs5jLOFewC
 7FPxVguy6x/ior3Ef8QxjLXRjpgA4rxyTrvFr12V9KtXokMzNROH7g5xcOGVvi0NG055bfJ/9
 n8OpmrWfYozG5YYYMigMJ4b4QI8GYJpL5nf6gtCInIMgCZe/90LAgbiX5XbIbIBQDwRehXr5a
 /MYLhPVeLqUGdP8RdYb+ziYArbJ3iDL/hgrqNw2jN72VvWuGgWiRG96/um9ViP86jUZn/mhhj
 pyteNH1nyTGme49r8/J3oKpNN1XzOMXSP8oPU1qM6X6IjNeK8A4I0/OD/TLZe1FD1s25hi8DC
 vwMhHYz2QqDfwx+Dx96lj2SorMZ/OTxv1wgr3bg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_050751_806185_F70847AF 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.18 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the BCM2835/6/7 SoC bindings to DT schema format using json-schema.
All the other Broadcom boards are maintained by Florian Fainelli.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Eric Anholt <eric@anholt.net>
---
 .../devicetree/bindings/arm/bcm/bcm2835.yaml       | 48 ++++++++++++++++
 .../devicetree/bindings/arm/bcm/brcm,bcm2835.txt   | 67 ----------------------
 2 files changed, 48 insertions(+), 67 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835.txt

diff --git a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
new file mode 100644
index 0000000..67bf9e2
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/bcm/bcm2835.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom BCM2711/BCM2835 Platforms Device Tree Bindings
+
+maintainers:
+  - Eric Anholt <eric@anholt.net>
+  - Stefan Wahren <wahrenst@gmx.net>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: BCM2835 based Boards
+        items:
+          - enum:
+              - raspberrypi,model-a
+              - raspberrypi,model-a-plus
+              - raspberrypi,model-b
+              - raspberrypi,model-b-i2c0  # Raspberry Pi Model B (no P5)
+              - raspberrypi,model-b-rev2
+              - raspberrypi,model-b-plus
+              - raspberrypi,compute-module
+              - raspberrypi,model-zero
+              - raspberrypi,model-zero-w
+          - const: brcm,bcm2835
+
+      - description: BCM2836 based Boards
+        items:
+          - enum:
+              - raspberrypi,2-model-b
+          - const: brcm,bcm2836
+
+      - description: BCM2837 based Boards
+        items:
+          - enum:
+              - raspberrypi,3-model-a-plus
+              - raspberrypi,3-model-b
+              - raspberrypi,3-model-b-plus
+              - raspberrypi,3-compute-module
+              - raspberrypi,3-compute-module-lite
+          - const: brcm,bcm2837
+
+...
diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835.txt b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835.txt
deleted file mode 100644
index 245328f..0000000
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835.txt
+++ /dev/null
@@ -1,67 +0,0 @@
-Broadcom BCM2835 device tree bindings
--------------------------------------------
-
-Raspberry Pi Model A
-Required root node properties:
-compatible = "raspberrypi,model-a", "brcm,bcm2835";
-
-Raspberry Pi Model A+
-Required root node properties:
-compatible = "raspberrypi,model-a-plus", "brcm,bcm2835";
-
-Raspberry Pi Model B
-Required root node properties:
-compatible = "raspberrypi,model-b", "brcm,bcm2835";
-
-Raspberry Pi Model B (no P5)
-early model B with I2C0 rather than I2C1 routed to the expansion header
-Required root node properties:
-compatible = "raspberrypi,model-b-i2c0", "brcm,bcm2835";
-
-Raspberry Pi Model B rev2
-Required root node properties:
-compatible = "raspberrypi,model-b-rev2", "brcm,bcm2835";
-
-Raspberry Pi Model B+
-Required root node properties:
-compatible = "raspberrypi,model-b-plus", "brcm,bcm2835";
-
-Raspberry Pi 2 Model B
-Required root node properties:
-compatible = "raspberrypi,2-model-b", "brcm,bcm2836";
-
-Raspberry Pi 3 Model A+
-Required root node properties:
-compatible = "raspberrypi,3-model-a-plus", "brcm,bcm2837";
-
-Raspberry Pi 3 Model B
-Required root node properties:
-compatible = "raspberrypi,3-model-b", "brcm,bcm2837";
-
-Raspberry Pi 3 Model B+
-Required root node properties:
-compatible = "raspberrypi,3-model-b-plus", "brcm,bcm2837";
-
-Raspberry Pi Compute Module
-Required root node properties:
-compatible = "raspberrypi,compute-module", "brcm,bcm2835";
-
-Raspberry Pi Compute Module 3
-Required root node properties:
-compatible = "raspberrypi,3-compute-module", "brcm,bcm2837";
-
-Raspberry Pi Compute Module 3 Lite
-Required root node properties:
-compatible = "raspberrypi,3-compute-module-lite", "brcm,bcm2837";
-
-Raspberry Pi Zero
-Required root node properties:
-compatible = "raspberrypi,model-zero", "brcm,bcm2835";
-
-Raspberry Pi Zero W
-Required root node properties:
-compatible = "raspberrypi,model-zero-w", "brcm,bcm2835";
-
-Generic BCM2835 board
-Required root node properties:
-compatible = "brcm,bcm2835";
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
