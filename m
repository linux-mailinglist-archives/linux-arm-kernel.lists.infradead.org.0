Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E25BB57B76
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 07:31:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7Y3QmeZHWirLjyoF9pT/pJDrvk4nigokYVBecDvBsTI=; b=MC+H4S1l5ly9JW
	0YFeVNqIEWmbKZ/PL3KZwb4DIdNucZ+ovZ7JP1OCvnkfiMIVpiqp151JvxENVvVhBefAebGMPSFsf
	0EWEkpZiL7782jhTbbaqgr0Hb5gc2+MjBplrSQCYQ/CkluG6NJFxiz+UW+A2I2isFFrleNuVcyVN7
	dvGo/VcjRtsBW4/5acpHvF32DRwW6NAfTUsd9aKeir6NdwQnS8lwIq86xvFlyBam+teBEbfHHaRHL
	Uif15vkB/QGxMkpq2GtCsJ7VUKni3TQEJsjlCyvSVm//65+MBQ8mcNk1Kr4l079SUXvduv9fyLm2t
	S2FjpdvMA3Xexc/HYBAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgMzx-0002mI-20; Thu, 27 Jun 2019 05:31:05 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMsL-00013R-GH
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 05:23:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=09hyio1g1LxvqfA/yKUO9x7dtiok51AUIq6dc+7tdbY=; b=I5NxogVPiHL/gJaLStOgCZbDAq
 5PKFx8vbobREL03XC7nuH/oQZRE2heuPmNGtcCAswnmmVbRhJWOQmvgKZ8fI4XIP6dMxlpZvJhbD7
 /aw8vxnOBb75QVEj3ZkdIbxbeL9jAmXPfnv7sgYOU0AHIeF2X1etaCwmL2oGLYD0FUvn7glmA+bqA
 5S0e0IgtlRUJmNMGzTY9WeL6jrtkcNZmY2GHhO3gRgn2JAhhjGPoMoNN/Jo/vhskKKCwMK1ZiXvcI
 i1uJUGBu1bAfvFfrMEu9j9ltOMR/erpBmUzAq6/v8Rr/z+35dndc4/dkOcrd3mRDeFq7thEeKoPnu
 4YghJ15w==;
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgHtK-0001CL-UL
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 00:04:05 +0000
Received: by mail-io1-f65.google.com with SMTP id u13so792027iop.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 17:03:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=09hyio1g1LxvqfA/yKUO9x7dtiok51AUIq6dc+7tdbY=;
 b=RoE1rF/jJE9jdULyCCt7bXKhTTbtxS0iXpFQAatoL+cqqTsUOd2DE/Vyl4sEnKZuzg
 4k7qEd7B02/lGTZIHXimz+/HEJ7YXptJmwsRKJ4mUp8V+3ur35W1WOkRjQAH8HY4htrf
 orVVz0NHpDvJ7UdA7hbT8zZUfJ2EkLASskSJsYUUUdPJ57fO0wi1ZPWPN7Daetya+4RQ
 lXkqEfUuxfiHluLh3JjjGHb3GaizSDMPoI/OewxKBIfk7M7bByj4NwZDsJ2UkTGoZ7yt
 l8ViDkyww1rHvgk9+7DuaxMcBgnw0Co9NVhTpIz/1xIaTwReYd2dUaO9KS1ippVP48iP
 QPmw==
X-Gm-Message-State: APjAAAXoIQVaMLd2VMeIkVBrWsGo4GiM8f8vVgja1Tfqv1TlPDg1Lvgi
 3is0miTDUdviteUiVVKS8A==
X-Google-Smtp-Source: APXvYqyPle3u4b/yEniOEhTWn7clxbC02sOHt5efYiRt7UBGBiFPBRH0crTDM6LhSIPRzwujv1qvUw==
X-Received: by 2002:a6b:b987:: with SMTP id j129mr1181028iof.166.1561593765845; 
 Wed, 26 Jun 2019 17:02:45 -0700 (PDT)
Received: from localhost.localdomain ([64.188.179.243])
 by smtp.googlemail.com with ESMTPSA id r5sm486520iom.42.2019.06.26.17.02.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 26 Jun 2019 17:02:45 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: arm: Limit cpus schema to only check Arm 'cpu'
 nodes
