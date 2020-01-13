Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CB8139974
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 19:57:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hoJDAs/wP6ll62xK5w5ydnRbKIXjaKYQv5ynkZSJqcc=; b=VValF3E7oZHriNAixb7g28oDA1
	5rbieHR83qpkyXxC/VcfYU2bzMZEEpzb4qnrIqhNqtXaDO3KyPi8PfUVU441OzGmboHgaWEoJYz/s
	cJjRELtcjqf/aXnFzSXjye+a60fli9zJ1F8646iSn0LVl3K0HAq8MaAd2dS7/Tz1yHDpeQWyj8kWA
	N/rULuecXHPIaN+hH2WSHUEiUIpVd0MLCyeWKfqcD1ZxjnFXXZXi9JvXDN2poMAW7jbuvWF6G+75f
	XIp2Q4ks/Nx/iUA5v4HD6KU5U2ro/z4HwkZj/3odaN0vIhcZku2RNh0Lp6ekyljJLYac5k8YXaEMU
	2pNkyRPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir4uK-0000U8-L6; Mon, 13 Jan 2020 18:57:48 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir4tR-0008EK-Kw
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 18:56:55 +0000
Received: from localhost.localdomain ([37.4.249.154]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1M5PyX-1iqFPY1tHJ-001NIF; Mon, 13 Jan 2020 19:56:41 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH V5 1/4] dt-bindings: Add Broadcom AVS RO thermal
Date: Mon, 13 Jan 2020 19:56:15 +0100
Message-Id: <1578941778-23321-2-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578941778-23321-1-git-send-email-stefan.wahren@i2se.com>
References: <1578941778-23321-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:1LJ2j7244eYkHFAUHdWlluvFEyk8XYcN5PXA1gFB39CpNctCmlA
 tHCLseCL17seFiEhGPXjTI7fZAU2vjdjjeBTRZlZJvpWQ+F+NJTMqHI2cxDMDNpXt6WFSrd
 URaMI8WB9CPCul3CewrF8jkvLQHySlDVor7raLVMen5Ha8pSkw8cQjEN40X7Ra4vWt2W9B6
 1zVmC9h+RDBbMcfP5DvyA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qxivOdifFGE=:4XZSIRqIgLFn5Se3XfzOXO
 hn3JrVw+qNXKVs2QVvzasuUduBzxughpiGolGcmx1npMHd5NAzfbe4Qd4mAYJqhP0TKdVJHtP
 /SuG0KScUUYnPK7YhaoFMRJrMPRp4bFDPgKmAQUmj4e6aHXsGPkj+jPIkJ1qhzYilxcHICg3/
 1mOzcT+YwH6t3SsaGyn6jhWYepFEFrgKVKY0ixjGdx5TZAeosmmRmhmNOn5VykDa7bPBGfdJP
 biIyTC/I4f1Xe6MKXJHw3velSKsbw1EL87w2im5MR1sLfmCvUD1Z1Mqw5A0EJhkih4UZzrKfV
 Cpabq/EE8eID7wixqSmJPCuw7XXjsLTFZfxXGGwKJOyPZO/Xx7QQannAvEpcyyd3KM8vX1TXa
 v5T2bxB6Y09h6RZtlnNZ/HH/zXhHC7jJYctEgLKNTrZt/FQbXNHTqyGS9H7fBtFYlelTbG3sl
 rPMop7FuKlK/4b1nCkxkDljJGrQSP48sTh+UltzCX4iwK45IsO4O9NDKzd4HmQfelsMpgBEZr
 NHnaqIof5HPK2dQaj5nDt2fa0RR2GimNWj7lGXeWe1CYyX7gvYEEvoYx7EeaLZ2aBYFDAEikD
 AsGhm/fVxlez8MnY1SrjE750KaWbCjEtgSx37HHV3zJF8oa29LiGv6g5gU09o5vRBxJy37j8Q
 SFFX4V1ho6WrZkZg+5E1r7W0SEjg8OKnOYubgU/3cokER8yhifXcQg2aQiFhP0XmqkqM8EJ1B
 6ZKS/kHOwgufF1acrHlAVga/HvksHRRxNWavGJT0c3SgHjldJs1PLoNcXbUiOw4w/OsR7db/9
 qA7yl1CwrrnRqpnT+5oyv1v+obYwFypvKulQodJqIVRnG4qJqwbSOdgcTZ3xPDIjC7WjJZ/Hb
 S6iSRXBZuKM2O/mUwK/6lFzt1L7n3RxqOHk8n3ow4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_105653_985586_1A341941 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, devicetree@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since the BCM2711 doesn't have a AVS TMON block, the thermal information
must be retrieved from the AVS ring oscillator block. This block is part
of the AVS monitor which contains a bunch of raw sensors.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../bindings/thermal/brcm,avs-ro-thermal.yaml      | 45 ++++++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml

diff --git a/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml b/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml
new file mode 100644
index 0000000..98e7b57
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/thermal/brcm,avs-ro-thermal.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom AVS ring oscillator thermal
+
+maintainers:
+  - Stefan Wahren <wahrenst@gmx.net>
+
+description: |+
+  The thermal node should be the child of a syscon node with the
+  required property:
+
+  - compatible: Should be one of the following:
+                "brcm,bcm2711-avs-monitor", "syscon", "simple-mfd"
+
+  Refer to the the bindings described in
+  Documentation/devicetree/bindings/mfd/syscon.txt
+
+properties:
+  compatible:
+    const: brcm,bcm2711-thermal
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+        avs-monitor@7d5d2000 {
+                compatible = "brcm,bcm2711-avs-monitor",
+                             "syscon", "simple-mfd";
+                reg = <0x7d5d2000 0xf00>;
+
+                thermal: thermal {
+                        compatible = "brcm,bcm2711-thermal";
+                        #thermal-sensor-cells = <0>;
+                };
+        };
+...
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
