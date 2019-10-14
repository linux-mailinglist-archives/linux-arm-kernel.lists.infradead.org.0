Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB16D5AA7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 07:20:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ugbSMgRJE2GMLjG2WeIwN0G1KfG6qutvjnKkezV1Q0=; b=uQkpDvwVFanrWJ
	ZS1EIf7QvTXr8k3jdO+foejv+jPckEI/kfENeY9FY9eIPK9RI4TjJjugDaGnfEvyPlseiPZWKwWTl
	gVSNkJb78oBorzlKTJpF6X6yYqHHeTmBHF3Mnjwlpw6q/vSBT0St5xjtX+qyrcMKN9CN7WJGTUHJ5
	B0KJKTpTGNUFP0xHM4A2cT25Je3HWGoGfgjfCcKIxlEVT0+UhRWSJIkuCZikHgkxxxDb8dQyqElBx
	lCLde520eyznrtpj98F0fnZX6R+DGceSlTlf8vFXUhQBqwWcHxauTqiYr90XIIIbXmsZilhKkhxE7
	Kf/fpE29NuqfqZ4mGv+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJslu-0007xX-Nz; Mon, 14 Oct 2019 05:19:54 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJskq-00076w-8u; Mon, 14 Oct 2019 05:18:50 +0000
Received: by mail-wr1-x443.google.com with SMTP id p4so2128606wrm.8;
 Sun, 13 Oct 2019 22:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EBOdxnEDjlDgTl8vnBYCTotGM7/cUtbcpepjO3ITy9M=;
 b=HqkvtcIx4fKEctevUUEDQOTu5HEOMNeeAb9/shYTajmx2Re/0dOg1GgHRiGwRty25s
 SBXJQNvNb2cGCcm5Pr+mmn3TFcjitR29pNr5hTE5vHoaExHo8O3GchfAqK8qhCxwcp0M
 To+wZDV4lGbYpLkAXnxH4Y+TOzbDmZA5CBbj45dpvNfib4XDDh/qM+S/SQWi4SfmEmrD
 9tHxoOaHiMbQtyH49+CbHYjrOwcU2Ii4+hAdRWN8tmtzEHtWJi5/iGX2Y3EKm+TyvPNj
 rYhmL7eE99NfYYG6be3fuPNZU/N6+HPDQjBYtYFyDho9EIJYOP/CJ5ZOOn37Cg2iujeY
 YseA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EBOdxnEDjlDgTl8vnBYCTotGM7/cUtbcpepjO3ITy9M=;
 b=Vkmth2L1MlEd7Myx3d4hr6iMfBcdfCwAxy4H9yb2C8w7+uMLLyeCcDR/4dzo712lst
 VrppweqrNXqF4A4iLXe641sBQ3JKOBwP2HjrWlwBogv5P5GclLstkKvyuL/nVJ35XB7E
 BDcUOJQuzW48uIoAOTNv1UkgLT4I4VYyBgrLZXO+xX1eAlDMRP0g9emq5R0HizTDuwOH
 SwOmzmmGR8sbaXAxFacEanj9GxOD+MkRME9nriZCDZwtQ9TneLMjNdyDTBc2cfuLA220
 IE7m9tg81Rk0O1lnIAkaEf+awfHKbE5Lq3xJ0UEn+JpeAMoOJwPCrd18It+yIVsVRlgg
 O/og==
X-Gm-Message-State: APjAAAUsUSLaRx/MNVlU2ZoBOGMCtS+kqk0WXaSP+blLp9wBUoamDCqp
 GLpkTFchBbSGt7Xe1ON+MLQ=
X-Google-Smtp-Source: APXvYqwQWNWKOAY7LNNHT2Gdp/MtDgCTCxVyDv07ozqa2/PmSE2211R5Hb8liynHEB7CXUTmglwy8Q==
X-Received: by 2002:adf:dd88:: with SMTP id x8mr13266930wrl.140.1571030325603; 
 Sun, 13 Oct 2019 22:18:45 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id 5sm14660340wrk.86.2019.10.13.22.18.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Oct 2019 22:18:45 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, khilman@baylibre.com,
 mark.rutland@arm.com, robh+dt@kernel.org,
 martin.blumenstingl@googlemail.com
Subject: [PATCH v2 1/4] dt-bindings: crypto: Add DT bindings documentation for
 amlogic-crypto
Date: Mon, 14 Oct 2019 07:18:36 +0200
Message-Id: <20191014051839.32274-2-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191014051839.32274-1-clabbe.montjoie@gmail.com>
References: <20191014051839.32274-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_221848_310064_173E9DEA 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-crypto@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds documentation for Device-Tree bindings for the
Amlogic GXL cryptographic offloader driver.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 .../bindings/crypto/amlogic,gxl-crypto.yaml   | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/amlogic,gxl-crypto.yaml

diff --git a/Documentation/devicetree/bindings/crypto/amlogic,gxl-crypto.yaml b/Documentation/devicetree/bindings/crypto/amlogic,gxl-crypto.yaml
new file mode 100644
index 000000000000..5becc60a0e28
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/amlogic,gxl-crypto.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/amlogic,gxl-crypto.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic GXL Cryptographic Offloader
+
+maintainers:
+  - Corentin Labbe <clabbe@baylibre.com>
+
+properties:
+  compatible:
+    items:
+    - const: amlogic,gxl-crypto
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description: "Interrupt for flow 0"
+      - description: "Interrupt for flow 1"
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: blkmv
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/gxbb-clkc.h>
+
+    crypto: crypto@c883e000 {
+        compatible = "amlogic,gxl-crypto";
+        reg = <0x0 0xc883e000 0x0 0x36>;
+        interrupts = <GIC_SPI 188 IRQ_TYPE_EDGE_RISING>, <GIC_SPI 189 IRQ_TYPE_EDGE_RISING>;
+        clocks = <&clkc CLKID_BLKMV>;
+        clock-names = "blkmv";
+    };
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
