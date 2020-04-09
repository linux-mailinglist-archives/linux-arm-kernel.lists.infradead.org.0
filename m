Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D722F1A3962
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 19:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z9x7znryt1glCtnFXwvdlmdCgza8R37EA8xB3hVZQVo=; b=s+VDgViZfxKlGX
	R/SqI/cTYCu/9Us1J4L6RQy5LO68Zg8Y5ozuNFnnB91BF1/8BuXzWq47MXmxZHS5ctQJX+2t/bi4y
	qrhumzj0MPQCdCSXGcy8NdwjHeU8c2Cy0po9Ioip9dAXLdtH0bWHGNEUWf+it+nVFEdwsRn/+HhFR
	84NWu3g9ClPgxCOsXl7y9TnRTyN5ZPYojjgRNtbThNKmCElunA8Ap/1pYL/oJi7SrdNU/oAKVMMHM
	mnADpReRlYeTciwyaxHL9FyX4UE1vACagKXYA81uLfELZgnhTLCSQM6C5OhlixkEzWVySSx47i4AA
	GzQC1HjhvS1I7NQLzQ6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMbOW-0007ko-Br; Thu, 09 Apr 2020 17:55:16 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMbMN-00061C-0U
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 17:53:04 +0000
Received: by mail-wm1-x344.google.com with SMTP id x25so672739wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 10:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NN2DE1IQqithFVfAuIcLmUoSi2j0XpDIzngv49/FOaM=;
 b=RIOFFPFwI9Ot8tRhufRlRXzgP7+UloJtReRxwPCrcE2SfVdnVm/0kXNtn6tQMOycPp
 qP+1or+oa72fBM2HoJ8HLmAH8327CO/4DKLY1bzIdUVqVA8/tJJw+pfbbYeM6r2MkDGz
 Ba5NIWJQCXWnBA8lhHy2WYPD1uflo5B7j3ERWFlGRqlAIfqOJg/VFCAzfUGs4IUgRqKK
 gHEey4WziBU+Q8x1NMetw5ahaUE6EblVPB7/0Zuy99TAEOlWSf/LgX4UJWwowil5UOFn
 GqLMrxspYi5EdEDG61bgKY27ErR6UJBfPWKalTTDPKce0Kdol40VmsQ7bqjTMAN89z+w
 U02g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NN2DE1IQqithFVfAuIcLmUoSi2j0XpDIzngv49/FOaM=;
 b=cT+kd84lnZqG0jVJrM94dU2jJKUTGcELBVt+vjIXLxOlBObtYm/n+8vu8lYUOZD87f
 ypWUXja3PxdComLuwqAFmXwSEf50x4WPbdHFa4pL4J8KgjeWu1gcHTEtsJ1/tXvYR/jL
 VZNgYMOr8raq2BVYRv1U5r3mT1Zrb5uO5y7e0BSvHVw1SG34xELjFpkfnfcTphP/hlxT
 0gMbAOP9rVt6mXEAcMk8YOxLjMCTRNv7Hac+9+cH16jLR/HvaixofSo1vQ17T5ViZDb7
 DfXN4Kg3PRdN8X4t2hCZWy19ecK/hDGCneYQgX/iYwq9yxRbmnombiD78UDxmNKg/ALZ
 D5XA==
X-Gm-Message-State: AGi0PuYaeUtR7O+zgLpEGNuvtQYlVY2PI234P13Bk+X/q7HkzuKdk8cA
 90uPt5ZRQswqm5+bNU/Pnks=
X-Google-Smtp-Source: APiQypJ/n7KDGZlCPrmJHOYzihbyHvhBwf46IleE36Su/NLOvqUYObCFgmqSmbRl6N+bZHLPxzCMEA==
X-Received: by 2002:a1c:e203:: with SMTP id z3mr1042725wmg.71.1586454780040;
 Thu, 09 Apr 2020 10:53:00 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id h6sm4753508wmf.31.2020.04.09.10.52.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 10:52:59 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 08/14] dt-bindings: memory: tegra: Add external memory
 controller binding for Tegra210
Date: Thu,  9 Apr 2020 19:52:32 +0200
Message-Id: <20200409175238.3586487-9-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200409175238.3586487-1-thierry.reding@gmail.com>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_105303_209927_1E3A9006 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
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
Changes in v6:
- fix example by changing #address-cells and #size-cells
- remove status property from example

Changes in v5:
- convert to dt-schema

 .../nvidia,tegra210-emc.yaml                  | 82 +++++++++++++++++++
 1 file changed, 82 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/nvidia,tegra210-emc.yaml

diff --git a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra210-emc.yaml b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra210-emc.yaml
new file mode 100644
index 000000000000..49ab09252e52
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra210-emc.yaml
@@ -0,0 +1,82 @@
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
+
+    reserved-memory {
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges;
+
+        emc_table: emc-table@83400000 {
+            compatible = "nvidia,tegra210-emc-table";
+            reg = <0x83400000 0x10000>;
+        };
+    };
+
+    external-memory-controller@7001b000 {
+        compatible = "nvidia,tegra210-emc";
+        reg = <0x7001b000 0x1000>,
+              <0x7001e000 0x1000>,
+              <0x7001f000 0x1000>;
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
