Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97CCE13B480
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 22:39:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VA17ch7E9lHIn6IQwBJA+K2W6GmgKkZQZJVVPmHFmhE=; b=jWs84Pd26biNY4x2HCwcssfxIb
	EZl4yL2IGOY5VgM7daPtSlbRvkvJKjXuCJF/DTm2GsIBMkUgboZ6Ja5rhiO9Xk4cq+nTmdZl8K+b/
	9/Awe5byYppobO9DiFvqAxpMS9m6oIQLyx1olzkRnEOu7PX/Pj5roJFWg42eED1LoEBJfPJXtoHWZ
	6z6peyeaeq+YrhlrFhRAg/4Dfh4TSgRxJk2Dj1sJIhYiYyO3BgjDmitKxGxNXXwDP28Ersr9F6xwB
	jr6JjcmgOFC/L1I3qo09wIxaBb0Rqp7Sy9O3fnT5pfkhMtxT23JjsbXaKtILNlqT3VpztN5Cz84Ng
	SOyQtscw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irTto-0000k4-Mt; Tue, 14 Jan 2020 21:38:56 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irTtE-0000R3-JK; Tue, 14 Jan 2020 21:38:23 +0000
Received: by mail-wm1-x343.google.com with SMTP id b19so15533164wmj.4;
 Tue, 14 Jan 2020 13:38:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lyq/c1AgxoTJINV62PbqBxPW5tduqNDJRviUR+FmcZw=;
 b=TBHWWVAByHjO/Kk+MfYkgDgcXPrgROnYZ7wyB8tkL74IrZuXQH9DZYG1ZQfKK5fvyJ
 XQr6wcCLEvFKNeb2t6eoQ8KeTKuCv7PQabxMXQOH4hP+kEfwW6AWK1MXR9tdPaNIsbmA
 OWfGgmgtJHmmeyms+F6MpOVtq0k51GyVzFZgXPmd9vJsV7cy1PWVnsI6RSBpL2PUzA0N
 wrvvwL84Yu0VFqsnA3XaTu1Sq+7Iyua6dl2f2Jyh6QjS1OXJ++e/PubmIcMLouQUINA7
 Vj4AoJt1f8IQh6VLt3LDYKZ5rXGdGZo2iIl/h38Z3sRXNfgwJrQN9mUxN9EoX0yRxoe8
 Zkig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=lyq/c1AgxoTJINV62PbqBxPW5tduqNDJRviUR+FmcZw=;
 b=Nod1HMyolfTjhQ9gsNEC2ts0sv/jgmDQwev4r1oE/ln1mn6Z82z1CA8J+rnPY5kIdS
 C/rou1IR3q8/wgUZPZImi3/ng5rLpaFX7owTdxMPGhOLSvOhPa8ynKkFJII0qffxM/Bw
 ug7NTvTs2nTDKFbHGUom3ijuAMWR0AiMomYDkV9HlIvr7ViNHteM11ySlHfr55N/ySQW
 Hcud7HvP6xK9OcFuITb7EdDsOnUdzZhvao6Lg9ooFwdarfFiri41JUVgthWVodRzRU1S
 KnnqnSS/1fLUlKSiR+W+ekOfhbbQHUiFSGzh0SNo+O9QQWFekWda1w5TH0tdFEw3i5Rr
 sb1w==
X-Gm-Message-State: APjAAAUpusoa/XJMqSQLbL715BoyaO+DOmgsf8Wu03Ts8ePC7QuiR546
 wWbGyGM9QEVi1LkUTIXsaiE=
X-Google-Smtp-Source: APXvYqye+1PquDTXjIE8bARitin7+TssZrCHdlXAha5Y+IZ8hxKiG8rZ6B8PEZrOd4sPq3lWA99Y0w==
X-Received: by 2002:a05:600c:290f:: with SMTP id
 i15mr30161927wmd.115.1579037898908; 
 Tue, 14 Jan 2020 13:38:18 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w17sm21639511wrt.89.2020.01.14.13.38.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 Jan 2020 13:38:18 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: ulf.hansson@linaro.org
Subject: [RFC PATCH v1 2/3] dt-bindings: mmc: convert synopsys dw-mshc
 bindings to yaml
