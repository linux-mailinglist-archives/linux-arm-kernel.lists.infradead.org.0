Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE86014FF5B
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 22:21:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CGQjiH7kwjN37ipz9u5kH7ednxVxnQ63ly8Vq6MF0vU=; b=dqDvMRyawlSVEG+R8M2u73Cw39
	1D3+DfeSIdhQ4o1DyjwGERcVHBUCBQCxKo3fNtVZ+BJCp5bFnG73W/DrnweI7kOOx7wEjUcy4Ti5D
	K2SF0iXFleFR8lkkvpyquRq2mqSUjjJj1longjYB73mzj6b1yt6AUHSnJtwumS4QIssYnKlTt6HnW
	wejA/ZHin+42BfjEFJ2s9vtM2bWBjLvA8OzJNtrIGTIwQ2DtS/tjhVXt6+ZLHvkL8jVG+C7oGuRcR
	1c4yfog04atabgdwYJ+EXAhOs2sP67ety5ESzDK3aCb+RocnaevjhjHmgMLrnxZ8i+MIxRZqj9tlJ
	WY4uGYxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyMg6-0005Ya-J9; Sun, 02 Feb 2020 21:21:14 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyMeA-0002BL-P0; Sun, 02 Feb 2020 21:19:16 +0000
Received: by mail-pf1-x441.google.com with SMTP id 4so6462238pfz.9;
 Sun, 02 Feb 2020 13:19:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=hKGZ/ioDlISioFwoy3HH1kkLCDcsOhTRU9/FCQdF7VA=;
 b=hKDW/387XLb85MU5eYTzvBOAnPorjwHfIXwFSsGoOqmx/E/k3zlMBn/bV3PJcJFQ14
 mCl9Zm+0g2KOC7jtgz+abISksUlfTMyyvdUMyq8GYyclLtXdzTYBYoDYW9PiWerHa2eO
 sZlJnggyzE1fHoRMCiaMDXnzcno/FrCqSA8jXNuNYMzyO4CLgd9SoNJMrDZtuF2+ktNY
 ZhA2HHva+cyi7FJFmQJ9MFKCYha6W6WdyudYb9UhtGTeARyF/PO2TjsSHTKlDKT789Zf
 nlWx0esMzd/jfjVvCTbKyI17aoOM9gQlINud84YI1Vx9KGBlD1RXHCYruuAj4vUmtZDY
 Advw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=hKGZ/ioDlISioFwoy3HH1kkLCDcsOhTRU9/FCQdF7VA=;
 b=XKhbBM/VEjABDZ31p+Gh1lCLaQWHDruIsX1jXYqlLP4RKXyO1u2z+gix3Kz7hZpb/m
 YuuSBuAAicFEMNuUzujQUNrPjPvNeIDuiNgElOK77JmMifnbktpKbZ4TAlO8BGKab7Mq
 I51LBQ0FQiJ1oDILBvP4gItzuUqhS4FXi/9eQdaINc+rejDHhRp6oYpsuVHfQRRJ2VLZ
 7enW3Xs5+FtMnRpjJaR2ymouD1xsfAXqCPFzc1yPEaoW7CyHlcNqPhkLi0j0BLd/uTkc
 R9CL2H5bhmIpVH5z1E4oItYlZqnYpSAzA6ZpjszYPszSDCt9loNaZ/piNaRUOtYAuvAG
 uPxA==
X-Gm-Message-State: APjAAAUuIuwOCi+utXVK4L55i9QlTGzseh0vlgJQrqrtSKEJZdFhHOvJ
 9O3oK4r5rbiRPJ0BqD4FSv8=
X-Google-Smtp-Source: APXvYqzpo1z0tFSbFuKhULwcH8kSyjuoUX1dyI6fogel39PO+3sKQPwBpvPl7GTuGCsKZd+iZcscOA==
X-Received: by 2002:a65:5381:: with SMTP id x1mr5191297pgq.236.1580678354248; 
 Sun, 02 Feb 2020 13:19:14 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id y24sm8755639pge.72.2020.02.02.13.19.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 13:19:13 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@vger.kernel.org
Subject: [PATCH 10/12] dt-bindings: arm: bcm: Convert Vulcan to YAML
Date: Sun,  2 Feb 2020 13:18:25 -0800
Message-Id: <20200202211827.27682-11-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200202211827.27682-1-f.fainelli@gmail.com>
References: <20200202211827.27682-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_131914_853880_A67D9E1F 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

Update Vulcan SoC family binding document for boards/SoCs to use YAML.
Verified with dt_binding_check and dtbs_check.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../bindings/arm/bcm/brcm,vulcan-soc.txt      | 10 --------
 .../bindings/arm/bcm/brcm,vulcan-soc.yaml     | 24 +++++++++++++++++++
 2 files changed, 24 insertions(+), 10 deletions(-)
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
index 000000000000..0bfb45457150
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.yaml
@@ -0,0 +1,24 @@
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
+    oneOf:
+      - description: Northstar2 based boards
+        items:
+          - enum:
+              - brcm,vulcan-eval
+              - cavium,thunderx2-cn9900
+          - const: brcm,vulcan-soc
+
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
