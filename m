Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F06421523D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 01:08:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qx59XRteV6tY/NSVGNVXlUNeVGTYTyYIVT4C/PldzBw=; b=EuSCaT7RD/Rt/9
	nkD5U7QyG515RSbEVFkKFtApA/fjidleeCu+A6nhDh2oBuvsYo9BqpTRWtMZalK7kj37WEZSzFDRF
	l6GImC0XV4OeHDYjHQCpKnnOp8djMPvtPhy1sVKOr0Jcic/Rt1Z96ZdYFwgHsRwlfC4vhwY1VWrvG
	BWd10fZZOlXNwb0TF9K7RVawGOxvmUAk1rz6y4dxz1jdSGxIisdas48q8OmyDn/cx1vCuZeXkCrbQ
	QCi9HSKp7Sb+Sx2x54Zd9lVFqh9vgDUWBthrNfTxMJMtxfw086OpXr8VfzWBupjCQ43KyTYcCdtV3
	p0E6avUyvWkRAQWtvhaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz8F0-00069p-VT; Wed, 05 Feb 2020 00:08:26 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz8E6-0005OO-TD; Wed, 05 Feb 2020 00:07:32 +0000
Received: by mail-pj1-x1043.google.com with SMTP id q39so155770pjc.0;
 Tue, 04 Feb 2020 16:07:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Xy9neKY+qvsY0GTBRTsRimyTOioxmSqME5XU6N4LU3s=;
 b=Ti2FtfJezQkJeoAyfzKhepKSCTUuIOkCYcaCB4Pl7Wn+7NIpq5ndjx8RrIbkw7P2I+
 nqufOgXEjyQ9yajE6vHccQEKXXbLfsRp52UbiDDKQ77JyYR6ZpEblAvWBvJmLstwVQgt
 Dz7VbK/l/SuhrHdsspb25jOl21o4sM2EUEf3hAqhu8yLh/KrxbYYQCdCOMrVEqJMtxhh
 usjDyE1E9KNltxDx11+0bqxaTpHNsaeywpzKkw3264WZJyJiDbjS3rUkYtXDJ7fN04/6
 m9yA3kMfa55KSnJO8U2lpus+CQVjdKKqGFLyrShq4oRjLY0Lwz8iGTciOd3wmRL7Jt0d
 /X4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Xy9neKY+qvsY0GTBRTsRimyTOioxmSqME5XU6N4LU3s=;
 b=OVyXjw5s8oQymNVAGxCIwaeIw0AC5kHl+Ffaj+zIKiY00ye2PuqD7tfE/k0OM7Qo0z
 uFTImN7EUbyAl9atFpU2q/gr6WDg+NdDBzCJKWiHzta4l2i/VbV4pqalxMxlxfXJSpG2
 ZYKxOlM2a0ypMZtPWt4gTMt70hz4r1wQQPgWae3fPLfRfnXsXBk2fzS9zOQiZjxsttLi
 TM7irZzoWFH6QYjskqIgx0mj+mFmsvcjcMSXJLI82un2E/QxFrnNC1JZLZsyFxEuuQxh
 6TjiRVisNawgYO9EQGyo1m+StRbsQNEyiCjrATwkTXOr/aySrxg98sljQgC+G3D1EFtO
 sHTg==
X-Gm-Message-State: APjAAAVnkCn4l+TrkdUi6338CEKbq4jSMm4ypmW4jyxk+vdGvKrGoZHT
 bipJ080CRgYpPcZWeXkoMb275J+r
X-Google-Smtp-Source: APXvYqyBs/noppCZUBoSmP/i2D6fgztkqlGLtnvnbKInlX4dL6XLl0QIvoeWWFC42Uzl8LEDSrHCjQ==
X-Received: by 2002:a17:902:6944:: with SMTP id
 k4mr18346685plt.214.1580861250019; 
 Tue, 04 Feb 2020 16:07:30 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id g2sm25575468pgn.59.2020.02.04.16.07.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 16:07:29 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 03/12] dt-bindings: arm: bcm: Convert Northstar Plus to YAML
Date: Tue,  4 Feb 2020 15:55:43 -0800
Message-Id: <20200204235552.7466-4-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200204235552.7466-1-f.fainelli@gmail.com>
References: <20200204235552.7466-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_160731_022237_9E1C698F 
X-CRM114-Status: GOOD (  13.74  )
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

Update the Broadcom Northstar Plus SoC binding document for boards/SoCs
to use YAML. Verified with dt_binding_check and dtbs_check.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../devicetree/bindings/arm/bcm/brcm,nsp.txt  | 34 ------------------
 .../devicetree/bindings/arm/bcm/brcm,nsp.yaml | 36 +++++++++++++++++++
 2 files changed, 36 insertions(+), 34 deletions(-)
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
index 000000000000..fe364cebf57f
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,nsp.yaml
@@ -0,0 +1,36 @@
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
+    items:
+      - enum:
+        - brcm,bcm58522
+        - brcm,bcm58525
+        - brcm,bcm58535
+        - brcm,bcm58622
+        - brcm,bcm58623
+        - brcm,bcm58625
+        - brcm,bcm88312
+      - const: brcm,nsp
+
+...
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
