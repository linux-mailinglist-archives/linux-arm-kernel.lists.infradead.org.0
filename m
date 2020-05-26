Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E91941DE58A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 13:35:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EJS2vC0CcgbXrtjKFcpoc2y0B/d7TM6hecLbIxWJJL4=; b=ZIkdBqyYBxnsh9
	V9JWBzALdqOTUvC73hYnqiM3xuoPmnUdBmrnd7I1EGnaglvH2CWVAUhLkQBX2OGFYoOygVyCDtG0V
	RifL91Zok7zNOS2DZSeJsL9pHHaG5NWDAsOdFq5sMwCvGEimqTV+fqOgGV0bwMSn9P/JmYZIjmnP7
	vLQwIIESUdopdx+q1Yw4ojggVmEjTKxD280+mPvFspeFrZvWCqoHcKkegg75gTo1hJmZGASm4rIx6
	eZEQTve4lDZ3NZW1Xg/z26mVBlr7v6wyZXWDB2vs7H6tH40KuBgfczMxvBoJXTIaJvPSRKmf3P3ul
	RXH7bWvSSmyOopbjrcPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc5xZ-00008A-Fb; Fri, 22 May 2020 11:35:29 +0000
Received: from 212.199.177.27.static.012.net.il ([212.199.177.27]
 helo=herzl.nuvoton.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc5x0-0007Yi-77
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 11:35:05 +0000
Received: from taln60.nuvoton.co.il (ntil-fw [212.199.177.25])
 by herzl.nuvoton.co.il (8.13.8/8.13.8) with ESMTP id 04MBXMSl015024;
 Fri, 22 May 2020 14:33:22 +0300
Received: by taln60.nuvoton.co.il (Postfix, from userid 20088)
 id 676E4639C1; Fri, 22 May 2020 14:33:22 +0300 (IDT)
From: Tali Perry <tali.perry1@gmail.com>
To: ofery@google.com, brendanhiggins@google.com, avifishman70@gmail.com,
 tmaimon77@gmail.com, kfting@nuvoton.com, venture@google.com,
 yuenn@google.com, benjaminfair@google.com, robh+dt@kernel.org,
 wsa@the-dreams.de, andriy.shevchenko@linux.intel.com
Subject: [PATCH v13 1/3] dt-bindings: i2c: npcm7xx: add NPCM I2C controller
Date: Fri, 22 May 2020 14:33:10 +0300
Message-Id: <20200522113312.181413-2-tali.perry1@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200522113312.181413-1-tali.perry1@gmail.com>
References: <20200522113312.181413-1-tali.perry1@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_043454_774444_4C347BED 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.0 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tali.perry1[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: devicetree@vger.kernel.org, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Tali Perry <tali.perry1@gmail.com>,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Added device tree binding documentation for Nuvoton BMC
NPCM I2C controller.

Signed-off-by: Tali Perry <tali.perry1@gmail.com>
---
 .../bindings/i2c/nuvoton,npcm7xx-i2c.yaml     | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml

diff --git a/Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml b/Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml
new file mode 100644
index 000000000000..1c9d9a2d4bcd
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i2c/nuvoton,npcm7xx-i2c.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: nuvoton NPCM7XX I2C Controller Device Tree Bindings
+
+description: |
+  The NPCM750x includes sixteen I2C bus controllers. All Controllers support
+  both master and slave mode. Each controller can switch between master and slave
+  at run time (i.e. IPMB mode). Each controller has two 16 byte HW FIFO for TX and
+  RX.
+
+maintainers:
+  - Tali Perry <tali.perry1@gmail.com>
+
+properties:
+  compatible:
+    enum:
+      - nuvoton,npcm7xx-i2c
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+    description: Reference clock for the I2C bus
+
+  bus-frequency:
+    description: Desired I2C bus clock frequency in Hz. If not specified,
+                 the default 100 kHz frequency will be used.
+                 possible values are 100000, 400000 and 1000000.
+    default: 100000
+    enum: [100000, 400000, 1000000]
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+allOf:
+  - $ref: /schemas/i2c/i2c-controller.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    i2c0: i2c@80000 {
+        compatible = "nuvoton,npcm750-i2c";
+        reg = <0x80000 0x1000>;
+        clocks = <&clk NPCM7XX_CLK_APB2>;
+        bus-frequency = <100000>;
+        interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+    };
+
+...
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
