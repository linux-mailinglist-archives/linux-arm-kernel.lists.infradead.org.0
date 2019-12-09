Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D41EB117514
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 20:00:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=vWSzgyQX66nTyBfk7PM1hONZjsmJ/wy9l+IiaZMWgtg=; b=N0W
	oTzJrr5nAK3quN1qh8XXjdqaOJTRGWzUnFxtAR6mUOdbxfwguvc8S2EnV1WQsbfu0F5Nha26Gei7D
	THwjR0byIOwdhwYoxQqeIDTW0UdOd94FCZxvBhcaXWgtR2DEFFvyuymvum5R2sHgC9xw/drj6LO0b
	KdA0RSWmRIjj4WV/jCw9cLJ/qEHyzkTrW2Ezgc83EjsJwoN3kSQMZaXFESZ4o4Jv5EEjM2tycjE+G
	bL/t5SyUt2vCy0v7nZIh0RiqLnYhk+tIYG0TepCQP4Um7ww82cdh3GGLstYOk+c9I19LVhGoLoWLI
	kqkAE2ZAD3erGpPmOjKpgVDre1hR4dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieOGT-00020D-Q4; Mon, 09 Dec 2019 19:00:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieOGI-0001yr-CP
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 19:00:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A89B013FD;
 Mon,  9 Dec 2019 11:00:01 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 268113F6CF;
 Mon,  9 Dec 2019 11:00:01 -0800 (PST)
Date: Mon, 09 Dec 2019 18:59:59 +0000
From: Mark Brown <broonie@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Applied "dt-bindings: regulator: Convert stm32 vrefbuf bindings to
 json-schema" to the regulator tree
In-Reply-To: <20191122104536.20283-2-benjamin.gaignard@st.com>
Message-Id: <applied-20191122104536.20283-2-benjamin.gaignard@st.com>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_110002_514087_360A5995 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 lgirdwood@gmail.com, robh+dt@kernel.org, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   dt-bindings: regulator: Convert stm32 vrefbuf bindings to json-schema

has been applied to the regulator tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-5.6

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 21b2c47161449c44e5a70eab646260aaeceb331c Mon Sep 17 00:00:00 2001
From: Benjamin Gaignard <benjamin.gaignard@st.com>
Date: Fri, 22 Nov 2019 11:45:36 +0100
Subject: [PATCH] dt-bindings: regulator: Convert stm32 vrefbuf bindings to
 json-schema

Convert the STM32 regulator vrefbuf binding to DT schema format using json-schema

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
CC: Fabrice Gasnier <fabrice.gasnier@st.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Link: https://lore.kernel.org/r/20191122104536.20283-2-benjamin.gaignard@st.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 .../bindings/regulator/st,stm32-vrefbuf.txt   | 20 -------
 .../bindings/regulator/st,stm32-vrefbuf.yaml  | 52 +++++++++++++++++++
 2 files changed, 52 insertions(+), 20 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/regulator/st,stm32-vrefbuf.txt
 create mode 100644 Documentation/devicetree/bindings/regulator/st,stm32-vrefbuf.yaml

diff --git a/Documentation/devicetree/bindings/regulator/st,stm32-vrefbuf.txt b/Documentation/devicetree/bindings/regulator/st,stm32-vrefbuf.txt
deleted file mode 100644
index 5ddb8500a929..000000000000
--- a/Documentation/devicetree/bindings/regulator/st,stm32-vrefbuf.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-STM32 VREFBUF - Voltage reference buffer
-
-Some STM32 devices embed a voltage reference buffer which can be used as
-voltage reference for ADCs, DACs and also as voltage reference for external
-components through the dedicated VREF+ pin.
-
-Required properties:
-- compatible:		Must be "st,stm32-vrefbuf".
-- reg:			Offset and length of VREFBUF register set.
-- clocks:		Must contain an entry for peripheral clock.
-
-Example:
-	vrefbuf: regulator@58003c00 {
-		compatible = "st,stm32-vrefbuf";
-		reg = <0x58003C00 0x8>;
-		clocks = <&rcc VREF_CK>;
-		regulator-min-microvolt = <1500000>;
-		regulator-max-microvolt = <2500000>;
-		vdda-supply = <&vdda>;
-	};
diff --git a/Documentation/devicetree/bindings/regulator/st,stm32-vrefbuf.yaml b/Documentation/devicetree/bindings/regulator/st,stm32-vrefbuf.yaml
new file mode 100644
index 000000000000..33cdaeb25aee
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/st,stm32-vrefbuf.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/st,stm32-vrefbuf.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 Voltage reference buffer bindings
+
+description: |
+  Some STM32 devices embed a voltage reference buffer which can be used as
+  voltage reference for ADCs, DACs and also as voltage reference for external
+  components through the dedicated VREF+ pin.
+
+maintainers:
+  - Fabrice Gasnier <fabrice.gasnier@st.com>
+
+allOf:
+  - $ref: "regulator.yaml#"
+
+properties:
+  compatible:
+    const: st,stm32-vrefbuf
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  vdda-supply:
+    description: phandle to the vdda input analog voltage.
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - vdda-supply
+
+examples:
+  - |
+    #include <dt-bindings/clock/stm32mp1-clks.h>
+    vrefbuf@50025000 {
+      compatible = "st,stm32-vrefbuf";
+      reg = <0x50025000 0x8>;
+      regulator-min-microvolt = <1500000>;
+      regulator-max-microvolt = <2500000>;
+      clocks = <&rcc VREF>;
+      vdda-supply = <&vdda>;
+    };
+
+...
+
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
