Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 086C3179E16
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 04:02:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7Lii1UtzyYBUb9FO6lp3a/PflabuRlRUqSD/5maRKXY=; b=lWaqLsW9HLAh5O
	Q9bWzRwnKWRcAY5aK+wxyrWU9aPxNykKis9LU6NQDPLJlA442ir8Rrouxt+AFGUspY9nkFZXfxxMN
	PNOJs/4df9aYYJdnSH4dkZO1LIRvKBOcnnkqDkmDtd7El/H5O2fTy0ueqId86JShJi1Q2QbFJPdNE
	fw+hbIJr25Vej5kfP97icDgwT6Vvr0rsQRb5WOJOvq6m/oKkYTA1og3m/jhOS2ESUuDjH01ljJBkI
	CPvtFS+jZkZ83g6OtH79ysAwy79DwaxtSRtphjvfGZE0n8r5GIFxiGHh+g39llTpEa/C2UFAObYa0
	HKYDv5CxlJ8Dr0ZrusxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9glz-0005LG-QW; Thu, 05 Mar 2020 03:02:07 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9gll-0005JS-6I
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 03:01:56 +0000
Received: by mail-pf1-x442.google.com with SMTP id y26so2009219pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 19:01:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=akTaGskxk3wl37gPV06BtCIMtisnyiMnBvfr6rs7/eA=;
 b=moocEdrNfOEUZAVL8Cyb/FJ94cclDJeklDocRewcJO39yPLjbrIctW1ddE23oAr4G7
 VNRRPFOHDOEtUaa3H9KBP3wQSmKQ4twKQ6tJ9BP3SZgiVNsLOiNEcCL1xiEWMHyJI7YK
 SD2cFnCJhpYS99Gta1CviGUqeWMz2xboX5CTg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=akTaGskxk3wl37gPV06BtCIMtisnyiMnBvfr6rs7/eA=;
 b=t2QiFE3kfI6DFzuZXKXTe2O7hfq+UMDfslIgXdOk7mqWJtiiJSyi8m9fQYaZo/xflW
 VYeZtVIXVt/c3PTkA7uH8ttKu3KqT9FQHKeA3kcegaEIxvWaXAogQYsR1GngQJdCuimF
 Wec4oOQSF2kgCqVlFiwfD7BikTvbWptqaalYZuRPC6MizENn9YMX3q6iV1jWAw2sPqpG
 qjIRmj0tib3/fswYqlN+1Cy3qlkhUMddwCndipyx7jPq3IkkgRrOWQTnKewXOTWpY/Pq
 OIW7y1HYq8Kdd5goaJKiyopQVMczJr6bQVMzJHbGG6ctjj0mS8GYibxABznBmeOnKnMF
 zaBg==
X-Gm-Message-State: ANhLgQ0AnnRwtFj6zTZNU0VFfYHMRFd9TfHNsqBc4lhX1RisSgtdNk68
 Ac6Fp3PIpvgpQS0gcs+Fn1tZ8Q==
X-Google-Smtp-Source: ADFU+vsoeMM80WLZJaL7ie9IlRsbtopeK4s4quwjK9wTli0i8qSZ82PtR6cR4+zI+th3Si+Pvx/ZhQ==
X-Received: by 2002:a62:aa17:: with SMTP id e23mr6055296pff.45.1583377311767; 
 Wed, 04 Mar 2020 19:01:51 -0800 (PST)
Received: from pmalani2.mtv.corp.google.com
 ([2620:15c:202:201:476b:691:abc3:38db])
 by smtp.gmail.com with ESMTPSA id c201sm11753885pfb.131.2020.03.04.19.01.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 19:01:51 -0800 (PST)
