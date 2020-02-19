Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1951647D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 16:09:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0UKKkh0wZFVKD9cDRf43pjkrvTGeUJnylWcfqRmQ+4U=; b=W1+zHnIQlyAEVv
	SE5yCdMd/ZOmVTjhIXQz9LGK4NdPw0G3ONUuDN3VH7zvNadlewxPkdxzXmUc2ch80D0ENshyBPU6+
	/3yxwrh/BTGUsDNPv0Ukzr3aRNPtwq5IMWCnuR2rvVMayksFK6xYLIoiXlX6MkBFB7XKst7isGGyn
	Ug1/bvnMHUH3uZQqUlGcZaa6m9NvvWC3zA3J+U/ZrvhS4wf9cyZC89ckH3sI2Spx7eUacLE7vhK8B
	3JL5hW8umVlvyL64s9z9tJqW+3pHP1JXZqfeNrImFQmnVmtjVUGhHMcf+FlJCEp958bPaMeDQ5M2k
	UOycxXkR6Qv0yve8qzZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Qy4-0006ZS-QD; Wed, 19 Feb 2020 15:08:52 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Qxw-0006Z7-Om
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 15:08:46 +0000
Received: by mail-lj1-x243.google.com with SMTP id q23so739038ljm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 07:08:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GW5v5BX8+tkqxHE6xYMEE58vdhGvaHw9mUA5BJgYcpk=;
 b=SDNT+wLvYQFqipXTK1TpD7uG4xelSkjY1h8N+U+wQ3GZpwzfe6Tyu0MZzQUBHkVxUK
 MIQwcy6EzIVFKTq49D4VXbm+ib98EEeyKzA3zhT4KdfjlYygEZeFDvg68tOQKQ/hRye1
 0RBJb0HXfMZHWJZ+bosGy+d88FGepcoCxu7gN64KsEFI8+AUAbDZP05mW409AEK6rea/
 cXQIvGCz+G7NTa34KsFBIOr6L1c6ubsCA6olxpdrB8S53G2QqUxDAIIML/dBYaJk0QyI
 cz68S4B44lXN1Yf8acFS9j6RGMyujENATUS24aVfjj8DM+/O8SHu4H8CZyG1mfP+DNRD
 37Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GW5v5BX8+tkqxHE6xYMEE58vdhGvaHw9mUA5BJgYcpk=;
 b=mS0+1Wcxpp4Be1ZtFGJhw508DxZEpixama/B+FXlTPa/B6x8wHIXvcQFlF0+/MGWNB
 8zWZIn5Derd43289KUb53JfdEYa2xwYX9MCyZRTO0Gx90m+TY/jHIkPULSs5UT57L/c3
 OUR33GIZRZQP3S+GUXrWCFXtWPI05M8qDySsdUIYUsm/xvZfBPCWL/LMPTZS51GT9W6k
 d2Zv74ThXCfgpDvMkRSs/Cn6CJU2+1TE3JKQCQaKa+lNlNCGKBabo4a4Sao9BgqEY/QC
 whYpp1Kmy0rLTHtUbqdIi5vfiqbXtzxsvx/B/5z7wVh7mOAHY6FZubreX+oLcvCl/Ugf
 ZMCg==
X-Gm-Message-State: APjAAAUxRAQsuJgqPNohvSDlqebmavPPNbD+cKpkZGPmaT0muOf5rdxt
 dp8BI+p+vGmE3mxLNSvDPSSNqN6qTwg=
X-Google-Smtp-Source: APXvYqxq9QwwEWQUHZuUzrPDFRAd/veEn/AEdJrsQxUlkSA0VQ9fVRv9rgpN9uJcRMQVB4+BJt/pHA==
X-Received: by 2002:a2e:721a:: with SMTP id n26mr16157864ljc.128.1582124921791; 
 Wed, 19 Feb 2020 07:08:41 -0800 (PST)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id m83sm1524809lfa.5.2020.02.19.07.08.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 07:08:41 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh@kernel.org>
Subject: [PATCH 1/2 v2] bus: Add DT bindings for Integrator/AP logic modules
Date: Wed, 19 Feb 2020 16:08:33 +0100
Message-Id: <20200219150833.126058-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_070844_837653_8B097A22 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds YAML device tree bindings for the Integrator/AP
logic modules. These are plug-in tiles used typically for
FPGA prototyping.

Cc: devicetree@vger.kernel.org
Cc: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- Fix Logical->Logic spelling error
- Set generic names for bus and serial
- Just map the addresses 1:1 and use empty ranges, as the
  LM's don't really translate the address.
- Provide proper DMA ranges: the LM modules see the RAM at
  the system-wide alias @80000000 rather than 1:1.
- Drop the reg from the bus node (we just need the ranges)
- Make the regexp for the bus node such that @address is
  optional, as we don't require any reg on the node
---
 .../bindings/bus/arm,integrator-ap-lm.yaml    | 83 +++++++++++++++++++
 1 file changed, 83 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.yaml

diff --git a/Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.yaml b/Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.yaml
new file mode 100644
index 000000000000..5db5267410a6
--- /dev/null
+++ b/Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bus/arm,integrator-ap-lm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Integrator/AP Logic Module extension bus
+
+maintainers:
+  - Linus Walleij <linusw@kernel.org>
+
+description: The Integrator/AP is a prototyping platform and as such has a
+  site for stacking up to four logic modules (LM) designed specifically for
+  use with this platform. A special system controller register can be read to
+  determine if a logic module is connected at index 0, 1, 2 or 3. The logic
+  module connector is described in this binding. The logic modules per se
+  then have their own specific per-module bindings and they will be described
+  as subnodes under this logic module extension bus.
+
+properties:
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+  compatible:
+    items:
+      - const: arm,integrator-ap-lm
+
+  ranges: true
+  dma-ranges: true
+
+patternProperties:
+  "^bus(@[0-9a-f]*)?$":
+    description: Nodes on the Logic Module bus represent logic modules
+      and are named with bus. The first module is at 0xc0000000, the second
+      at 0xd0000000 and so on until the top of the memory of the system at
+      0xffffffff. All information about the memory used by the module is
+      in ranges and dma-ranges.
+    type: object
+
+    required:
+      - compatible
+
+required:
+  - compatible
+
+examples:
+  - |
+    bus@c0000000 {
+      compatible = "arm,integrator-ap-lm";
+      #address-cells = <1>;
+      #size-cells = <1>;
+      ranges;
+      dma-ranges;
+
+      bus {
+        compatible = "simple-bus";
+        ranges = <0x00000000 0xc0000000 0x10000000>;
+        /* The Logic Modules sees the Core Module 0 RAM @80000000 */
+        dma-ranges = <0x00000000 0x80000000 0x10000000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        serial@00100000 {
+          compatible = "arm,pl011", "arm,primecell";
+          reg = <0x00100000 0x1000>;
+          interrupts-extended = <&impd1_vic 1>;
+        };
+
+        impd1_vic: interrupt-controller@03000000 {
+          compatible = "arm,pl192-vic";
+          interrupt-controller;
+          #interrupt-cells = <1>;
+          reg = <0x03000000 0x1000>;
+          valid-mask = <0x00000bff>;
+          interrupts-extended = <&pic 9>;
+        };
+      };
+    };
+
+additionalProperties: false
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
