Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B98F14FF57
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 22:20:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MTQiqoKVHdbqshcu6p92PVenBKeJgztGvCPiiWfr9uw=; b=Jl5qBj5ohUBBe6o4c5iHQjmHgP
	ATCJPPFaGjrtlfBFA4pH7ecMhLRwv1fculCxHVcZqd3QozQ746445O7ygan9QqwgJ8wOsLjquEMEg
	F4Bl78d3JNqKNmoHtQA4Fe6REwNNTLW6T7E95T7EkD4XobjiATfe+WFomQZ4RPgdyX86F+6WDO5YV
	9jSvVwWwljzDB6ww77oYpYsYNpHU1pGPURAgdM0w7HeGjzOClJheLXIth2JbeNF/LYUtEscvnT4Sh
	V6FBWnvaEqiM3N8yLTtL3pTrd49UUWx/INor4s99VxdJz9lpQG63o3rr9W3EqrmQ1aWooO3Vp81Jy
	khllmbjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyMfN-0003RU-UX; Sun, 02 Feb 2020 21:20:30 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyMe4-00023K-2v; Sun, 02 Feb 2020 21:19:09 +0000
Received: by mail-pj1-x1042.google.com with SMTP id m13so5484031pjb.2;
 Sun, 02 Feb 2020 13:19:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=qM36uHLgKaTgocqSHIh2izp9K4IaAcwcVCaZh91ximY=;
 b=TJQYV9aaM2l4PyRJTnUoacLJpHZ/16gnIs+QPF8P5h8jynmGHtlRXO6VPFKlD009lH
 Nsrvfw7rZmZPXzN8zpdDzK9sNFfU88nUTyJ4sfIznKcDJIcwx7IL1V2hYKmaDO/1PliE
 BOR3El+o0JZ3e9Mvia46qeovnUl98LT4GVqSHfdbrbyauqVQSFM/cVopo98bgHL8mJO8
 d1hR9ukziX5/0zJ68afUVWBzbLXVLJC4JiwkA6V2OQ2WNVyqBn7JGTAniMEY3kQ6WVc2
 EqMt05HMJrtKlG+zoBjaK5lXK5agJbHYDZdIWw8wyTIXzPrlI2TCYV2ULLxyjxaAuRP2
 0Lyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=qM36uHLgKaTgocqSHIh2izp9K4IaAcwcVCaZh91ximY=;
 b=GYGO1SBLF3tTuEW12cmRHC8DMkNcTIfQPjIwBMrmoo8cvaQqcKY2/FG4UXo5GEuTH+
 HQwVlv0e3ByxpJv7/qnRByZkJAmHh3ltZwM//ri4EA8bhDrbTPYKivOcn15KFCjc9XCV
 iz8h0xN9AS7hvvFonOjvrwiuBPFe8XYuLExP6sFqUEVt82ullGD8EbouPCfDRVYL7urT
 Ke3X33xujo4pWDzxu1HKyohfRu7spWu5/TLEwx0qmE5zmHDenvb4Djit8daOuKuHsuZI
 Gc0HBGHI4xBBHXtCrKOcj0bhkZfUM7Dlp9k7D0+9v/0eOf1v+Ig1qovg3wwPNY022Z8U
 PM0Q==
X-Gm-Message-State: APjAAAVAYAQ483XrFlXRxTkILCcViQ7v4u3ArXNoCBjbOmZgwtbEL0tn
 WqS++IyDi8CLfjyFq1bKmbI=
X-Google-Smtp-Source: APXvYqzch0A10fy9dSa3A8UR0+rBOgp9guvOvWHXh7fRmsV+HcU5+TqyyguWpKkkL4j1d+UXO/Fgtg==
X-Received: by 2002:a17:902:ab98:: with SMTP id
 f24mr20089295plr.338.1580678347527; 
 Sun, 02 Feb 2020 13:19:07 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id y24sm8755639pge.72.2020.02.02.13.19.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 13:19:07 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@vger.kernel.org
Subject: [PATCH 06/12] dt-bindings: arm: bcm: Convert BCM21664 to YAML
Date: Sun,  2 Feb 2020 13:18:21 -0800
Message-Id: <20200202211827.27682-7-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200202211827.27682-1-f.fainelli@gmail.com>
References: <20200202211827.27682-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_131908_161091_0725D53D 
X-CRM114-Status: GOOD (  13.74  )
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

Update the Broadcom BCM21664 SoC binding document for boards/SoCs to use
YAML. Verified with dt_binding_check and dtbs_check.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../bindings/arm/bcm/brcm,bcm21664.txt        | 15 ------------
 .../bindings/arm/bcm/brcm,bcm21664.yaml       | 23 +++++++++++++++++++
 2 files changed, 23 insertions(+), 15 deletions(-)
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
index 000000000000..8a38a6b68f60
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm21664.yaml
@@ -0,0 +1,23 @@
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
+    oneOf:
+      - description: BCM21664 based boards
+        items:
+          - enum:
+              - brcm,bcm21664-garnet
+          - const: brcm,bcm21664
+
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
