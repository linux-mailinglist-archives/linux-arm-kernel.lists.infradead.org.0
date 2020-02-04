Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 740CD1523E0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 01:10:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ikNT/zcluEwxjgFeE5qoaneW4KnBhHy7To+0UOll2Lo=; b=n6MkHGl8Jo3bA5
	wkT07DOmolF9Gd75CuTXpw/J3axG0dnMFMljQafqlGmLcO/mo8vI0JOu59PRkJEdVMmu7mP7SVLBM
	/Vy0f9HwuHBJQ4LMHxo+0GqLyNE5ksg0x9MkTryefkVWjcxRbxoFrK+48Kp/WKvYaozcisNuXpdSs
	dBbaleU6PnY0DnaVkytqDMn4Tkx602hwCEV5W4R2sz3gClMUzpXIysaIOTHzvnXNXj7mkOhOns7Vq
	d4jBDmhgZYUy7aN2IsCVXGDhWzFTnUq+EBQd91wW5CZzLHA/43jDEnZxG7M1DgDScJSaSsRg70iTK
	deE8gy6DQ8SMgyWOxhhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz8Gk-0007vM-Bk; Wed, 05 Feb 2020 00:10:14 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz8EJ-0005em-VL; Wed, 05 Feb 2020 00:07:45 +0000
Received: by mail-pj1-x1030.google.com with SMTP id n96so149249pjc.3;
 Tue, 04 Feb 2020 16:07:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sbQmNjEgDYzzs2rJFk7fxPgigyR9od2RmRBDQINeABE=;
 b=X/iG3RxSH/LRG86sXEZeH4oKj2y1veejQAmKs62/kIub6x8uPw8l+bDx5XPj0KDIy/
 KLeTSVucR2LAQ5juvnr+f0OY0Uhs6wmsFC0u6negwJgppNl7T0TngviVpMDb9uCiiL3v
 Hkss/rexr+vuxFxB3zqzrCpxBG2uk3RXpazO9O9G2HmsPac55PXQkAPt2GfEarEFqjN/
 f2YjcvaoqXPT+APpNK8KNszcd5OmgvVqMPF8mEGwNZ8jyWilj7oPd0ubq+xxFoUNXVfz
 XapwKBgLTRjBUhP7tWbIeiZaniH9c03Bujkgj5Z+AMl4p3pleE26UG08Y7Qz0cNxbPs1
 7wJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sbQmNjEgDYzzs2rJFk7fxPgigyR9od2RmRBDQINeABE=;
 b=GUpEt4G+GTGkD+A3vi8LE4bHZJXrHetGEdIpdSnKfcwQ4jtKsTfUjO+XXPF/oz7ORF
 +uhViTiw2z++HjARZ8W0S4nTfU7HXrY0dLlS8rArKJRziarxnUdqlwr98nx81AhfoPRD
 E4gfva2upw7RdaW6rcOUFQQdz0wnT5HNAp8+mzYEPG8jKi6xuhosgYc+jOdmMFMbvGi5
 5RG5ty8/3+DkArgYC39Gqe2EP9Ba9hOQjm4F9h4M3xlqpkw5vFAzVVrG8z2rGx//JIeW
 hs+P5JrJTiG9pDjNAtYqGyS0drtNLKtHPQ3AgL0jfxjATBp1Dg6tBJh3JNMLVdeNx54S
 ewmw==
X-Gm-Message-State: APjAAAX5lOaQ7UTK9ESsfQ93UGE7GlbRkxXeKfdJ0N53mSbjwJ7mudVj
 AaOuRONI5Kxnwdik5tUlCk2HEfW7
X-Google-Smtp-Source: APXvYqwHUBZ6SUQPjfSqCn9aPbrL0AEWLGCduHWSGavhPaLzvwgmmufcEcD3bhZpquTizNdPtg32Nw==
X-Received: by 2002:a17:90a:d141:: with SMTP id
 t1mr2175313pjw.38.1580861262343; 
 Tue, 04 Feb 2020 16:07:42 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id g2sm25575468pgn.59.2020.02.04.16.07.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 16:07:41 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 10/12] dt-bindings: arm: bcm: Convert Vulcan to YAML
Date: Tue,  4 Feb 2020 15:55:50 -0800
Message-Id: <20200204235552.7466-11-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200204235552.7466-1-f.fainelli@gmail.com>
References: <20200204235552.7466-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_160744_092272_D9EFC879 
X-CRM114-Status: GOOD (  13.79  )
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

Update Vulcan SoC family binding document for boards/SoCs to use YAML.
Verified with dt_binding_check and dtbs_check.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../bindings/arm/bcm/brcm,vulcan-soc.txt      | 10 ---------
 .../bindings/arm/bcm/brcm,vulcan-soc.yaml     | 22 +++++++++++++++++++
 2 files changed, 22 insertions(+), 10 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.yaml

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.txt b/Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.txt
deleted file mode 100644
index 223ed3471c08..000000000000
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.txt
+++ /dev/null
@@ -1,10 +0,0 @@
-Broadcom Vulcan device tree bindings
-------------------------------------
-
-Boards with Broadcom Vulcan shall have the following root property:
-
-Broadcom Vulcan Evaluation Board:
-  compatible = "brcm,vulcan-eval", "brcm,vulcan-soc";
-
-Generic Vulcan board:
-  compatible = "brcm,vulcan-soc";
diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.yaml
new file mode 100644
index 000000000000..c5b6f31c20b9
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.yaml
@@ -0,0 +1,22 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/bcm/brcm,vulcan-soc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom Vulcan device tree bindings
+
+maintainers:
+  - Robert Richter <rrichter@marvell.com>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    items:
+      - enum:
+        - brcm,vulcan-eval
+        - cavium,thunderx2-cn9900
+      - const: brcm,vulcan-soc
+
+...
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
