Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D29E14FF58
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 22:20:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qjlsQnbXZAyWUp76HmfrKBGyitPHQePODqVFzBEFl6M=; b=sNMwKvz4nhl14s8r8yd3ZK3D8u
	NJCc+WcIG4oh0QDnMxfxhYwX1hnFBhVYhHSMoPslYsi1J+LJkh9XWoQ+07K7pm1NLs+/9eF9aOr/d
	LdCkUPu649/ZJmaC9uQgVecVqprCLOisbDNY1SbnIPNFXq3rQ1TK1yCeCcJP+KGULjv9Q7pJlj35g
	CES15gdeSTkIbRekD9ard79JXOZAKOqzSgPHHIAHVFq55jCs5Qg44wNB10EXZxi4+Zqsc7s08918n
	8lvxfkJzTxquwuToaqNPyL6Dt1Ws8W+NbcezBG6PJLyuOBG9i2mwmFE24ooAMPYBVePtvDOXrPYdQ
	88dyiBeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyMfd-0003gn-JT; Sun, 02 Feb 2020 21:20:45 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyMe5-00024r-Jl; Sun, 02 Feb 2020 21:19:11 +0000
Received: by mail-pl1-x644.google.com with SMTP id t14so5016319plr.8;
 Sun, 02 Feb 2020 13:19:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=CApnqFg6dAZdHAMhoDwm2LWWZ1aLumfh05lDg8StLtA=;
 b=OdR7OyUhWCueywPWrKoWOPiNpevH5fUhLA9mhQFziQWq6oeHDZvw3DPqt3AaAXOw87
 H2Ngmu5zB3r8ZQ9+/CpWeJhgXhHhJelkA0Hwv4cFPtoZDGel2iNSNB6kaKGdU2s+2b1V
 mGrDOt+jIslxRLg17+fitXzfUuNS7ZZZdyxeCVpb0ytCWlX5GaFZ1JT4S2DM8IJ0NARj
 vvfOSrTTO5DaR5LhvXYx5wsHJqCJA5Xy3WIVKFIZ7kciCBQCtqlYHcBQKC2N+zRfX5qw
 EsSfQPph0HD2I5ck6/tZLixz7xKAN5UpisoszBxuJ3edgvkfq796mihiWeTRFeR8qCKR
 dOEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=CApnqFg6dAZdHAMhoDwm2LWWZ1aLumfh05lDg8StLtA=;
 b=KuVY+/16vbWHeoUh7v23AY5jrJslyuIRPyB9slSf6v4qPrx8mb5ZXMm6Dbxs7O6Zhe
 uFVWiRNto4F47H9NFY+ySupIVvET1ih7b5soaYBxOcFcZGavr7/K9fPGXLl3aFE+X29v
 eAZYbwi/WMmZkXHOuyH2E5b4rJ1WcFIEinfvRq+NGw07ls/CUZ9et3zwTkYtKeZTHGYL
 4mJEHXYclw3In4hbXJRb5Vs2CF1F/XcAzL16pXKoEJsyPxiYVkwlwSouCi8512Zp3Bnh
 zyuPPf4viKZmIQbTBuaFMw2gs66nUSqaVcoRAWkpsGNZLUgpyg0CLy+VndHHXQYsK/5M
 GQOg==
X-Gm-Message-State: APjAAAVw2nLjxvS6Ex3Ksd5BpcmbqlBXaohVkls6yTWiCIyGsXC+yeIq
 2R6VBc7Ma+WMH20/tMbFCU8=
X-Google-Smtp-Source: APXvYqxHPR3/QXzPWDEAYpCdrDvxmozm3gOtRBBYqdU0CamZVu9N8hjZFtU/72TwTeU9l/DPURiD6w==
X-Received: by 2002:a17:902:8bc7:: with SMTP id
 r7mr17315291plo.12.1580678349098; 
 Sun, 02 Feb 2020 13:19:09 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id y24sm8755639pge.72.2020.02.02.13.19.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 13:19:08 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@vger.kernel.org
Subject: [PATCH 07/12] dt-bindings: arm: bcm: Convert BCM23550 to YAML
Date: Sun,  2 Feb 2020 13:18:22 -0800
Message-Id: <20200202211827.27682-8-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200202211827.27682-1-f.fainelli@gmail.com>
References: <20200202211827.27682-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_131909_674137_B6D6E60C 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
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

Update the Broadcom BCM23550 SoC binding document for boards/SoCs to use
YAML. Verified with dt_binding_check and dtbs_check.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../bindings/arm/bcm/brcm,bcm23550.txt        | 15 ------------
 .../bindings/arm/bcm/brcm,bcm23550.yaml       | 23 +++++++++++++++++++
 2 files changed, 23 insertions(+), 15 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550.yaml

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550.txt b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550.txt
deleted file mode 100644
index 080baad923d6..000000000000
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550.txt
+++ /dev/null
@@ -1,15 +0,0 @@
-Broadcom BCM23550 device tree bindings
---------------------------------------
-
-This document describes the device tree bindings for boards with the BCM23550
-SoC.
-
-Required root node property:
-  - compatible: brcm,bcm23550
-
-Example:
-	/ {
-		model = "BCM23550 SoC";
-		compatible = "brcm,bcm23550";
-		[...]
-	}
diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550.yaml
new file mode 100644
index 000000000000..7a828ccd24f8
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550.yaml
@@ -0,0 +1,23 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/bcm/brcm,bcm23550.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom BCM23550 device tree bindings
+
+maintainers:
+  - Florian Fainelli <f.fainelli@gmail.com>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: BCM23550 based boards
+        items:
+          - enum:
+              - brcm,bcm23550-sparrow
+          - const: brcm,bcm23550
+
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
