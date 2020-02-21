Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B05166CB8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 03:12:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=j6tQPEuwSlHyMniUUmaZfimtWQaWF/mOUrke7RdWVhA=; b=W9P
	W2i+byPve/M0TukOH+K58wGhJaqG5yghxBDitrmR0bQ23yV9kZJ8gvD7PWF3ew+F9rnRo8q7HNliV
	d7CFj6s4ez926Ksec32yaqlS6pCW/nfeJYgdnFn9UIzCYCnvwELlbvGUk8bjyXddBE2IdLjRBqN1X
	b+ahIY7QulihKjwxvtYT+RnlO8jQb/lHxCogxMRq5xxJNb6IBGqU/9Ryk2px0pocsSRNcQ6zRTFUW
	v7invnjphXl/Co9Yya0nVcOknvsSogHTVAxYLbbpfz+4ZVT3I4puxhtTEDcrhPC7LUZnFn2963dQQ
	c24VYZq2JEdZ7xDoCIoNavOLcuzelDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4xnf-0005ho-VX; Fri, 21 Feb 2020 02:12:19 +0000
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4xnX-0005hG-5u
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 02:12:12 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-12.nifty.com with ESMTP id 01L2BcSM007985;
 Fri, 21 Feb 2020 11:11:38 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 01L2BcSM007985
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582251099;
 bh=S6KuamcJ1OBT86PX3D7Tj8TPgwjtQvO9qJMRN7CA9Sg=;
 h=From:To:Cc:Subject:Date:From;
 b=bP5C+o1tC+E9hv5J5syDpuFvhBqNpknB2WyJ2baKXHhcmVRh8GDmanjoZMpOBICj1
 Ox9d+M4ZoGw/UDKDaXlwh3sco0vjv0qP4UES/N+BqBz2+2Svj1OtjVBGv8RFpbzxcC
 0v8qtsDzHCf1LzijftYYXUqocPNu/b3PZ2LYJxyT9RExIh+Ud1cipy807XIIp9wqeE
 aNDG8CEs34N7buyci33PMVFul+CE20sY5dSbraNjTikAuktwQ3gTEZ0IRq7UohLs/x
 gUovN9s7BtNvCm7J1IBrdGxuT8VlB5YhJlN4Va1b4r0ocUAGlPAwJ5DOyEjjSNFUTK
 IvhAM71WAHlow==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH] dt-bindings: serial: Convert UniPhier UART to json-schema
Date: Fri, 21 Feb 2020 11:11:36 +0900
Message-Id: <20200221021137.19443-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_181211_435669_313FAA18 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.79 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.79 listed in wl.mailspike.net]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-serial@vger.kernel.org,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the UniPhier UART binding to DT schema format.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 .../serial/socionext,uniphier-uart.yaml       | 46 +++++++++++++++++++
 .../bindings/serial/uniphier-uart.txt         | 22 ---------
 2 files changed, 46 insertions(+), 22 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/serial/socionext,uniphier-uart.yaml
 delete mode 100644 Documentation/devicetree/bindings/serial/uniphier-uart.txt

diff --git a/Documentation/devicetree/bindings/serial/socionext,uniphier-uart.yaml b/Documentation/devicetree/bindings/serial/socionext,uniphier-uart.yaml
new file mode 100644
index 000000000000..09a30300850c
--- /dev/null
+++ b/Documentation/devicetree/bindings/serial/socionext,uniphier-uart.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/serial/socionext,uniphier-uart.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: UniPhier UART controller
+
+maintainers:
+  - Masahiro Yamada <yamada.masahiro@socionext.com>
+
+properties:
+  compatible:
+    const: socionext,uniphier-uart
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+
+  auto-flow-control:
+    description: enable automatic flow control support.
+    $ref: /schemas/types.yaml#/definitions/flag
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+examples:
+  - |
+    aliases {
+        serial0 = &serial0;
+    };
+
+    serial0: serial@54006800 {
+        compatible = "socionext,uniphier-uart";
+        reg = <0x54006800 0x40>;
+        interrupts = <0 33 4>;
+        clocks = <&uart_clk>;
+    };
diff --git a/Documentation/devicetree/bindings/serial/uniphier-uart.txt b/Documentation/devicetree/bindings/serial/uniphier-uart.txt
deleted file mode 100644
index 7a1bf02bb869..000000000000
--- a/Documentation/devicetree/bindings/serial/uniphier-uart.txt
+++ /dev/null
@@ -1,22 +0,0 @@
-UniPhier UART controller
-
-Required properties:
-- compatible: should be "socionext,uniphier-uart".
-- reg: offset and length of the register set for the device.
-- interrupts: a single interrupt specifier.
-- clocks: phandle to the input clock.
-
-Optional properties:
--auto-flow-control: enable automatic flow control support.
-
-Example:
-	aliases {
-		serial0 = &serial0;
-	};
-
-	serial0: serial@54006800 {
-		compatible = "socionext,uniphier-uart";
-		reg = <0x54006800 0x40>;
-		interrupts = <0 33 4>;
-		clocks = <&uart_clk>;
-	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
