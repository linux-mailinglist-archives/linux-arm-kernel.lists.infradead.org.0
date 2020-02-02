Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A7E14FF55
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 22:20:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1HFrqphh/igNXNxSX0EnLczp/jeLoU1+vQB9+jPqwe4=; b=coES0R6xP6kTXJXm72TR4OFe7n
	U3UHee+U6PBG89VmVu9jxRgXZye2Oyidli0vFXTDQFehZeFA+XwCA5W1dNYhP90qY9r4IuNKl6r03
	mInj1QYETDH7qHFCs8fs0hjOn6Ag+DCjst/8Ocp8AtUUfbtMRneQQs/BZFCtly8ODmncg4gymvMDd
	burjJ/6iLEhL83kwh0Vge3vbXskr4SjBt5ffRE/mT5q9odWk+pb+PakcDHoO9+TYC//jJNGJBy8ab
	z1wgRXMkNtTMDSe6fF2beDBe4mYxa4CIwnLbYbfInvNL6ul1n0odAUgmAxDAZwsej1w1MUWuqpbwq
	51Lg0xbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyMez-0002uD-LA; Sun, 02 Feb 2020 21:20:05 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyMe0-0001zp-Hm; Sun, 02 Feb 2020 21:19:06 +0000
Received: by mail-pj1-x1043.google.com with SMTP id fa20so5397301pjb.1;
 Sun, 02 Feb 2020 13:19:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dVjYnHw70XUXU3c67MvoOFQ8EAFS/KI8ArVkSbB6cxA=;
 b=nt5+uO3uvQfFH6bhVxg5TiyDngiWIuV3mpB5ejA7TYQrGPuNCusKtAdS5/smr2q+op
 KW68nkCG1kWC2mqq9EgEaJg/oe3EhIkmkz3b3RX7eWTWn+l8KlPGr2mepfeVPLAwSXCW
 ye3bt70OFCp86ly/5VTlEbxXu8l6iSHyFb/rDtB+VHIivFhAf4q095pyeFD9Eznk/L2l
 AICwMBvdPMC+3kYh5Ha9Xdlibd4Iy1Ootb5QOeJ+IJPh03RuuTKVqNpqqrcern5xm/bQ
 Ki/KKgeS2aenOOqcM7EjKSHA+ugxfZfTH40gVH69VEPJ0L+31zsbv26n4oJs6QkWon0L
 8kUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dVjYnHw70XUXU3c67MvoOFQ8EAFS/KI8ArVkSbB6cxA=;
 b=ITrjO8qti7VrqBOtT2gY0YUiDH/WRXm0SFv6LEvQYtdor/OLYpzXjcGj7rL1fdr2Xh
 IawsJufp+WzfoaQWETIjh9HbP6YF5ZJO69OaKRKiXmjWyx+IF8ogzXndYnSKTFOkDe22
 7RgNtgW0Srg8Av7+uZXLiNfueg/au21O78Y6U52+YngJ4t3DcCxFt8e322ydYKGj4/Fx
 XzFimzfi5Vt1SfEgHbtUnB2UFs7/SJ2cZ+VK1yVeyQprUIzNjPjKmMT4PoiSxROAQvAr
 N24bHkv4vf3q9pZ1A+GYtCsNPcFxY3ofxH7fb2QSaOq2wNM37D/sEitv9f2THTcaH0pd
 b1PQ==
X-Gm-Message-State: APjAAAXuQguH/ls2ZvQqkjzKyYQkSOXNiG+MBDB4uOKxpgHz8ZvO4BQa
 kTxfD+k7QBNdQvzrbb3a9R0=
X-Google-Smtp-Source: APXvYqzPWHOtI91WaVVL+3osBRU9fvO2iHBSn6UYO6hNoS4rzkD4yzEr4HhAzAzO20wyjw3+U49ivw==
X-Received: by 2002:a17:902:9042:: with SMTP id
 w2mr20509867plz.269.1580678341205; 
 Sun, 02 Feb 2020 13:19:01 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id y24sm8755639pge.72.2020.02.02.13.18.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 13:19:00 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@vger.kernel.org
Subject: [PATCH 02/12] dt-bindings: arm: bcm: Convert Hurricane 2 to YAML
Date: Sun,  2 Feb 2020 13:18:17 -0800
Message-Id: <20200202211827.27682-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200202211827.27682-1-f.fainelli@gmail.com>
References: <20200202211827.27682-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_131904_591544_46931226 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Lubomir Rintel <lkundrak@v3.sk>, Sugaya Taichi <sugaya.taichi@socionext.com>,
 Ray Jui <rjui@broadcom.com>, open list <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM IPROC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Olof Johansson <olof@lixom.net>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the Broadcom Hurricane 2 SoC binding document for boards/SoCs to use
YAML. Verified with dt_binding_check and dtbs_check.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../devicetree/bindings/arm/bcm/brcm,hr2.txt  | 14 ---------
 .../devicetree/bindings/arm/bcm/brcm,hr2.yaml | 30 +++++++++++++++++++
 2 files changed, 30 insertions(+), 14 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,hr2.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,hr2.yaml

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,hr2.txt b/Documentation/devicetree/bindings/arm/bcm/brcm,hr2.txt
deleted file mode 100644
index a124c7fc4dcd..000000000000
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,hr2.txt
+++ /dev/null
@@ -1,14 +0,0 @@
-Broadcom Hurricane 2 device tree bindings
----------------------------------------
-
-Broadcom Hurricane 2 family of SoCs are used for switching control. These SoCs
-are based on Broadcom's iProc SoC architecture and feature a single core Cortex
-A9 ARM CPUs, DDR2/DDR3 memory, PCIe GEN-2, USB 2.0 and USB 3.0, serial and NAND
-flash and a PCIe attached integrated switching engine.
-
-Boards with Hurricane SoCs shall have the following properties:
-
-Required root node property:
-
-BCM53342
-compatible = "brcm,bcm53342", "brcm,hr2";
diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,hr2.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,hr2.yaml
new file mode 100644
index 000000000000..90332ca0c74a
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,hr2.yaml
@@ -0,0 +1,30 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/bcm/brcm,hr2.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom Hurricane 2 device tree bindings
+
+description:
+  Broadcom Hurricane 2 family of SoCs are used for switching control. These SoCs
+  are based on Broadcom's iProc SoC architecture and feature a single core Cortex
+  A9 ARM CPUs, DDR2/DDR3 memory, PCIe GEN-2, USB 2.0 and USB 3.0, serial and NAND
+  flash and a PCIe attached integrated switching engine.
+
+maintainers:
+  - Florian Fainelli <f.fainelli@gmail.com>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: BCM53342 based boards
+        items:
+          - enum:
+              - ubnt,unifi-switch8
+          - const: brcm,bcm53342
+          - const: brcm,hr2
+
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
