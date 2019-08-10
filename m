Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9780988887
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 07:30:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tQbCk4Fp2qPNsznbHMS329u/i0aqRP42DLvm5M2HAYs=; b=R2i0qjB6VRH44hsZM6mwaQ27uW
	IRp7ZwvzlM8018JqfaTm89cPUfJdSHwTUY+6OWrkmYWoWq76CmyQ8RyeyVxRfmy+ZFWl1bm3gF/PH
	FdbmAWP8uF36XzlUAuciXOMhqb2PWEtMi+RhjJ3fXA85x1OhprGUXHbMzX09X1lusg9rRiNsUtxOd
	H5CqW56fCMy6NYxNiVOEKar8xDRTkFq7fxKDh+zBpao6TMTyNMyktUdEkZqNQmJn5XE1T8LIZy0Ua
	HJB4yaBimqp6gbkGmbyblHLHHorqaCV+iz7Hn2Bp7mA3kJ5pFKKuFicYMOApRC8m4kr2MIvCFWar3
	2lS5u+Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwJx8-0001Ar-8U; Sat, 10 Aug 2019 05:30:06 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwJwL-0000lw-P2
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 05:29:19 +0000
Received: by mail-pf1-x444.google.com with SMTP id p184so47116240pfp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 22:29:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WD7K8OdpREzm1d+Yp/Bs4WvDvu3iqySNq1hJesChH3M=;
 b=ZjZzeIglNii9MVXF4P8OwuiKgvJ2AHN60l4wGAcONk09u1ivPdMkqI43JqxPDri+QV
 PB7H0lw2f709GHYwg8FyAv7TLYfOtBcTEAHgEXmuJGAtb/pGf948Gw/pq5z+ObqEqiXB
 +b8C7S2ZilSzoKFdc98s2LsPtBS31O5PClOucmS+EebLVEBlcsvNFm9JH2WM/Nunka5I
 qutMLMsCHQ9F5bGjneCFosdCy0NTeuj61nsSVehEjP+jf9VzKBnOwEXj4ErcqdbK82gx
 cs09OuO4nIZkTGqUeR3Il7kHmrEAKg6/d++iHP2zpXtSH7PUTO03SfQSZfakvFpXnndq
 lk5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WD7K8OdpREzm1d+Yp/Bs4WvDvu3iqySNq1hJesChH3M=;
 b=WJ5hg/xQNYoeLG8O4nbbp+KI9395nkdn4JdTNZm5v7FCLII/vxp5dfuAN6Z0ObNB1c
 ZFvmnIWrP+w+UyqM48FhHcaluxyA+/cfvb9GD1afuc7B2MT/i3R9oDgMpc/xDVKTU6oK
 I9rOZpUhQwsycND03EOVe1jCWWgi9Kpe/aQwosMjeuIHZqxgBZjJPr+v/zaNkqaZuxd8
 oPl4kT2yDvnsdSAZ3xDs3n+wrj4oKinvt6iLGJULEaWVpOrm0tZr/hXp7ZwJFQCGHb7X
 wmLpwYgG64UZS96dUS8p2zaEuZENo8s8/f/NE5QeqcBKgN8dnJLbL40v/3TdJ5aLhkF4
 8/VA==
X-Gm-Message-State: APjAAAU448nDrSmkdjEXwiegRAG81TKh87vAhHv0L+gKDK8CmO7r3UWW
 ZkzO/kEZ6ZuSLbqLLGBlJGE=
X-Google-Smtp-Source: APXvYqxOuJTk2SD/x1hTFhYbreUKUwvlmtGBd51QcJppuCmzl0G9FTfJ2bbK6b1tELoE8SPSEf8lcg==
X-Received: by 2002:aa7:818b:: with SMTP id g11mr25731541pfi.122.1565414956974; 
 Fri, 09 Aug 2019 22:29:16 -0700 (PDT)
Received: from localhost ([202.182.106.211])
 by smtp.gmail.com with ESMTPSA id k5sm6083835pjl.32.2019.08.09.22.29.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 09 Aug 2019 22:29:16 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, mchehab+samsung@kernel.org, davem@davemloft.net,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 nicolas.ferre@microchip.com
Subject: [PATCH v5 02/18] dt-bindings: thermal: add binding document for h6
 thermal controller
Date: Sat, 10 Aug 2019 05:28:13 +0000
Message-Id: <20190810052829.6032-3-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190810052829.6032-1-tiny.windzz@gmail.com>
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_222917_908859_7E252ACA 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds binding document for allwinner h6 thermal controller.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 .../bindings/thermal/sun8i-thermal.yaml       | 79 +++++++++++++++++++
 1 file changed, 79 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml

diff --git a/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml b/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
new file mode 100644
index 000000000000..e0973199ba3c
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
@@ -0,0 +1,79 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/thermal/sun8i-thermal.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner SUN8I Thermal Controller Device Tree Bindings
+
+maintainers:
+  - Yangtao Li <tiny.windzz@gmail.com>
+
+description: |-
+  This describes the device tree binding for the Allwinner thermal
+  controller which measures the on-SoC temperatures.
+
+properties:
+  compatible:
+    enum:
+      - allwinner,sun50i-h6-ths
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: bus
+
+  "#thermal-sensor-cells":
+    const: 1
+
+  nvmem-cells:
+    description: ths calibrate data
+
+  nvmem-cell-names:
+    const: calib
+
+required:
+  - compatible
+  - reg
+  - reset
+  - clocks
+  - clock-names
+  - interrupts
+  - "#thermal-sensor-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    ths: ths@5070400 {
+        compatible = "allwinner,sun50i-h6-ths";
+        reg = <0x05070400 0x100>;
+        clocks = <&ccu CLK_BUS_THS>;
+        clock-names = "bus";
+        resets = <&ccu RST_BUS_THS>;
+        interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
+        nvmem-cells = <&tsen_calib>;
+        nvmem-cell-names = "calib";
+        #thermal-sensor-cells = <1>;
+    };
+
+    sid: sid@3006000 {
+        compatible = "allwinner,sun50i-h6-sid";
+        reg = <0x03006000 0x400>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        tsen_calib: calib@14 {
+                reg = <0x14 6>;
+        };
+    };
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
