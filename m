Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C8A18CF4F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 14:45:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Gw3w2Nr50eMyb6Edt3Q7VGdb9fjM7W6/80Oth0MyBzc=; b=X7lKNhOGnREfnW
	1zSft0vyeCxoemPDxxD1sUJh5K4hL+j0ph61LBdoBJ9zm/9HRj4muRwarCmcopLriJvr7dhUWcb+c
	cSBpceNMNQqBkz0ppvI3RMH/MRSbPasfoFSvTGC2+s09dB+nAvanKgoNO6drrGiOjMuZQImxs3EBB
	ZfySC4kAj/wDOxjpeIEbWi3g4cdOsKAcfb/vzOpPcbd3AZmKMDKN/+cjOZlPrM4SG4bS/2Nnwruzg
	VA4P9fwigUdQUQxZ67bDqTIrjHaQ4Syc+DLq/74Kky+7a5EB9zouenqUWw8fArd6i0SZp5d3A3bmU
	RSBXIvKg/2ilkWrn0R7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFHy8-0003OP-A3; Fri, 20 Mar 2020 13:45:48 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFHxw-0003Nz-1K
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 13:45:38 +0000
Received: by mail-lj1-x243.google.com with SMTP id d23so6397199ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 06:45:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Dhev12vgplB0YGPEx4Uruvjf1kUwXHqE9D1Ta1+i8vc=;
 b=RHuPFZ0By7Ocjqg0xJ137qu2BhNeFIluwAlqvDjoCWiUFCANyfPo/DXo6N7s0izeEv
 rGNNiqF1nbSD/bWQGoqQ0Du8B/OP+0ZFkOlsnHhyh9Gm4UhNNNkm6MBBgOHo+svFLfps
 PerY3tm6F9ut4TsS1kFuFO16G9JDi0Jljh2Y8iflRcG2KfrKUVQL6ub8UdIp4t0+X8D5
 VJVB8b99nmDtsZE/yThHYVWeG03DgWBd3xDPXOkonKvBxXgl/iY9pmhojZXc68OO6Jmo
 N8vU2/mkJ1ugWHiVZvzggi10tLJnjP0afQI2qqqawmwoDJQP2+xo4yqouRk2xTbVAiEo
 4bPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Dhev12vgplB0YGPEx4Uruvjf1kUwXHqE9D1Ta1+i8vc=;
 b=kE7Tq2JoPTxC+7VNhdWxaq8Czsi0nOImYHRdsCg2bnGzWttJSrYuXLkFISfaUPKIia
 uIXz/h6yZAz4M8zb3hxfK6ePjhlPg/UnvLhW9vsDRbbGeVbpcoHHXrlwhG4E6vQK6dbq
 RE3fFhCg5u4mnOHHluOKPrhWtBbUc+D367+EkD8vo0vlqdRIydy/IyhzB70PrWuXNDUP
 hsaVJolxhXAOnWvbHOspzPDChPPZQKmMQ6jN+mcmDWbRFvi7zS7S8MKO4jKurSubNvbM
 JzJgsUusrnOTnKrq4QTjMdhuhi32ZeMfeN0B/rhNEQVrxy7faoa86lF8lwRXV9PgDgKz
 jPrA==
X-Gm-Message-State: ANhLgQ2hzUTZ6VltJDKT9RXJjcCsarYhlv3x+kXDZi4phT6ljrTvwqZJ
 CpMJGusxUif3Q2QvsD1NMMWe8dX4KfRuNw==
X-Google-Smtp-Source: ADFU+vuOWEFVG0gP0Elps6dSYnypfg2BpwEqEMPnvtzDEJ3aXMvLcW1YXcAAOXoOYo5VB6AyB+rNkg==
X-Received: by 2002:a2e:9e16:: with SMTP id e22mr5744206ljk.220.1584711933927; 
 Fri, 20 Mar 2020 06:45:33 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id t12sm3372135ljc.69.2020.03.20.06.45.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2020 06:45:33 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2 v3] bus: Add DT bindings for Integrator/AP logic modules
Date: Fri, 20 Mar 2020 14:45:24 +0100
Message-Id: <20200320134524.52140-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_064536_662832_8FD4A13F 
X-CRM114-Status: GOOD (  14.52  )
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
ChangeLog v2->v3:
- Put proper ranges around the addresses managed by the
  LM bus, 0xc0000000-0xffffffff as
  <0xc0000000 0xc0000000 0x40000000>
- Put unit name on the first LM bus bus@c0000000 in the
  example in the bindings.
- Drop leading zeroes in the unit names of the devices
  in the example.
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
index 000000000000..47227427c1c0
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
+      ranges = <0xc0000000 0xc0000000 0x40000000>;
+      dma-ranges;
+
+      bus@c0000000 {
+        compatible = "simple-bus";
+        ranges = <0x00000000 0xc0000000 0x10000000>;
+        /* The Logic Modules sees the Core Module 0 RAM @80000000 */
+        dma-ranges = <0x00000000 0x80000000 0x10000000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        serial@100000 {
+          compatible = "arm,pl011", "arm,primecell";
+          reg = <0x00100000 0x1000>;
+          interrupts-extended = <&impd1_vic 1>;
+        };
+
+        impd1_vic: interrupt-controller@3000000 {
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
