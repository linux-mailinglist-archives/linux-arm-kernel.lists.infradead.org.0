Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F70610CA8E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 15:45:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yVXsjVZygJTloJWutcW4wIq/nfR5jDWG3iK/BVbD8e4=; b=jnJJFSf+CqQ4AB
	GnMIKOpQ1H4zggOfZ74gZcgoXZ8pyicxklahY4RLtUdviyQglK6QxeleDTvZjE6oiM2qjL7Z0oCUx
	Xj9q2SS3PkDcYsKgPFlSxXnUlp49GgWqdPTrkzj0WZHlpxu868+y1E3cHF9C9O2EXh3rpZ3Q0u/lp
	NlyKwgl9xdJ6BL1pOwYJnNNVtuNzFBU/htC7KXhcdJUg/9xroyrBCGGfddK7S84x2w8GvIc9GvdHQ
	KZQc+ipU7Gy6L04ldaqenvUZ7NBwGB7Detqu/keNiNT6mebj4y+iPOSmTwp6tO5rnbqv5/DH0Z1QC
	Ohy9wFAtLXQ4DiEu3j5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaL2z-0003gP-1M; Thu, 28 Nov 2019 14:45:33 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaL2j-0003b8-0x
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:45:18 +0000
Received: by mail-io1-xd42.google.com with SMTP id f25so3079856iog.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:45:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jSx1W6k2m7YVIJkPLFSMsX2YfgHqtWK8uY9ek4Pmf8I=;
 b=X9Blg2OerSCWalXdH509wRdbP/CxlX29WC6jK8xUmtAVF+flTKe3nDE/R80ExoNQg+
 pS4agCBMfd3Vm+UgEKVFKB9UzmB64Bsi2v3m9ReIyiP+9/8/mrkkbp4dI8q4zs2gqk3A
 PzkVqCS36Iewh8ElHtAMwIIxnoM+YEjOmV96rgZHvFHkgAHDpzVY74sv1EXZtVID6Gn1
 qowx6YYdNALYN64bWll/BHYm8m1xSkp6B5G9QanY/Td1fGKoQ+sxva7n08LF8SAkTX3/
 UxT3cY5ZQ5RFNcjPjjZKy2Qtq/mbWZwD+E+3T7L2qgSaz0at0Lv7znMnmtP+khCNHP0A
 omkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jSx1W6k2m7YVIJkPLFSMsX2YfgHqtWK8uY9ek4Pmf8I=;
 b=JycF2o4pgOec+dOPVSdwFbtBKDElCoGLxPDvR+Gmc48+QA+OK8gM4gogpwB9fRWiCA
 VB3Q1Whhkuf1BBjh3yVvnz7SuoeqpJ4Ry/qnZd66N7780FA4VyPEKnTbM4h1uSf5HOOc
 gPBCCcYGAcjoIY6l90LoJKSkQP2RmSl53+SfYqYDw4b9nBr/EcYUGwJrqlwN6Ew3/pfy
 9bavYtpUBJMDYmU5RToGVydwU5YxX3c5JdKSKjpZN4/OJldMRBNtRCUcX3Yf4CvhOstL
 wRxz8YQiJEqVWUBICexduzMmSVSSMuWt4m6qd+cnnfO7lJQD0vy80ICtqN677va0cd1W
 7ysQ==
X-Gm-Message-State: APjAAAVFyODsfI/HAVPEitpV/QAFV2M9KDOVDq+hy0FbJ6Rl67wzQMuS
 wPqUyb4Naz1aTFIH3lrZMoLAgSGpkRJDu2TReU4=
X-Google-Smtp-Source: APXvYqzLCeJzhm0WCeJJ0618OO8UX+1l72IcYyuPZXCOKVkkwktb50xDTqNF45Yemd5l5HIoAr3ZFDwmyA/+m/fzT90=
X-Received: by 2002:a6b:b511:: with SMTP id e17mr12363141iof.18.1574952316211; 
 Thu, 28 Nov 2019 06:45:16 -0800 (PST)
