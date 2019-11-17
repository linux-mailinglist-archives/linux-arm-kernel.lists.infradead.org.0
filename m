Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6768FFFA1D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 15:08:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P8w4k0nxp0ZECCnn60IpnuPaWu7Lblp2bC6fBtj6OTQ=; b=kfvgn1/TNfpIhU
	S5U2K2Q1C/fXYIUSK2JfTwWzdoxQRenwn6Xoz2Kv6fH2tfbxIzE0u+ERoAQrfRLCGKxHzSallUoVI
	wlW/abeoTgd4lDK/AI2i/hPv8ZCrt2I/9fjmL4RVoUCpRLsCH/ZGYqw7+H/1v+u5yVK+gqzzBO8KH
	dHU9mk6Mv+upKvySOrR8T4baVdRWbRqTR8vewXPZlX1Rc2jCyD0DcHZAxD7E3hX+uXu7fCk6txlf+
	0SPWHAQGK1xYRWMdh/5l+znaVEoO5IXC5W0QXElWuixJW3SZrUcs3imbIowfYVl4Z6eMys8sE4O3W
	CEI4W3b6eTV586ufIg2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWLE5-0005uE-Pn; Sun, 17 Nov 2019 14:08:29 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWLDK-0005Dt-RM; Sun, 17 Nov 2019 14:07:44 +0000
Received: by mail-wr1-x443.google.com with SMTP id e6so16407932wrw.1;
 Sun, 17 Nov 2019 06:07:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tiyYxTb8Rk/mH72C96BXIjZ0994JQE265VRKbdZ6Y4s=;
 b=EVVkWJcFjAUrdne3BkCeB4MZ1JQmeLwk168bJwNqsL7WjU+GOUeD6/qGmmqltNv+pb
 +gB2wG9KbzlzWwFQb6WRV5ac1d950G8wG6UGLncopSi6JOof9v6RfpFc0wxZH4iTi3pG
 1Y32KlJ11z3OQLFduc78NnjwMiekx/m50BD56AMK3tNx+wbX2jtzBk8TTBjjTWJF9W4P
 3WqUeWOeQIT+YSDKFtwsofghZyWxQoILvQZFMJBXG2WEx73NVvCClFJCZsn0pGz0IYCy
 k1SY9jXB/xKS75alrQvK7A1SB52LgIwKMwMbF3Us0axjaE9ZLGjR83DS8AmZhZGK6Kea
 Y6hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tiyYxTb8Rk/mH72C96BXIjZ0994JQE265VRKbdZ6Y4s=;
 b=COBW43N68v/RncSJTXNqJuflM/Y72GFvK/QsjVDJmSU8wqoK4WLC/Ugkyv9o3UsG+j
 6HT2FYDDPkqjLvGyUq63/bvBh1FJbdp4DqR1aOGPvWS7cHCBeXD1qxXUflI57JRY3EmK
 4q63+UFw+RVd0nVRy6nlPezRQL9gwluAxISuGC9sr7CjeWde7ttgWFoPt442aGDyAXgo
 rsw593JKUJxmAjOICuQZqEv2bLge4L4DBGzUXpEHQ77/irHwhMtdToH7Nf8uFke4QIkB
 DhFxsGOyxjL6ddb0DzA4DU2WyV0QGtIs0soGQzZtf0gA1vfOgFPtaF2DjLSodmV8G3xM
 BcFQ==
X-Gm-Message-State: APjAAAWWLGxJOSR05PtvTE+P2ls25VYyrDW6exC/hFmUWlAS05fUCscR
 Cq+qINu/gUCRJKtVI+K3aURegU3r
X-Google-Smtp-Source: APXvYqzMq+83TkjxUSM11kZkx3mF/4DvBV0+2sGks49oMiHitp16MlZiefH8kui2kfgFepTTKQYiCA==
X-Received: by 2002:a5d:54c4:: with SMTP id x4mr25727213wrv.247.1573999661231; 
 Sun, 17 Nov 2019 06:07:41 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1371CB100428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:371c:b100:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id n23sm16632977wmc.18.2019.11.17.06.07.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Nov 2019 06:07:40 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com,
 linux-amlogic@lists.infradead.org
Subject: [PATCH v3 1/2] dt-bindings: clock: add the Amlogic Meson8 DDR clock
 controller binding
Date: Sun, 17 Nov 2019 15:07:30 +0100
Message-Id: <20191117140731.137378-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191117140731.137378-1-martin.blumenstingl@googlemail.com>
References: <20191117140731.137378-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_060742_910704_BF4C367A 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>, sboyd@kernel.org,
 linux-kernel@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Amlogic Meson8, Meson8b and Meson8m2 SoCs have a DDR clock controller in
the MMCBUS registers. There is no public documentation on this, but the
GPL u-boot sources from the Amlogic BSP show that:
- it uses the same XTAL input as the main clock controller
- it contains a PLL which seems to be implemented just like the other
  PLLs in this SoC
- there is a power-of-two PLL post-divider

Add the documentation and header file for this DDR clock controller.

Reviewed-by: Rob Herring <robh@kernel.org>
Acked-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../clock/amlogic,meson8-ddr-clkc.yaml        | 50 +++++++++++++++++++
 include/dt-bindings/clock/meson8-ddr-clkc.h   |  4 ++
 2 files changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/amlogic,meson8-ddr-clkc.yaml
 create mode 100644 include/dt-bindings/clock/meson8-ddr-clkc.h

diff --git a/Documentation/devicetree/bindings/clock/amlogic,meson8-ddr-clkc.yaml b/Documentation/devicetree/bindings/clock/amlogic,meson8-ddr-clkc.yaml
new file mode 100644
index 000000000000..4b8669f870ec
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/amlogic,meson8-ddr-clkc.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/amlogic,meson8-ddr-clkc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic DDR Clock Controller Device Tree Bindings
+
+maintainers:
+  - Martin Blumenstingl <martin.blumenstingl@googlemail.com>
+
+properties:
+  compatible:
+    enum:
+      - amlogic,meson8-ddr-clkc
+      - amlogic,meson8b-ddr-clkc
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: xtal
+
+  "#clock-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - "#clock-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    ddr_clkc: clock-controller@400 {
+      compatible = "amlogic,meson8-ddr-clkc";
+      reg = <0x400 0x20>;
+      clocks = <&xtal>;
+      clock-names = "xtal";
+      #clock-cells = <1>;
+    };
+
+...
diff --git a/include/dt-bindings/clock/meson8-ddr-clkc.h b/include/dt-bindings/clock/meson8-ddr-clkc.h
new file mode 100644
index 000000000000..a8e0fa2987ab
--- /dev/null
+++ b/include/dt-bindings/clock/meson8-ddr-clkc.h
@@ -0,0 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#define DDR_CLKID_DDR_PLL_DCO			0
+#define DDR_CLKID_DDR_PLL			1
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
