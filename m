Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2461E888A3
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 07:32:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=d6+3LkT9AX9HHn6YGF0iQQ4o4054tVL9XcEihR/5Q9w=; b=ZJAVoohJFr4bDt+cs7H85D0ZtA
	da0CHaHEf6zuJU9OpRFVycbIKxdNBE4Jb9b2Mm79T/Pr6O7itiuePgpoVUzlvvd+mMHCtfI+Uu0YD
	J5efxJkicSN1SGwpunmGs0dp3CgSm1PJOSaqAnBD5uIiBsOAsIDLCIZFFmCGcFpP7zmGKZGFwLV8Y
	14pnJvkDQc+OhQoEcVtBpcB/4YYV5VjtERFEr9qUtriEfBYRsA+EM96Kdt6MVaG0V6q+jBLPtV0IG
	Zjvw5OaSHBAbKrYWPhbjWQJJ0oVfdpcHhBd4E9Z0K1QoL8G4nCEvE2B+03thOI6l/7/XhQXpPnqWq
	Q7MDnd4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwJzQ-0004VL-F1; Sat, 10 Aug 2019 05:32:28 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwJww-0001O5-Qz
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 05:29:56 +0000
Received: by mail-pf1-x442.google.com with SMTP id f17so43126137pfn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 22:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wjQ5RBMUscwhPovbCKs/X+MccsfEX8ouNnM/eU9tQdY=;
 b=owjCa9lXzv2/DwkfhVrhXGPfLgD8hjoGMaHzNtHK8q9nZFQLhg0aAuY2svLpXwtORD
 NcaMD7Xoi1eTrqSTeWXAdJTm6w7xsh3+ekzHVnQlUd6evrD1UaF0V5jA0xR0susVtGqK
 0E9Dqep2V9kZz9TJplT0xU6lPOE608vmJZCkcy4tFplb4Pr+b7RWp8661wdtUQBuYhmT
 cSlJV9R/IpJ8+PGtAooQJrVzgnoV9ux306PKcqD/2x4HLWnw4Om/JHW2XKA+lY2y+sYZ
 WNIQvi0mzQCMkjOUGMYYLFBoz6oocY6mck/do2zFdCcA3JJcNwATwqlbhtQ8u6d2A155
 hUQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wjQ5RBMUscwhPovbCKs/X+MccsfEX8ouNnM/eU9tQdY=;
 b=QOdvo69DYL3mhdSr8wiPbazhiIHTaoEbWiV6EOl8znnOpAPpMEt65BrV4BdC17JjKo
 ncPbwMvkeZXHtdsPA+kckLc6oU15r9yDa5ubmUkcAiarhD20APQ3+oTAESDG14iiEhr+
 aPab0105gTJDVpm0XWrCK1JGk2O/UrX5M/nNu2hWuKiPAMF559TrI7ZxyoeI0ZPJJu/e
 mPW4SXR1a+90f7RUf2s1k6XHnD18/kcRhjSfnO1HA3JxhG4pt5JnKsRsGEFCjHdyb7op
 5vAhBqI41QEwgDTTnJsbUtLpdFHZgyb10/Emws1hof7eWFr6LZwjN6dS0xP2ZxUAhTgn
 6OqA==
X-Gm-Message-State: APjAAAU1XZe4I9aswHgGU+nRfxFrn5sPmQ73Nvtb0bu1kDVuEemVf8WK
 Mza35UenYlIBkwfmah5tcQk=
X-Google-Smtp-Source: APXvYqw8vs8pLZBSxmUAg7iqaM6hn9kfidzUufWlKeYMFwYYXWPhKeZ2pwcEdEyO8GNSSc0MtJ7W1w==
X-Received: by 2002:a62:7a0f:: with SMTP id v15mr6362442pfc.35.1565414994464; 
 Fri, 09 Aug 2019 22:29:54 -0700 (PDT)
Received: from localhost ([202.182.106.211])
 by smtp.gmail.com with ESMTPSA id s24sm62023523pgm.3.2019.08.09.22.29.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 09 Aug 2019 22:29:53 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, mchehab+samsung@kernel.org, davem@davemloft.net,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 nicolas.ferre@microchip.com
Subject: [PATCH v5 10/18] dt-bindings: thermal: add binding document for h3
 thermal controller
Date: Sat, 10 Aug 2019 05:28:21 +0000
Message-Id: <20190810052829.6032-11-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190810052829.6032-1-tiny.windzz@gmail.com>
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_222955_118486_FF743E8C 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

This patch adds binding document for allwinner h3 thermal controller.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 .../bindings/thermal/sun8i-thermal.yaml       | 81 ++++++++++++++++++-
 1 file changed, 78 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml b/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
index e0973199ba3c..6624cf6b1ce8 100644
--- a/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
@@ -16,6 +16,7 @@ description: |-
 properties:
   compatible:
     enum:
+      - allwinner,sun8i-h3-ths
       - allwinner,sun50i-h6-ths
 
   reg:
@@ -28,13 +29,21 @@ properties:
     maxItems: 1
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
+    items:
+      - description: ths bus clock
+      - description: ths mod clock
 
   clock-names:
-    const: bus
+    minItems: 1
+    maxItems: 2
+    items:
+      - const: bus
+      - const: mod
 
   "#thermal-sensor-cells":
-    const: 1
+    enum: [ 0, 1 ]
 
   nvmem-cells:
     description: ths calibrate data
@@ -51,9 +60,75 @@ required:
   - interrupts
   - "#thermal-sensor-cells"
 
+allOf:
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
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+
+        clock-names:
+          minItems: 2
+          maxItems: 2
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
 additionalProperties: false
 
 examples:
+  - |
+    ths: ths@1c25000 {
+        compatible = "allwinner,sun8i-h3-ths";
+        reg = <0x01c25000 0x400>;
+        clocks = <&ccu CLK_BUS_THS>, <&ccu CLK_THS>;
+        clock-names = "bus", "mod";
+        resets = <&ccu RST_BUS_THS>;
+        interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
+        nvmem-cells = <&tsen_calib>;
+        nvmem-cell-names = "calib";
+        #thermal-sensor-cells = <0>;
+    };
+
+    sid: sid@1c14000 {
+        compatible = "allwinner,sun8i-h3-sid";
+        reg = <0x1c14000 0x400>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        tsen_calib: calib@34 {
+                reg = <0x34 2>;
+        };
+    };
+
   - |
     ths: ths@5070400 {
         compatible = "allwinner,sun50i-h6-ths";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