Date: Tue, 14 Jan 2020 22:38:08 +0100
Message-Id: <20200114213809.27166-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200114213809.27166-1-jbx6244@gmail.com>
References: <20200114213809.27166-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_133820_636056_3CA0AC4C 
X-CRM114-Status: GOOD (  25.24  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the Synopsys designware mobile storage host controller
device tree bindings to yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../bindings/mmc/synopsys-dw-mshc-common.yaml      |  81 ++++++++++++
 .../devicetree/bindings/mmc/synopsys-dw-mshc.txt   | 141 ---------------------
 .../devicetree/bindings/mmc/synopsys-dw-mshc.yaml  |  88 +++++++++++++
 3 files changed, 169 insertions(+), 141 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml
 delete mode 100644 Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.txt
 create mode 100644 Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml

diff --git a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml
new file mode 100644
index 000000000..aae84a4bc
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml
@@ -0,0 +1,81 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mmc/synopsys-dw-mshc-common.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Synopsys Designware Mobile Storage Host Controller Common Properties
+
+allOf:
+  - $ref: "mmc-controller-common.yaml"
+
+maintainers:
+  - Ulf Hansson <ulf.hansson@linaro.org>
+
+properties:
+  resets:
+    maxItems: 1
+    description:
+      phandle + reset specifier pair, intended to represent hardware
+      reset signal present internally in some host controller IC designs.
+      See Documentation/devicetree/bindings/reset/reset.txt for details.
+
+  reset-names:
+    const: reset
+    description:
+      Request name for using "resets" property.
+      (It will be used together with "resets" property.)
+
+  clock-frequency:
+    description:
+      Should be the frequency (in Hz) of the ciu clock.  If this
+      is specified and the ciu clock is specified then we'll try to set the ciu
+      clock to this at probe time.
+
+  fifo-depth:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      The maximum size of the tx/rx fifo's. If this property is not
+      specified, the default value of the fifo size is determined from the
+      controller registers.
+
+  card-detect-delay:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - default: 0
+    description:
+      Delay in milli-seconds before detecting card after card
+      insert event. The default value is 0.
+
+  data-addr:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Override fifo address with value provided by DT. The default FIFO reg
+      offset is assumed as 0x100 (version < 0x240A) and 0x200(version >= 0x240A)
+      by driver. If the controller does not follow this rule, please use
+      this property to set fifo address in device tree.
+
+  fifo-watermark-aligned:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Data done irq is expected if data length is less than
+      watermark in PIO mode. But fifo watermark is requested to be aligned
+      with data length in some SoC so that TX/RX irq can be generated with
+      data done irq. Add this watermark quirk to mark this requirement and
+      force fifo watermark setting accordingly.
+
+  dmas:
+    maxItems: 1
+    description:
+      List of DMA specifiers with the controller specific format as described
+      in the generic DMA client binding.
+      Refer to dma-controller.yaml for details.
+
+  dma-names:
+    const: rx-tx
+    description:
+      Request names for generic DMA client binding.
+      Refer to dma-controller.yaml for details.
diff --git a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.txt b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.txt
deleted file mode 100644
index 7e5e427a2..000000000
--- a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.txt
+++ /dev/null
@@ -1,141 +0,0 @@
-* Synopsys Designware Mobile Storage Host Controller
-
-The Synopsys designware mobile storage host controller is used to interface
-a SoC with storage medium such as eMMC or SD/MMC cards. This file documents
-differences between the core mmc properties described by mmc.txt and the
-properties used by the Synopsys Designware Mobile Storage Host Controller.
-
-Required Properties:
-
-* compatible: should be
-	- snps,dw-mshc: for controllers compliant with synopsys dw-mshc.
-* #address-cells: should be 1.
-* #size-cells: should be 0.
-
-# Slots (DEPRECATED): The slot specific information are contained within
-  child-nodes with each child-node representing a supported slot. There should
-  be atleast one child node representing a card slot. The name of the child node
-  representing the slot is recommended to be slot@n where n is the unique number
-  of the slot connected to the controller. The following are optional properties
-  which can be included in the slot child node.
-
-	* reg: specifies the physical slot number. The valid values of this
-	  property is 0 to (num-slots -1), where num-slots is the value
-	  specified by the num-slots property.
-
-	* bus-width: as documented in mmc core bindings.
-
-	* wp-gpios: specifies the write protect gpio line. The format of the
-	  gpio specifier depends on the gpio controller. If a GPIO is not used
-	  for write-protect, this property is optional.
-
-	* disable-wp: If the wp-gpios property isn't present then (by default)
-	  we'd assume that the write protect is hooked up directly to the
-	  controller's special purpose write protect line (accessible via
-	  the WRTPRT register).  However, it's possible that we simply don't
-	  want write protect.  In that case specify 'disable-wp'.
-	  NOTE: This property is not required for slots known to always
-	  connect to eMMC or SDIO cards.
-
-Optional properties:
-
-* resets: phandle + reset specifier pair, intended to represent hardware
-  reset signal present internally in some host controller IC designs.
-  See Documentation/devicetree/bindings/reset/reset.txt for details.
-
-* reset-names: request name for using "resets" property. Must be "reset".
-	(It will be used together with "resets" property.)
-
-* clocks: from common clock binding: handle to biu and ciu clocks for the
-  bus interface unit clock and the card interface unit clock.
-
-* clock-names: from common clock binding: Shall be "biu" and "ciu".
-  If the biu clock is missing we'll simply skip enabling it.  If the
-  ciu clock is missing we'll just assume that the clock is running at
-  clock-frequency.  It is an error to omit both the ciu clock and the
-  clock-frequency.
-
-* clock-frequency: should be the frequency (in Hz) of the ciu clock.  If this
-  is specified and the ciu clock is specified then we'll try to set the ciu
-  clock to this at probe time.
-
-* fifo-depth: The maximum size of the tx/rx fifo's. If this property is not
-  specified, the default value of the fifo size is determined from the
-  controller registers.
-
-* card-detect-delay: Delay in milli-seconds before detecting card after card
-  insert event. The default value is 0.
-
-* data-addr: Override fifo address with value provided by DT. The default FIFO reg
-  offset is assumed as 0x100 (version < 0x240A) and 0x200(version >= 0x240A) by
-  driver. If the controller does not follow this rule, please use this property
-  to set fifo address in device tree.
-
-* fifo-watermark-aligned: Data done irq is expected if data length is less than
-  watermark in PIO mode. But fifo watermark is requested to be aligned with data
-  length in some SoC so that TX/RX irq can be generated with data done irq. Add this
-  watermark quirk to mark this requirement and force fifo watermark setting
-  accordingly.
-
-* vmmc-supply: The phandle to the regulator to use for vmmc.  If this is
-  specified we'll defer probe until we can find this regulator.
-
-* dmas: List of DMA specifiers with the controller specific format as described
-  in the generic DMA client binding. Refer to dma.txt for details.
-
-* dma-names: request names for generic DMA client binding. Must be "rx-tx".
-  Refer to dma.txt for details.
-
-Aliases:
-
-- All the MSHC controller nodes should be represented in the aliases node using
-  the following format 'mshc{n}' where n is a unique number for the alias.
-
-Example:
-
-The MSHC controller node can be split into two portions, SoC specific and
-board specific portions as listed below.
-
-	dwmmc0@12200000 {
-		compatible = "snps,dw-mshc";
-		clocks = <&clock 351>, <&clock 132>;
-		clock-names = "biu", "ciu";
-		reg = <0x12200000 0x1000>;
-		interrupts = <0 75 0>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		data-addr = <0x200>;
-		fifo-watermark-aligned;
-		resets = <&rst 20>;
-		reset-names = "reset";
-	};
-
-[board specific internal DMA resources]
-
-	dwmmc0@12200000 {
-		clock-frequency = <400000000>;
-		clock-freq-min-max = <400000 200000000>;
-		broken-cd;
-		fifo-depth = <0x80>;
-		card-detect-delay = <200>;
-		vmmc-supply = <&buck8>;
-		bus-width = <8>;
-		cap-mmc-highspeed;
-		cap-sd-highspeed;
-	};
-
-[board specific generic DMA request binding]
-
-	dwmmc0@12200000 {
-		clock-frequency = <400000000>;
-		clock-freq-min-max = <400000 200000000>;
-		broken-cd;
-		fifo-depth = <0x80>;
-		card-detect-delay = <200>;
-		vmmc-supply = <&buck8>;
-		bus-width = <8>;
-		cap-mmc-highspeed;
-		cap-sd-highspeed;
-		dmas = <&pdma 12>;
-		dma-names = "rx-tx";
-	};
diff --git a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
new file mode 100644
index 000000000..6f85a21d0
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
@@ -0,0 +1,88 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mmc/synopsys-dw-mshc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Synopsys Designware Mobile Storage Host Controller Binding
+
+allOf:
+  - $ref: "synopsys-dw-mshc-common.yaml"
+
+maintainers:
+  - Ulf Hansson <ulf.hansson@linaro.org>
+
+properties:
+  compatible:
+    const: snps,dw-mshc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 2
+    maxItems: 2
+    description:
+      Handle to "biu" and "ciu" clocks for the
+      bus interface unit clock and the card interface unit clock.
+
+  clock-names:
+    items:
+      - const: biu
+      - const: ciu
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+examples:
+  # The MSHC controller node can be split into two portions, SoC specific and
+  # board specific portions as listed below.
+  - |
+    dwmmc0@12200000 {
+      compatible = "snps,dw-mshc";
+      clocks = <&clock 351>, <&clock 132>;
+      clock-names = "biu", "ciu";
+      reg = <0x12200000 0x1000>;
+      interrupts = <0 75 0>;
+      #address-cells = <1>;
+      #size-cells = <0>;
+      data-addr = <0x200>;
+      fifo-watermark-aligned;
+      resets = <&rst 20>;
+      reset-names = "reset";
+    };
+  # [board specific internal DMA resources]
+  - |
+    dwmmc0@12200000 {
+      clock-frequency = <400000000>;
+      clock-freq-min-max = <400000 200000000>;
+      broken-cd;
+      fifo-depth = <0x80>;
+      card-detect-delay = <200>;
+      vmmc-supply = <&buck8>;
+      bus-width = <8>;
+      cap-mmc-highspeed;
+      cap-sd-highspeed;
+    };
+  # [board specific generic DMA request binding]
+  - |
+    dwmmc0@12200000 {
+      clock-frequency = <400000000>;
+      clock-freq-min-max = <400000 200000000>;
+      broken-cd;
+      fifo-depth = <0x80>;
+      card-detect-delay = <200>;
+      vmmc-supply = <&buck8>;
+      bus-width = <8>;
+      cap-mmc-highspeed;
+      cap-sd-highspeed;
+      dmas = <&pdma 12>;
+      dma-names = "rx-tx";
+    };
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
