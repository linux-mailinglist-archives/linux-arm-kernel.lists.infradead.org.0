Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9D012F1BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 00:15:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j3UpnFW8DG+S7fBg6n/PyA2OUgPK2Zo5VweQP8rf4IU=; b=FO6EfNm5yiAPNbHCFJnQ+wIC3R
	hG5nHkJl95NrcJjWKrOjYIovjGnn6RgpLlZ2usYmoIRJfEqxQ4mRqkWafeYvCiJ9gi89gZgsOx6Y6
	fER22Jkj6PdUhonuNpq4fINLbYX46xs4uP6MfetJULbiHr/oCZAPUFIa+Nnj80hkfn591oXLM2Wp4
	wbnDJp/E9sgS0X9PTI7qjifDMYhmI48gB/cYIWMR3OgbLpKitymYc3CNUU3ZckfkH3u/DX1oC9+Pn
	s598S05TpFE4diPhO66YijyfvjUaN1U4/V84VhylHCEZBys56JViVvumksbMiuC8hXI2hK/rR/C8o
	4qCJw8Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in9gT-0007kS-El; Thu, 02 Jan 2020 23:15:17 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in9g2-0007bV-0Z
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 23:14:51 +0000
Received: by mail-wr1-x444.google.com with SMTP id z7so40776597wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 15:14:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kMyTupLDldKkb1lWgqnDbAPS5C9Z9guf82HYxQir48s=;
 b=QgU9n65k0J62aUAR3QexuN7AaghnWdbzXWtrwQNU8gQiUaY7nAn34Xzy5qvfnFvKcS
 5NlUdrK/9zZyfrYwDS1X3h7hARQfvSJ7a9r0TFyuu9eo5FO3RSv6QkEYG6Yr+h9blzM7
 mKCDUwYiM5e58JsvHhyKjNhHgqLqfd31p2zhtIe4yV4vwrq1a445HbdJXIPf4wDFvffR
 ZZXZa11gn28ushEiKdP06tLndt8LgYTeRNTKZMhWNbO6ijT0T1xKchfPq7TPbrcKQxkr
 ef8uXnD+tjBTnkUwx1SUgy1AZUAG3fYx+bL2sCHP1DlqU7PHGXiMU3v40vNyCe2kLtdI
 Zcbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kMyTupLDldKkb1lWgqnDbAPS5C9Z9guf82HYxQir48s=;
 b=RAgk7WA8ANkomL3tNv6rYKD4J7GN564ULsA/iBS2un/Pb2++lBv/ZbFGg6l4oOw+r4
 eciQu3Fh4Q3JzAh7jSq0tOdZeH0JZ/f9YFuX0McZBGMPgkKm0wbCu3IytOwgrvh2ZOtG
 i6VTqerSjoXL6QBpFXLs54paY+t79YVLow77w+g0aM9DTuNxaIVyA9smuqGtn/OhLpLj
 AvOAeQ19vLAneTsHLtyEP8x2/31VNvt4IIvLvKWXRPg+qifVzVWNqoF1kXJWWxMV/GyO
 g/ENyjHnXDDsQvdLuxdSBrAyZXGHhDD95mfl4etCSVPRZK6QxFenvf4KTv6CUApZ8Xzq
 /Azw==
X-Gm-Message-State: APjAAAWliVrTSRLo6/X4Eyy2qgmu5U5fYYXCukyeVFZHTV10SXfw8Z9G
 tHJeewiJDT3i3dTT+H1z8i8=
X-Google-Smtp-Source: APXvYqzURx81wFYnSVFGlVgdBvQmAelB8Np8cexU5H0xK4XgknY0rgZQ72RWFUgiEuPFDDiUp/D0sw==
X-Received: by 2002:adf:e6cb:: with SMTP id y11mr86340755wrm.345.1578006888330; 
 Thu, 02 Jan 2020 15:14:48 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id i10sm58214711wru.16.2020.01.02.15.14.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jan 2020 15:14:47 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: reset: Document BCM7216 RESCAL reset
 controller
Date: Thu,  2 Jan 2020 15:14:34 -0800
Message-Id: <20200102231435.21703-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200102231435.21703-1-f.fainelli@gmail.com>
References: <20200102231435.21703-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_151450_051400_B88EC3B2 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