Date: Wed, 26 Jun 2019 18:00:44 -0600
Message-Id: <20190627000044.12739-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_010402_936331_43FAFDE3 
X-CRM114-Status: GOOD (  20.91  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.8 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Matching on the 'cpus' node was a bad choice because the schema is
incorrectly applied to non-Arm cpus nodes. As we now have a common cpus
schema which checks the general structure, it is also redundant to do so
in the Arm CPU schema.

The downside is one could conceivably mix different architecture's cpu
nodes or have typos in the compatible string. The latter problem pretty
much exists for every schema.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/arm/cpus.yaml         | 500 ++++++++----------
 1 file changed, 231 insertions(+), 269 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
index 17ac2c642e68..b9c994593537 100644
--- a/Documentation/devicetree/bindings/arm/cpus.yaml
+++ b/Documentation/devicetree/bindings/arm/cpus.yaml
@@ -39,280 +39,242 @@ description: |+
   described below.
 
 properties:
-  $nodename:
-    const: cpus
-    description: Container of cpu nodes
-
-  '#address-cells':
-    enum: [1, 2]
+  reg:
+    maxItems: 1
     description: |
-      Definition depends on ARM architecture version and configuration:
+      Usage and definition depend on ARM architecture version and
+      configuration:
 
       On uniprocessor ARM architectures previous to v7
-        value must be 1, to enable a simple enumeration
-        scheme for processors that do not have a HW CPU
-        identification register.
-      On 32-bit ARM 11 MPcore, ARM v7 or later systems
-        value must be 1, that corresponds to CPUID/MPIDR
-        registers sizes.
-      On ARM v8 64-bit systems value should be set to 2,
-        that corresponds to the MPIDR_EL1 register size.
-        If MPIDR_EL1[63:32] value is equal to 0 on all CPUs
-        in the system, #address-cells can be set to 1, since
-        MPIDR_EL1[63:32] bits are not used for CPUs
-        identification.
-
-  '#size-cells':
-    const: 0
-
-patternProperties:
-  '^cpu@[0-9a-f]+$':
-    type: object
-    properties:
-      device_type:
-        const: cpu
-
-      reg:
-        maxItems: 1
-        description: |
-          Usage and definition depend on ARM architecture version and
-          configuration:
-
-          On uniprocessor ARM architectures previous to v7
-          this property is required and must be set to 0.
-
-          On ARM 11 MPcore based systems this property is
-            required and matches the CPUID[11:0] register bits.
-
-            Bits [11:0] in the reg cell must be set to
-            bits [11:0] in CPU ID register.
-
-            All other bits in the reg cell must be set to 0.
-
-          On 32-bit ARM v7 or later systems this property is
-            required and matches the CPU MPIDR[23:0] register
-            bits.
-
-            Bits [23:0] in the reg cell must be set to
-            bits [23:0] in MPIDR.
-
-            All other bits in the reg cell must be set to 0.
-
-          On ARM v8 64-bit systems this property is required
-            and matches the MPIDR_EL1 register affinity bits.
-
-            * If cpus node's #address-cells property is set to 2
-
-              The first reg cell bits [7:0] must be set to
-              bits [39:32] of MPIDR_EL1.
-
-              The second reg cell bits [23:0] must be set to
-              bits [23:0] of MPIDR_EL1.
-
-            * If cpus node's #address-cells property is set to 1
-
-              The reg cell bits [23:0] must be set to bits [23:0]
-              of MPIDR_EL1.
-
-          All other bits in the reg cells must be set to 0.
-
-      compatible:
-        enum:
-              - arm,arm710t
-              - arm,arm720t
-              - arm,arm740t
-              - arm,arm7ej-s
-              - arm,arm7tdmi
-              - arm,arm7tdmi-s
-              - arm,arm9es
-              - arm,arm9ej-s
-              - arm,arm920t
-              - arm,arm922t
-              - arm,arm925
-              - arm,arm926e-s
-              - arm,arm926ej-s
-              - arm,arm940t
-              - arm,arm946e-s
-              - arm,arm966e-s
-              - arm,arm968e-s
-              - arm,arm9tdmi
-              - arm,arm1020e
-              - arm,arm1020t
-              - arm,arm1022e
-              - arm,arm1026ej-s
-              - arm,arm1136j-s
-              - arm,arm1136jf-s
-              - arm,arm1156t2-s
-              - arm,arm1156t2f-s
-              - arm,arm1176jzf
-              - arm,arm1176jz-s
-              - arm,arm1176jzf-s
-              - arm,arm11mpcore
-              - arm,armv8 # Only for s/w models
-              - arm,cortex-a5
-              - arm,cortex-a7
-              - arm,cortex-a8
-              - arm,cortex-a9
-              - arm,cortex-a12
-              - arm,cortex-a15
-              - arm,cortex-a17
-              - arm,cortex-a53
-              - arm,cortex-a57
-              - arm,cortex-a72
-              - arm,cortex-a73
-              - arm,cortex-m0
-              - arm,cortex-m0+
-              - arm,cortex-m1
-              - arm,cortex-m3
-              - arm,cortex-m4
-              - arm,cortex-r4
-              - arm,cortex-r5
-              - arm,cortex-r7
-              - brcm,brahma-b15
-              - brcm,brahma-b53
-              - brcm,vulcan
-              - cavium,thunder
-              - cavium,thunder2
-              - faraday,fa526
-              - intel,sa110
-              - intel,sa1100
-              - marvell,feroceon
-              - marvell,mohawk
-              - marvell,pj4a
-              - marvell,pj4b
-              - marvell,sheeva-v5
-              - marvell,sheeva-v7
-              - nvidia,tegra132-denver
-              - nvidia,tegra186-denver
-              - nvidia,tegra194-carmel
-              - qcom,krait
-              - qcom,kryo
-              - qcom,kryo385
-              - qcom,scorpion
-
-      enable-method:
-        allOf:
-          - $ref: '/schemas/types.yaml#/definitions/string'
-          - oneOf:
-            # On ARM v8 64-bit this property is required
-            - enum:
-                - psci
-                - spin-table
-            # On ARM 32-bit systems this property is optional
-            - enum:
-                - actions,s500-smp
-                - allwinner,sun6i-a31
-                - allwinner,sun8i-a23
-                - allwinner,sun9i-a80-smp
-                - allwinner,sun8i-a83t-smp
-                - amlogic,meson8-smp
-                - amlogic,meson8b-smp
-                - arm,realview-smp
-                - brcm,bcm11351-cpu-method
-                - brcm,bcm23550
-                - brcm,bcm2836-smp
-                - brcm,bcm63138
-                - brcm,bcm-nsp-smp
-                - brcm,brahma-b15
-                - marvell,armada-375-smp
-                - marvell,armada-380-smp
-                - marvell,armada-390-smp
-                - marvell,armada-xp-smp
-                - marvell,98dx3236-smp
-                - mediatek,mt6589-smp
-                - mediatek,mt81xx-tz-smp
-                - qcom,gcc-msm8660
-                - qcom,kpss-acc-v1
-                - qcom,kpss-acc-v2
-                - renesas,apmu
-                - renesas,r9a06g032-smp
-                - rockchip,rk3036-smp
-                - rockchip,rk3066-smp
-                - socionext,milbeaut-m10v-smp
-                - ste,dbx500-smp
-
-      cpu-release-addr:
-        $ref: '/schemas/types.yaml#/definitions/uint64'
-
-        description:
-          Required for systems that have an "enable-method"
-            property value of "spin-table".
-          On ARM v8 64-bit systems must be a two cell
-            property identifying a 64-bit zero-initialised
-            memory location.
-
-      cpu-idle-states:
-        $ref: '/schemas/types.yaml#/definitions/phandle-array'
-        description: |
-          List of phandles to idle state nodes supported
-          by this cpu (see ./idle-states.txt).
-
-      capacity-dmips-mhz:
-        $ref: '/schemas/types.yaml#/definitions/uint32'
-        description:
-          u32 value representing CPU capacity (see ./cpu-capacity.txt) in
-          DMIPS/MHz, relative to highest capacity-dmips-mhz
-          in the system.
-
-      dynamic-power-coefficient:
-        $ref: '/schemas/types.yaml#/definitions/uint32'
-        description:
-          A u32 value that represents the running time dynamic
-          power coefficient in units of uW/MHz/V^2. The
-          coefficient can either be calculated from power
-          measurements or derived by analysis.
-
-          The dynamic power consumption of the CPU  is
-          proportional to the square of the Voltage (V) and
-          the clock frequency (f). The coefficient is used to
-          calculate the dynamic power as below -
-
-          Pdyn = dynamic-power-coefficient * V^2 * f
-
-          where voltage is in V, frequency is in MHz.
-
-      qcom,saw:
-        $ref: '/schemas/types.yaml#/definitions/phandle'
-        description: |
-          Specifies the SAW* node associated with this CPU.
-
-          Required for systems that have an "enable-method" property
-          value of "qcom,kpss-acc-v1" or "qcom,kpss-acc-v2"
-
-          * arm/msm/qcom,saw2.txt
-
-      qcom,acc:
-        $ref: '/schemas/types.yaml#/definitions/phandle'
-        description: |
-          Specifies the ACC* node associated with this CPU.
-
-          Required for systems that have an "enable-method" property
-          value of "qcom,kpss-acc-v1" or "qcom,kpss-acc-v2"
-
-          * arm/msm/qcom,kpss-acc.txt
-
-      rockchip,pmu:
-        $ref: '/schemas/types.yaml#/definitions/phandle'
-        description: |
-          Specifies the syscon node controlling the cpu core power domains.
-
-          Optional for systems that have an "enable-method"
-          property value of "rockchip,rk3066-smp"
-          While optional, it is the preferred way to get access to
-          the cpu-core power-domains.
-
-    required:
-      - device_type
-      - reg
-      - compatible
-
-    dependencies:
-      cpu-release-addr: [enable-method]
-      rockchip,pmu: [enable-method]
+      this property is required and must be set to 0.
+
+      On ARM 11 MPcore based systems this property is
+        required and matches the CPUID[11:0] register bits.
+
+        Bits [11:0] in the reg cell must be set to
+        bits [11:0] in CPU ID register.
+
+        All other bits in the reg cell must be set to 0.
+
+      On 32-bit ARM v7 or later systems this property is
+        required and matches the CPU MPIDR[23:0] register
+        bits.
+
+        Bits [23:0] in the reg cell must be set to
+        bits [23:0] in MPIDR.
+
+        All other bits in the reg cell must be set to 0.
+
+      On ARM v8 64-bit systems this property is required
+        and matches the MPIDR_EL1 register affinity bits.
+
+        * If cpus node's #address-cells property is set to 2
+
+          The first reg cell bits [7:0] must be set to
+          bits [39:32] of MPIDR_EL1.
+
+          The second reg cell bits [23:0] must be set to
+          bits [23:0] of MPIDR_EL1.
+
+        * If cpus node's #address-cells property is set to 1
+
+          The reg cell bits [23:0] must be set to bits [23:0]
+          of MPIDR_EL1.
+
+      All other bits in the reg cells must be set to 0.
+
+  compatible:
+    enum:
+          - arm,arm710t
+          - arm,arm720t
+          - arm,arm740t
+          - arm,arm7ej-s
+          - arm,arm7tdmi
+          - arm,arm7tdmi-s
+          - arm,arm9es
+          - arm,arm9ej-s
+          - arm,arm920t
+          - arm,arm922t
+          - arm,arm925
+          - arm,arm926e-s
+          - arm,arm926ej-s
+          - arm,arm940t
+          - arm,arm946e-s
+          - arm,arm966e-s
+          - arm,arm968e-s
+          - arm,arm9tdmi
+          - arm,arm1020e
+          - arm,arm1020t
+          - arm,arm1022e
+          - arm,arm1026ej-s
+          - arm,arm1136j-s
+          - arm,arm1136jf-s
+          - arm,arm1156t2-s
+          - arm,arm1156t2f-s
+          - arm,arm1176jzf
+          - arm,arm1176jz-s
+          - arm,arm1176jzf-s
+          - arm,arm11mpcore
+          - arm,armv8 # Only for s/w models
+          - arm,cortex-a5
+          - arm,cortex-a7
+          - arm,cortex-a8
+          - arm,cortex-a9
+          - arm,cortex-a12
+          - arm,cortex-a15
+          - arm,cortex-a17
+          - arm,cortex-a53
+          - arm,cortex-a57
+          - arm,cortex-a72
+          - arm,cortex-a73
+          - arm,cortex-m0
+          - arm,cortex-m0+
+          - arm,cortex-m1
+          - arm,cortex-m3
+          - arm,cortex-m4
+          - arm,cortex-r4
+          - arm,cortex-r5
+          - arm,cortex-r7
+          - brcm,brahma-b15
+          - brcm,brahma-b53
+          - brcm,vulcan
+          - cavium,thunder
+          - cavium,thunder2
+          - faraday,fa526
+          - intel,sa110
+          - intel,sa1100
+          - marvell,feroceon
+          - marvell,mohawk
+          - marvell,pj4a
+          - marvell,pj4b
+          - marvell,sheeva-v5
+          - marvell,sheeva-v7
+          - nvidia,tegra132-denver
+          - nvidia,tegra186-denver
+          - nvidia,tegra194-carmel
+          - qcom,krait
+          - qcom,kryo
+          - qcom,kryo385
+          - qcom,scorpion
+
+  enable-method:
+    allOf:
+      - $ref: '/schemas/types.yaml#/definitions/string'
+      - oneOf:
+        # On ARM v8 64-bit this property is required
+        - enum:
+            - psci
+            - spin-table
+        # On ARM 32-bit systems this property is optional
+        - enum:
+            - actions,s500-smp
+            - allwinner,sun6i-a31
+            - allwinner,sun8i-a23
+            - allwinner,sun9i-a80-smp
+            - allwinner,sun8i-a83t-smp
+            - amlogic,meson8-smp
+            - amlogic,meson8b-smp
+            - arm,realview-smp
+            - brcm,bcm11351-cpu-method
+            - brcm,bcm23550
+            - brcm,bcm2836-smp
+            - brcm,bcm63138
+            - brcm,bcm-nsp-smp
+            - brcm,brahma-b15
+            - marvell,armada-375-smp
+            - marvell,armada-380-smp
+            - marvell,armada-390-smp
+            - marvell,armada-xp-smp
+            - marvell,98dx3236-smp
+            - mediatek,mt6589-smp
+            - mediatek,mt81xx-tz-smp
+            - qcom,gcc-msm8660
+            - qcom,kpss-acc-v1
+            - qcom,kpss-acc-v2
+            - renesas,apmu
+            - renesas,r9a06g032-smp
+            - rockchip,rk3036-smp
+            - rockchip,rk3066-smp
+            - socionext,milbeaut-m10v-smp
+            - ste,dbx500-smp
+
+  cpu-release-addr:
+    $ref: '/schemas/types.yaml#/definitions/uint64'
+
+    description:
+      Required for systems that have an "enable-method"
+        property value of "spin-table".
+      On ARM v8 64-bit systems must be a two cell
+        property identifying a 64-bit zero-initialised
+        memory location.
+
+  cpu-idle-states:
+    $ref: '/schemas/types.yaml#/definitions/phandle-array'
+    description: |
+      List of phandles to idle state nodes supported
+      by this cpu (see ./idle-states.txt).
+
+  capacity-dmips-mhz:
+    $ref: '/schemas/types.yaml#/definitions/uint32'
+    description:
+      u32 value representing CPU capacity (see ./cpu-capacity.txt) in
+      DMIPS/MHz, relative to highest capacity-dmips-mhz
+      in the system.
+
+  dynamic-power-coefficient:
+    $ref: '/schemas/types.yaml#/definitions/uint32'
+    description:
+      A u32 value that represents the running time dynamic
+      power coefficient in units of uW/MHz/V^2. The
+      coefficient can either be calculated from power
+      measurements or derived by analysis.
+
+      The dynamic power consumption of the CPU  is
+      proportional to the square of the Voltage (V) and
+      the clock frequency (f). The coefficient is used to
+      calculate the dynamic power as below -
+
+      Pdyn = dynamic-power-coefficient * V^2 * f
+
+      where voltage is in V, frequency is in MHz.
+
+  qcom,saw:
+    $ref: '/schemas/types.yaml#/definitions/phandle'
+    description: |
+      Specifies the SAW* node associated with this CPU.
+
+      Required for systems that have an "enable-method" property
+      value of "qcom,kpss-acc-v1" or "qcom,kpss-acc-v2"
+
+      * arm/msm/qcom,saw2.txt
+
+  qcom,acc:
+    $ref: '/schemas/types.yaml#/definitions/phandle'
+    description: |
+      Specifies the ACC* node associated with this CPU.
+
+      Required for systems that have an "enable-method" property
+      value of "qcom,kpss-acc-v1" or "qcom,kpss-acc-v2"
+
+      * arm/msm/qcom,kpss-acc.txt
+
+  rockchip,pmu:
+    $ref: '/schemas/types.yaml#/definitions/phandle'
+    description: |
+      Specifies the syscon node controlling the cpu core power domains.
+
+      Optional for systems that have an "enable-method"
+      property value of "rockchip,rk3066-smp"
+      While optional, it is the preferred way to get access to
+      the cpu-core power-domains.
 
 required:
-  - '#address-cells'
-  - '#size-cells'
+  - device_type
+  - reg
+  - compatible
+
+dependencies:
+  rockchip,pmu: [enable-method]
 
 examples:
   - |
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
