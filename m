Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D03EB9E87
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Sep 2019 17:19:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kpRaIwC8pBr78DyCBFaAAnwxAW84hnr4woTYqusssi0=; b=Uf/c45WHnhxNUH
	g6d1DD7SAyvahtK6q4y1hd/2ZaEjfkI23fTF2Gt/57f6aTeEHxuRLdAkMTNopqjymWrfqpA8pBm4t
	TVbyXW8bU5EwNPFl7Qk2tMQ6yJr8gcY3JEVHz1CmFpWlUnyKa00W6lwnbtq+11FkMbLqVbI1zqw4w
	rwkoA5okpk1HmuiuL3NJ5sL1B57pg6Npz7MCadDu8U6CYGYJfsmqTNptI5D4qR/Pn82qn9QCoHA5q
	rgdhEB+3pAvUjS+3I+n7gv9aAg1lK2wBGuFWVaULi5ZIw8txTqKSrPAoWi6lSftGj+4yEQm9VuJEo
	qvAV11rIqjQ6wLIVaGpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBhAH-0002Fp-VJ; Sat, 21 Sep 2019 15:19:14 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBh9w-000268-0I; Sat, 21 Sep 2019 15:18:54 +0000
Received: by mail-wr1-x441.google.com with SMTP id h7so9588608wrw.8;
 Sat, 21 Sep 2019 08:18:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0VvVyYbylhhn27lwnpj3kEDmecswF/DtGt6I7xL1THE=;
 b=AwdZfkWa2Zgunj0RMms1Csk0t/Bg4v/uFPqVU7GERZOhx5a+rh7P2KefE2ys3mgPqu
 8sp95P0w1G334sr3PxEdxmIvH2QCvBrTN8aHPLl2ln2VNjMp6QF5U41qAzgt07Vt3jNK
 etQuibrNO5D+4kjr6tb1quq6zE7UmuiM+whDQ0Pt/ca8TCmboJA/I8j3/SW2Rd1eHr5v
 Bt+60xkXfqkCmntTrq5oeWVgY5ZLULnV9aLK4uBFGEQAh9bMJLtL+wlSnXiPM1WCpoU/
 JDdwt0avJHJ+mwWhE5P5hFn29PnNssxuJtf25y/JaSPcy2boWyrnXBP8saOOd30Vdqz+
 NHWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0VvVyYbylhhn27lwnpj3kEDmecswF/DtGt6I7xL1THE=;
 b=lLc4+B+J2nbQumDW/5Wpz54ZETIr92BhkkZKpGlADBBK/3PtWZ+ShDZsYqUUZGe4Cr
 2R88yQhjy6zCjMM18MU1RMlYVfPWXWQEsWWjGTatFUkQcWtbut8w04ZqUZbE2Demf4IG
 Jokltni78tgREiG8XMG/IOYzZLE/W70aXpeF8sTseXTYjqMtG7hBtsNjQYbFikN27Rwm
 UWGvNe+etAXbHunORvNx6TU61HIMoI4qHnbVa4t5io9yh7LEZEmdHhyVC3cnR5ZVJ5vn
 172ShIzW48+4W7ZYCE2IUuDcOKqK4yL1y6R2S9E+Q4f6VGjToZfbMA71dUA/F4TiBR1Z
 N77g==
X-Gm-Message-State: APjAAAWJrDdvbtraE9hIVeo8ocNkJ7m14ZDbhHIF9PUWSQp7EAxkt+8L
 xrPiWmL+aDIBhvmooPAh5IQ=
X-Google-Smtp-Source: APXvYqzjLsxL6Hb5gWpypNfZmMuuKIqU6e8iKaQeFtNzeVg/UC9EEacsUopb1O4+mKK7gli1ftsl7g==
X-Received: by 2002:a5d:6885:: with SMTP id h5mr16181417wru.92.1569079128474; 
 Sat, 21 Sep 2019 08:18:48 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133CE0B0028BAA8C744A6F562.dip0.t-ipconnect.de.
 [2003:f1:33ce:b00:28ba:a8c7:44a6:f562])
 by smtp.googlemail.com with ESMTPSA id c6sm6003120wrb.60.2019.09.21.08.18.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Sep 2019 08:18:47 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com, robh+dt@kernel.org,
 mark.rutland@arm.com, linux-amlogic@lists.infradead.org,
 devicetree@vger.kernel.org, khilman@baylibre.com
Subject: [PATCH 1/6] dt-bindings: clock: add the Amlogic Meson8 DDR clock
 controller binding
Date: Sat, 21 Sep 2019 17:18:30 +0200
Message-Id: <20190921151835.770263-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190921151835.770263-1-martin.blumenstingl@googlemail.com>
References: <20190921151835.770263-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_081852_817123_B0105DB1 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
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

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../clock/amlogic,meson8-ddr-clkc.yaml        | 50 +++++++++++++++++++
 include/dt-bindings/clock/meson8-ddr-clkc.h   |  4 ++
 2 files changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/amlogic,meson8-ddr-clkc.yaml
 create mode 100644 include/dt-bindings/clock/meson8-ddr-clkc.h

diff --git a/Documentation/devicetree/bindings/clock/amlogic,meson8-ddr-clkc.yaml b/Documentation/devicetree/bindings/clock/amlogic,meson8-ddr-clkc.yaml
new file mode 100644
index 000000000000..bf3ca5888485
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/amlogic,meson8-ddr-clkc.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: GPL-2.0
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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
