Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C2B7C0EA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:14:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Fn+r5IjQeoTzrw8+TeEJ5Rw38vmq6hSBS79ol5EfkLo=; b=W1za6Sv7CAA5WPp3IAfpWUuGwa
	Qp8KjVsmyM0ZbxrB6px6bk2V+pFlCYdUN5pTdnI+eSAMguHZ+MZJ7Yuy2MpZPnWOQocORxtNa4r5G
	kbTXV4dlB7HONiihQSNHKJoai0vg4Zq16qn/n7MFjyAcDo18lSHtuKOUYjoCyKdNDil0+vkUGlVVx
	Cd+FoI3AS08BPEztmkFTx7cc1USax5fHwY84yCr99v33JD9OeVREsq4aiXpX514gYJMcc5ELSGd/e
	Bd4al1QCGA02cQdTA+UVdX1zRCRgr20zdAnMfoeS6P/NT1JuRLzLdQVk80k4WdbH6f++VhRrb9Cgf
	PC+Db9ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnVP-0005z1-HM; Wed, 31 Jul 2019 12:14:55 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnUl-0005OS-S4
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:14:19 +0000
Received: by mail-wr1-x444.google.com with SMTP id x1so19518915wrr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 05:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZCxLPCe1ACQErDUW8aWQ5KGtk3yR1/KdxyjnNrl959M=;
 b=hEtFsx3E+vxVxKVnkVJrIPQhq8u5k6R7R82zb8hMdxf9abXPdtLUh28KELgdxJxC7H
 fRk2y7UTqODUNIsjHz/e6c/DCcMZFDmYmRqcQer0vInc6NtYSx+JKe507QqSSmy+27sA
 si1yo3vz6FWgANa91bC16sQzkIS5vyEUgDzCdvaqR4tzTBvn61aSjX6IhW0cw61qZQPE
 NbnbApP+KE2tqktTZaEEwZ6VIEEC7DjdrKqhLyYtc/cUEbL48PcGFI70udjecD5SUYgU
 1DavhttVuzkByIzpTjIXy8Ot5Ginl8C4aNnpTVOXHvtAjoj3meueKbzIOTXOZxjIfDvF
 9LwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZCxLPCe1ACQErDUW8aWQ5KGtk3yR1/KdxyjnNrl959M=;
 b=foAWun40xdUI/fOG3HiBm9i8+2t71HHz5hAxW41kAIkpy60hGhBZFxhUZpdstPZP6Q
 NF/MFsOEEtMGScdG5XaROkp3ENRoQVcf4mD15aoop8mQjf/F5qp+RuLgumMx2/YersS9
 WV/oNng9fs0qtAt6Me96SB6X52Bs+SnD4PFfKowYEfhLgDPQhWDpfmSuWvRpxZKW2BkZ
 oLFiC6+qDE2fZ+2OR1Y8CUEvuiMBwd+c5RT59T1PET1+DEkunHXzBO95qPC1RxjPdX1O
 IxN2pcqAjE9VNLCpjBCGAVO+toSstbfHtIApTStt8YE+ifwkQTUWt2qiL0moHZDi8okt
 gkbQ==
X-Gm-Message-State: APjAAAXs9rqno35Ayxp3fdGeLXxv99iJDi6ou5YKmQvD1XTKLonNpBVl
 ScgwJSP7IQ3VJMTbstjPHZ44rA==
X-Google-Smtp-Source: APXvYqyR0a3A3NknrNBLDCX+TNBWHtgAMABkJnJgH0JnXRb3PYf4C6vmioWW1jWll9xmx8tLdvDNwg==
X-Received: by 2002:adf:e50c:: with SMTP id j12mr51394689wrm.117.1564575254371; 
 Wed, 31 Jul 2019 05:14:14 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a64sm3613713wmf.1.2019.07.31.05.14.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 05:14:13 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: daniel.lezcano@linaro.org,
	khilman@baylibre.com
Subject: [PATCH 1/6] dt-bindings: thermal: Add DT bindings documentation for
 Amlogic Thermal
Date: Wed, 31 Jul 2019 14:14:04 +0200
Message-Id: <20190731121409.17285-2-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190731121409.17285-1-glaroque@baylibre.com>
References: <20190731121409.17285-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_051415_906411_8A50E877 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adding the devicetree binding documentation for the Amlogic temperature
sensor found in the Amlogic Meson G12 SoCs.
the G12A  and G12B SoCs are supported.

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 .../bindings/thermal/amlogic,thermal.yaml     | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml

diff --git a/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml b/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
new file mode 100644
index 000000000000..1e2fe84da13d
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/thermal/amlogic,thermal.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic Thermal Driver
+
+maintainers:
+  - Guillaume La Roque <glaroque@baylibre.com>
+
+description: Amlogic Thermal driver
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - amlogic,g12-cpu-thermal
+              - amlogic,g12-ddr-thermal
+          - enum:
+              - amlogic,g12-thermal
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  amlogic,ao-secure:
+    description: phandle to the ao-secure syscon
+    allOf:
+     - $ref: /schemas/types.yaml#/definitions/uint32
+
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - amlogic,ao-secure
+
+examples:
+  - |
+        cpu_temp: temperature-sensor@ff634800 {
+                compatible = "amlogic,g12-cpu-thermal",
+                             "amlogic,g12-thermal";
+                reg = <0x0 0xff634800 0x0 0x50>;
+                interrupts = <0x0 0x24 0x0>;
+                clocks = <&clk 164>;
+                status = "okay";
+                #thermal-sensor-cells = <1>;
+                amlogic,ao-secure = <&sec_AO>;
+        };
+...
\ No newline at end of file
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
