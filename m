Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 605621523CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 01:08:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HcopkFqoNuXkqJypvSBRU5JRO2NgnRgDtwj8cDwOtWo=; b=UnHE0y/MEaGS8L
	RFhYSta6arJsH/MCQeWCw6CCt0iy14TEzZzd4MTzbzR2AGKedWT7V5IHts0dc1bleIwtqI8DtWOoU
	wb1VeT1j0MCJsMqLh0JE6MWwOMr5zNDncZDYMxTpew6DLwoe6VvWPBF73RDOsPI6/hstOa+ahbYwC
	3MpHkxVxgWUxnYOYS95Eg6vtII6hdqYCTzgbWCfYORr6FEFTsIrxgxtP1NBmM4UJ41D5DFm/c7RJU
	Okwgh1bbIWjqeVxeThNvaKZBGJ9yLpGN+ItY7+JMFpgEVwUAy+DmI+54KDk/gDh/DPYUKoJR9tHSK
	LFgNE8UAn5sT565vC/Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz8EV-0005W7-Kv; Wed, 05 Feb 2020 00:07:55 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz8E3-0005LQ-M9; Wed, 05 Feb 2020 00:07:29 +0000
Received: by mail-pl1-x644.google.com with SMTP id y8so71035pll.13;
 Tue, 04 Feb 2020 16:07:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0o1JfZAxs99nKRdJ2oWN9NNkNqf7TeS9QHfOvRZ8cps=;
 b=Ady2EW7aC9hKOdFeZDBh3Ccw916VyfUqNOPm8vEDW9eLKjhGCOWbIyrSUdvVGY/NXF
 e88XdFQPRAaM19AtcUISe1Gz2UicOzlfHqVNncLfmEYNEO/HapeFCKJ3GB2fZwShsDZb
 eUjMEVzqtfcUxKLaRmcM2T+TN7gMOGP33bKdUC0/UCx+ULu2W+zSPyGR7Dx0WNzf/Gjc
 C0mQfYWElWDLga7Fc4bE/JVSyo9MIMQysHZa4OjniDYnIlhChndD3KjRMToOpI1r9hbS
 WekeeymbfYI5ZyCUSBAFNo9QoXcLLu16bpu7j7XJJyGFWadQ6rXk1aPlhHb7JHtn612w
 +7eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0o1JfZAxs99nKRdJ2oWN9NNkNqf7TeS9QHfOvRZ8cps=;
 b=OJj1j9Z5Utj/su3r8VyQhG1lSN4m8Ec2KWRcla3+HYoTlZrZATfRz7dEpshJiDr1JA
 WoQW3X0hfR/njoCjsfLjtM1nRyHQo+GNbzWFGUE2AGw0i2m9kHVLcbFPLOlNabTB5o5l
 1VhEz0hKAVWesH2KJ2w9gClqt3GX5zcMNyh9BGuqQiGCLy+babIp3LKo3qcf8baUVf2u
 dNEnJC/Ycp2jHbEsq/HHyw3KiPtALq3yFvg1ry7oO1/UQT9DDb64611raCWNhDBaTXvY
 t+xDK0g3H/ljklPlPyEDGxE+EdnjppCgw2usTqva1ErvSRHZ/sob04vlqZ5jeim8RWg/
 +AiQ==
X-Gm-Message-State: APjAAAW4il4Nyk0tkCLpw9HwV3JRxen9qUaAktyrSUA2xRSMZyvVHPuy
 fhbjtWmxfbUxzlqhwhhQ0uT7ZP1j
X-Google-Smtp-Source: APXvYqzFQwtp8Vz1BJtpAwSPZUwdpUqBoeZx+uR9xj8P3lLOwhA6lTw0BoqevnpkZwSKZGd96WJO/w==
X-Received: by 2002:a17:902:724a:: with SMTP id
 c10mr32847987pll.307.1580861246688; 
 Tue, 04 Feb 2020 16:07:26 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id g2sm25575468pgn.59.2020.02.04.16.07.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 16:07:26 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 01/12] dt-bindings: arm: bcm: Convert Cygnus to YAML
Date: Tue,  4 Feb 2020 15:55:41 -0800
Message-Id: <20200204235552.7466-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200204235552.7466-1-f.fainelli@gmail.com>
References: <20200204235552.7466-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_160727_721742_FDBB20B0 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
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

Update the Broadocom Cygnus SoC binding document for boards/SoCs to use
YAML. Verified with dt_binding_check and dtbs_check.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../bindings/arm/bcm/brcm,cygnus.txt          | 31 -------------------
 .../bindings/arm/bcm/brcm,cygnus.yaml         | 29 +++++++++++++++++
 2 files changed, 29 insertions(+), 31 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.yaml

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.txt b/Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.txt
deleted file mode 100644
index 4c77169bb534..000000000000
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.txt
+++ /dev/null
@@ -1,31 +0,0 @@
-Broadcom Cygnus device tree bindings
-------------------------------------
-
-
-Boards with Cygnus SoCs shall have the following properties:
-
-Required root node property:
-
-BCM11300
-compatible = "brcm,bcm11300", "brcm,cygnus";
-
-BCM11320
-compatible = "brcm,bcm11320", "brcm,cygnus";
-
-BCM11350
-compatible = "brcm,bcm11350", "brcm,cygnus";
-
-BCM11360
-compatible = "brcm,bcm11360", "brcm,cygnus";
-
-BCM58300
-compatible = "brcm,bcm58300", "brcm,cygnus";
-
-BCM58302
-compatible = "brcm,bcm58302", "brcm,cygnus";
-
-BCM58303
-compatible = "brcm,bcm58303", "brcm,cygnus";
-
-BCM58305
-compatible = "brcm,bcm58305", "brcm,cygnus";
diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.yaml
new file mode 100644
index 000000000000..fe111e72dac3
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.yaml
@@ -0,0 +1,29 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/bcm/brcm,cygnus.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom Cygnus device tree bindings
+
+maintainers:
+   - Ray Jui <rjui@broadcom.com>
+   - Scott Branden <sbranden@broadcom.com>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    items:
+      - enum:
+        - brcm,bcm11300
+        - brcm,bcm11320
+        - brcm,bcm11350
+        - brcm,bcm11360
+        - brcm,bcm58300
+        - brcm,bcm58302
+        - brcm,bcm58303
+        - brcm,bcm58305
+      - const: brcm,cygnus
+
+...
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
