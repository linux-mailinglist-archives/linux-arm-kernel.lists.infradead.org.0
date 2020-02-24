Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD10916B051
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 20:33:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6FIvRHX8XgAAJi5jeJ/TtQPc8SA1dD/c3eKSxmrdQfk=; b=IAid7Rxdy+QQwkAUyIU/8iKGDq
	jbnwtgyFJMvnynA/iWnQn4F35oi0WR3dQekGjMgHyKFA5P0UXXyL0s1eRJaaOn9cgpZH8t9gZUr6X
	CChutZTKqh+35GX6xsY7X+VFC+bksnD8okDxvBWDN3600eocMrJHumbxG9Igvlw6jH7N1JTQAP8rf
	ukeYHMbL/p7ylKmy+eOOfLrR3DmAToVS8MLHnc075TLGOan1f01MkBYabpgq08tsbLgeuIIZ5n3+x
	8F1pZHDNSH7fkEkTeudhXM6a1Sh/afjoaV0WifBgKx7Q/aCsBTMPDwjkXRgM0wa4CqG0wtZ/d8Lnd
	YWatVtYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6JU5-0002TH-DY; Mon, 24 Feb 2020 19:33:41 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6JSs-0001Qn-In
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 19:32:33 +0000
Received: by mail-qt1-x842.google.com with SMTP id t13so7368389qto.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 11:32:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3qqRoDgvYiimoGzYgGHMuSSqFFmLBlj/Dp9CxCne7ag=;
 b=HE1fmSvoZqrDvi4/RcH7+cM5Igwkuqb8zSuAk12E8i6Ze13bA8+6LZh17I2DZIRiVR
 E17AlF8He6EGZm0j+g+HXKlp3IIGS1MffUzXC2hMm1ZTYyXTnGNXPvjT2vZQj3KNvHQS
 6xtQ/n+3mWZrJKRYNtoKyf2Vzv63FwaxoGTQb20ZjEDyJUJdy0rCY/9269Nz5/gcggXo
 1vCY3kReJBGVaevPOQbWslNd/GS8l+rQSLXxCZvcgz0g5nU7y+0mty9aki+xlM2lbdJI
 Lp+0tQ/yZNgPoVYBUzMc/H8QVIJ0OdUrBap6hIln7p6tF1wILca8ZZ161xcn/k+4rzqr
 rVLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3qqRoDgvYiimoGzYgGHMuSSqFFmLBlj/Dp9CxCne7ag=;
 b=IOXmYzpu9DgEADOeTiVwCKFDEzUkih153OgRVVFPReEcw3idaXoJ2c5GZXqrRNGyzS
 IA/9YGyxWnEI1G1Ge2kGhmfUJOf7iJeM2hQ2wjd8AI+89iNpCJMyoGBx4iFyOUyxb+S/
 J0OfuuL6unQUy5j2kVFGItoeW6X0/WMwHVRhn3SL8aNaS1GTQIqfx0uWZFXEbDmBvnCA
 rrWhnNOPToZdtu0u0kElSqcB+MK192UNdZSNLIInTWbOUCe9aLWFKmoXKc/VMPeS2DLc
 lMMNbibltcz5vMTudUwX0phw+PNg2Cq4nUwWX2EGtK/GvAqqE9HEPaB7c1jUeqvpIXkr
 IrBQ==
X-Gm-Message-State: APjAAAXUqVh0euTYeojbOnkdCGhY9RUq5+3yXMydeqj+SHXuVnhvbfUY
 xPT3ItbuKGmbeJr26ztJKug=
X-Google-Smtp-Source: APXvYqykVba5ZOJ5pKVnEHouGvh91TvirzP4eVgj915zyLpn7WVA5Hx7JDVw9ssLBZ7AQakjo4JKGA==
X-Received: by 2002:aed:2798:: with SMTP id a24mr50452049qtd.184.1582572743651; 
 Mon, 24 Feb 2020 11:32:23 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:482:5bb::2])
 by smtp.gmail.com with ESMTPSA id g2sm6182497qkb.27.2020.02.24.11.32.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 11:32:22 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH 6/6] ARM: dts: imx6qdl: Add imx6qdl-pico support
