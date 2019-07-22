Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2564D70677
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 19:09:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qKETtM8dffOd1Ej21gUCB16+UDdVwQ0T7Mqid6TINTQ=; b=cfw
	oPq0ii1iwabxdgiOE0vWdGH29rdv2Ny199IrkxUF9so0YFUVdMHsU191BX7py/nH0s/Z34J+KYJ2F
	+3jPEjJ9v8Pctc3nRBFKEZNtkprQibQbGM2M8i78hUuCznBFjz9WPwbkV4d2Yhrv74LabC325gTgN
	KLu8VDGioroFgCQJ/DxJpCvSPPR6072cIk843PnNxwqwsJZRT23EInrXX5YZBoVJTIzhBa2zKbUQt
	x/fw0BOLvBp/h5L0JejBktLae+YnRjvwR202onV78dfKLaF36WYBRbjA1BJ07V2lKS3xMK3pt7uca
	rQi41BfDcVFmgI3aAjhBmTmolc8VH4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpboB-0002qh-Tr; Mon, 22 Jul 2019 17:09:08 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpbnT-0002YK-9f; Mon, 22 Jul 2019 17:08:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563815283;
 bh=RvH7nQF7Ul4xhBjPYxybJf+PkfOOFW9bdxdIzx6qwCU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=LbHMHAzCJH2toIrC0Ng+Jl2XTmmpJv+n4wIDr5ZAAIpDr51z5l1w8LT4c4dIVFzWv
 qUjnh6CQka5BDEKM9S0DZyWnE7HFYqXoL7L+6ug/eFfKhPNwcyY/P54K4OqUnZ6xaf
 u3qoBLDEmQOzlZxEFCurIjegQf40KXiya9u0w7P8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.131]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0LwJko-1iUccG3pok-017z03; Mon, 22 Jul 2019 19:08:03 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Matthias Brugger <mbrugger@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH 13/18] dt-bindings: arm: Convert BCM2835 board/soc bindings to
 json-schema
Date: Mon, 22 Jul 2019 19:07:32 +0200
Message-Id: <1563815257-2648-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:e/EFY+cnEb5FAJqNuZ+nYlRoYfTIDfYwVTNRovuSMgvoPhIOD+Y
 Pye1trVVUVTSU0Sh6e6rVHZx7TxpR1mSSh5dPewUukGAk/eiexeOIQYGEyeFdS7d6jleGbC
 iKhv1v9GK/tnPqGDC4vINZRrr0/tJ/pvRz+i4KAC+08yIYyTwwMofGoJuf3jZex/DtNiKxZ
 LnmEwbIMORMnhS9RJ2sHw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:HpbA/KTLjeI=:nP8md4F9HwaGyJdlmrQ8wY
 6CEhm3yPtJZi4uV2orB8QEmiBlkf7KEF/3G6ot0Ic+Tg+p3d+vg67h0YC4QCZhXzKm+YZZ+Uz
 lNLcpeiQAS+zjD1u/6amSUe2DL9tm2ewoWhuyP/5rt8I50SHpqodrECV3swZO5Pi4Pd8KRmWv
 VObBoXU3m+qKRmm2wKjYkKg+d7WdEIpA0F0PqQQDAXLofoPRfWmxm4fWtQnN/AZAKK6+wEd1x
 4OYN3mmWAwlLnWJKVITJsRMG44gSSGl90zjviZx5liK3CRp07fE99Kq1EiPLiAtrCnH3i5rkQ
 lVzhqGW/0H6/NXjIi2OnebbRFsEI3igXLhEelCYtsfk+Smm7b0ydGEidtxeaRE2QtVwGU5g6I
 RZ+6rUyLaKV50wdmsBXGFTcKgi7urHmFGEc/kjlw+FR4gOOaEdeVobyjnXc5UUKEPjSDHaH+n
 Y0hXOCbPmj3BOx5Wryh/FWWniXdvDqo0cVthW5Mp8uw6b0Ego0ACJJCywJisZIq9uhIUclWML
 zj8sboJ5QVBWxviShcXHe75WeFIqK+Rp0e+9WY+et3kfK9NO/LF3T0qqbZp1hHz6qYbJPf11W
 YmXF//UDMBjrSv1OfzTNp7+9bOmjZA4a6VgyEbPcakrOLXO76p5c/w8P+0uAcB4oHB/l6J7dJ
 6V6N0C4bx58Dz8YS3laJvF8pEtoSOK9wntFWjqDrSUxXihLhHlKH66L0jrti/KEtUiQ3olPIr
 lNdlyDRWENoyK7SRbE/GddCyOSwVbB46QSGdIZQQuW3M3F7cLv2Rnrs5Ci3MVOkRJrHMWe+H7
 xOOQ+4aOpfxRj728V+PUVwGdQpVHfxFQgvlKuamG74GNwb1hcRLBUTs7jIQakcJaoplzmFIIO
 cuiaEyM3RtGHBrGg2qyShGRCNnlclCvOJ4dFbHdoN38OInhlBfTLnqAUx7HnNmh9K8ub7aqNn
 /EXGZmtS//CNBXnmxLU1dRoAWByMV8LhbhTGj2rwjXPcMyTyR8mhc9YLbLy17KDPBDQH9FiBK
 ISZuP3x4KP1yDEeOuZ4dJ84OX6vUlAJNhrBfLblOexGXhLRBN+dKp0F2DOTmq0/uz4wHEBhBX
 As8jYUm5ORPhU8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_100823_675823_11881431 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the BCM2835/6/7 SoC bindings to DT schema format using json-schema.
All the other Broadcom boards are maintained by Florian Fainelli.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 .../devicetree/bindings/arm/bcm/bcm2835.yaml       | 46 +++++++++++++++
 .../devicetree/bindings/arm/bcm/brcm,bcm2835.txt   | 67 ----------------------
 2 files changed, 46 insertions(+), 67 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835.txt

diff --git a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
new file mode 100644
index 0000000..1a4be26
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
@@ -0,0 +1,46 @@
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
+
+      - description: BCM2837 based Boards
+        items:
+          - enum:
+              - raspberrypi,3-model-a-plus
+              - raspberrypi,3-model-b
+              - raspberrypi,3-model-b-plus
+              - raspberrypi,3-compute-module
+              - raspberrypi,3-compute-module-lite
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
