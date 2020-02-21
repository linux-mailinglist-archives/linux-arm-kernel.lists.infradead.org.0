Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E6B166F47
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 06:38:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jw8qySZsZ4gUJ+5YoomdPyN/YX1UM551YNDcZDFxkno=; b=iCfMe9O8KoxMBD
	81lfoFlTDXiy29e+/dgcc/eItmu9G5OsM2f1+xT+ccN3hcq7M9z72j1+eV8isueaPrs2928zcvnpQ
	7Vebi1GB2LLNkC6573LEtfOVhl3Vz+NMcbV8uDIqwjC19UugSNNDxYLEHG3itNUZYqke/cLSbOC8b
	3YZDglEyiVzMAzIIniyHi4iMnM0z1FlDkZsgZsuuaaZ9VbyUfjor+dyt8tPjGvylIfIp8CVv/9kpy
	HvyRAND2Wp3SMu6ok9EUuqn3OE/FR5LOUU2z54oV2PG5vEIVfx0Z5jiq/y05EHYbAHgY70sarsh29
	+gUoFeh22z1dANPzIuGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j511b-0000WL-A0; Fri, 21 Feb 2020 05:38:55 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j511D-0000JA-15
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 05:38:34 +0000
Received: by mail-pj1-x1041.google.com with SMTP id j17so236555pjz.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 21:38:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CapMNX7pjr8MkESV5PbFvA3nh0aG4lhz0SRP146DeOk=;
 b=NHBlsLvEzhPsV9lVrqrxLfj46dzf+dfvYfal/9H20MGjw4nLWWSVa8v81TGtfCiHGG
 UNImlkJ6xyOWAA6l1H1xA2JqGLXbVDYYjArPqkFMKmwUZffHJaGPMeXaVTJX8lG24W7Z
 1BH97JwtFsJ//+S0hygIEpEECdThBP537UmUQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CapMNX7pjr8MkESV5PbFvA3nh0aG4lhz0SRP146DeOk=;
 b=gwdPNilAcNFYw6z4BdueSKMIrJfaUM/rZHaE9/CGM+o9MApwwAlAC/huYCP7gV1VBA
 lGTolyOQ0m154uK4pD0mXJK4RmE7gTIqC38Bn5R4i6EILvWXGyf+Zo4NQY7/vhi5PEWT
 h7RETUBkYy5B6oQJhdBUbELJf4AyaodXIoa5UDjcqSLI7ZGsMWfmjBA9bwQT3WAsVtFG
 L4qWJthP8bdAtzKqDIPSSDazPc9VQ4YJXTrYWXcEPQnHwpAZhnozNMGHOnUhKcszQaOL
 EuUVFTblkpR4LGAClv+HP1oaCl3TNq6CLNLfGiWD5UWXHvX9tMEJ4c27Nld8sPoLx7Yd
 taXQ==
X-Gm-Message-State: APjAAAWbnxQwPiQgFVwF/+FAyUF20VrTc0kEA7R+udjgzNA/RuYgesz/
 WE0ZtSIYy1myYqeuFTEd5r4Ejg==
X-Google-Smtp-Source: APXvYqz+fNCi7RyQICRTNgU9IYDRlA2CBQL0xzTHdNzESzxk/Lp56MofgOU6MTmKnMrgVqSEjK8ojg==
X-Received: by 2002:a17:90a:804a:: with SMTP id
 e10mr1046782pjw.41.1582263510005; 
 Thu, 20 Feb 2020 21:38:30 -0800 (PST)
Received: from localhost ([2401:fa00:9:14:1105:3e8a:838d:e326])
 by smtp.gmail.com with ESMTPSA id m12sm1324157pfh.37.2020.02.20.21.38.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 20 Feb 2020 21:38:29 -0800 (PST)
From: Evan Benn <evanbenn@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: watchdog: Add mt8173,smc-wdt watchdog
Date: Fri, 21 Feb 2020 16:38:01 +1100
Message-Id: <20200221163717.v2.1.I02ebc5b8743b1a71e0e15f68ea77e506d4e6f840@changeid>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
In-Reply-To: <20200221053802.70716-1-evanbenn@chromium.org>
References: <20200221053802.70716-1-evanbenn@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_213831_142244_F129160A 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-watchdog@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-mediatek@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Evan Benn <evanbenn@chromium.org>,
 linux-arm-kernel@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, jwerner@chromium.org,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 "David S. Miller" <davem@davemloft.net>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This watchdog can be used on ARM systems with a Secure
Monitor firmware to forward watchdog operations to
firmware via a Secure Monitor Call.

Signed-off-by: Evan Benn <evanbenn@chromium.org>
---

Changes in v2:
- Change name arm > mt8173

 .../bindings/watchdog/mt8173,smc-wdt.yaml     | 30 +++++++++++++++++++
 MAINTAINERS                                   |  6 ++++
 2 files changed, 36 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/watchdog/mt8173,smc-wdt.yaml

diff --git a/Documentation/devicetree/bindings/watchdog/mt8173,smc-wdt.yaml b/Documentation/devicetree/bindings/watchdog/mt8173,smc-wdt.yaml
new file mode 100644
index 0000000000000..ff45e13bc548b
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/mt8173,smc-wdt.yaml
@@ -0,0 +1,30 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/watchdog/mt8173,smc-wdt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARM Secure Monitor Call based watchdog
+
+allOf:
+  - $ref: "watchdog.yaml#"
+
+maintainers:
+  - Julius Werner <jwerner@chromium.org>
+
+properties:
+  compatible:
+    enum:
+      - mt8173,smc-wdt
+
+required:
+  - compatible
+
+examples:
+  - |
+    watchdog {
+      compatible = "mt8173,smc-wdt";
+      timeout-sec = <15>;
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index e48ab79879ace..59e8779363c12 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1421,6 +1421,12 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/interrupt-controller/amazon,al-fic.txt
 F:	drivers/irqchip/irq-al-fic.c
 
+ARM SMC WATCHDOG DRIVER
+M:	Julius Werner <jwerner@chromium.org>
+R:	Evan Benn <evanbenn@chromium.org>
+S:	Maintained
+F:	devicetree/bindings/watchdog/mt8173,smc-wdt.yaml
+
 ARM SMMU DRIVERS
 M:	Will Deacon <will@kernel.org>
 R:	Robin Murphy <robin.murphy@arm.com>
-- 
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