MIME-Version: 1.0
References: <20191127052935.1719897-1-anarsoul@gmail.com>
 <20191127052935.1719897-3-anarsoul@gmail.com>
 <20191127174434.wousbqosmm5vxcsu@gilmour.lan>
 <CA+E=qVe22T1uhUo6iq9a82Y9bC014CZSkAtSJJNX4qsn6dJL9w@mail.gmail.com>
 <20191128074325.q47rpzhufwog6mbb@gilmour.lan>
 <CAEExFWs7A4TcB-QcatfR3w1hUX88dC-Sxd=epQppwB7p2CC6SA@mail.gmail.com>
In-Reply-To: <CAEExFWs7A4TcB-QcatfR3w1hUX88dC-Sxd=epQppwB7p2CC6SA@mail.gmail.com>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Thu, 28 Nov 2019 22:45:04 +0800
Message-ID: <CAEExFWu4MPxA+Vs1BNzCqeR5EkbVT2SjMf6hRBK6nZ2doJmduA@mail.gmail.com>
Subject: Re: [PATCH v6 2/7] dt-bindings: thermal: add YAML schema for
 sun8i-thermal driver bindings
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_064517_074465_CE55941D 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Eduardo Valentin <edubezval@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Linux PM <linux-pm@vger.kernel.org>,
 =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

diff --git a/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
b/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
new file mode 100644
index 000000000000..1be32f09fcc8
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
@@ -0,0 +1,160 @@
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
+      - allwinner,sun8i-a83t-ths
+      - allwinner,sun8i-h3-ths
+      - allwinner,sun8i-r40-ths
+      - allwinner,sun50i-a64-ths
+      - allwinner,sun50i-h5-ths
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
+    minItems: 1
+    maxItems: 2
+    items:
+      - description: ths bus clock
+      - description: ths mod clock
+
+  clock-names:
+    minItems: 1
+    maxItems: 2
+    items:
+      - const: bus
+      - const: mod
+
+  "#thermal-sensor-cells":
+    enum: [ 0, 1 ]
+
+  nvmem-cells:
+    description: ths calibrate data
+
+  nvmem-cell-names:
+    const: calibration
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - "#thermal-sensor-cells"
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - allwinner,sun8i-h3-ths
+              - allwinner,sun8i-r40-ths
+              - allwinner,sun50i-a64-ths
+              - allwinner,sun50i-h5-ths
+              - allwinner,sun50i-h6-ths
+
+    then:
+      properties:
+        resets:
+          minItems: 1
+          maxItems: 1
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun50i-h6-ths
+
+    then:
+      properties:
+        clocks:
+          minItems: 1
+          maxItems: 1
+
+        clock-names:
+          minItems: 1
+          maxItems: 1
+
+    else:
+      if:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - allwinner,sun8i-h3-ths
+                - allwinner,sun8i-r40-ths
+                - allwinner,sun50i-a64-ths
+                - allwinner,sun50i-h5-ths
+
+      then:
+        properties:
+          clocks:
+            minItems: 2
+            maxItems: 2
+
+          clock-names:
+            minItems: 2
+            maxItems: 2
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun8i-h3-ths
+
+    then:
+      properties:
+        "#thermal-sensor-cells":
+          const: 0
+
+    else:
+      properties:
+        "#thermal-sensor-cells":
+          const: 1
+
+additionalProperties: false
+
+examples:
+  - |
+    ths: ths@5070400 {
+        compatible = "allwinner,sun50i-h6-ths";
+        reg = <0x05070400 0x100>;
+        clocks = <&ccu 89>;
+        clock-names = "bus";
+        resets = <&ccu 36>;
+        interrupts = <0 15 4>;
+        nvmem-cells = <&tsen_calib>;
+        nvmem-cell-names = "calibration";
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

On Thu, Nov 28, 2019 at 10:35 PM Frank Lee <tiny.windzz@gmail.com> wrote:
>
> Hi,
>
> How about this?
>
> Best regards,
> Yangtao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
