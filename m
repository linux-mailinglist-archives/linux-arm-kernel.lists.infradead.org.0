Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DAE1523DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 01:09:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f8xg0RZ8Wv7RhNNSoCl6mkcvCe3AXdSnn65y3kOcpIg=; b=VhNv9S+aYILG9r
	cjvOIpW67SluHY0eSkFjoKS8foRlnSNueCkqRX6iBwKjVQvEOSucoy1wiCL+oZuFTS0q9qlZ4lJmU
	WbsEFn8Tf5SJfC6xlzO1zauK1Ih0VTni+4ynCeWbHdom8whWMoika7ExU69y/bDRf1vO2/5ldrC2T
	kuZFv5e5VcYh8EYBaNyMn251rq+Pn1hXYoSOsaoQrAHxvJcfZcDT07tCMHp8ijImLJTUCWb5uMteR
	4lfEaZFxLJHY2N4u1U06o8leZt3d5g5Yc/3QHXg0FLW+jDWCMFycsoMw4T+5NsMdkYe8PGtUHIeNP
	p3pmsh18k/dhMlqLuVmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz8Fe-0006rP-DX; Wed, 05 Feb 2020 00:09:06 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz8EB-0005V4-VP; Wed, 05 Feb 2020 00:07:37 +0000
Received: by mail-pj1-x1042.google.com with SMTP id r67so155776pjb.0;
 Tue, 04 Feb 2020 16:07:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wSfcK/HqZKOCPjHvTh0wu7XrM6+iOjhpV9sQe4TP4q8=;
 b=GBpgEloP312WeultLakY+aI/u+kIW2DJdsc/8gUXJxBqpEWsQqsBEIdSzdHZILJln0
 WzScAuEh6WCNAUsaKFkGGl2W2fn2XI+epBLKOHOdkaWa0GMEtof4dmiWCv+JP6IJEGzC
 Vr1xuaYeoZ6Dsa8/i4TEcnGadVlRv7qu5EQDjn7hf4GRLPp5tSKVGkp6xE+CPP3qwE4C
 jVRCjaYzFpXid/LvuQOrAmDF2PB8odnyl7ZrsG/wnan1ntn7uk9mijDaX3pYHR8B6/8g
 fa72/h8HVqYMKsH0J26Y8LscB4Pfw/b+Hu3lsqQyD9aoc/4K7pNyaVL+vROZxjFdDgTJ
 I0ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wSfcK/HqZKOCPjHvTh0wu7XrM6+iOjhpV9sQe4TP4q8=;
 b=CV6zM4sc9SjwW4IuHYeKKtyN52sRzZ4Ggbud//XtzQe2V/btW6aVSdB2n9kXC/g+Qj
 aAHMkbVtvf8mDMWYY/C0vVt9/H3Cd2A+8vmlO+w9euZGmomnBlRdBJWA486gQLyDhatm
 Yo2dnEn39selo8eARwA+Jl3qbNHRRmqwrJYvm75t6Lq1JQxz8xjbsfzSgCIOdEnkTw/6
 0aFyFKUUIJ03XvBeOVOoIWtIXnir6a6B9ax3/rvg/3zGZRCi4UR9/AizTOKxUoyshgdB
 nbijV1W8K2jZK4OXrCI3XipBN0/Zb+oPtKIL0Uf1k7hzaP8PH/D+XijpHZbgpW059grS
 /HyA==
X-Gm-Message-State: APjAAAXI/pVeJH5Ra0X6QeVFlXBf3d+KfJlXWa0Pshdzdx6ZVDEINm0y
 E5ECh12kVAsyIey4aQwD7afxNP/w
X-Google-Smtp-Source: APXvYqyUYhDUsNUdwpGM9rwBl+PfcWW3qWb4B67tTiRWr+eucFLOWgYzvM8+v4MNyYyzP4s0UU35Xw==
X-Received: by 2002:a17:902:9a82:: with SMTP id
 w2mr21170120plp.117.1580861255088; 
 Tue, 04 Feb 2020 16:07:35 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id g2sm25575468pgn.59.2020.02.04.16.07.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 16:07:34 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 06/12] dt-bindings: arm: bcm: Convert BCM21664 to YAML
Date: Tue,  4 Feb 2020 15:55:46 -0800
Message-Id: <20200204235552.7466-7-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200204235552.7466-1-f.fainelli@gmail.com>
References: <20200204235552.7466-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_160736_030618_B88CF341 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 "james.tai" <james.tai@realtek.com>, Arnd Bergmann <arnd@arndb.de>,
 Scott Branden <sbranden@broadcom.com>,
 Sugaya Taichi <sugaya.taichi@socionext.com>, Ray Jui <rjui@broadcom.com>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, Joel Stanley <joel@jms.id.au>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the Broadcom BCM21664 SoC binding document for boards/SoCs to use
YAML. Verified with dt_binding_check and dtbs_check.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../bindings/arm/bcm/brcm,bcm21664.txt        | 15 -------------
 .../bindings/arm/bcm/brcm,bcm21664.yaml       | 21 +++++++++++++++++++
 2 files changed, 21 insertions(+), 15 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm21664.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm21664.yaml

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm21664.txt b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm21664.txt
deleted file mode 100644
index e0774255e1a6..000000000000
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm21664.txt
+++ /dev/null
@@ -1,15 +0,0 @@
-Broadcom BCM21664 device tree bindings
---------------------------------------
-
-This document describes the device tree bindings for boards with the BCM21664
-SoC.
-
-Required root node property:
-  - compatible: brcm,bcm21664
-
-Example:
-	/ {
-		model = "BCM21664 SoC";
-		compatible = "brcm,bcm21664";
-		[...]
-	}
diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm21664.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm21664.yaml
new file mode 100644
index 000000000000..aafbd6a27708
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm21664.yaml
@@ -0,0 +1,21 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/bcm/brcm,bcm21664.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom BCM21664 device tree bindings
+
+maintainers:
+  - Florian Fainelli <f.fainelli@gmail.com>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    items:
+      - enum:
+        - brcm,bcm21664-garnet
+      - const: brcm,bcm21664
+
+...
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
