Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB54D1C57E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:04:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Mnrh8jbWE1QFTqqGrF5GHGQe9nl+EEz0lTPFmGNUAA=; b=sOKL8wq3hv11ta
	WoBu2Az1BpKzygcgFS3cmjIMMRpAPuzD15FzJyDXEAbh2l/kKyJOXie8vkyfIQxMT9QO2FlsQnhZx
	eBPHKz0iTkOTbrdoQ/+mJeG7JXals9JvSTAfkNqpjrOop9oKFt+PhQog2YTRDWLBKhCMqMNBHnLzQ
	Ep0a/P05uDOwcyFyZ/C3KuRlocltceYj4MhEiuO851SRyMwWTTYH94hl38kb4ltAljcwqMDijyVJN
	HVvk9IhDlfoV48sGLbAVLDOtFdxmFEfKRQFTmUPjiqkOR88+JkRbcAqEmGEv5GlfUWxMfrwxoqwQP
	th3GU83PfoHTySF1YJ5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyAy-0002tq-JQ; Tue, 05 May 2020 14:04:00 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyA8-0002Ez-TX
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:03:11 +0000
Received: by mail-wm1-x341.google.com with SMTP id y24so2472199wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 07:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1RBYv7clwofuc4RomuNetMbXz5K8VN7BlCrpLgWGuKQ=;
 b=exa1u54LNh7NcTBkr9fjj1LtLgzCEkb41a3/XAcPpRhDL8uYlIw1yKBcaC3npPnAq+
 iNlvvzM/LMlufPMoM4dQZJ662snagyOfwpwmeJEqzq61YYz64HYeJRj+t1eanmoFGCCm
 ddLdtP3LKdxRSHIxe+vrvt/nhHYJVAn1o3UPfgDEWejxezv/4+QjsbqAvxgBe7whd+5j
 77G9QNzigkGdn3zaHrl1amKuP74s0sgTujd8o+/gAP4984gyy9fEV9GjDIQFQWbcI7X3
 11cm8fOu0E7dE+1WWNOwcnos+18bfhkHGHvtTqVQaqq7TSYiyOSef5MYIBHFOkOkZSnf
 cUQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1RBYv7clwofuc4RomuNetMbXz5K8VN7BlCrpLgWGuKQ=;
 b=FCQ2hZ7AknHmemcCpuiAK2Pq6hPC1ozKVBe5L+KFSj/UbRDRW03WCGmRhSHiWNPI1n
 PnLsrGRQ+DMmbjB7H9I4be7fDi2ExMcdfxgl0JKKY7/8K0s60KSshiaPjIDbfFXiLJsJ
 z/X3Kx9+6rVUmlzoGOC2iQi3XUhmn7oZy4irenJTt4QAL/GZrg7NUnGsCK77gstk9KCS
 GpJf1DvY/iyGLRXJRXLNn0dJKaeWVjdw6TkoYymCV2RLnjIsY6bwJggjVOiY3DVL778A
 jeKibGftFL/MgXKhwAYCz3OT9ibOqM07M38IdRZK35PjakuUxbu8VoMf2FXki6D75lb4
 M75A==
X-Gm-Message-State: AGi0PuaxkINzHSK2opEYodcOKdOnCAqZl9hyeW74f2ROnYx3KEcSRlCK
 jMUmHfkZf+H2RjU71v1QkA7LRw==
X-Google-Smtp-Source: APiQypKyODJ/h2tkRj/3s4Rn7dN4YkXrc4seYlCWxagOZmnAKutgDsCqy57VDKSasTPAC6+hVxwWqw==
X-Received: by 2002:a1c:9c0a:: with SMTP id f10mr3688664wme.139.1588687386996; 
 Tue, 05 May 2020 07:03:06 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id c190sm4075755wme.4.2020.05.05.07.03.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 07:03:06 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, Felix Fietkau <nbd@openwrt.org>,
 John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Jakub Kicinski <kuba@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 02/11] dt-bindings: new: add yaml bindings for MediaTek
 Ethernet MAC
Date: Tue,  5 May 2020 16:02:22 +0200
Message-Id: <20200505140231.16600-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200505140231.16600-1-brgl@bgdev.pl>
References: <20200505140231.16600-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_070308_956288_83CADBD8 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

This adds yaml DT bindings for the MediaTek Ethernet MAC present on the
mt8* family of SoCs.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 .../bindings/net/mediatek,eth-mac.yaml        | 80 +++++++++++++++++++
 1 file changed, 80 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/mediatek,eth-mac.yaml

diff --git a/Documentation/devicetree/bindings/net/mediatek,eth-mac.yaml b/Documentation/devicetree/bindings/net/mediatek,eth-mac.yaml
new file mode 100644
index 000000000000..7682fe9d8109
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/mediatek,eth-mac.yaml
@@ -0,0 +1,80 @@
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
+      Phandle to the device containing the PERICFG register range.
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
+        reg = <0 0x11180000 0 0x1000>;
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
