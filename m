Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA941697AB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 14:15:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KWvH6T4FLE8K60jTtLDDg94Xc7N2TAQJxCuQdKWfBM4=; b=c3G1cm7fHmD2+u
	2k9MCYTlU5z26GChV2JUNCDgAItXfB1FXXJR0SelCK/haQvDKUa3rLtOWZs9/ZucuJDpw/eyai1U3
	odSpI+3bdNzwWtwIl8tVCq9Q8kpZHZMD/9QKgSruzlRUe+yR/fSmvO3zp/IDCUUZBzKq82W56rY7I
	p2CEtUbPxofS3bZJ4Kb3liqwfwupDmEnZQFrn0rDNrpsRtox+SOxbLqin1/+Tihy9E301Qlw6biax
	LTvFZp01pqvD7Zjitmee5SosOdghcUJUV5Lxtx6xpUXVMHtMCtAhOCBLJu5rgc/x4JWRGmb1N7817
	z5fFPNlw/XZa9dVPdIFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5r6v-00064o-BD; Sun, 23 Feb 2020 13:15:53 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5r5v-00049J-IC
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 13:14:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582463688; bh=54xRUvTGkyMdNnk2rkB4/jjx5Pxs9Bu2zPWHTbo071c=;
 h=From:To:Cc:Subject:Date:References:From;
 b=Fx68tUzrMaT6Zx3ogeXuS/EuwQ/VR0ubxBgXvpNRbq2SWOrAY0bPpSM9f1lhlSbYu
 kAuBvr+0OHOjhyVClPIvqc247aXGz9ytldoXD4bs6Drr632oAP4KbvS9dfjDYXU5bd
 ih4c6a4n5lWwEzMwvrMJMsmKmEgPythG0hxvhEDM=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Dan Murphy <dmurphy@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>
Subject: [PATCH 1/4] dt-bindings: leds: Add a binding for AXP813 charger led
Date: Sun, 23 Feb 2020 14:14:32 +0100
Message-Id: <20200223131435.681620-2-megous@megous.com>
In-Reply-To: <20200223131435.681620-1-megous@megous.com>
References: <20200223131435.681620-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_051451_947857_7D1A4016 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Lee Jones <lee.jones@linaro.org>,
 linux-leds@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The AXP813 PMIC can control one LED. Add binding to represent the LED.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 .../devicetree/bindings/leds/leds-axp20x.yaml | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/leds/leds-axp20x.yaml

diff --git a/Documentation/devicetree/bindings/leds/leds-axp20x.yaml b/Documentation/devicetree/bindings/leds/leds-axp20x.yaml
new file mode 100644
index 0000000000000..79282d55764bf
--- /dev/null
+++ b/Documentation/devicetree/bindings/leds/leds-axp20x.yaml
@@ -0,0 +1,24 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/leds/leds-axp20x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: LED driver for AXP813 PMIC from X-Powers.
+
+maintainers:
+  - Ondrej Jirman <megous@megous.com>
+
+description: |
+  This module is part of the AXP20x MFD device. For more details
+  see Documentation/devicetree/bindings/mfd/axp20x.txt.
+
+  The LED controller is represented as a sub-node of the PMIC node on
+  the device tree.
+
+properties:
+  compatible:
+    const: x-powers,axp813-charger-led
+
+required:
+  - compatible
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
