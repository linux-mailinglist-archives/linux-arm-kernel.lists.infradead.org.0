Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A1E14FF49
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 22:19:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xN0dCkOYfiv3eIDVNtibT4e+x9jQyw9tGVX1pXyp+os=; b=Q1G5c90bErHW/RRg5oQymU7cPp
	KlI6dwZXZhX4IS0mmWetLZPhacbJEx5AH0C3/H6phro8QqEu05DK3fVp4MDZq6LqgZdcVr/+/5qpz
	vxLrNNB0Ow4pVxFnw1Le1AMbpc3Pxx49uoRh8IkMrAfZOcT1TYT3SqhYDcxv6lTTOUR6Qe4h8iZCp
	zl85sL+mLhSehRip7RyngYNEUV7yTFMEdmGeo6GWSLBwxfaTOfE93QrtP6JwATK/EHeiv19Dryk9S
	1JVQzGCfz3b2SlAiBsFHt5fvNGxUA5dUdGWTSpyl2CfoMrASx2EKnmTIfmWXEshdKfv3ZACnVn81c
	SPqfMhxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyMeP-00028F-Uj; Sun, 02 Feb 2020 21:19:29 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyMe0-000208-Dr; Sun, 02 Feb 2020 21:19:06 +0000
Received: by mail-pj1-x1042.google.com with SMTP id e9so5471888pjr.4;
 Sun, 02 Feb 2020 13:19:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=nME4UAiyqLh/Z+MjnFvU6rmtlnJJbRyaB2eoYcoPeR8=;
 b=u2r5sGNLhsEZIkA1O36hVJdEuyLiixyE3knkt8AjtlD5EqZAJi5fN5O1dP/AJLOtm2
 1hdfQj3Gp68oojMSLET6znQvJyocBnxqc9gxIeprx09nORZibJI9Ng3CDWwaWzbPSTVy
 OXey57EMP/WwpK4K49hkFObnACgz4bq7h1lfD1BRUOHjpr+FdAeScbZTaPbY7Vcn8+aF
 rUI5ks7HG33MdJ8UzvIYmol3sGN2Z+DroyZthHgB5gJQMNsJJy0yW3pcdailzKpzGGEs
 gmYZOiv2eZRUAurNIMvZichT8JDNvbkh7FOs91qVI/Kwy9kfW60p/uqO7p51uiqIk0T2
 zJIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=nME4UAiyqLh/Z+MjnFvU6rmtlnJJbRyaB2eoYcoPeR8=;
 b=Dib7GZ0yfDuGPtArJ5AmFaDh7o3uBvqLtg2Tcc/J6JRsLPKDRr+PkjoTAxd1tLBL5R
 hny9bSu6iZJuHsyt+Qky3ZRd1Y5hftL8ylQUsYTP+wrRJyLo5+aBb+f4VAle5nBe/Cz5
 9347XFQ0ZhIFMuFWm2ZyrLz1oMuD4J7wL27nKHIUez0o8anvUnkZ3T1e9oGVyexbeyqn
 3xRIU/CiXSSyQYYVBZDXTN40R6OVMhYYnVeg710SNI+l1OjlE5OOnNTZS+11KtbVY6tD
 iuL6WaH6cS40ClsFCjYYjIyF8GHfJRltUHXZsQ/HZV5YJEaIY2vMp2PGqLv0mEfXEKVo
 7YRg==
X-Gm-Message-State: APjAAAWh3WObWX+oKUFfKpBWeaDb3a+jBXnJqfmrwOQJjDhUbkZgWL7v
 r4bQ99FkuGL2jUf4pSJM9us=
X-Google-Smtp-Source: APXvYqz3mAk+fb8Lm122pYlg0JTJXIatyW2WXJIFxF3SI5w/XJAdJAztUgAIr7JigfBZ72dcns9g3g==
X-Received: by 2002:a17:90a:8c0f:: with SMTP id
 a15mr26321514pjo.86.1580678342786; 
 Sun, 02 Feb 2020 13:19:02 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id y24sm8755639pge.72.2020.02.02.13.19.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 13:19:02 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@vger.kernel.org
