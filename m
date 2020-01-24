Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E45148C27
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 17:31:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7kp1oBGQE6YfdBQl7kFGVH/2Dmxcxex48OSiHrPaPYs=; b=RLjREhF3rtugKecPmus/nyySjS
	pzGF9NIkpp/fwDthC1p2UHak1Fs3l24lHfRD2A/b93FKkwGb7r3wZaZdZFNYkwPTpvjwkg2toDU6z
	iT5zV23OCZwZ06Bw2j3wNrVMNz43XlTi8Vd0RegV91FS9D4lL7rxaWPWdufVx/wCGHMdXWDerlrc4
	YbZAuEkcPQPXW9YMTUE2HSJDLUWhWUTbitO5ve3RhG3AeIObyAc+uHq9xRKkNK54UIjJoIcofcwTO
	igPQ3zTGk9vCqE2E2JRz0bqzkw6eCVM8V16eYkod35Gtelql4YUwN718iG9VD2CaMkINRWpqRFtiR
	0iePfPSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv1rw-0003IO-Ti; Fri, 24 Jan 2020 16:31:40 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv1qX-0002Sr-SV; Fri, 24 Jan 2020 16:30:15 +0000
Received: by mail-wm1-x344.google.com with SMTP id p17so66750wma.1;
 Fri, 24 Jan 2020 08:30:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=uJoeltGGhmQKQoFJipSF7NJGrgp+ESh1SyyRe6anT6U=;
 b=XO6PPX2pWqnpKnGovVWZfIR79tFHTFU2R3vop4kZP4gw9HGbYbZY0S7Qh5vf+Mu2DG
 a27PRLxbXCESnbT1uxnPCwpd26mpy2DvPV2pExJyERgMsM77q5aCZYQ6Lwb05J2jCqVa
 bNtr5cmcKFZOHyqZjFY9qPQCj9AJqCcI9oUcx1+oIOOtFtEG2eOWzm7QKVAvxvIX/MQM
 QaI2RvIo1p+EXBB7TlyuBu+c9A0mumMXWy1l5X2zq0QifLdu9p1cu5iIorMOYQnIk3bl
 3ctPkflh/W0nmz412KOz1oDYI+Me5Jg+dgkLwb3aHkLIsPrLGLT37EZRrn5XTlv+kfjH
 hLzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=uJoeltGGhmQKQoFJipSF7NJGrgp+ESh1SyyRe6anT6U=;
 b=htBzWWpphRM+GZcdIfuFwaf8vNlEUQ99Ote3Bs9t+7Hmyd1BPBmXfltlX7UgJDAoj2
 5/xzh3/GeucdteTxPgjmfo1icTZL+pFuN130cwDIlRBHX6XzQJxwI9TOvbHxtz/sfxGX
 7bqCAVe21TDP5Nh8Fg4ZVUAefj+TJdg180/xeCPhrqiBQn/HjSSPhgxxytXNFFaFNQ93
 lCdHMfGFcH6IdJo4WQUr73+b7GRqJrFYbN8j4BMS4eWQusu1Fwzbqu/Ll4nw1ZQtg3Jc
 T8vSLlhdKAm//liNrCTdADHJbeEwWdZpRzKWiEHzK7igF6WDLKX1Du4OjjrCN/SsEuRQ
 QzAQ==
X-Gm-Message-State: APjAAAUTsn6RLDUlFyalNQpCKtLm8mHhQX91/un4cV9sIDJ3ivyJm9QJ
 SHoxwCSXR4XHkivImgUNHJM=
X-Google-Smtp-Source: APXvYqy3mk7rwTNk9qGgqbzMeEjnTVID618sKjWfbjGW+VxAoMrQQ9N9uv2TnvdBzWt4d8bgabEuHw==
X-Received: by 2002:a1c:2902:: with SMTP id p2mr44736wmp.19.1579883411139;
 Fri, 24 Jan 2020 08:30:11 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 205sm1977304wmd.42.2020.01.24.08.30.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Jan 2020 08:30:10 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: miquel.raynal@bootlin.com
Subject: [RFC PATCH v2 01/10] dt-bindings: mtd: add rockchip nand controller
 bindings
Date: Fri, 24 Jan 2020 17:29:52 +0100
Message-Id: <20200124163001.28910-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200124163001.28910-1-jbx6244@gmail.com>
References: <20200124163001.28910-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_083013_922580_74DB038B 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, vigneshr@ti.com,
 richard@nod.at, shawn.lin@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, yifeng.zhao@rock-chips.com,
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the Rockchip NAND controller bindings.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../bindings/mtd/rockchip,nand-controller.yaml     | 92 ++++++++++++++++++++++
 1 file changed, 92 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml

diff --git a/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml b/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
new file mode 100644
index 000000000..5c725f972
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
@@ -0,0 +1,92 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/rockchip,nand-controller.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip NAND Controller Device Tree Bindings
+
+allOf:
+  - $ref: "nand-controller.yaml#"
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,px30-nand-controller
+      - rockchip,rk3066-nand-controller
+      - rockchip,rk3228-nand-controller
+      - rockchip,rk3288-nand-controller
+      - rockchip,rk3308-nand-controller
+      - rockchip,rk3368-nand-controller
+      - rockchip,rv1108-nand-controller
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    minItems: 1
+    items:
+      - const: hclk_nandc
+      - const: clk_nandc
+
+patternProperties:
+  "^nand@[a-f0-9]+$":
+    type: object
+    properties:
+      reg:
+        minimum: 0
+        maximum: 3
+
+      nand-is-boot-medium: true
+
+      rockchip,idb-res-blk-num:
+        minimum: 2
+        default: 16
+        allOf:
+        - $ref: /schemas/types.yaml#/definitions/uint32
+        description:
+          For legacy devices where the bootrom can only handle 24 bit BCH/ECC.
+          If specified it indicates the number of erase blocks in use by
+          the bootloader that need a lower BCH/ECC setting.
+          Only used in combination with 'nand-is-boot-medium'.
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3188-cru-common.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    nandc: nand-controller@10500000 {
+      compatible = "rockchip,rk3066-nand-controller";
+      reg = <0x10500000 0x4000>;
+      interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru HCLK_NANDC0>;
+      clock-names = "hclk_nandc";
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      nand@0 {
+        reg = <0>;
+        nand-is-boot-medium;
+      };
+    };
+
+...
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
