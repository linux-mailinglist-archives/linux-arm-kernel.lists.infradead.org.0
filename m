Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 060D5138251
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 17:16:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hoJDAs/wP6ll62xK5w5ydnRbKIXjaKYQv5ynkZSJqcc=; b=B4b27yvoscW0D+NA6Hr/jpgwMU
	ViBRYv5BAfp7CehuF1aYZ7iqVUuAcpq8FXl11+d5xktkY+62xuHQRBTUd3Yah9WhIctI382JIDuwa
	Y/yu21x33wQ/Qb/K1GvBKTNs8puO3pbGILjhw/LuI0HDhtPEE6lkJwzG+cho3Ld+rs5DccuPxXX1/
	bd5ChYFg4KHp315zA09TuSnsyesIg+MVRbYNUu537IcmTLLz/Oo/jSAhHR0PszPUTXJpz594hMq5p
	rpmLzPhmOLpLOavD/w9Nz0s6X1aPDixXYlZRllICNDvKO7USNsEWZEdwz/LIl4uvWQKeJhcZlgNyM
	Nje6A/bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqJRF-0002yd-Ex; Sat, 11 Jan 2020 16:16:37 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqJQn-0002ql-Or
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 16:16:11 +0000
Received: from localhost.localdomain ([37.4.249.154]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MMWcT-1j9DUG0YRr-00JcDG; Sat, 11 Jan 2020 17:15:51 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH V4 1/4] dt-bindings: Add Broadcom AVS RO thermal
Date: Sat, 11 Jan 2020 17:15:39 +0100
Message-Id: <1578759342-4550-2-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578759342-4550-1-git-send-email-stefan.wahren@i2se.com>
References: <1578759342-4550-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:c1+Mg9NKoWCLsN8E1wZaMxrh5a2EHZsNfpj80gj1+uD4c7oIiwg
 B3VvaHwXDziW/0JZNSoLmcZX8rLv0yBvdngyCtKwW1gYSC5Tb2b7wF6GswrAYW9I+WHKu/o
 LTaFSb+hdE937/T5VA55+bpUm7bMwoXxhCnwMuCcO7Kvivv9lh/LFNaaELpESpgXuR7c5Od
 yOjaNwupb1GP1TMr/Lp0g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bDV4gChWJ6A=:zVDMyHIm0wg/sFXJsxBFfg
 vngWYXC+y1Ggagzjk+77JYoa5b8mlaU7s3yQysh/DUcYDchjc2QE+oKBV2X/cMebilELriIOu
 GhmEp0SQpix3GArGJMKuMqF1IxCI15L9gjDGX/RNoJVqFqxqgGOs647EWR1TAcGe12Xl/UFzF
 yQQ3cDZ/IbLfKTKf3FUm27gVfsJFK+as6TGliiefFdHgdRg2HE4hklN4EPR3EFivwP8bpboNc
 3ZvgkRDm7duKqdiWFQSZ1zB6e0WeTBhbrJ9UZaT6D7af6Bu/U6072B+qAUgA+2w0h1zJUppqH
 Hr8vvVFWdZo3nyqjZ+qiB6EJ8QkkeU9rCxBlxU7ZjF9IInhJBOamwjbNAudlesivbMfVy0jzz
 a+JlGtygizahGncvqBM+hLVuYgPeMvUBieneXCq24uAVJEFch9oUeUn3bEulqZ0Sj/2gRFe63
 wqRPYahB1wAEch+A/wKcVMj7y37TTMtvm0A84VT9UnkEE56//NhE5gL7BUmA7m2MfABMb4aVg
 vKkjETfAuqYxj0A2yh6+v5cOyztnjBG/zt8+/eryT11h91mPcDtd5ltWmSuhVeqomXNIjaDIJ
 JxoEgCFbd/fAHqE/tczrz0Of38IQjktzXm96FpwwLa8u8hKjLBcf6oYjOJv5sNgbDoZBHu7YR
 1Gvjse1+vdz6hef6XU/FO/D3xqp+taSVj9IUZIOsV1lGBaeVUcI1zVA1quOEhVza36sLDPamj
 xGoaGYGp0FYhbEdG3ZlTLzHLtZM8N0nE5YZ0cunW8Yv5NPSCTwZ0oBp6hnT6Y1eeBAyM+K+7W
 apIiRHo9Vaa68SxMS4JXRGizA4wnUmXXPxX0Jbo4/0YDzMSDHc+JBLFeDxKTbgmlLlAY5+4en
 QmlpyU4MCCmOIQr/pmA6q3/sIYrU2c0p6DC4rPrwA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_081610_100762_DEFA5C65 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, devicetree@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since the BCM2711 doesn't have a AVS TMON block, the thermal information
must be retrieved from the AVS ring oscillator block. This block is part
of the AVS monitor which contains a bunch of raw sensors.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../bindings/thermal/brcm,avs-ro-thermal.yaml      | 45 ++++++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml

diff --git a/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml b/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml
new file mode 100644
index 0000000..98e7b57
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/thermal/brcm,avs-ro-thermal.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom AVS ring oscillator thermal
+
+maintainers:
+  - Stefan Wahren <wahrenst@gmx.net>
+
+description: |+
+  The thermal node should be the child of a syscon node with the
+  required property:
+
+  - compatible: Should be one of the following:
+                "brcm,bcm2711-avs-monitor", "syscon", "simple-mfd"
+
+  Refer to the the bindings described in
+  Documentation/devicetree/bindings/mfd/syscon.txt
+
+properties:
+  compatible:
+    const: brcm,bcm2711-thermal
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+        avs-monitor@7d5d2000 {
+                compatible = "brcm,bcm2711-avs-monitor",
+                             "syscon", "simple-mfd";
+                reg = <0x7d5d2000 0xf00>;
+
+                thermal: thermal {
+                        compatible = "brcm,bcm2711-thermal";
+                        #thermal-sensor-cells = <0>;
+                };
+        };
+...
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
