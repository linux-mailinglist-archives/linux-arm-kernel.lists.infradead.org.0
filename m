Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FBD128E6E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 15:12:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RIARCJodLwU9CIfazaoGhrclS0w18M2fd83M4I4FIFo=; b=PXU1/ziFG2cCNH
	BlHTf5icffuWSD22Pej+ZSEu/y/+g6Lz/MBnFvS4wPb/ScElF27dEPY9vkkEofVAqK64Dy4WjPOZi
	TH+wjoxpPkKL9Oy08rrfzt5lhgC8nypyCIu7QlXP+1Xi/DKcun4UBbowJ9Gl24t2y5RJWu7adxLTH
	XvLxK7/RHKEs8F0Esjl8mYyYqbM+u+IDQai1eZh0XtBsnKoP6znDv1rumfDdejdlYcfftoLU9Yp+3
	j8PYB5YeCm+mG1nnZ/IRwTJc0HNvc0yRYpofoAZdECA25MnoYk+xHuB2osCS5oQMegv4wWDGAfn9t
	YUmbkeKVjRScxRD5K+xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij1xZ-0002Gp-MQ; Sun, 22 Dec 2019 14:11:53 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij1wS-0001Wg-C0
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 14:10:46 +0000
Received: by mail-wr1-x433.google.com with SMTP id q10so13923544wrm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 06:10:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8j9eOWE07q09JFeaj2clIPgNgVmP6iqPKn1MuSSo7Oc=;
 b=FVClek6mKaJOjogEQLFMQAkMI/BdjhvFdPu+anfn54WLHMlADjW0cR/H0YPZczqs7n
 rC344yXpt8uBNgeAG1cSvhWn8IAYvqtUwGQVl5y1YMfFG4TI0RRBj+9wmakWMoBVzQdM
 57qumlvrliy/fxkSSDUZmKAbV6//QUmYTkWb3ZYSVj1B8Ey+yx7rO99HCb+LCZxNC3eF
 PK1L4I6IJSVB5Z8iQYusGvY80EK3vj7i60yJ8095KgI8b+RSLdzIqEx9jxKQkz1/khW6
 Pn043pgRI39oelRIStes3s/0YLavBij2Njm/IKfS8qP0HwrWbsBzf8R1v4tRsLtb4RMJ
 fLSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8j9eOWE07q09JFeaj2clIPgNgVmP6iqPKn1MuSSo7Oc=;
 b=kwX616f/d6/S8jWo4MaL5nR3ZkCLXfpuO6Z4J8USdS8HNgWUdSXhH7rCNSA0qpONMA
 t7HlEt4FnM8bnWCAED1wD4JlNK7ent3sFeWJu997S5ftxqWQH6DQbcGFwZFVbqb4fLw9
 ze3bGof+apdddoTyvWis+a+WzpAD0VsGFUEUHXLfn8MkrnfRVitgzlZrmVvjbiDl2Zh9
 Z4nj4Hmuhvc0rCKESD+cTLUIP1zRJBwRb/pizjcycWCFPMlePgoew8WUacRWF4ia2qN7
 xGTl3l6Ox9UYoa5hTYYsPCS8G/Dz8k58+DDddaMrB1dRXMzI/wPoM4fbllJv48QNj6ZT
 smxw==
X-Gm-Message-State: APjAAAWXryinr6/RTvap6Z5q8QqKZ/I7XL5GGgG1jvwkcp7AYXdJXRFa
 Vd6X2MoydHxMuJ9d1GsfO/pt2qWA
X-Google-Smtp-Source: APXvYqwSAMiWX4D5ZDFDftFWr1MP4Lsx68aGKsyiaWVVVuw3+AJXMCYq9rsZp5L5tgh0Vbs6O7Y39w==
X-Received: by 2002:a05:6000:f:: with SMTP id
 h15mr24397770wrx.90.1577023842589; 
 Sun, 22 Dec 2019 06:10:42 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id c4sm16570068wml.7.2019.12.22.06.10.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Dec 2019 06:10:41 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 03/13] dt-bindings: memory: Add Tegra186 memory subsystem
Date: Sun, 22 Dec 2019 15:10:25 +0100
Message-Id: <20191222141035.1649937-4-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191222141035.1649937-1-thierry.reding@gmail.com>
References: <20191222141035.1649937-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_061044_429590_940116C2 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