Date: Mon, 24 Feb 2020 16:32:00 -0300
Message-Id: <20200224193200.2773-6-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200224193200.2773-1-festevam@gmail.com>
References: <20200224193200.2773-1-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_113227_423747_ED85E119 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: robh+dt@kernel.org, Fabio Estevam <festevam@gmail.com>,
 otavio@ossystems.com.br, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for all the imx6qdl-pico variants.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 .../devicetree/bindings/arm/fsl.yaml          |   8 +
 arch/arm/boot/dts/Makefile                    |   8 +
 arch/arm/boot/dts/imx6dl-pico-dwarf.dts       |  17 +
 arch/arm/boot/dts/imx6dl-pico-hobbit.dts      |  17 +
 arch/arm/boot/dts/imx6dl-pico-nymph.dts       |  17 +
 arch/arm/boot/dts/imx6dl-pico-pi.dts          |  17 +
 arch/arm/boot/dts/imx6q-pico-dwarf.dts        |  17 +
 arch/arm/boot/dts/imx6q-pico-hobbit.dts       |  17 +
 arch/arm/boot/dts/imx6q-pico-nymph.dts        |  17 +
 arch/arm/boot/dts/imx6q-pico-pi.dts           |  17 +
 arch/arm/boot/dts/imx6qdl-pico-dwarf.dtsi     |  45 ++
 arch/arm/boot/dts/imx6qdl-pico-hobbit.dtsi    |  37 ++
 arch/arm/boot/dts/imx6qdl-pico-nymph.dtsi     |  54 ++
 arch/arm/boot/dts/imx6qdl-pico-pi.dtsi        |  31 +
 arch/arm/boot/dts/imx6qdl-pico.dtsi           | 617 ++++++++++++++++++
 15 files changed, 936 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6dl-pico-dwarf.dts
 create mode 100644 arch/arm/boot/dts/imx6dl-pico-hobbit.dts
 create mode 100644 arch/arm/boot/dts/imx6dl-pico-nymph.dts
 create mode 100644 arch/arm/boot/dts/imx6dl-pico-pi.dts
 create mode 100644 arch/arm/boot/dts/imx6q-pico-dwarf.dts
 create mode 100644 arch/arm/boot/dts/imx6q-pico-hobbit.dts
 create mode 100644 arch/arm/boot/dts/imx6q-pico-nymph.dts
 create mode 100644 arch/arm/boot/dts/imx6q-pico-pi.dts
 create mode 100644 arch/arm/boot/dts/imx6qdl-pico-dwarf.dtsi
 create mode 100644 arch/arm/boot/dts/imx6qdl-pico-hobbit.dtsi
 create mode 100644 arch/arm/boot/dts/imx6qdl-pico-nymph.dtsi
 create mode 100644 arch/arm/boot/dts/imx6qdl-pico-pi.dtsi
 create mode 100644 arch/arm/boot/dts/imx6qdl-pico.dtsi

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 7aa11c55cc09..865a1015405c 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -119,6 +119,10 @@ properties:
               - fsl,imx6q-sabreauto
               - fsl,imx6q-sabrelite
               - fsl,imx6q-sabresd
+              - technexion,imx6q-pico-dwarf   # TechNexion i.MX6Q Pico-Dwarf
+              - technexion,imx6q-pico-hobbit  # TechNexion i.MX6Q Pico-Hobbit
+              - technexion,imx6q-pico-nymph   # TechNexion i.MX6Q Pico-Nymph
+              - technexion,imx6q-pico-pi      # TechNexion i.MX6Q Pico-Pi
               - technologic,imx6q-ts4900
               - technologic,imx6q-ts7970
               - toradex,apalis_imx6q            # Apalis iMX6 Module
@@ -166,6 +170,10 @@ properties:
               - emtrion,emcon-mx6-avari   # emCON-MX6S or emCON-MX6DL SoM on Avari Base
               - fsl,imx6dl-sabreauto      # i.MX6 DualLite/Solo SABRE Automotive Board
               - fsl,imx6dl-sabresd        # i.MX6 DualLite SABRE Smart Device Board
+              - technexion,imx6dl-pico-dwarf   # TechNexion i.MX6DL Pico-Dwarf
+              - technexion,imx6dl-pico-hobbit  # TechNexion i.MX6DL Pico-Hobbit
+              - technexion,imx6dl-pico-nymph   # TechNexion i.MX6DL Pico-Nymph
+              - technexion,imx6dl-pico-pi      # TechNexion i.MX6DL Pico-Pi
               - technologic,imx6dl-ts4900
               - technologic,imx6dl-ts7970
               - toradex,colibri_imx6dl          # Colibri iMX6 Module
diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 6eb53d78a946..4142de0e008b 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -446,6 +446,10 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
 	imx6dl-nitrogen6x.dtb \
 	imx6dl-phytec-mira-rdk-nand.dtb \
 	imx6dl-phytec-pbab01.dtb \
+	imx6dl-pico-dwarf.dtb \
+	imx6dl-pico-hobbit.dtb \
+	imx6dl-pico-nymph.dtb \
+	imx6dl-pico-pi.dtb \
 	imx6dl-rex-basic.dtb \
 	imx6dl-riotboard.dtb \
 	imx6dl-sabreauto.dtb \
@@ -529,6 +533,10 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
 	imx6q-phytec-mira-rdk-emmc.dtb \
 	imx6q-phytec-mira-rdk-nand.dtb \
 	imx6q-phytec-pbab01.dtb \
+	imx6q-pico-dwarf.dtb \
+	imx6q-pico-hobbit.dtb \
+	imx6q-pico-nymph.dtb \
+	imx6q-pico-pi.dtb \
 	imx6q-pistachio.dtb \
 	imx6q-rex-pro.dtb \
 	imx6q-sabreauto.dtb \
