Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB0BE630E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 15:27:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ey3l0/s4+G7Z8cmBWz/7MmwvZrZ+CexdI93NocQefu0=; b=eqPLrSchv9Fl/j
	t9CwIRxAEOq52qC3VmofPCPmjsnlSxNyfdK4E0tqkqq8kJtCYn+LqXPJC4oq7O57pVio3xJtoQaBd
	r84ZoSthHcZNv1yj7xukLVnpRovCPFJ5HDmMOJMBg8y2NLdmSKAMst31vz3n9VF/DjrRPMcHSGQXc
	63wIH1QFGSdNYR2ghIF5x57nrv+OdgdrGSIOQ4THVP68lawHAT2KYgUHiXnFljdyk23tUBb6KrZwe
	1Znk2XWLHSRt9brlIfyngxJcoggHYpNAvywMAVs8q0NurWaD6ajfRalGTNUZxDbIgMJK4Uz57oJIQ
	EpvEoYdJhQ+k7Ro4kFWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOjWD-0003pr-1p; Sun, 27 Oct 2019 14:27:45 +0000
Received: from mout.perfora.net ([74.208.4.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOjVY-0003R1-72
 for linux-arm-kernel@lists.infradead.org; Sun, 27 Oct 2019 14:27:06 +0000
Received: from marcel-nb-toradex-int.toradex.int ([31.10.206.124]) by
 mrelay.perfora.net (mreueus001 [74.208.5.2]) with ESMTPSA (Nemesis) id
 0Mhk8L-1icIIn38YF-00Mp4u; Sun, 27 Oct 2019 15:26:31 +0100
From: Marcel Ziswiler <marcel@ziswiler.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v2 3/3] dt-bindings: display: panel: add bindings for logic
 technologies displays
Date: Sun, 27 Oct 2019 15:26:09 +0100
Message-Id: <20191027142609.12754-3-marcel@ziswiler.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191027142609.12754-1-marcel@ziswiler.com>
References: <20191027142609.12754-1-marcel@ziswiler.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:rn2nbHYbKGFtT1kFHLXc+1zL6fferQ0Tgc21oMBgzjMmLxqX4/8
 Jke+6Oj29/ZuQty+9XlPen4JV6zUjbPkz2AClYMOF+B6LIY+vJVEloclw/Mlw8rMvxYAQDt
 r2ZHTi0pFhsckhLRQ/h6ihYC8P4hwL/tu3ABoKv6dkivqhDMw+9iN5BlOWZMl2xVmPr9X3q
 bqzfm1ZOxKmEUAIVQ3g3w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1j+F5+geFuU=:u8hBdz9UBSpD9di/H07AHI
 5naIstvX6RNzubf4cSF+27fBnOlD40WkwskXSWgJ7t7XE6nBZlUppPqY6IuqQoU830LjdKfaK
 dWEO/t1NlwP4WZ38v6Hg8U0g8XgBqFroZO8c6la265478CL5Lju9efiSdvl0+WpzHsl4uhLsE
 Dhffq8PkPo5Ify9HF/3wmutBtxUwGNVKr8JCtZNlbi3NWE76s0gWbc6cfYNXVjfGvF/0q1bPq
 ArM3MLPLobEg8LEed1E3OGbFqT7Bncn0axPi1SdhKlb7Qqh7l6n5j8pUyNa+hpXyr7oBz0StF
 G8u65dK2xjJ/LOIM7S4b/ykda4akIXfBCsjyZ+PwEo3b88qXNyEp4SrBdPQdDx9Hlianybn6u
 lJ6/i8cVOscX3iXn8dP4JBzi1T8WJuH9AsAhnPKb5mtHvjSi3YKBnulGe6EStUreQAc2DK5D2
 JllcU6Tb52LgJn2Isk0bHfygBOHRka3HFT3oC/YHu52RjE3txODhtsPeg125tFk4gsRL2bZWF
 KQ6f4YvbF3/ew8BwtBZqif0heMYay9l3hcEb/N5Hx95M19epaLQVXmYBf6CHY2SlSQpdYboTf
 tq74AjuWKq9QUHSJ+HinSCQu7fmZ8eNVcrwx59ejTlDzVNQSJTiIjW0S/bch0/94Qzs2k62aj
 Rfq4COdDRjjG9sH0ZJYen5JqePmTvWHFAEpwFLIdLpGIJnMRcInDY4X5SkK/qkoB9fLdZLxRf
 kDWEEnebBvHfEW+NMKff54GDN9FgpBF3/fyiqfXWryA610OQ4YGlqmdd+KTiYgPz/KBJaoNlY
 fPNhiY/b/J/LoYmFsIL3P1F7zQ3FPAL7o6dcDXxMJeh6suiP0n4HCRnzB/fTR1mWCs7lp56rj
 FVzQn7xqKgfcVyOFKWbKJiVNf8AyMajet2p7sg31Q=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_072704_322772_63725136 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [74.208.4.197 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [74.208.4.197 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, j.bauer@endrich.com,
 linux-kernel@vger.kernel.org, David Airlie <airlied@linux.ie>,
 info@logictechno.com, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marcel Ziswiler <marcel.ziswiler@toradex.com>

Add bindings for the following 3 previously added display panels
manufactured by Logic Technologies Limited:

- LT161010-2NHC e.g. as found in the Toradex Capacitive Touch Display
7" Parallel [1]
- LT161010-2NHR e.g. as found in the Toradex Resistive Touch Display 7"
Parallel [2]
- LT170410-2WHC e.g. as found in the Toradex Capacitive Touch Display
10.1" LVDS [3]

Those panels may also be distributed by Endrich Bauelemente Vertriebs
GmbH [4].

[1] https://docs.toradex.com/104497-7-inch-parallel-capacitive-touch-display-800x480-datasheet.pdf
[2] https://docs.toradex.com/104498-7-inch-parallel-resistive-touch-display-800x480.pdf
[3] https://docs.toradex.com/105952-10-1-inch-lvds-capacitive-touch-display-1280x800-datasheet.pdf
[4] https://www.endrich.com/isi50_isi30_tft-displays/lt170410-1whc_isi30

Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

---

Changes in v2:
- New patch adding display panel bindings as well as suggested by Rob.

 .../panel/logictechno,lt161010-2nhc.yaml      | 44 +++++++++++++++++++
 .../panel/logictechno,lt161010-2nhr.yaml      | 44 +++++++++++++++++++
 .../panel/logictechno,lt170410-2whc.yaml      | 44 +++++++++++++++++++
 3 files changed, 132 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/logictechno,lt161010-2nhc.yaml
 create mode 100644 Documentation/devicetree/bindings/display/panel/logictechno,lt161010-2nhr.yaml
 create mode 100644 Documentation/devicetree/bindings/display/panel/logictechno,lt170410-2whc.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/logictechno,lt161010-2nhc.yaml b/Documentation/devicetree/bindings/display/panel/logictechno,lt161010-2nhc.yaml
new file mode 100644
index 000000000000..0dfe94d38a47
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/logictechno,lt161010-2nhc.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/logictechno,lt161010-2nhc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Logic Technologies LT161010-2NHC 7" WVGA TFT Cap Touch Module
+
+maintainers:
+  - Marcel Ziswiler <marcel.ziswiler@toradex.com>
+  - Thierry Reding <treding@nvidia.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: logictechno,lt161010-2nhc
+
+  power-supply: true
+  enable-gpios: true
+  backlight: true
+  port: true
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    panel_rgb: panel {
+      compatible = "logictechno,lt161010-2nhc";
+      backlight = <&backlight>;
+      power-supply = <&reg_3v3>;
+
+      port {
+        panel_in_rgb: endpoint {
+          remote-endpoint = <&controller_out_rgb>;
+        };
+      };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/display/panel/logictechno,lt161010-2nhr.yaml b/Documentation/devicetree/bindings/display/panel/logictechno,lt161010-2nhr.yaml
new file mode 100644
index 000000000000..ffc97529b068
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/logictechno,lt161010-2nhr.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/logictechno,lt161010-2nhr.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Logic Technologies LT161010-2NHR 7" WVGA TFT Resistive Touch Module
+
+maintainers:
+  - Marcel Ziswiler <marcel.ziswiler@toradex.com>
+  - Thierry Reding <treding@nvidia.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: logictechno,lt161010-2nhr
+
+  power-supply: true
+  enable-gpios: true
+  backlight: true
+  port: true
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    panel_rgb: panel {
+      compatible = "logictechno,lt161010-2nhr";
+      backlight = <&backlight>;
+      power-supply = <&reg_3v3>;
+
+      port {
+        panel_in_rgb: endpoint {
+          remote-endpoint = <&controller_out_rgb>;
+        };
+      };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/display/panel/logictechno,lt170410-2whc.yaml b/Documentation/devicetree/bindings/display/panel/logictechno,lt170410-2whc.yaml
new file mode 100644
index 000000000000..3606f7fe0dd0
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/logictechno,lt170410-2whc.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/logictechno,lt170410-2whc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Logic Technologies LT170410-2WHC 10.1" 1280x800 IPS TFT Cap Touch Module
+
+maintainers:
+  - Marcel Ziswiler <marcel.ziswiler@toradex.com>
+  - Thierry Reding <treding@nvidia.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: logictechno,lt170410-2whc
+
+  power-supply: true
+  enable-gpios: true
+  backlight: true
+  port: true
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    lvds_panel: panel {
+      compatible = "logictechno,lt170410-2whc";
+      backlight = <&backlight>;
+      power-supply = <&reg_3v3>;
+
+      port {
+        panel_in_lvds: endpoint {
+          remote-endpoint = <&controller_out_lvds>;
+        };
+      };
+    };
+
+...
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
