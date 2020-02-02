Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A55E214FF5A
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 22:21:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5fNs6t8F3olxJiA0UBHJP7+hHZCNvBrB1+dq5JhD/IM=; b=ipreHzWXDSDAOeFPIIrYixxqWY
	ZITOo3b6tFwttUhVMuwBdBIUoobnk/UkA8MnGENn0PBPV0lMSde2ww2oSALlCz7DTyN+pMIBB163P
	ni7wwHGEbOmDPbN75BVZN0lyKBXyxhrGIr3DBMsi1gmVeDwCvrvsndSP0nXRSgI6pOJSyGDiHkN7N
	GlP5PE4UIpfE71CissB3yEVrtCAlxXLXRO2zS3zGWsvtJXW7BvBXr7J0EQS7GG83KnCBgrqCgcTYA
	1t7p70prWiW4wmA5WehJOyRZoKsL4Qj412/w9vhvKl1X1zwzExa5EHXEc4W1YiM1YRJxALftzdUS4
	2T0CCffA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyMfy-0005LT-5p; Sun, 02 Feb 2020 21:21:06 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyMe9-00028z-5w; Sun, 02 Feb 2020 21:19:14 +0000
Received: by mail-pj1-x1043.google.com with SMTP id m13so5484100pjb.2;
 Sun, 02 Feb 2020 13:19:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vT7D46rNtqWVvxbI9rtqz5C9FcqGbTfaLxkBJQBHayw=;
 b=D2C6PvZVUx9xEL7/rgHr/IvxB9ojCf24EgGUc+9tG5qtVZzq8hpUq/pfSvKaVZ66Gz
 1jpIZ9i7KSsBQdAYeGLdYk3AC8hFQiUUakC622rySC8y2Cr/qfQRhADMDuGBv0TWBgFW
 vUuvKs7/KkczuTaVdDpac53bbtUTsbiiPTGQDaYv/V27Q01hFJUKfpyLx4/YEFucdskr
 B+WBeccWPjkel4mdeU4luPGLzePpAUPShzjDSFgBCuhU2teTAERseO5EXUIGIzbnp/28
 ITr4kBaYvj4QYKNDVIV26b1sLoKo+fPzmEKiZbzZvbj3S9WhE2iPj7jGDXai3TXBCAgH
 gl0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vT7D46rNtqWVvxbI9rtqz5C9FcqGbTfaLxkBJQBHayw=;
 b=PGpmVEweQNwhd+b3TE1IgF4gXBDUUiF/gxHxVUebChDT5/ueRFthucUm4Acr+idERu
 hok8gspuyXQZRvacH6LdZQ7RRSKUb2XvnF+hKEosCTV0Blgtt0RFZzoOP9iFf43m14dy
 P7MlohkuRionAVjCik+nPhT71q6n8n6Na4QlLtV+kpbWvkBTnPdB7PKBVbB7HOcjzCI5
 5Tpd6TbBwpl5PudsK37pG6zQUQgf7J8GYXG6DaZsvu+vdyyW4/uTObOvEWyLAuHZeKlu
 zPypP3NkQxf0ruUEs4yoNzQPbXjDwq927SuUZyfTXHdl08o+vJSnlkQtHOgjzT0c1IlE
 yb8w==
X-Gm-Message-State: APjAAAVWb0U8cTfOBR9ggsh1NCGa1dzCGc8Tugza6059Say49lqr9BZU
 hHO0SILJG7LJLW1l2IcD4Uc=
X-Google-Smtp-Source: APXvYqyssLFpheMWXm8rEhTJhAajigs2uuLN08Ng2ewQylBb4tdQBLGMDdnq7oA15MNZXESAze/1rg==
X-Received: by 2002:a17:902:6a84:: with SMTP id
 n4mr20351768plk.294.1580678352669; 
 Sun, 02 Feb 2020 13:19:12 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id y24sm8755639pge.72.2020.02.02.13.19.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 13:19:11 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@vger.kernel.org
Subject: [PATCH 09/12] dt-bindings: arm: bcm: Convert BCM11351 to YAML
Date: Sun,  2 Feb 2020 13:18:24 -0800
Message-Id: <20200202211827.27682-10-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200202211827.27682-1-f.fainelli@gmail.com>
References: <20200202211827.27682-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_131913_271730_443EADE7 
X-CRM114-Status: GOOD (  13.80  )
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

Update the Broadcom BCM11351 SoC family binding document for boards/SoCs
to use YAML. Verified with dt_binding_check and dtbs_check.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../bindings/arm/bcm/brcm,bcm11351.txt        | 10 --------
 .../bindings/arm/bcm/brcm,bcm11351.yaml       | 23 +++++++++++++++++++
 2 files changed, 23 insertions(+), 10 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351.yaml

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351.txt b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351.txt
deleted file mode 100644
index 0ff6560e6094..000000000000
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351.txt
+++ /dev/null
@@ -1,10 +0,0 @@
-Broadcom BCM11351 device tree bindings
--------------------------------------------
-
-Boards with the bcm281xx SoC family (which includes bcm11130, bcm11140,
-bcm11351, bcm28145, bcm28155 SoCs) shall have the following properties:
-
-Required root node property:
-
-compatible = "brcm,bcm11351";
-DEPRECATED: compatible = "bcm,bcm11351";
diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351.yaml
new file mode 100644
index 000000000000..f69605da3e8a
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351.yaml
@@ -0,0 +1,23 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/bcm/brcm,bcm11351.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom BCM11351 device tree bindings
+
+maintainers:
+  - Florian Fainelli <f.fainelli@gmail.com>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: BCM11351 based boards
+        items:
+          - enum:
+              - brcm,bcm28155-ap
+          - const: brcm,bcm11351
+
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
