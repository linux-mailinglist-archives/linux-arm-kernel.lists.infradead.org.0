Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2DB01347C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 17:23:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s0QFI0j7Pq775Jc5QmEmnUWOGO5IE2CC04A67FCb0IY=; b=OpQOHelSUnO+QV
	g58MBuZW2MOXJ3AI7zGlVeR5l9oeLyQm5EZOsAk+hFwjZbhr0T0ASyK/Bih5gYzLzykTkAz0Fg0Ma
	KGJAZUXAbTQpOXCyJPhn+mF9lxImAZ8+JKuqwzYKqB5SNjVYTQV1qa0shq7CaNcoKBRTowBvEZdfj
	umNrYkUrbP+p/wOjggwfrNjWKXnalAWgk6RAOTJgJcXyFsaOJ3/OpGZFcfmRVsyzpQVvBZt78U+05
	PZHf3pZ7jyjfUldaBVdYH9CxAoAtjrbbROfaqPqYFedp3g3VQQX0k1jGqgeveaEIrxPjCa5MYpIUM
	hahw9uQIda0rROgkn82g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipE7X-0002Eb-0u; Wed, 08 Jan 2020 16:23:47 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipE68-0000nX-6R; Wed, 08 Jan 2020 16:22:25 +0000
Received: by mail-wm1-x344.google.com with SMTP id b19so3120080wmj.4;
 Wed, 08 Jan 2020 08:22:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WfL24R1jbieE92Zr2OINAr/LHQLYTr+DjNdDMkvlSSs=;
 b=DKe3OjAewdlKxi5A5DrjA+hPYhuiuqf9P55p1QfwL4dmlyOlHsnzOlt6c9lseJVRE4
 zEIqVq+DIGf36Bgq5/j9f+EU5tJSYhLgfOaN9SUjoaLWOY47U3EX7HzPeCdtYV3qdQ6t
 o2MzVfFzk8FCEq7kXe3hM8GURb+vgGnWezs8jZrpjNnOIHqlD+eh/CvbGaaIxLoOmHGQ
 jpy8wKysYn8oDbXcp3isBt0aTQg3fCu2Fn6i/9FMuGa5BLhZNPSMA6XPwdjvnb2CA5QM
 oLEzlf5+JsRPGjrC9fRC1kgtDo9W3hzalsKDBPfDzrJmmDT5f+31alcASf4c6WPzhZKj
 XZFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WfL24R1jbieE92Zr2OINAr/LHQLYTr+DjNdDMkvlSSs=;
 b=sxsAEj5Jx9pi0UVxtrWyRplq5FvbJvWHy3frzwuPum39Ld0Shrcx46V8ygOl0ANSVw
 H4GkdD4gIS3192KvFEi1RgKAmHPNoUDn6mO5Ht0kd0D3XPam6Tiz25HbOtofpEtlKJR4
 Ds6sfz34U3j81TYAMwhdeOfoZur0mQ7Q4Fbgp7cmqMqZ1U17VPo0LmQKmZVarVbDiops
 ETYNk9HsffR2KBk566qlGvVzzQRrPpIVMEGASzbsdXEzMpkWzm5XfvmKAXJTDsW3Qt79
 EwDbm8hVfbLh2R4rGFh0e4D1q4+EPKTJc1er+Mzs4zUlK0Wku+/GKCBS3j2To2WH5GxA
 rbBQ==
X-Gm-Message-State: APjAAAWMi8Cq5rqjWHin2WdowHMWBzGHuCmweEO3HmfMDsyaSJ8A5dAG
 PkJG2H5KUnc8HMsFSmkWTH0=
X-Google-Smtp-Source: APXvYqz6e4O8N1oBV+D3PFV4CPHG2KoFc+aqTo2lzVIxRuRIAafTkSuZLrV9KTPvkqw0PeJAkz8PIw==
X-Received: by 2002:a7b:c4cc:: with SMTP id g12mr4981393wmk.68.1578500538653; 
 Wed, 08 Jan 2020 08:22:18 -0800 (PST)
Received: from prasmi.home ([2a00:23c6:d18:6d00:2811:8b65:294e:fa09])
 by smtp.gmail.com with ESMTPSA id q3sm5112180wrn.33.2020.01.08.08.22.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 08:22:18 -0800 (PST)
From: Lad Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-pci@vger.kernel.org
Subject: [v3 4/6] dt-bindings: PCI: rcar: Add bindings for R-Car PCIe endpoint
 controller
Date: Wed,  8 Jan 2020 16:22:09 +0000
Message-Id: <20200108162211.22358-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200108162211.22358-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20200108162211.22358-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_082220_251300_6FBCFFBF 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.csengg[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Jingoo Han <jingoohan1@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-kernel@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the bindings for the R-Car PCIe endpoint driver.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 .../devicetree/bindings/pci/rcar-pci-ep.yaml  | 76 +++++++++++++++++++
 1 file changed, 76 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml

diff --git a/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml b/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
new file mode 100644
index 000000000000..99c2a1174463
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
@@ -0,0 +1,76 @@
+# SPDX-License-Identifier: GPL-2.0
+# Copyright (C) 2020 Renesas Electronics Europe GmbH - https://www.renesas.com/eu/en/
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/rcar-pcie-ep.yaml#
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
