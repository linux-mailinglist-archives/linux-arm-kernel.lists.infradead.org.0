Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8FC1566A8
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 19:38:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ArfizD0XR095jCwtnP5AYyWeg/ijkaq2sXUIxYnlGA=; b=pLwzIVOzs116yW
	DYKDMHRGGXHHBxFqMzKFYvoVJq2laiKsAuYD1ikf/LAf8KokERps8JUnMc8xwGnzjns5meAnETTPf
	BbLeAT1vpagGJ1yJ3Gak7txGvWcuZLqSKEgbxO7fqZkcVgpse0YQVFknlTdprrspe2FzgMAVqMmJE
	XHtM7A3OmglnZCHbGeIoCIAQGhCrec8yvQlQcnQFosnXwmxbu+/j+pXNsFAPckZCtVl15GjeP1G5O
	Fq+o++Y557Gk4WglEpN0C55hFxSi+LFXetqtSWi+tpy5IKQN2POGZ1svZhZUZ+prq4EgC/QEem27y
	6+rP9PAfC9dHfttNMc4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0Uzp-0001TL-FD; Sat, 08 Feb 2020 18:38:25 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0UyT-0000RF-Hd; Sat, 08 Feb 2020 18:37:03 +0000
Received: by mail-wm1-x342.google.com with SMTP id s144so5398514wme.1;
 Sat, 08 Feb 2020 10:37:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=h4wkoWcQnJp+t8wN1Rg1EugZCOCvQJKoH8CuDWH6aPc=;
 b=QbULqGc5tmXT0mWgOLyvt9tb0dNgj4Amg0ebxx8YgfZAUyLehH8BQNhW8ZYO6YlpOS
 kcYNDFUIFmYhZ7Tan6akUSxIMLUw9yst1CaiCBd63JNfKNTApYQc4oTqk3n/SPcjd3UE
 JvkKRbs+WN5ZLan58rC/xOfIaFs0qzcRlhkmd301tqnZ/4JA2Uz6c+/aqmdS3afniTS/
 C0eTF1TGk3oewzg4c29F2jvTkEx97oUw1fNhehggLBm7f9Fti9cDOujU4X0T4bwjUgB6
 y/DUjpDopqbpBYW8QloomzxlUeoB+N4Iv9kV71l56cD48x8TriXOc0sg7v/SbeoMnwk4
 3MRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=h4wkoWcQnJp+t8wN1Rg1EugZCOCvQJKoH8CuDWH6aPc=;
 b=ciW8bUyrjKz1uL7l6+s401S7F0mKf1aoZYogjKWKPiX4YJ8u2p8B1ZNgaGin8Rm3dr
 ehkOFm8rQKIYbgCksXbQZO4IPl3ZbXeLwcfZaE/kitj8wbNk8w1ukHZiVkVKuki5cGq4
 4XdxSDsFOeRqgEWrzgU0KBFy+0stWEnSk9Km3LkKp8qZ/xXhgWF0kaom0xIgKd6mru2O
 m4vVjDRbwRNXIgYzDh9iz1n5IGmminWyzPmyyRwlsdov4xMVdUiR6AYwa57ywxSd4sJ9
 ua5vqubKnqRFR37v2RG2tbDz6Wk4F2RIRIY94MdlOpBdQ8FyIrH0IWwZvnp4Xmr5i8K0
 x0Ng==
X-Gm-Message-State: APjAAAXV3WRrzdgx4GiuM4B3miWu5aMF2TshZFH+76m8F7wI3SIY19WN
 NHyjR7Dkk4xnwiFHhOxvpCU=
X-Google-Smtp-Source: APXvYqypINsuLcSbnhMi3GbDPw9Y+AStMkm0YqSJxtCnbBf0rGrFRP3tqEs36ksYbsN0b/ADZKI1NA==
X-Received: by 2002:a1c:a78b:: with SMTP id q133mr5271814wme.28.1581187019830; 
 Sat, 08 Feb 2020 10:36:59 -0800 (PST)
Received: from prasmi.home ([2a00:23c8:2510:d000:a553:90a1:93f5:e306])
 by smtp.gmail.com with ESMTPSA id b67sm8404385wmc.38.2020.02.08.10.36.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 08 Feb 2020 10:36:59 -0800 (PST)
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
Subject: [PATCH v4 4/6] dt-bindings: PCI: rcar: Add bindings for R-Car PCIe
 endpoint controller
Date: Sat,  8 Feb 2020 18:36:39 +0000
Message-Id: <20200208183641.6674-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200208183641.6674-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20200208183641.6674-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_103701_616541_B9F39CED 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the bindings for the R-Car PCIe endpoint driver.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
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