diff --git a/arch/arm/boot/dts/imx6dl-pico-dwarf.dts b/arch/arm/boot/dts/imx6dl-pico-dwarf.dts
new file mode 100644
index 000000000000..659a8e8714ea
--- /dev/null
+++ b/arch/arm/boot/dts/imx6dl-pico-dwarf.dts
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+//
+// Copyright 2018 Technexion Ltd.
+//
+// Author: Wig Cheng <wig.cheng@technexion.com>
+//	   Richard Hu <richard.hu@technexion.com>
+//	   Tapani Utriainen <tapani@technexion.com>
+
+/dts-v1/;
+
+#include "imx6dl.dtsi"
+#include "imx6qdl-pico-pi.dtsi"
+
+/ {
+	model = "TechNexion PICO-IMX6 DualLite/Solo Board and Dwarf baseboard";
+	compatible = "technexion,imx6dl-pico", "fsl,imx6dl";
+};
diff --git a/arch/arm/boot/dts/imx6dl-pico-hobbit.dts b/arch/arm/boot/dts/imx6dl-pico-hobbit.dts
new file mode 100644
index 000000000000..d7403c5c4337
--- /dev/null
+++ b/arch/arm/boot/dts/imx6dl-pico-hobbit.dts
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+//
+// Copyright 2018 Technexion Ltd.
+//
+// Author: Wig Cheng <wig.cheng@technexion.com>
+//	   Richard Hu <richard.hu@technexion.com>
+//	   Tapani Utriainen <tapani@technexion.com>
+
+/dts-v1/;
+
+#include "imx6dl.dtsi"
+#include "imx6qdl-pico-hobbit.dtsi"
+
+/ {
+	model = "TechNexion PICO-IMX6 DualLite/Solo Board and Hobbit baseboard";
+	compatible = "technexion,imx6dl-pico", "fsl,imx6dl";
+};
diff --git a/arch/arm/boot/dts/imx6dl-pico-nymph.dts b/arch/arm/boot/dts/imx6dl-pico-nymph.dts
new file mode 100644
index 000000000000..b282dbf953aa
--- /dev/null
+++ b/arch/arm/boot/dts/imx6dl-pico-nymph.dts
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+//
+// Copyright 2018 Technexion Ltd.
+//
+// Author: Wig Cheng <wig.cheng@technexion.com>
+//	   Richard Hu <richard.hu@technexion.com>
+//	   Tapani Utriainen <tapani@technexion.com>
+
+/dts-v1/;
+
+#include "imx6dl.dtsi"
+#include "imx6qdl-pico-pi.dtsi"
+
+/ {
+	model = "TechNexion PICO-IMX6 DualLite/Solo Board and Nymph baseboard";
+	compatible = "technexion,imx6dl-pico", "fsl,imx6dl";
+};
diff --git a/arch/arm/boot/dts/imx6dl-pico-pi.dts b/arch/arm/boot/dts/imx6dl-pico-pi.dts
new file mode 100644
index 000000000000..b7b1c07f96f3
--- /dev/null
+++ b/arch/arm/boot/dts/imx6dl-pico-pi.dts
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+//
+// Copyright 2018 Technexion Ltd.
+//
+// Author: Wig Cheng <wig.cheng@technexion.com>
+//	   Richard Hu <richard.hu@technexion.com>
+//	   Tapani Utriainen <tapani@technexion.com>
+
+/dts-v1/;
+
+#include "imx6dl.dtsi"
+#include "imx6qdl-pico-pi.dtsi"
+
+/ {
+	model = "TechNexion PICO-IMX6 DualLite/Solo Board and PI baseboard";
+	compatible = "technexion,imx6dl-pico", "fsl,imx6dl";
+};
diff --git a/arch/arm/boot/dts/imx6q-pico-dwarf.dts b/arch/arm/boot/dts/imx6q-pico-dwarf.dts
new file mode 100644
index 000000000000..618d2743e1e9
--- /dev/null
+++ b/arch/arm/boot/dts/imx6q-pico-dwarf.dts
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+//
+// Copyright 2018 Technexion Ltd.
+//
+// Author: Wig Cheng <wig.cheng@technexion.com>
+//	   Richard Hu <richard.hu@technexion.com>
+//	   Tapani Utriainen <tapani@technexion.com>
+
+/dts-v1/;
+
+#include "imx6q.dtsi"
+#include "imx6qdl-pico-pi.dtsi"
+
+/ {
+	model = "TechNexion PICO-IMX6 Quad Board and Dwarf baseboard";
+	compatible = "technexion,imx6q-pico", "fsl,imx6q";
+};
diff --git a/arch/arm/boot/dts/imx6q-pico-hobbit.dts b/arch/arm/boot/dts/imx6q-pico-hobbit.dts
new file mode 100644
index 000000000000..7a666507b456
--- /dev/null
+++ b/arch/arm/boot/dts/imx6q-pico-hobbit.dts
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+//
+// Copyright 2018 Technexion Ltd.
+//
+// Author: Wig Cheng <wig.cheng@technexion.com>
+//	   Richard Hu <richard.hu@technexion.com>
+//	   Tapani Utriainen <tapani@technexion.com>
+
+/dts-v1/;
+
+#include "imx6q.dtsi"
+#include "imx6qdl-pico-hobbit.dtsi"
+
+/ {
+	model = "TechNexion PICO-IMX6 Quad Board and Hobbit baseboard";
+	compatible = "technexion,imx6q-pico", "fsl,imx6q";
+};
diff --git a/arch/arm/boot/dts/imx6q-pico-nymph.dts b/arch/arm/boot/dts/imx6q-pico-nymph.dts
new file mode 100644
index 000000000000..fe5a7becc9e5
--- /dev/null
+++ b/arch/arm/boot/dts/imx6q-pico-nymph.dts
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+//
+// Copyright 2018 Technexion Ltd.
+//
+// Author: Wig Cheng <wig.cheng@technexion.com>
+//	   Richard Hu <richard.hu@technexion.com>
+//	   Tapani Utriainen <tapani@technexion.com>
+
+/dts-v1/;
+
+#include "imx6q.dtsi"
+#include "imx6qdl-pico-pi.dtsi"
+
+/ {
+	model = "TechNexion PICO-IMX6 Quad Board and Nymph baseboard";
+	compatible = "technexion,imx6q-pico", "fsl,imx6q";
+};
diff --git a/arch/arm/boot/dts/imx6q-pico-pi.dts b/arch/arm/boot/dts/imx6q-pico-pi.dts
new file mode 100644
index 000000000000..9413f0a68f54
--- /dev/null
+++ b/arch/arm/boot/dts/imx6q-pico-pi.dts
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+//
+// Copyright 2018 Technexion Ltd.
+//
+// Author: Wig Cheng <wig.cheng@technexion.com>
+//	   Richard Hu <richard.hu@technexion.com>
+//	   Tapani Utriainen <tapani@technexion.com>
+
+/dts-v1/;
+
+#include "imx6q.dtsi"
+#include "imx6qdl-pico-pi.dtsi"
+
+/ {
+	model = "TechNexion PICO-IMX6 Quad Board and PI baseboard";
+	compatible = "technexion,imx6q-pico", "fsl,imx6q";
+};
diff --git a/arch/arm/boot/dts/imx6qdl-pico-dwarf.dtsi b/arch/arm/boot/dts/imx6qdl-pico-dwarf.dtsi
new file mode 100644
index 000000000000..3a968782e854
--- /dev/null
+++ b/arch/arm/boot/dts/imx6qdl-pico-dwarf.dtsi
@@ -0,0 +1,45 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+//
+// Copyright 2017 NXP
+
+#include "imx6qdl-pico.dtsi"
+
+/ {
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_leds>;
+
+		led {
+			label = "gpio-led";
+			gpios = <&gpio5 31 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+};
+
+&i2c1 {
+	mpl3115@60 {
+		compatible = "fsl,mpl3115";
+		reg = <0x60>;
+	};
+};
+
+&i2c2 {
+	io-expander@25 {
+		compatible = "nxp,pca9554";
+		reg = <0x25>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		#interrupt-cells = <2>;
+	};
+
+};
+
+&iomuxc {
+	pinctrl_gpio_leds: gpioledsgrp {
+		fsl,pins = <
+			MX6QDL_PAD_CSI0_DAT13__GPIO5_IO31	0x1b0b0
+		>;
+	};
+};
diff --git a/arch/arm/boot/dts/imx6qdl-pico-hobbit.dtsi b/arch/arm/boot/dts/imx6qdl-pico-hobbit.dtsi
new file mode 100644
index 000000000000..144c4727fbc7
--- /dev/null
+++ b/arch/arm/boot/dts/imx6qdl-pico-hobbit.dtsi
@@ -0,0 +1,37 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+//
+// Copyright 2017 NXP
+
+#include "imx6qdl-pico.dtsi"
+
+/ {
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_leds>;
+
+		led {
+			label = "gpio-led";
+			gpios = <&gpio5 31 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+};
+
+&i2c2 {
+	status = "okay";
+
+	adc081c: adc@50 {
+		compatible = "ti,adc081c";
+		reg = <0x50>;
+		vref-supply = <&reg_3p3v>;
+	};
+};
+
+&iomuxc {
+	pinctrl_gpio_leds: gpioledsgrp {
+		fsl,pins = <
+			MX6QDL_PAD_CSI0_DAT13__GPIO5_IO31	0x1b0b0
+		>;
+	};
+};
diff --git a/arch/arm/boot/dts/imx6qdl-pico-nymph.dtsi b/arch/arm/boot/dts/imx6qdl-pico-nymph.dtsi
new file mode 100644
index 000000000000..3d56a4216448
--- /dev/null
+++ b/arch/arm/boot/dts/imx6qdl-pico-nymph.dtsi
@@ -0,0 +1,54 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+
+#include "imx6qdl-pico.dtsi"
+
+/ {
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_leds>;
+
+		led {
+			label = "gpio-led";
+			gpios = <&gpio5 31 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+};
+
+&i2c1 {
+	adc@52 {
+		compatible = "ti,adc081c";
+		reg = <0x52>;
+		vref-supply = <&reg_2p5v>;
+	};
+};
+
+&i2c2 {
+	io-expander@25 {
+		compatible = "nxp,pca9554";
+		reg = <0x25>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		#interrupt-cells = <2>;
+	};
+};
+
+&i2c3 {
+	rtc@68 {
+		compatible = "dallas,ds1337";
+		reg = <0x68>;
+	};
+};
+
+&pcie {
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_gpio_leds: gpioledsgrp {
+		fsl,pins = <
+			MX6QDL_PAD_CSI0_DAT13__GPIO5_IO31	0x1b0b0
+		>;
+	};
+};
diff --git a/arch/arm/boot/dts/imx6qdl-pico-pi.dtsi b/arch/arm/boot/dts/imx6qdl-pico-pi.dtsi
new file mode 100644
index 000000000000..b823dce62e63
--- /dev/null
+++ b/arch/arm/boot/dts/imx6qdl-pico-pi.dtsi
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+//
+// Copyright 2017 NXP
+
+#include "imx6qdl-pico.dtsi"
+
+/ {
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_leds>;
+
+		led {
+			label = "gpio-led";
+			gpios = <&gpio5 18 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+};
+
+&hdmi {
+	status = "disabled";
+};
+
+&iomuxc {
+	pinctrl_gpio_leds: gpioledsgrp {
+		fsl,pins = <
+			MX6QDL_PAD_CSI0_PIXCLK__GPIO5_IO18	0x1b0b0
+		>;
+	};
+};
diff --git a/arch/arm/boot/dts/imx6qdl-pico.dtsi b/arch/arm/boot/dts/imx6qdl-pico.dtsi
new file mode 100644
index 000000000000..39dfd90c2c6b
--- /dev/null
+++ b/arch/arm/boot/dts/imx6qdl-pico.dtsi
@@ -0,0 +1,617 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+//
+// Copyright 2018 Technexion Ltd.
+//
+// Author: Wig Cheng <wig.cheng@technexion.com>
+//	   Richard Hu <richard.hu@technexion.com>
+//	   Tapani Utriainen <tapani@technexion.com>
+
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	chosen {
+		stdout-path = &uart1;
+	};
+
+	reg_2p5v: regulator-2p5v {
+		compatible = "regulator-fixed";
+		regulator-name = "2P5V";
+		regulator-min-microvolt = <2500000>;
+		regulator-max-microvolt = <2500000>;
+		regulator-always-on;
+	};
+
+	reg_3p3v: regulator-3p3v {
+		compatible = "regulator-fixed";
+		regulator-name = "3P3V";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
+	reg_1p8v: regulator-1p8v {
+		compatible = "regulator-fixed";
+		regulator-name = "1P8V";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+	};
+
+	reg_1p5v: regulator-1p5v {
+		compatible = "regulator-fixed";
+		regulator-name = "1P5V";
+		regulator-min-microvolt = <1500000>;
+		regulator-max-microvolt = <1500000>;
+		regulator-always-on;
+	};
+
+	reg_2p8v: regulator-2p8v {
+		compatible = "regulator-fixed";
+		regulator-name = "2P8V";
+		regulator-min-microvolt = <2800000>;
+		regulator-max-microvolt = <2800000>;
+		regulator-always-on;
+	};
+
+	reg_usb_otg_vbus: regulator-usb-otg-vbus {
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_usbotg_vbus>;
+		compatible = "regulator-fixed";
+		regulator-name = "usb_otg_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio3 22 GPIO_ACTIVE_LOW>;
+	};
+
+	codec_osc: clock {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <24576000>;
+	};
+
+	sound {
+		compatible = "fsl,imx-audio-sgtl5000";
+		model = "imx6-pico-sgtl5000";
+		ssi-controller = <&ssi1>;
+		audio-codec = <&sgtl5000>;
+		audio-routing =
+			"MIC_IN", "Mic Jack",
+			"Mic Jack", "Mic Bias",
+			"Headphone Jack", "HP_OUT";
+		mux-int-port = <1>;
+		mux-ext-port = <3>;
+	};
+
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm4 0 50000 0>;
+		brightness-levels = <0 36 72 108 144 180 216 255>;
+		default-brightness-level = <6>;
+		status = "okay";
+	};
+
+	reg_lcd_3v3: regulator-lcd-3v3 {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_lcd>;
+		regulator-name = "lcd-3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio2 11 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	lcd_display: disp0 {
+		compatible = "fsl,imx-parallel-display";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_ipu1>;
+		status = "okay";
+
+		port@0 {
+			reg = <0>;
+
+			lcd_display_in: endpoint {
+				remote-endpoint = <&ipu1_di0_disp0>;
+			};
+		};
+
+		port@1 {
+			reg = <1>;
+
+			lcd_display_out: endpoint {
+				remote-endpoint = <&lcd_panel_in>;
+			};
+		};
+	};
+
+	panel {
+		compatible = "vxt,vl050-8048nt-c01";
+		backlight = <&backlight>;
+		power-supply = <&reg_lcd_3v3>;
+
+		port {
+			lcd_panel_in: endpoint {
+				remote-endpoint = <&lcd_display_out>;
+			};
+		};
+	};
+};
+
+&audmux {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_audmux>;
+	status = "okay";
+};
+
+&can1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan1>;
+	status = "okay";
+};
+
+&can2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan2>;
+	status = "okay";
+};
+
+&clks {
+	assigned-clocks = <&clks IMX6QDL_CLK_LDB_DI0_SEL>,
+			  <&clks IMX6QDL_CLK_LDB_DI1_SEL>;
+	assigned-clock-parents = <&clks IMX6QDL_CLK_PLL3_USB_OTG>,
+				 <&clks IMX6QDL_CLK_PLL3_USB_OTG>;
+};
+
+&ecspi2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi2>;
+	cs-gpios = <&gpio2 27 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet>;
+	phy-mode = "rgmii-id";
+	phy-reset-gpios = <&gpio1 26 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&hdmi {
+	ddc-i2c-bus = <&i2c2>;
+	status = "okay";
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	sgtl5000: audio-codec@a {
+		#sound-dai-cells = <0>;
+		reg = <0x0a>;
+		compatible = "fsl,sgtl5000";
+		clocks = <&codec_osc>;
+		VDDA-supply = <&reg_2p5v>;
+		VDDIO-supply = <&reg_1p8v>;
+	};
+};
+
+&i2c2 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+
+	touchscreen@38 {
+		compatible = "edt,edt-ft5x06";
+		reg = <0x38>;
+		interrupt-parent = <&gpio5>;
+		interrupts = <31 IRQ_TYPE_EDGE_FALLING>;
+		reset-gpios = <&gpio5 27 GPIO_ACTIVE_LOW>;
+		touchscreen-size-x = <800>;
+		touchscreen-size-y = <480>;
+		wakeup-source;
+	};
+
+	camera@3c {
+		compatible = "ovti,ov5645";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_ov5645>;
+		reg = <0x3c>;
+		clocks = <&clks IMX6QDL_CLK_CKO2>;
+		clock-names = "xclk";
+		clock-frequency = <24000000>;
+		vdddo-supply = <&reg_1p8v>;
+		vdda-supply = <&reg_2p8v>;
+		vddd-supply = <&reg_1p5v>;
+		enable-gpios = <&gpio1 6 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&gpio1 8 GPIO_ACTIVE_LOW>;
+
+		port {
+			ov5645_to_mipi_csi2: endpoint {
+				remote-endpoint = <&mipi_csi2_in>;
+				clock-lanes = <0>;
+				data-lanes = <1 2>;
+			};
+		};
+	};
+};
+
+&i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	status = "okay";
+};
+
+&ipu1_di0_disp0 {
+	remote-endpoint = <&lcd_display_in>;
+};
+
+&mipi_csi {
+	status = "okay";
+
+	port@0 {
+		reg = <0>;
+
+		mipi_csi2_in: endpoint {
+			remote-endpoint = <&ov5645_to_mipi_csi2>;
+			clock-lanes = <0>;
+			data-lanes = <1 2>;
+		};
+	};
+};
+
+&pcie {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pcie_reset>;
+	reset-gpio = <&gpio5 21 GPIO_ACTIVE_LOW>;
+};
+
+&pwm1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm1>;
+	status = "okay";
+};
+
+&pwm2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm2>;
+	status = "okay";
+};
+
+&pwm3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm3>;
+	status = "okay";
+};
+
+&pwm4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm4>;
+	status = "okay";
+};
+
+&ssi1 {
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&uart2 {  /* Bluetooth module */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	uart-has-rtscts;
+	status = "okay";
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	uart-has-rtscts;
+	status = "okay";
+};
+
+&usbh1 {
+	status = "okay";
+};
+
+&usbotg {
+	vbus-supply = <&reg_usb_otg_vbus>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbotg>;
+	disable-over-current;
+	dr_mode = "otg";
+	status = "okay";
+};
+
+&usdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	bus-width = <8>;
+	cd-gpios = <&gpio3 9 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&usdhc2 {  /* Wifi/BT  */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	bus-width = <4>;
+	no-1-8-v;
+	keep-power-in-suspend;
+	non-removable;
+	status = "okay";
+};
+
+&usdhc3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	bus-width = <8>;
+	no-1-8-v;
+	non-removable;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	pinctrl_hog: hoggrp {
+		fsl,pins = <
+			MX6QDL_PAD_CSI0_MCLK__GPIO5_IO19	0x4001b0b5 /* PICO_P24 */
+			MX6QDL_PAD_CSI0_VSYNC__GPIO5_IO21	0x4001b0b5 /* PICO_P26 */
+			MX6QDL_PAD_CSI0_DATA_EN__GPIO5_IO20	0x4001b0b5 /* PICO_P28 */
+			MX6QDL_PAD_CSI0_DAT8__GPIO5_IO26	0x4001b0b5 /* PICO_P30 */
+			MX6QDL_PAD_CSI0_DAT9__GPIO5_IO27	0x4001b0b5 /* PICO_P32 */
+			MX6QDL_PAD_CSI0_DAT14__GPIO6_IO00	0x4001b0b5 /* PICO_P34 */
+			MX6QDL_PAD_CSI0_DAT12__GPIO5_IO30	0x4001b0b5 /* PICO_P42 */
+			MX6QDL_PAD_CSI0_DAT13__GPIO5_IO31	0x4001b0b5 /* PICO_P44 */
+			MX6QDL_PAD_CSI0_DAT15__GPIO6_IO01	0x4001b0b5 /* PICO_P48 */
+		>;
+	};
+
+	pinctrl_audmux: audmuxgrp {
+		fsl,pins = <
+			MX6QDL_PAD_CSI0_DAT7__AUD3_RXD		0x130b0
+			MX6QDL_PAD_CSI0_DAT4__AUD3_TXC		0x130b0
+			MX6QDL_PAD_CSI0_DAT5__AUD3_TXD		0x110b0
+			MX6QDL_PAD_CSI0_DAT6__AUD3_TXFS		0x130b0
+		>;
+	};
+
+	pinctrl_ecspi1: ecspi1grp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D17__ECSPI1_MISO		0x100b1
+			MX6QDL_PAD_EIM_D18__ECSPI1_MOSI		0x100b1
+			MX6QDL_PAD_EIM_D16__ECSPI1_SCLK		0x100b1
+			MX6QDL_PAD_EIM_EB2__GPIO2_IO30		0x000f0b0
+		>;
+	};
+
+	pinctrl_ecspi2: ecspi2grp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_OE__ECSPI2_MISO		0x1b0b1
+			MX6QDL_PAD_EIM_CS1__ECSPI2_MOSI		0x1b0b1
+			MX6QDL_PAD_EIM_CS0__ECSPI2_SCLK		0x1b0b1
+			MX6QDL_PAD_EIM_RW__GPIO2_IO26		0x000f0b0
+			MX6QDL_PAD_EIM_LBA__GPIO2_IO27		0x000f0b0
+		>;
+	};
+
+	pinctrl_enet: enetgrp {
+		fsl,pins = <
+			MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
+			MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
+			MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x1b0b0
+			MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b0b0
+			MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b0b0
+			MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b0b0
+			MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b0b0
+			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b0b0
+			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x1b0b0
+			MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b0b0
+			MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b0b0
+			MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b0b0
+			MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b0b0
+			MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b0b0
+			MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b0b0
+			MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN	0x1b0b0
+			MX6QDL_PAD_ENET_RXD1__GPIO1_IO26	0x1f0b1
+		>;
+	};
+
+	pinctrl_flexcan1: flexcan1grp {
+		fsl,pins = <
+			MX6QDL_PAD_KEY_COL2__FLEXCAN1_TX	0x1b0b0
+			MX6QDL_PAD_KEY_ROW2__FLEXCAN1_RX	0x1b0b0
+		>;
+	};
+
+	pinctrl_flexcan2: flexcan2grp {
+		fsl,pins = <
+			MX6QDL_PAD_KEY_COL4__FLEXCAN2_TX	0x1b0b0
+			MX6QDL_PAD_KEY_ROW4__FLEXCAN2_RX	0x1b0b0
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
+			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX6QDL_PAD_KEY_COL3__I2C2_SCL		0x4001b8b1
+			MX6QDL_PAD_KEY_ROW3__I2C2_SDA		0x4001b8b1
+		>;
+	};
+
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D17__I2C3_SCL		0x4001b8b1
+			MX6QDL_PAD_EIM_D18__I2C3_SDA		0x4001b8b1
+		>;
+	};
+
+	pinctrl_ipu1: ipu1grp {
+		fsl,pins = <
+			MX6QDL_PAD_DI0_DISP_CLK__IPU1_DI0_DISP_CLK	0x10
+			MX6QDL_PAD_DI0_PIN15__IPU1_DI0_PIN15		0x10
+			MX6QDL_PAD_DI0_PIN2__IPU1_DI0_PIN02		0x10
+			MX6QDL_PAD_DI0_PIN3__IPU1_DI0_PIN03		0x10
+			MX6QDL_PAD_DI0_PIN4__IPU1_DI0_PIN04		0x10
+			MX6QDL_PAD_DISP0_DAT0__IPU1_DISP0_DATA00	0x10
+			MX6QDL_PAD_DISP0_DAT1__IPU1_DISP0_DATA01	0x10
+			MX6QDL_PAD_DISP0_DAT2__IPU1_DISP0_DATA02	0x10
+			MX6QDL_PAD_DISP0_DAT3__IPU1_DISP0_DATA03	0x10
+			MX6QDL_PAD_DISP0_DAT4__IPU1_DISP0_DATA04	0x10
+			MX6QDL_PAD_DISP0_DAT5__IPU1_DISP0_DATA05	0x10
+			MX6QDL_PAD_DISP0_DAT6__IPU1_DISP0_DATA06	0x10
+			MX6QDL_PAD_DISP0_DAT7__IPU1_DISP0_DATA07	0x10
+			MX6QDL_PAD_DISP0_DAT8__IPU1_DISP0_DATA08	0x10
+			MX6QDL_PAD_DISP0_DAT9__IPU1_DISP0_DATA09	0x10
+			MX6QDL_PAD_DISP0_DAT10__IPU1_DISP0_DATA10	0x10
+			MX6QDL_PAD_DISP0_DAT11__IPU1_DISP0_DATA11	0x10
+			MX6QDL_PAD_DISP0_DAT12__IPU1_DISP0_DATA12	0x10
+			MX6QDL_PAD_DISP0_DAT13__IPU1_DISP0_DATA13	0x10
+			MX6QDL_PAD_DISP0_DAT14__IPU1_DISP0_DATA14	0x10
+			MX6QDL_PAD_DISP0_DAT15__IPU1_DISP0_DATA15	0x10
+			MX6QDL_PAD_DISP0_DAT16__IPU1_DISP0_DATA16	0x10
+			MX6QDL_PAD_DISP0_DAT17__IPU1_DISP0_DATA17	0x10
+			MX6QDL_PAD_DISP0_DAT18__IPU1_DISP0_DATA18	0x10
+			MX6QDL_PAD_DISP0_DAT19__IPU1_DISP0_DATA19	0x10
+			MX6QDL_PAD_DISP0_DAT20__IPU1_DISP0_DATA20	0x10
+			MX6QDL_PAD_DISP0_DAT21__IPU1_DISP0_DATA21	0x10
+			MX6QDL_PAD_DISP0_DAT22__IPU1_DISP0_DATA22	0x10
+			MX6QDL_PAD_DISP0_DAT23__IPU1_DISP0_DATA23	0x10
+		>;
+	};
+
+	pinctrl_ov5645: ov5645grp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_6__GPIO1_IO06		0x0b0b0
+			MX6QDL_PAD_GPIO_8__GPIO1_IO08		0x0b0b0
+			MX6QDL_PAD_GPIO_3__CCM_CLKO2		0x000b0
+		>;
+	};
+
+	pinctrl_pcie_reset: pciegrp {
+		fsl,pins = <
+			MX6QDL_PAD_CSI0_VSYNC__GPIO5_IO21	0x130b0
+		>;
+	};
+
+	pinctrl_pwm1: pwm1grp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_9__PWM1_OUT		0x1b0b1
+		>;
+	};
+
+	pinctrl_pwm2: pwm2grp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_1__PWM2_OUT		0x1b0b1
+		>;
+	};
+
+	pinctrl_pwm3: pwm3grp {
+		fsl,pins = <
+			MX6QDL_PAD_SD4_DAT1__PWM3_OUT		0x1b0b1
+		>;
+	};
+
+	pinctrl_pwm4: pwm4grp {
+		fsl,pins = <
+			MX6QDL_PAD_SD4_DAT2__PWM4_OUT		0x1b0b1
+		>;
+	};
+
+	pinctrl_reg_lcd: reglcdgrp {
+		fsl,pins = <
+			MX6QDL_PAD_SD4_DAT3__GPIO2_IO11		0x1b0b0
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX6QDL_PAD_CSI0_DAT10__UART1_TX_DATA	0x1b0b1
+			MX6QDL_PAD_CSI0_DAT11__UART1_RX_DATA	0x1b0b1
+		>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX6QDL_PAD_SD4_DAT4__UART2_RX_DATA	0x1b0b1
+			MX6QDL_PAD_SD4_DAT5__UART2_RTS_B	0x1b0b1
+			MX6QDL_PAD_SD4_DAT6__UART2_CTS_B	0x1b0b1
+			MX6QDL_PAD_SD4_DAT7__UART2_TX_DATA	0x1b0b1
+		>;
+	};
+
+	pinctrl_uart3: uart3grp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D24__UART3_TX_DATA	0x1b0b1
+			MX6QDL_PAD_EIM_D25__UART3_RX_DATA	0x1b0b1
+			MX6QDL_PAD_EIM_D23__UART3_CTS_B		0x1b0b1
+			MX6QDL_PAD_EIM_D31__UART3_RTS_B		0x1b0b1
+		>;
+	};
+
+	pinctrl_usbotg: usbotggrp {
+		fsl,pins = <
+			MX6QDL_PAD_ENET_RX_ER__USB_OTG_ID	0x17059
+		>;
+	};
+
+	pinctrl_usbotg_vbus: usbotgvbusgrp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D22__GPIO3_IO22		0x1b0b0
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			MX6QDL_PAD_SD1_CMD__SD1_CMD		0x17071
+			MX6QDL_PAD_SD1_CLK__SD1_CLK		0x17071
+			MX6QDL_PAD_SD1_DAT0__SD1_DATA0		0x17071
+			MX6QDL_PAD_SD1_DAT1__SD1_DATA1		0x17071
+			MX6QDL_PAD_SD1_DAT2__SD1_DATA2		0x17071
+			MX6QDL_PAD_SD1_DAT3__SD1_DATA3		0x17071
+			MX6QDL_PAD_GPIO_2__GPIO1_IO02		0x1b0b0
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX6QDL_PAD_SD2_CMD__SD2_CMD		0x17059
+			MX6QDL_PAD_SD2_CLK__SD2_CLK		0x10059
+			MX6QDL_PAD_SD2_DAT0__SD2_DATA0		0x17059
+			MX6QDL_PAD_SD2_DAT1__SD2_DATA1		0x17059
+			MX6QDL_PAD_SD2_DAT2__SD2_DATA2		0x17059
+			MX6QDL_PAD_SD2_DAT3__SD2_DATA3		0x17059
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX6QDL_PAD_SD3_CMD__SD3_CMD		0x17059
+			MX6QDL_PAD_SD3_CLK__SD3_CLK		0x10059
+			MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x17059
+			MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x17059
+			MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x17059
+			MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x17059
+			MX6QDL_PAD_EIM_DA9__GPIO3_IO09		0xb0b1
+			MX6QDL_PAD_SD3_DAT4__SD3_DATA4		0x17059
+			MX6QDL_PAD_SD3_DAT5__SD3_DATA5		0x17059
+			MX6QDL_PAD_SD3_DAT6__SD3_DATA6		0x17059
+			MX6QDL_PAD_SD3_DAT7__SD3_DATA7		0x17059
+		>;
+	};
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
