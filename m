Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C75BCB0730
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 05:35:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QPSIEr/4fhoYKI3/fUbT6dIipIcHerLqPZaidRJQ/rI=; b=nwO5RS5/cmDfBl
	hATIBvSW4kJJl1306wFynPqeCstcnMJElWcGKgOl//M1wLBQvTjnWWdT+SiW5s40AJAVNDGINoj+D
	QdHo56Ob5HIKHzXjxNYEDTuiobTUhsWgthDpTiI0Yn8eGn8KoNJ6PMTwdOYzkhPWfeX0QzG+PNNxS
	CeIgv1EFZ92/9pFWT2rNi1wtMiuqrEo3b8WU/trSoHnj2Mpx/AKP6MbNr0Sx56YSwkV1dtnUo53cZ
	Tkl1mlh2kFSAX9D+KRbb0EdKr8iFGzsoIYUkZCMMHiP+oNx6o4N/q4EwTAPZ2Xcu+B3ChpZm51T9c
	HFSAjbF+zlUCMO93Mleg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8FtR-00004z-Of; Thu, 12 Sep 2019 03:35:37 +0000
Received: from 60-251-196-230.hinet-ip.hinet.net ([60.251.196.230]
 helo=ironport.ite.com.tw)
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8FtF-0008Uu-Ra; Thu, 12 Sep 2019 03:35:27 +0000
Received: from unknown (HELO mse.ite.com.tw) ([192.168.35.30])
 by ironport.ite.com.tw with ESMTP; 12 Sep 2019 11:35:14 +0800
Received: from csbcas.internal.ite.com.tw (csbcas1.internal.ite.com.tw
 [192.168.65.46]) by mse.ite.com.tw with ESMTP id x8C3Z9JK094786;
 Thu, 12 Sep 2019 11:35:09 +0800 (GMT-8)
 (envelope-from allen.chen@ite.com.tw)
Received: from allen-VirtualBox.internal.ite.com.tw (192.168.70.14) by
 csbcas1.internal.ite.com.tw (192.168.65.45) with Microsoft SMTP Server (TLS)
 id 14.3.352.0; Thu, 12 Sep 2019 11:35:10 +0800
From: allen <allen.chen@ite.com.tw>
To: 
Subject: [PATCH v3 1/2] dt-bindings: Add binding for IT6505.
Date: Thu, 12 Sep 2019 11:32:28 +0800
Message-ID: <1568259199-5827-2-git-send-email-allen.chen@ite.com.tw>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1568259199-5827-1-git-send-email-allen.chen@ite.com.tw>
References: <1568259199-5827-1-git-send-email-allen.chen@ite.com.tw>
MIME-Version: 1.0
X-Originating-IP: [192.168.70.14]
X-MAIL: mse.ite.com.tw x8C3Z9JK094786
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_203526_190124_9F9A9E6A 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
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
Cc: Mark Rutland <mark.rutland@arm.com>, "open list:OPEN FIRMWARE AND FLATTENED
 DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Pi-Hsun Shih <pihsun@chromium.org>, Jau-Chih Tseng <Jau-Chih.Tseng@ite.com.tw>,
 David Airlie <airlied@linux.ie>, Allen Chen <allen.chen@ite.com.tw>,
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Icenowy Zheng <icenowy@aosc.io>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Allen Chen <allen.chen@ite.com.tw>

Add a DT binding documentation for IT6505.

Signed-off-by: Allen Chen <allen.chen@ite.com.tw>

Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>

---
cros-ec does not have an associated driver that uses the standard Linux USB-C driver class.
extcon is used to model the Type-C connector.(crbug.com/982932)
---
 .../bindings/display/bridge/ite,it6505.txt         | 28 ++++++++++++++++++++++
 .../devicetree/bindings/vendor-prefixes.yaml       |  2 ++
 2 files changed, 30 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/ite,it6505.txt

diff --git a/Documentation/devicetree/bindings/display/bridge/ite,it6505.txt b/Documentation/devicetree/bindings/display/bridge/ite,it6505.txt
new file mode 100644
index 0000000..72da0c4
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/ite,it6505.txt
@@ -0,0 +1,28 @@
+iTE it6505 DP bridge bindings
+
+Required properties:
+        - compatible: "ite,it6505"
+        - reg: i2c address of the bridge
+        - ovdd-supply: I/O voltage
+        - pwr18-supply: Core voltage
+        - interrupts: interrupt specifier of INT pin
+        - reset-gpios: gpio specifier of RESET pin
+	- hpd-gpios:
+		Hotplug detect GPIO.
+		Indicates which GPIO should be used for hotplug detection
+	- port@[x]: SoC specific port nodes with endpoint definitions as defined
+		in Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
+
+Example:
+	dp-bridge@5c {
+                compatible = "ite,it6505";
+                interrupts = <152 IRQ_TYPE_EDGE_RISING 152 0>;
+                reg = <0x5c>;
+                pinctrl-names = "default";
+                pinctrl-0 = <&it6505_pins>;
+                ovdd-supply = <&mt6358_vsim1_reg>;
+                pwr18-supply = <&it6505_pp18_reg>;
+                reset-gpios = <&pio 179 1>;
+                hpd-gpios = <&pio 9 0>;
+                extcon = <&usbc_extcon>;
+        };
diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 967e78c..fb3b643 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -461,6 +461,8 @@ patternProperties:
     description: Intersil
   "^issi,.*":
     description: Integrated Silicon Solutions Inc.
+  "^ite,.*":
+    description: ITE Tech. Inc.
   "^itead,.*":
     description: ITEAD Intelligent Systems Co.Ltd
   "^iwave,.*":
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