Subject: [PATCH 03/12]  dt-bindings: arm: bcm: Convert Northstar Plus to YAML
Date: Sun,  2 Feb 2020 13:18:18 -0800
Message-Id: <20200202211827.27682-4-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200202211827.27682-1-f.fainelli@gmail.com>
References: <20200202211827.27682-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_131904_464788_3E19A9D5 
X-CRM114-Status: GOOD (  13.52  )
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

Update the Broadcom Northstar Plus SoC binding document for boards/SoCs
to use YAML. Verified with dt_binding_check and dtbs_check.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../devicetree/bindings/arm/bcm/brcm,nsp.txt  | 34 ----------
 .../devicetree/bindings/arm/bcm/brcm,nsp.yaml | 68 +++++++++++++++++++
 2 files changed, 68 insertions(+), 34 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,nsp.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,nsp.yaml

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,nsp.txt b/Documentation/devicetree/bindings/arm/bcm/brcm,nsp.txt
deleted file mode 100644
index eae53e4556be..000000000000
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,nsp.txt
+++ /dev/null
@@ -1,34 +0,0 @@
-Broadcom Northstar Plus device tree bindings
---------------------------------------------
-
-Broadcom Northstar Plus family of SoCs are used for switching control
-and management applications as well as residential router/gateway
-applications. The SoC features dual core Cortex A9 ARM CPUs, integrating
-several peripheral interfaces including multiple Gigabit Ethernet PHYs,
-DDR3 memory, PCIE Gen-2, USB 2.0 and USB 3.0, serial and NAND flash,
-SATA and several other IO controllers.
-
-Boards with Northstar Plus SoCs shall have the following properties:
-
-Required root node property:
-
-BCM58522
-compatible = "brcm,bcm58522", "brcm,nsp";
-
-BCM58525
-compatible = "brcm,bcm58525", "brcm,nsp";
-
-BCM58535
-compatible = "brcm,bcm58535", "brcm,nsp";
-
-BCM58622
-compatible = "brcm,bcm58622", "brcm,nsp";
-
-BCM58623
-compatible = "brcm,bcm58623", "brcm,nsp";
-
-BCM58625
-compatible = "brcm,bcm58625", "brcm,nsp";
-
-BCM88312
-compatible = "brcm,bcm88312", "brcm,nsp";
diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,nsp.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,nsp.yaml
new file mode 100644
index 000000000000..d76b9b14f000
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,nsp.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/bcm/brcm,nsp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom Northstar Plus device tree bindings
+
+description:
+  Broadcom Northstar Plus family of SoCs are used for switching control
+  and management applications as well as residential router/gateway
+  applications. The SoC features dual core Cortex A9 ARM CPUs, integrating
+  several peripheral interfaces including multiple Gigabit Ethernet PHYs,
+  DDR3 memory, PCIE Gen-2, USB 2.0 and USB 3.0, serial and NAND flash,
+  SATA and several other IO controllers.
+
+maintainers:
+  - Ray Jui <rjui@broadcom.com>
+  - Scott Branden <sbranden@broadcom.com>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: BCM58522 based boards
+        items:
+          - enum:
+              - brcm,bcm58522
+          - const: brcm,nsp
+
+      - description: BCM58525 based boards
+        items:
+          - enum:
+              - brcm,bcm58525
+          - const: brcm,nsp
+
+      - description: BCM58535 based boards
+        items:
+          - enum:
+              - brcm,bcm58535
+          - const: brcm,nsp
+
+      - description: BCM58622 based boards
+        items:
+          - enum:
+              - brcm,bcm58622
+          - const: brcm,nsp
+
+      - description: BCM58623 based boards
+        items:
+          - enum:
+              - brcm,bcm58623
+          - const: brcm,nsp
+
+      - description: BCM58625 based boards
+        items:
+          - enum:
+              - brcm,bcm58625
+          - const: brcm,nsp
+
+      - description: BCM88312 based boards
+        items:
+          - enum:
+              - brcm,bcm88312
+          - const: brcm,nsp
+
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
