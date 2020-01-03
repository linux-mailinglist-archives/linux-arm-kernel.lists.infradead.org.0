Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFA612FCD4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 20:05:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j3UpnFW8DG+S7fBg6n/PyA2OUgPK2Zo5VweQP8rf4IU=; b=a2dt4plxrvgp8YNwGaSdHX82lT
	a2vEh9kgpK4ioKTuMbTcsSK/4L0nkuy+vHY22McxEa0qVfAYPyMPN1ULp9bxQGkDZffHXdkatDnoK
	AOzd/b40a12S5TsuDE3rFoy9PJYQwNzfzjAqkP/VrClYK8msHwjEfKTbuELU7hkHLyBg7Sg55VS2u
	YB4Nxc8XpwLCtRLkk0Eg037mmqXhadwWMA289eXn1XfNodj3uZyYq8g74rpADBpuoJO05i2rNDlf8
	we8ZaSwxV8/d6eb8FcJ5XMI8EHZCXZ7CgMmyVixzSP0eRqKiSpPJctwUhqX57wpk7q8vL8uyINmuW
	yfwxcxxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inSG0-0002Di-8n; Fri, 03 Jan 2020 19:05:12 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inSFW-00025h-US
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 19:04:44 +0000
Received: by mail-wr1-x442.google.com with SMTP id t2so43356332wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 11:04:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kMyTupLDldKkb1lWgqnDbAPS5C9Z9guf82HYxQir48s=;
 b=jQ66prh718gJMoV+1DBJtLQlPCRpQ4+XIFJK/vf7k/tNMPP/W9KwYeStWKmJMNIZo+
 rYv4DtnE13DYgYoT+F4sNQwkiRK4U6DTEmVM9Dm8F+3cQAufXwYUplZRDP422LLFcP2Y
 CaisK1TnXNgJPl+Cso+4ACyAdCf9ik3W2kscwrmRrieRkINOalvXpjBpFRypWGw64prF
 jEZezp6JZ/XTAw0A4Y2Ur5KVF4HEP4+LXsOvSO9tS2lx4eoX64gh/r4hkn4L/QZPhd/a
 0vTWpGGNgtIhTvI2B1BnA7etyTIaTeDLyQIY6bnAUaHasIseFlIOs82wFC3PXbF+i+15
 /tyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kMyTupLDldKkb1lWgqnDbAPS5C9Z9guf82HYxQir48s=;
 b=i9+Kvt06RdpHUOFUqLbwvshhM5kSEXPwsnKQPKJpwpxBGE8AxVs7MyQtA9jYcMxjRQ
 Gk9m4KBMXDNLc35rR1JhxwuWi1+s9U19KkKUvIDIA1MkbT72wmpjEz1/otoULkx5ziOB
 zhqOpnLIeUOlv11ZhQMx3GxfxI/+myTOaHfVU0qbBz5fZrmmoUF+tASTUy8ZrqCY2r86
 CTkJdZG+CkVeISG0mkc94H+8TjAbtzNHRSNv+IPcAN1Oro/N9bOp4vVhzORQRiRhgUaP
 KODUTTl1ZxceQhdzGS3+4z9cmvVhQ68tlbZQbZCucSABMmkTwRmCrY+TZtMzqWiOe+ER
 EUqg==
X-Gm-Message-State: APjAAAWG907g61zcj4zlVWMBHIHV4NL+Sl9/WNJhfEJ99pW3yoxSGjeo
 aK2R5QMeyOgnww5qAgSTIEw=
X-Google-Smtp-Source: APXvYqyNTQ004k6VM4DiJi8Is8tpAR7kdicrxmD6COOyDlac1QAKY6mJPzFt8QaZkQVle83gzFNVog==
X-Received: by 2002:adf:ebc6:: with SMTP id v6mr89419656wrn.75.1578078280497; 
 Fri, 03 Jan 2020 11:04:40 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id f16sm60822416wrm.65.2020.01.03.11.04.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 11:04:39 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: reset: Document BCM7216 RESCAL reset
 controller
Date: Fri,  3 Jan 2020 11:04:28 -0800
Message-Id: <20200103190429.1847-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200103190429.1847-1-f.fainelli@gmail.com>
References: <20200103190429.1847-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_110442_982124_28049C83 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jim Quinlan <jim2101024@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jim Quinlan <jim2101024@gmail.com>

BCM7216 has a special purpose RESCAL reset controller for its SATA and
PCIe0/1 instances. This is a simple reset controller with #reset-cells
set to 0.

Signed-off-by: Jim Quinlan <jim2101024@gmail.com>
[florian: Convert to YAML binding]
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../reset/brcm,bcm7216-pcie-sata-rescal.yaml  | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reset/brcm,bcm7216-pcie-sata-rescal.yaml

diff --git a/Documentation/devicetree/bindings/reset/brcm,bcm7216-pcie-sata-rescal.yaml b/Documentation/devicetree/bindings/reset/brcm,bcm7216-pcie-sata-rescal.yaml
new file mode 100644
index 000000000000..411bd76f1b64
--- /dev/null
+++ b/Documentation/devicetree/bindings/reset/brcm,bcm7216-pcie-sata-rescal.yaml
@@ -0,0 +1,37 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2020 Broadcom
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/reset/brcm,bcm7216-pcie-sata-rescal.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: BCM7216 RESCAL reset controller
+
+description: This document describes the BCM7216 RESCAL reset controller which is responsible for controlling the reset of the SATA and PCIe0/1 instances on BCM7216.
+
+maintainers:
+  - Florian Fainelli <f.fainelli@gmail.com>
+  - Jim Quinlan <jim2101024@gmail.com>
+
+properties:
+  compatible:
+    const: brcm,bcm7216-pcie-sata-rescal
+
+  reg:
+    maxItems: 1
+
+  "#reset-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - "#reset-cells"
+
+examples:
+  - |
+    reset-controller@8b2c800 {
+          compatible = "brcm,bcm7216-pcie-sata-rescal";
+          reg = <0x8b2c800 0x10>;
+          #reset-cells = <0>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
