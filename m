Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E861801A5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 16:21:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YF52nDtY/w+wk8JMUesWOt6OPHO2zAd6fLrHKrVDXO4=; b=O3DvbtiEz0aSE/
	QOAqwJUYaudHk/M1CIuSipLXSxXXW6aXf+mPlAw5iMkbI0XaN3q/BO+13kwRi9NI3q2TbmNFlJZEB
	b63YTE6fI++aYmWL7bz2Nx+65LpLkntxipb9snmfvZGFXDFIDrxTJaMRmGGNAbn/xM1u3/I4ODu0y
	3XFotAdlDOVl3mXTBnPmA/tyn1nXbrlIm0sHfN4LL1tjK4srMYGlNk3QwjBq1/t1n5k/+V2QrRqYe
	cBIsYQj9fPBvp0TYH2ZXRB+SO4ncmw5h4ZR/Rphgqa1VvRW8bhm06fS8gsmltE4Una/hn/rj/poL7
	vBeJB0oAaLiSr15ztkuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBghN-0003GD-Mm; Tue, 10 Mar 2020 15:21:37 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBgg9-0002Dk-BM
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 15:20:23 +0000
Received: by mail-wm1-x343.google.com with SMTP id 11so1528688wmo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 08:20:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=19P5Q8UerRaXg+pM9/nCaLV3h2AyveSWuKf0Gpk16Qc=;
 b=hPJQI53CXKGUKQ6jU+3Yk4A2f/61DleVLJlpLu7gmcgNeuqRC+h9jHegtHtMiMoirs
 eSZTsuwwpk2gJWCUXK31t/AYyWoqN3/U0Afs5MVe8GdJTCmORo8fJu+CpULL9yJYF9/m
 yEj/S1/0ITfGWqQfBD0MfJdTEMqUxcYd61dUCepw/nmTYNBXU/uXX1c4viWMZ1//GJiP
 f0KFevmKVuxqvTLyn1R+0vRCH9SIDd1gF30LjW3itEhy6mtrRaNIZtzrmlTUk4WLw0W4
 XEgY78A/Hv/2fI6lQ8BN7GCAPgnMlloUlRqYu1ctshqIVcTtzrV6NhjhG60JB3KH1GF/
 +WLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=19P5Q8UerRaXg+pM9/nCaLV3h2AyveSWuKf0Gpk16Qc=;
 b=fVkEYRPrUmdcaYhMh7SGRx9DO9N0NYQRNzl7cNk+Ent9/WAQE/eD7Nst+PRpZ47j1x
 U1E8SVVfqzjPtHc1h/8DL3P/eyPIzbRUxeVWiWXL7x3x5jDbUSP/bRzlHOt/USXG+N41
 32bpslXzjinmyJ2IjNaoVB45uiBCl7jHxEB+6R7jfk7/LssErVkVstiHFrGV9PBIsD0V
 EqutrDX43XRB0TPNSqMOr6rZ5aDCTJR2gacQYTZhfmzNNFOrcrKwltzmfBfaOTHmTP3X
 7a9RyNZahKVel0PvHI5M8HVjCSbX2/LBMNSAYCYeYqxNKlkjg5HhjKa8k9G+vfUX92ji
 PVbw==
X-Gm-Message-State: ANhLgQ29QZ7Z+qB8JZRmQu7vJ6P0xPrrFnmMXXnnehhOi8ii2q04DnGw
 +2UIMx3h64F6XcC0Tzq5T0s=
X-Google-Smtp-Source: ADFU+vtIkqP9tnxLdbeEmLYZOzuONJ3rU8LjegCTivGOd0PUquObJXoCx5ureVJpw5rPnAo1hMaFzA==
X-Received: by 2002:a1c:6a0c:: with SMTP id f12mr2590876wmc.78.1583853619358; 
 Tue, 10 Mar 2020 08:20:19 -0700 (PDT)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id u17sm4230626wmj.47.2020.03.10.08.20.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 08:20:18 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v5 4/8] dt-bindings: memory: tegra: Add external memory
 controller binding for Tegra210
Date: Tue, 10 Mar 2020 16:19:59 +0100
Message-Id: <20200310152003.2945170-5-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200310152003.2945170-1-thierry.reding@gmail.com>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_082021_428112_EE29B4D5 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 Dmitry Osipenko <digetx@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Joseph Lo <josephl@nvidia.com>

Add the binding document for the external memory controller (EMC) which
communicates with external LPDDR4 devices. It includes the bindings of
the EMC node and a sub-node of EMC table which under the reserved memory
node. The EMC table contains the data of the rates that EMC supported.

Signed-off-by: Joseph Lo <josephl@nvidia.com>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
Changes in v5:
- convert to dt-schema

 .../nvidia,tegra210-emc.yaml                  | 83 +++++++++++++++++++
 1 file changed, 83 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/nvidia,tegra210-emc.yaml

diff --git a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra210-emc.yaml b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra210-emc.yaml
new file mode 100644
index 000000000000..caf21c08f9cc
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra210-emc.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/nvidia,tegra210-emc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NVIDIA Tegra210 SoC External Memory Controller
+
+maintainers:
+  - Thierry Reding <thierry.reding@gmail.com>
+  - Jon Hunter <jonathanh@nvidia.com>
+
+description: |
+  The EMC interfaces with the off-chip SDRAM to service the request stream
+  sent from the memory controller.
+
+properties:
+  compatible:
+    const: nvidia,tegra210-emc
+
+  reg:
+    maxItems: 3
+
+  clocks:
+    items:
+      - description: external memory clock
+
+  clock-names:
+    items:
+      - const: emc
+
+  interrupts:
+    items:
+      - description: EMC general interrupt
+
+  memory-region:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      phandle to a reserved memory region describing the table of EMC
+      frequencies trained by the firmware
+
+  nvidia,memory-controller:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      phandle of the memory controller node
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - nvidia,memory-controller
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/tegra210-car.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #
+    reserved-memory {
+        #address-cells = <2>;
+        #size-cells = <2>;
+        ranges;
+
+        emc_table: emc-table@83400000 {
+            compatible = "nvidia,tegra210-emc-table";
+            reg = <0x0 0x83400000 0x0 0x10000>;
+            status = "okay";
+        };
+    };
+
+    external-memory-controller@7001b000 {
+        compatible = "nvidia,tegra210-emc";
+        reg = <0x0 0x7001b000 0x0 0x1000>,
+              <0x0 0x7001e000 0x0 0x1000>,
+              <0x0 0x7001f000 0x0 0x1000>;
+        clocks = <&tegra_car TEGRA210_CLK_EMC>;
+        clock-names = "emc";
+        interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
+        memory-region = <&emc_table>;
+        nvidia,memory-controller = <&mc>;
+    };
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
