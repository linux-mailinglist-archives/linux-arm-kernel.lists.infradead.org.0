Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0C1173BF5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 16:43:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jjltgBpQ1sE08ailuwEEPbkdoEcjEAmwnhEX+cvEcOI=; b=Dm88bUVafit11R
	UFLCr/RKgdnfh3BkRC6QVSWbyTjEBi9Swk+mKnKM1jPU6uUwPPmS2k2gOqIJy0LEEXe4uY7gaRBw4
	W/XTtEgyb6zTZ7i+yreaQEHOx7f/ZxJI4l4MEaC6WrGieuf97WJ6kPS5jynu4wtQaz8Wvt7V22Zal
	E0jeTHUBksASBmgerF3VbA8ENZadsGGMmoH1Nkb+KWhVP2vW1Glh0x+7bM+OjZzhYwhEtC19WF7HT
	5upZxhpuFs78aFI0fWoNM8Xa4FeEkSB/99RN2N4a61SLAtZfeByJi23WSTsVn+96T1zwv5leuFWUP
	VJe/iwiZrdFvGMUDRiQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hnW-0006iF-E0; Fri, 28 Feb 2020 15:43:30 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hmG-0005z0-OK; Fri, 28 Feb 2020 15:42:14 +0000
Received: by mail-wm1-x344.google.com with SMTP id m3so3703584wmi.0;
 Fri, 28 Feb 2020 07:42:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tydCqefpRAiM8TxJYR22+ZNMRD98oyKBlX5K6Oe7m5M=;
 b=NlRQ/A3ZIuvune2sh7ASmytwru9f5VtLMq4MwdfOlResHzAFeHMGkLVZRtXTGEo9Lw
 kDS1ltiis7PSqNMLcgCP54Jx3dCWVET/blN70hFFCT1iYj2AJ85VtxglH2uTSx0ZNu6s
 0ctK7noY68yW58ICsVV1El3LIn3gTw/TkmT/JDcAgPmTyKVpzhYVHVE7QGYMB1foMpOJ
 Lha+kZ5BhhFCNa3ZFdcGOeUbKX+iRDuU15w89Ha8UUCMvMw7TFzyLqj5qZOi8QhULpqB
 5zc8JW9Vjwa4kBRHmUo7iaKAzHk4H/3lUb87u07L96B4hClHmmHwR8TPalH2vMv+2E7j
 KUJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tydCqefpRAiM8TxJYR22+ZNMRD98oyKBlX5K6Oe7m5M=;
 b=MYDplOQF8IxlGKWDbLJLmhMLAr/iBaO5oXRdvYuStZDFPK7/LeXFnSiQmeZNozRYmB
 c2jUeGgcBAGOp9aOuIsnaf6bN/KxoP7tOnhAxwE+DSB0MvpilIXCnCk6VL75Bs7BSTbW
 V9KtDr/g5XGpZOoAaSJKb+0dEhsGybYM3PZ/JFL/R4NCbT7Qa2dXb4WDla2ePAxlHYUZ
 axXp6fgGkmDUZo7JDU4uRmzB8e4mdNvt9v8TOGN78WxBq/hpwCHJ0ZimlBubsrhQsTlZ
 CXBuREYqRmAdsDKsSc8NkgIsvca1Zm/JTADBl8POmIeOYDua4ACnT7mHnnh6bl0JFtp2
 qYaw==
X-Gm-Message-State: APjAAAU42n8GZjoAVsvbTyvDUkcYdG5OgOjUEM1GFUMQrkW0tCkaV6cB
 Jl4DjIn12n0QRs9GYC8+w8Q=
X-Google-Smtp-Source: APXvYqy5mp+jeXmLU4fCJ72eZVrwLD5Dhfz9BwLviLvJbhwlj3Q8WU1dIX32i9RlHr4KRGVpm9H3qQ==
X-Received: by 2002:a1c:238d:: with SMTP id j135mr5518985wmj.165.1582904531486; 
 Fri, 28 Feb 2020 07:42:11 -0800 (PST)
Received: from prasmi.home ([2a00:23c8:2510:d000:3855:fd13:6b76:a11b])
 by smtp.gmail.com with ESMTPSA id k16sm13355349wrd.17.2020.02.28.07.42.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 07:42:10 -0800 (PST)
From: Lad Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v5 5/7] dt-bindings: PCI: rcar: Add bindings for R-Car PCIe
 endpoint controller
Date: Fri, 28 Feb 2020 15:41:20 +0000
Message-Id: <20200228154122.14164-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_074212_861437_CB6B59BA 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the bindings for the R-Car PCIe endpoint driver.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/pci/rcar-pci-ep.yaml       | 76 ++++++++++++++++++++++
 1 file changed, 76 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml

diff --git a/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml b/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
new file mode 100644
index 0000000..07cd5a7
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
@@ -0,0 +1,76 @@
+# SPDX-License-Identifier: GPL-2.0
+# Copyright (C) 2020 Renesas Electronics Europe GmbH - https://www.renesas.com/eu/en/
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/rcar-pci-ep.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas R-Car PCIe Endpoint
+
+maintainers:
+  - Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
+
+properties:
+  compatible:
+    items:
+      - const: renesas,r8a774c0-pcie-ep
+      - const: renesas,rcar-gen3-pcie-ep
+
+  reg:
+    maxItems: 5
+
+  reg-names:
+    items:
+      - const: apb-base
+      - const: memory0
+      - const: memory1
+      - const: memory2
+      - const: memory3
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: pcie
+
+  max-functions:
+    minimum: 1
+    maximum: 6
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - resets
+  - power-domains
+  - clocks
+  - clock-names
+  - max-functions
+
+examples:
+  - |
+    #include <dt-bindings/clock/r8a774c0-cpg-mssr.h>
+    #include <dt-bindings/power/r8a774c0-sysc.h>
+
+     pcie0_ep: pcie-ep@fe000000 {
+            compatible = "renesas,r8a774c0-pcie-ep",
+                         "renesas,rcar-gen3-pcie-ep";
+            reg = <0 0xfe000000 0 0x80000>,
+                  <0x0 0xfe100000 0 0x100000>,
+                  <0x0 0xfe200000 0 0x200000>,
+                  <0x0 0x30000000 0 0x8000000>,
+                  <0x0 0x38000000 0 0x8000000>;
+            reg-names = "apb-base", "memory0", "memory1", "memory2", "memory3";
+            resets = <&cpg 319>;
+            power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
+            clocks = <&cpg CPG_MOD 319>;
+            clock-names = "pcie";
+            max-functions = /bits/ 8 <1>;
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
