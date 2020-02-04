Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8491523DA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 01:08:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XHpUWn0nsubn3hDa9rVY4AjNUou7BtvRcCC0008ynM8=; b=G5bkwX7qdPMbCJ
	jOBpIsF7D2klE2h1p5kGlYoMipAAcdd4JiTlkbFCwGIIKf+OSKd3SLp0N8Gl2aZjZuVdVa0Q6uAMW
	56XT6wAAptSk0+ZKvhIwf6431TGjmEUCYsXTclmYZMduuJvbjYkPv3bIgwDQUJ7qzvPFzwUXl5YgL
	EFqinTHu62XKndgMkLWU9LDYJv3YB2y1WGTIunNrFqNzaaGkxpGgt+H9odwQUJITs6cKdT2yYL7UE
	3EaNw7aTfQkyDRjbwBfQPCdCGG0gBJT6KAtAuWjnvzHFR4yOIlHt3Sh5Uv1DkNrVdR+H0iWQHXlQg
	dtkqy8UGsho147SdHBeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz8FP-0006Zn-Oy; Wed, 05 Feb 2020 00:08:51 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz8EA-0005Ss-Ea; Wed, 05 Feb 2020 00:07:36 +0000
Received: by mail-pg1-x530.google.com with SMTP id z124so3129pgb.13;
 Tue, 04 Feb 2020 16:07:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=On0k+SoyB6waneVG08uGmZyC0wziXmj/SQNqmL9/E3Y=;
 b=uD3NJvnsWRkfelY26ZfWVwEuATt2f3ysSHricvAs3lFcicnDODj2v1qBsLvrwAaQbl
 6n7T1YwAGNqNz+Kq6y1CV8VLmgpobsnz5prNiG2xLsctB55zFb89ctTMPCtDaQmzdbKO
 bOstaUEYCBUzNacz0VESzD/Ukexa014P29xJkRMcZghl5jwp5LDh+Lf+x3TDwoDInb6c
 +Q5uXgyWVeWC5Up4kFIVHi8i1e1NkSyiuAUIjOGGVj5lafy80BRLNUIdJEclVEAvG75g
 jkkk+fAMvc/WuJinHJBUdbyhkO/iAkEqqGbyfaYtM7gM4+o7LPJGJAcpGY7JGU364a3c
 iNhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=On0k+SoyB6waneVG08uGmZyC0wziXmj/SQNqmL9/E3Y=;
 b=UUNW4cUo3xWt0cBomtI/61cbABlBfnJizCI8sso9bhsr2lDeoYs8/k6sMuxtM7/lvf
 lr832z6WMUodSK7OxiPUYfMAsL+hmP/QqkA4lDsqwWmwUbgpoKYE7WUufYmB1R7gInpZ
 AXYTEBm5bm11++IKncHodu1P6xX98qW/8wJ0pTP0WjxNA4NnZJpAmx41RcO5W6gz0DdQ
 RpSRjwNUeGBAXX8rt0b+PfgBwezLpLOiZ3LJPuUapiFnQShg36BjaUV4B67BI05dH6+5
 +idNAb90/MRLMjWB+9fJUYmOw3yb+cCw8ocwgWCxgRT5RzVDo1AHtAcn9ZBLML44wuSg
 QKPw==
X-Gm-Message-State: APjAAAVQd8q0eZoUVZahg2WM9UWm3nc9pR17tArw1WS1AM0IO9ZCR+Yj
 Tt14UGi5WICLYcIgVsFyI3SyCqjp
X-Google-Smtp-Source: APXvYqz7P9UuJ3pzVapnXVa4MwV4Z6jEFSgCPfSKlVn/1B5p0AnG96L2+cNF7XqqZMEPUWzmc2qt/A==
X-Received: by 2002:a63:d157:: with SMTP id c23mr33952813pgj.242.1580861253434; 
 Tue, 04 Feb 2020 16:07:33 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id g2sm25575468pgn.59.2020.02.04.16.07.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 16:07:32 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 05/12] dt-bindings: arm: bcm: Convert Stingray to YAML
Date: Tue,  4 Feb 2020 15:55:45 -0800
Message-Id: <20200204235552.7466-6-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200204235552.7466-1-f.fainelli@gmail.com>
References: <20200204235552.7466-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_160734_516610_C798FAB1 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:530 listed in]
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

Update the Broadcom Stingray SoC binding document for boards/SoCs to use
YAML. Verified with dt_binding_check and dtbs_check.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../bindings/arm/bcm/brcm,stingray.txt        | 12 ----------
 .../bindings/arm/bcm/brcm,stingray.yaml       | 24 +++++++++++++++++++
 2 files changed, 24 insertions(+), 12 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,stingray.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,stingray.yaml

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,stingray.txt b/Documentation/devicetree/bindings/arm/bcm/brcm,stingray.txt
deleted file mode 100644
index 23a02178dd44..000000000000
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,stingray.txt
+++ /dev/null
@@ -1,12 +0,0 @@
-Broadcom Stingray device tree bindings
-------------------------------------------------
-
-Boards with Stingray shall have the following properties:
-
-Required root node property:
-
-Stingray Combo SVK board
-compatible = "brcm,bcm958742k", "brcm,stingray";
-
-Stingray SST100 board
-compatible = "brcm,bcm958742t", "brcm,stingray";
diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,stingray.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,stingray.yaml
new file mode 100644
index 000000000000..4ad2b2124ab4
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,stingray.yaml
@@ -0,0 +1,24 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/bcm/brcm,stingray.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom Stingray device tree bindings
+
+maintainers:
+  - Ray Jui <rjui@broadcom.com>
+  - Scott Branden <sbranden@broadcom.com>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    items:
+      - enum:
+        - brcm,bcm958742k
+        - brcm,bcm958742t
+        - brcm,bcm958802a802x
+      - const: brcm,stingray
+
+...
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