The NVIDIA Tegra186 SoC contains a memory subsystem composed of the
memory controller and the external memory controller. The memory
controller provides interfaces for the memory clients to access the
memory. Accesses can be either bounced through the SMMU for IOVA
translation or directly to the EMC.

The bulk of the programming of the external memory controller happens
through interfaces exposed by the BPMP. Describe this relationship by
adding a phandle reference to the BPMP to the EMC node.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 .../nvidia,tegra186-mc.yaml                   | 130 ++++++++++++++++++
 1 file changed, 130 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/nvidia,tegra186-mc.yaml

diff --git a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra186-mc.yaml b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra186-mc.yaml
new file mode 100644
index 000000000000..b98a1d03410b
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra186-mc.yaml
@@ -0,0 +1,130 @@
+# SPDX-License-Identifier: (GPL-2.0)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/nvidia,tegra186-mc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NVIDIA Tegra186 (and later) SoC Memory Controller
+
+maintainers:
+  - Jon Hunter <jonathanh@nvidia.com>
+  - Thierry Reding <thierry.reding@gmail.com>
+
+description: |
+  The NVIDIA Tegra186 SoC features a 128 bit memory controller that is split
+  into four 32 bit channels to support LPDDR4 with x16 subpartitions. The MC
+  handles memory requests for 40-bit virtual addresses from internal clients
+  and arbitrates among them to allocate memory bandwidth.
+
+  Up to 15 GiB of physical memory can be supported. Security features such as
+  encryption of traffic to and from DRAM via general security apertures are
+  available for video and other secure applications, as well as DRAM ECC for
+  automotive safety applications (single bit error correction and double bit
+  error detection).
+
+properties:
+  $nodename:
+    pattern: "^memory-controller@[0-9a-f]+$"
+
+  compatible:
+    items:
+      - enum:
+          - nvidia,tegra186-mc
+          - nvidia,tegra194-mc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  "#address-cells":
+    const: 2
+
+  "#size-cells":
+    const: 2
+
+  ranges: true
+
+  dma-ranges: true
+
+patternProperties:
+  "^external-memory-controller@[0-9a-f]+$":
+    description:
+      The bulk of the work involved in controlling the external memory
+      controller on NVIDIA Tegra186 and later is performed on the BPMP. This
+      coprocessor exposes the EMC clock that is used to set the frequency at
+      which the external memory is clocked and a remote procedure call that
+      can be used to obtain the set of available frequencies.
+    type: object
+    properties:
+      compatible:
+        items:
+          - enum:
+              - nvidia,tegra186-emc
+              - nvidia,tegra194-emc
+
+      reg:
+        maxItems: 1
+
+      interrupts:
+        maxItems: 1
+
+      clocks:
+        items:
+          - description: external memory clock
+
+      clock-names:
+        items:
+          - const: emc
+
+      nvidia,bpmp:
+        $ref: /schemas/types.yaml#/definitions/phandle
+        description:
+          phandle of the node representing the BPMP
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - "#address-cells"
+  - "#size-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/tegra186-clock.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    memory-controller@2c00000 {
+        compatible = "nvidia,tegra186-mc";
+        reg = <0x0 0x02c00000 0x0 0xb0000>;
+        interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
+
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        ranges = <0x0 0x02c00000 0x02c00000 0x0 0xb0000>;
+
+        /*
+         * Memory clients have access to all 40 bits that the memory
+         * controller can address.
+         */
+        dma-ranges = <0x0 0x0 0x0 0x0 0x100 0x0>;
+
+        external-memory-controller@2c60000 {
+            compatible = "nvidia,tegra186-emc";
+            reg = <0x0 0x02c60000 0x0 0x50000>;
+            interrupts = <GIC_SPI 224 IRQ_TYPE_LEVEL_HIGH>;
+            clocks = <&bpmp TEGRA186_CLK_EMC>;
+            clock-names = "emc";
+
+            nvidia,bpmp = <&bpmp>;
+        };
+    };
+
+    bpmp: bpmp {
+        compatible = "nvidia,tegra186-bpmp";
+        #clock-cells = <1>;
+    };
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
