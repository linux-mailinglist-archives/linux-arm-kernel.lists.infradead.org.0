Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C79E1DB1A5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:27:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ME42HOBQpn26hLLDIf7ArcUg42JLgm4Nmbo6mFu8Ilo=; b=ojpcKkQjCq6wXt
	WIgSPDBLjknvI6oyHAlYLGBOgkuR3F9YZT6ByD+Zhtfj/mh7tF9HAXcEkfRixLyWCC+c27R3tm9LG
	k3TFHDxUuT6UAr9gzATI4vJwlistuTjrsxa8E/CRqEZPauFdsjzwh2pA72EFImh2S7j1HWMRX27cj
	sIfGeUeGYCE4pD4ZERclCpxAzATkOeKxkLx8BPdB5TEW2ivJR/nW9CpVFDnbAhCAeupHGI172+v4R
	BEGcA9bJKzS/givHNA5a37bFftlI7nRDtuIMwjXAtGs7eXvOzvMngWIMbJaCei2DICXhsyAubzz7+
	+QhvnzRrOHo0ZyTsaNPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMsZ-00086a-1z; Wed, 20 May 2020 11:27:19 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMqv-0006tK-0t
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:25:39 +0000
Received: by mail-wm1-x342.google.com with SMTP id n18so2462599wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 04:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=960aYk+7qjUCxv3nxz7wYsvEJGuss0o+v4xW/qsO27M=;
 b=BCU9kXcgsvnTCYmmZyMFbfP42lV36jvtBS7MrNYkfkrrmo3HLhXzrQaRbuVtmKyVfV
 u8oAXKigGlsQaAvdeMR6sDIJhCefW2ALF4+q5EhzHXXRPvfKz0EgUba3SViyRQRpin1d
 NSWplR0VuNi5j1Z7aarc+weRotaLhPkMBYeVc8iZzp8T3r5+VmSIIghbwiNRVJs+VKZg
 9rbeP1qMPEiVhkPLGa4FgvYqvBtt221vvYH9bhhK4gpsNHWnaDA7Irft3gU7NwZKbkG/
 y6iCo22tU0JVcq7RsXsC1cmzYc3Aj53hs8lEMHagIu3zRYu8tFUIcZSzmDsyM3c49QLX
 irzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=960aYk+7qjUCxv3nxz7wYsvEJGuss0o+v4xW/qsO27M=;
 b=BXIZ2mtDRfM2GNQ9QjvadLmneiwxfny4oigfiz9nV8TK6WBkbXDDgoSQ1fzqhTcyjH
 AVeuqOPC8HjMfHASM2QbregpJJLxXpb3cJdn7fxrp9q3fjE91StLNNr7rRmZTFc3/khn
 IDzHavo4yy2hfw4pNg11WfgZHVskMIgR6o/HEE7VNHfQn7XBfpMotkhhouJJjFVQJgJx
 1ewP6pr4geIjpmDrfCdOt+4VyJqgEn8h9Yso69mC0zlwUdbKqUhlUOfU/ZNDAEfBbGZD
 URLgWs8OwiXgl6nQqtrTe5KxkIU5OcLhAjld/Rl2A+V1mqDDNk2KNLazDJXqJYM5SHIc
 7T6w==
X-Gm-Message-State: AOAM5306YRVLsub/6vXr6i6kwnGNQ06qOLVnfyhZWetq3AQUX+E0Yugj
 KP5XipFf1vzqBbObFZ0l2IXIOQ==
X-Google-Smtp-Source: ABdhPJy4SpnpwlPGPJPzN38GikiMlV7NO71LX5pXKBL7PLUJyF7PJcw8jt3g08t08cBRGSxi8p0+2w==
X-Received: by 2002:a1c:9895:: with SMTP id a143mr4310060wme.172.1589973935855; 
 Wed, 20 May 2020 04:25:35 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id v22sm2729265wml.21.2020.05.20.04.25.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 04:25:35 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v4 03/11] dt-bindings: net: add a binding document for
 MediaTek Ethernet MAC
Date: Wed, 20 May 2020 13:25:15 +0200
Message-Id: <20200520112523.30995-4-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200520112523.30995-1-brgl@bgdev.pl>
References: <20200520112523.30995-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_042537_067545_E5462481 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

This adds yaml DT bindings for the MediaTek Ethernet MAC present on the
mt8* family of SoCs.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 .../bindings/net/mediatek,eth-mac.yaml        | 89 +++++++++++++++++++
 1 file changed, 89 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/mediatek,eth-mac.yaml

diff --git a/Documentation/devicetree/bindings/net/mediatek,eth-mac.yaml b/Documentation/devicetree/bindings/net/mediatek,eth-mac.yaml
new file mode 100644
index 000000000000..8ffd0b762c0f
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/mediatek,eth-mac.yaml
@@ -0,0 +1,89 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/mediatek,eth-mac.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek Ethernet MAC Controller
+
+maintainers:
+  - Bartosz Golaszewski <bgolaszewski@baylibre.com>
+
+description:
+  This Ethernet MAC is used on the MT8* family of SoCs from MediaTek.
+  It's compliant with 802.3 standards and supports half- and full-duplex
+  modes with flow-control as well as CRC offloading and VLAN tags.
+
+allOf:
+  - $ref: "ethernet-controller.yaml#"
+
+properties:
+  compatible:
+    enum:
+      - mediatek,mt8516-eth
+      - mediatek,mt8518-eth
+      - mediatek,mt8175-eth
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 3
+    maxItems: 3
+
+  clock-names:
+    additionalItems: false
+    items:
+      - const: core
+      - const: reg
+      - const: trans
+
+  mediatek,pericfg:
+    $ref: /schemas/types.yaml#definitions/phandle
+    description:
+      Phandle to the device containing the PERICFG register range. This is used
+      to control the MII mode.
+
+  mdio:
+    type: object
+    description:
+      Creates and registers an MDIO bus.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - mediatek,pericfg
+  - phy-handle
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/mt8516-clk.h>
+
+    ethernet: ethernet@11180000 {
+        compatible = "mediatek,mt8516-eth";
+        reg = <0x11180000 0x1000>;
+        mediatek,pericfg = <&pericfg>;
+        interrupts = <GIC_SPI 111 IRQ_TYPE_LEVEL_LOW>;
+        clocks = <&topckgen CLK_TOP_RG_ETH>,
+                 <&topckgen CLK_TOP_66M_ETH>,
+                 <&topckgen CLK_TOP_133M_ETH>;
+        clock-names = "core", "reg", "trans";
+        phy-handle = <&eth_phy>;
+        phy-mode = "rmii";
+
+        mdio {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            eth_phy: ethernet-phy@0 {
+                reg = <0>;
+            };
+        };
+    };
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