From: Prashant Malani <pmalani@chromium.org>
To: devicetree@vger.kernel.org
Subject: [PATCH v2] dt-bindings: Convert usb-connector to YAML format.
Date: Wed,  4 Mar 2020 19:01:30 -0800
Message-Id: <20200305030135.210675-1-pmalani@chromium.org>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_190153_271123_AEC305B9 
X-CRM114-Status: GOOD (  21.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, heikki.krogerus@linux.intel.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "open list:USB SUBSYSTEM" <linux-usb@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>, swboyd@chromium.org,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 Prashant Malani <pmalani@chromium.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, enric.balletbo@collabora.com,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, bleung@chromium.org,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the usb-connector.txt bindings file to YAML format. This allows
it to be used in dt_bindings_check verification. This patch was
born out of a patch series for the addition of a Type C connector
class port driver[1].

An attempt has been made to maintain the same documentation text and
example structure as was in the .txt file, but wherever needed
modifications have been made to satisfy dt_bindings_check.

Also, update all references to usb-connector.txt to now use
usb-connector.yaml.

[1]: https://lkml.org/lkml/2020/2/19/1232

Signed-off-by: Prashant Malani <pmalani@chromium.org>
---

Changes in v2:
- Added type references for some properties.
- Removed pinctrl properties.
- Updated power-role, try-power-role and data-role properties to be in
  valid schema format.
- Added OF graph data bus binding property according to reviewer
  suggestions.

 .../connector/samsung,usb-connector-11pin.txt |   2 +-
 .../bindings/connector/usb-connector.txt      | 135 ------------
 .../bindings/connector/usb-connector.yaml     | 203 ++++++++++++++++++
 .../devicetree/bindings/usb/fcs,fusb302.txt   |   2 +-
 .../devicetree/bindings/usb/generic.txt       |   2 +-
 .../devicetree/bindings/usb/mediatek,mtu3.txt |   2 +-
 .../devicetree/bindings/usb/mediatek,musb.txt |   2 +-
 .../bindings/usb/richtek,rt1711h.txt          |   2 +-
 .../devicetree/bindings/usb/ti,hd3ss3220.txt  |   2 +-
 .../devicetree/bindings/usb/typec-tcpci.txt   |   2 +-
 .../devicetree/bindings/usb/usb-conn-gpio.txt |   4 +-
 11 files changed, 213 insertions(+), 145 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/connector/usb-connector.txt
 create mode 100644 Documentation/devicetree/bindings/connector/usb-connector.yaml

diff --git a/Documentation/devicetree/bindings/connector/samsung,usb-connector-11pin.txt b/Documentation/devicetree/bindings/connector/samsung,usb-connector-11pin.txt
index 22256e295a7a1..3dd8961154abf 100644
--- a/Documentation/devicetree/bindings/connector/samsung,usb-connector-11pin.txt
+++ b/Documentation/devicetree/bindings/connector/samsung,usb-connector-11pin.txt
@@ -19,7 +19,7 @@ Required nodes:
     0: High Speed (HS),
     3: Mobile High-Definition Link (MHL), specific to 11-pin Samsung micro-USB.
 
-[1]: bindings/connector/usb-connector.txt
+[1]: bindings/connector/usb-connector.yaml
 
 Example
 -------
diff --git a/Documentation/devicetree/bindings/connector/usb-connector.txt b/Documentation/devicetree/bindings/connector/usb-connector.txt
deleted file mode 100644
index 88578ac1a8a76..0000000000000
--- a/Documentation/devicetree/bindings/connector/usb-connector.txt
+++ /dev/null
@@ -1,135 +0,0 @@
-USB Connector
-=============
-
-A USB connector node represents a physical USB connector. It should be
-a child of a USB interface controller.
-
-Required properties:
-- compatible: describes type of the connector, must be one of:
-    "usb-a-connector",
-    "usb-b-connector",
-    "usb-c-connector".
-
-Optional properties:
-- label: symbolic name for the connector,
-- type: size of the connector, should be specified in case of USB-A, USB-B
-  non-fullsize connectors: "mini", "micro".
-- self-powered: Set this property if the usb device that has its own power
-  source.
-
-Optional properties for usb-b-connector:
-- id-gpios: an input gpio for USB ID pin.
-- vbus-gpios: an input gpio for USB VBUS pin, used to detect presence of
-  VBUS 5V.
-  see gpio/gpio.txt.
-- vbus-supply: a phandle to the regulator for USB VBUS if needed when host
-  mode or dual role mode is supported.
-  Particularly, if use an output GPIO to control a VBUS regulator, should
-  model it as a regulator.
-  see regulator/fixed-regulator.yaml
-- pinctrl-names : a pinctrl state named "default" is optional
-- pinctrl-0 : pin control group
-  see pinctrl/pinctrl-bindings.txt
-
-Optional properties for usb-c-connector:
-- power-role: should be one of "source", "sink" or "dual"(DRP) if typec
-  connector has power support.
-- try-power-role: preferred power role if "dual"(DRP) can support Try.SNK
-  or Try.SRC, should be "sink" for Try.SNK or "source" for Try.SRC.
-- data-role: should be one of "host", "device", "dual"(DRD) if typec
-  connector supports USB data.
-
-Required properties for usb-c-connector with power delivery support:
-- source-pdos: An array of u32 with each entry providing supported power
-  source data object(PDO), the detailed bit definitions of PDO can be found
-  in "Universal Serial Bus Power Delivery Specification" chapter 6.4.1.2
-  Source_Capabilities Message, the order of each entry(PDO) should follow
-  the PD spec chapter 6.4.1. Required for power source and power dual role.
-  User can specify the source PDO array via PDO_FIXED/BATT/VAR/PPS_APDO()
-  defined in dt-bindings/usb/pd.h.
-- sink-pdos: An array of u32 with each entry providing supported power
-  sink data object(PDO), the detailed bit definitions of PDO can be found
-  in "Universal Serial Bus Power Delivery Specification" chapter 6.4.1.3
-  Sink Capabilities Message, the order of each entry(PDO) should follow
-  the PD spec chapter 6.4.1. Required for power sink and power dual role.
-  User can specify the sink PDO array via PDO_FIXED/BATT/VAR/PPS_APDO() defined
-  in dt-bindings/usb/pd.h.
-- op-sink-microwatt: Sink required operating power in microwatt, if source
-  can't offer the power, Capability Mismatch is set. Required for power
-  sink and power dual role.
-
-Required nodes:
-- any data bus to the connector should be modeled using the OF graph bindings
-  specified in bindings/graph.txt, unless the bus is between parent node and
-  the connector. Since single connector can have multiple data buses every bus
-  has assigned OF graph port number as follows:
-    0: High Speed (HS), present in all connectors,
-    1: Super Speed (SS), present in SS capable connectors,
-    2: Sideband use (SBU), present in USB-C.
-
-Examples
---------
-
-1. Micro-USB connector with HS lines routed via controller (MUIC):
-
-muic-max77843@66 {
-	...
-	usb_con: connector {
-		compatible = "usb-b-connector";
-		label = "micro-USB";
-		type = "micro";
-	};
-};
-
-2. USB-C connector attached to CC controller (s2mm005), HS lines routed
-to companion PMIC (max77865), SS lines to USB3 PHY and SBU to DisplayPort.
-DisplayPort video lines are routed to the connector via SS mux in USB3 PHY.
-
-ccic: s2mm005@33 {
-	...
-	usb_con: connector {
-		compatible = "usb-c-connector";
-		label = "USB-C";
-
-		ports {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			port@0 {
-				reg = <0>;
-				usb_con_hs: endpoint {
-					remote-endpoint = <&max77865_usbc_hs>;
-				};
-			};
-			port@1 {
-				reg = <1>;
-				usb_con_ss: endpoint {
-					remote-endpoint = <&usbdrd_phy_ss>;
-				};
-			};
-			port@2 {
-				reg = <2>;
-				usb_con_sbu: endpoint {
-					remote-endpoint = <&dp_aux>;
-				};
-			};
-		};
-	};
-};
-
-3. USB-C connector attached to a typec port controller(ptn5110), which has
-power delivery support and enables drp.
-
-typec: ptn5110@50 {
-	...
-	usb_con: connector {
-		compatible = "usb-c-connector";
-		label = "USB-C";
-		power-role = "dual";
-		try-power-role = "sink";
-		source-pdos = <PDO_FIXED(5000, 2000, PDO_FIXED_USB_COMM)>;
-		sink-pdos = <PDO_FIXED(5000, 2000, PDO_FIXED_USB_COMM)
-			     PDO_VAR(5000, 12000, 2000)>;
-		op-sink-microwatt = <10000000>;
-	};
-};
diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
new file mode 100644
index 0000000000000..b386e2880405c
--- /dev/null
+++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
@@ -0,0 +1,203 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/connector/usb-connector.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: USB Connector
+
+maintainers:
+  - linux-usb@vger.kernel.org
+
+description:
+  A USB connector node represents a physical USB connector. It should be a child
+  of a USB interface controller.
+
+properties:
+  compatible:
+    enum:
+      - usb-a-connector
+      - usb-b-connector
+      - usb-c-connector
+
+  label:
+    description: Symbolic name for the connector.
+
+  type:
+    description: Size of the connector, should be specified in case of USB-A,
+      USB-B non-fullsize connectors.
+    $ref: /schemas/types.yaml#definitions/string
+    enum:
+      - mini
+      - micro
+
+  self-powered:
+    description: Set this property if the USB device has its own power source.
+    type: boolean
+
+  # The following are optional properties for "usb-b-connector".
+  id-gpios:
+    description: An input gpio for USB ID pin.
+    maxItems: 1
+
+  vbus-gpios:
+    description: An input gpio for USB VBus pin, used to detect presence of
+      VBUS 5V. See gpio/gpio.txt.
+    maxItems: 1
+
+  vbus-supply:
+    description: A phandle to the regulator for USB VBUS if needed when host
+      mode or dual role mode is supported.
+      Particularly, if use an output GPIO to control a VBUS regulator, should
+      model it as a regulator. See regulator/fixed-regulator.yaml
+
+  # The following are optional properties for "usb-c-connector".
+  power-role:
+    description: Determines the power role that the Type C connector will
+      support. "dual" refers to Dual Role Port (DRP).
+    allOf:
+      - $ref: /schemas/types.yaml#definitions/string
+    enum:
+      - source
+      - sink
+      - dual
+
+  try-power-role:
+    description: Preferred power role.
+    allOf:
+      - $ref: /schemas/types.yaml#definitions/string
+    enum:
+     - source
+     - sink
+     - dual
+
+  data-role:
+    description: Data role if Type C connector supports USB data. "dual" refers
+      Dual Role Device (DRD).
+    allOf:
+      - $ref: /schemas/types.yaml#definitions/string
+    enum:
+      - host
+      - device
+      - dual
+
+  # The following are optional properties for "usb-c-connector" with power
+  # delivery support.
+  source-pdos:
+    description: An array of u32 with each entry providing supported power
+      source data object(PDO), the detailed bit definitions of PDO can be found
+      in "Universal Serial Bus Power Delivery Specification" chapter 6.4.1.2
+      Source_Capabilities Message, the order of each entry(PDO) should follow
+      the PD spec chapter 6.4.1. Required for power source and power dual role.
+      User can specify the source PDO array via PDO_FIXED/BATT/VAR/PPS_APDO()
+      defined in dt-bindings/usb/pd.h.
+    minItems: 1
+    maxItems: 7
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32-array
+
+  sink-pdos:
+    description: An array of u32 with each entry providing supported power sink
+      data object(PDO), the detailed bit definitions of PDO can be found in
+      "Universal Serial Bus Power Delivery Specification" chapter 6.4.1.3
+      Sink Capabilities Message, the order of each entry(PDO) should follow the
+      PD spec chapter 6.4.1. Required for power sink and power dual role. User
+      can specify the sink PDO array via PDO_FIXED/BATT/VAR/PPS_APDO() defined
+      in dt-bindings/usb/pd.h.
+    minItems: 1
+    maxItems: 7
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32-array
+
+  op-sink-microwatt:
+    description: Sink required operating power in microwatt, if source can't
+      offer the power, Capability Mismatch is set. Required for power sink and
+      power dual role.
+
+  ports:
+    description: OF graph bindings (specified in bindings/graph.txt) that model
+      any data bus to the connector unless the bus is between parent node and
+      the connector. Since a single connector can have multiple data buses every
+      bus has assigned OF graph port number as described below.
+    type: object
+    properties:
+      port@0:
+        type: object
+        description: High Speed (HS), present in all connectors.
+
+      port@1:
+        type: object
+        description: Super Speed (SS), present in SS capable connectors.
+
+      port@2:
+        type: object
+        description: Sideband Use (SBU), present in USB-C.
+
+    required:
+      - port@0
+
+required:
+  - compatible
+
+examples:
+  # Micro-USB connector with HS lines routed via controller (MUIC).
+  - |+
+    muic-max77843@66 {
+      usb_con1: connector {
+        compatible = "usb-b-connector";
+        label = "micro-USB";
+        type = "micro";
+      };
+    };
+
+  # USB-C connector attached to CC controller (s2mm005), HS lines routed
+  # to companion PMIC (max77865), SS lines to USB3 PHY and SBU to DisplayPort.
+  # DisplayPort video lines are routed to the connector via SS mux in USB3 PHY.
+  - |+
+    ccic: s2mm005@33 {
+      usb_con2: connector {
+        compatible = "usb-c-connector";
+        label = "USB-C";
+
+        ports {
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          port@0 {
+            reg = <0>;
+            usb_con_hs: endpoint {
+              remote-endpoint = <&max77865_usbc_hs>;
+            };
+          };
+          port@1 {
+            reg = <1>;
+            usb_con_ss: endpoint {
+            remote-endpoint = <&usbdrd_phy_ss>;
+            };
+          };
+          port@2 {
+            reg = <2>;
+            usb_con_sbu: endpoint {
+            remote-endpoint = <&dp_aux>;
+            };
+          };
+        };
+      };
+    };
+
+  # USB-C connector attached to a typec port controller(ptn5110), which has
+  # power delivery support and enables drp.
+  - |+
+    #include <dt-bindings/usb/pd.h>
+    typec: ptn5110@50 {
+      usb_con3: connector {
+        compatible = "usb-c-connector";
+        label = "USB-C";
+        power-role = "dual";
+        try-power-role = "sink";
+        source-pdos = <PDO_FIXED(5000, 2000, PDO_FIXED_USB_COMM)>;
+        sink-pdos = <PDO_FIXED(5000, 2000, PDO_FIXED_USB_COMM)
+                     PDO_VAR(5000, 12000, 2000)>;
+        op-sink-microwatt = <10000000>;
+      };
+    };
diff --git a/Documentation/devicetree/bindings/usb/fcs,fusb302.txt b/Documentation/devicetree/bindings/usb/fcs,fusb302.txt
index ba2e32d500c02..60e4654297af7 100644
--- a/Documentation/devicetree/bindings/usb/fcs,fusb302.txt
+++ b/Documentation/devicetree/bindings/usb/fcs,fusb302.txt
@@ -9,7 +9,7 @@ Required sub-node:
 - connector : The "usb-c-connector" attached to the FUSB302 IC. The bindings
   of the connector node are specified in:
 
-	Documentation/devicetree/bindings/connector/usb-connector.txt
+	Documentation/devicetree/bindings/connector/usb-connector.yaml
 
 
 Example:
diff --git a/Documentation/devicetree/bindings/usb/generic.txt b/Documentation/devicetree/bindings/usb/generic.txt
index e6790d2a4da9b..474e74c06522d 100644
--- a/Documentation/devicetree/bindings/usb/generic.txt
+++ b/Documentation/devicetree/bindings/usb/generic.txt
@@ -34,7 +34,7 @@ Optional properties:
  - usb-role-switch: boolean, indicates that the device is capable of assigning
 			the USB data role (USB host or USB device) for a given
 			USB connector, such as Type-C, Type-B(micro).
-			see connector/usb-connector.txt.
+			see connector/usb-connector.yaml.
 
 This is an attribute to a USB controller such as:
 
diff --git a/Documentation/devicetree/bindings/usb/mediatek,mtu3.txt b/Documentation/devicetree/bindings/usb/mediatek,mtu3.txt
index e0ae6096f7ac8..a82ca438aec1f 100644
--- a/Documentation/devicetree/bindings/usb/mediatek,mtu3.txt
+++ b/Documentation/devicetree/bindings/usb/mediatek,mtu3.txt
@@ -34,7 +34,7 @@ Optional properties:
 	dual-role mode.
 	it's considered valid for compatibility reasons, not allowed for
 	new bindings, and put into a usb-connector node.
-	see connector/usb-connector.txt.
+	see connector/usb-connector.yaml.
  - pinctrl-names : a pinctrl state named "default" is optional, and need be
 	defined if auto drd switch is enabled, that means the property dr_mode
 	is set as "otg", and meanwhile the property "mediatek,enable-manual-drd"
diff --git a/Documentation/devicetree/bindings/usb/mediatek,musb.txt b/Documentation/devicetree/bindings/usb/mediatek,musb.txt
index 2b8a87c90d9ea..5eedb02965622 100644
--- a/Documentation/devicetree/bindings/usb/mediatek,musb.txt
+++ b/Documentation/devicetree/bindings/usb/mediatek,musb.txt
@@ -23,7 +23,7 @@ Optional properties:
                      MTCMOS
 
 Required child nodes:
- usb connector node as defined in bindings/connector/usb-connector.txt
+ usb connector node as defined in bindings/connector/usb-connector.yaml
 Optional properties:
  - id-gpios        : input GPIO for USB ID pin.
  - vbus-gpios      : input GPIO for USB VBUS pin.
diff --git a/Documentation/devicetree/bindings/usb/richtek,rt1711h.txt b/Documentation/devicetree/bindings/usb/richtek,rt1711h.txt
index e3fc57e605ed6..6f8115db2ea9b 100644
--- a/Documentation/devicetree/bindings/usb/richtek,rt1711h.txt
+++ b/Documentation/devicetree/bindings/usb/richtek,rt1711h.txt
@@ -9,7 +9,7 @@ Required properties:
 Required sub-node:
 - connector: The "usb-c-connector" attached to the tcpci chip, the bindings
   of connector node are specified in
-  Documentation/devicetree/bindings/connector/usb-connector.txt
+  Documentation/devicetree/bindings/connector/usb-connector.yaml
 
 Example :
 rt1711h@4e {
diff --git a/Documentation/devicetree/bindings/usb/ti,hd3ss3220.txt b/Documentation/devicetree/bindings/usb/ti,hd3ss3220.txt
index 25780e945b154..2bd21b22ce95b 100644
--- a/Documentation/devicetree/bindings/usb/ti,hd3ss3220.txt
+++ b/Documentation/devicetree/bindings/usb/ti,hd3ss3220.txt
@@ -9,7 +9,7 @@ Required sub-node:
  - connector: The "usb-c-connector" attached to the hd3ss3220 chip. The
    bindings of the connector node are specified in:
 
-	Documentation/devicetree/bindings/connector/usb-connector.txt
+	Documentation/devicetree/bindings/connector/usb-connector.yaml
 
 Example:
 hd3ss3220@47 {
diff --git a/Documentation/devicetree/bindings/usb/typec-tcpci.txt b/Documentation/devicetree/bindings/usb/typec-tcpci.txt
index 0dd1469e73180..2082522b1c326 100644
--- a/Documentation/devicetree/bindings/usb/typec-tcpci.txt
+++ b/Documentation/devicetree/bindings/usb/typec-tcpci.txt
@@ -13,7 +13,7 @@ Required properties:
 Required sub-node:
 - connector: The "usb-c-connector" attached to the tcpci chip, the bindings
   of connector node are specified in
-  Documentation/devicetree/bindings/connector/usb-connector.txt
+  Documentation/devicetree/bindings/connector/usb-connector.yaml
 
 Example:
 
diff --git a/Documentation/devicetree/bindings/usb/usb-conn-gpio.txt b/Documentation/devicetree/bindings/usb/usb-conn-gpio.txt
index 3d05ae56cb0dc..ec80641208a53 100644
--- a/Documentation/devicetree/bindings/usb/usb-conn-gpio.txt
+++ b/Documentation/devicetree/bindings/usb/usb-conn-gpio.txt
@@ -8,11 +8,11 @@ Required properties:
 - compatible : should include "gpio-usb-b-connector" and "usb-b-connector".
 - id-gpios, vbus-gpios : input gpios, either one of them must be present,
 	and both can be present as well.
-	see connector/usb-connector.txt
+	see connector/usb-connector.yaml
 
 Optional properties:
 - vbus-supply : can be present if needed when supports dual role mode.
-	see connector/usb-connector.txt
+	see connector/usb-connector.yaml
 
 - Sub-nodes:
 	- port : can be present.
-- 
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
