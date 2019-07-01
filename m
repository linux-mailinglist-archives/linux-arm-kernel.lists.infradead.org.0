Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60ADF5B953
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 12:48:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fWS2xnkEo2PzJaBy+Ly8dE5ORaklXQU6RCzGyQkcU4k=; b=ODriD3tJNuBU9D
	RfwNqhlvQPHbQwt0PxC+7KwIkEzpB4Q7o47kt9kZ6wtuvfSZnVt8Cp0jblDp1hroecFHn6MYKXsBv
	kAqpW9KCAt+SpIdakpBYFDiefgdUSa8SRqlyj/akUZUl2t17F7GRrOb87aRbja+m2h654L8I9hg64
	kBgcBOb2al0kRoG++RFZVTzlIx+0W7axFUns+QS7K794vfHtoIXY5lmqYhZHbsPT/hBqSpa8XE7+K
	Tai3TM073HF7y8OCixJ+bvNeNbLscuJsuTz+WbVc0EodblLBoh2NvGO/TD7c8neODM++Uu1c/hJWF
	mR0u7OW/DfvVEJjRGNuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhtrM-0007Oj-Jt; Mon, 01 Jul 2019 10:48:32 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhtqJ-0006Z5-NY
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 10:47:29 +0000
Received: by mail-wr1-x444.google.com with SMTP id c2so13260470wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 03:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QoklnP0bi5VlneOSfMMO/1j0O/akzR/UGUOVoiR4zJg=;
 b=rYaIP9Z8AFkt6CFzPHllnzifEfoS3M8n6vylLz93bKjw4ukFm0EwmOLEOruJaaMNFV
 THRhW7V96RN3MeWc9jECmk0UnxywaKuuM395kQUTkVkQ91otdIVspn3NAoz1lCVoqQXr
 jIhtpPYC2GNXsA1fk09adtYfVcer1x+/YlVaWcSb4CdXyCtdDZbnHmgXa0tomJtTg6Ml
 JuaCUL3mE4xkgN07UmouRA3Rib1L+P6Sm6QkL6u5UzPEplW7vKFQJhaZKKv9giKCty0Y
 45D/viPJ7aVxT6ZfzTMack7XC03RGwNQUpVGXylbCkr7iBcleCnXyehjG0NYDfvPY+fJ
 b36Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QoklnP0bi5VlneOSfMMO/1j0O/akzR/UGUOVoiR4zJg=;
 b=UCBus0dIftsFZH8Vi8IgoVHleMgoQl8RxPgQUaCV6x+OQYymlo8QlaOpk0h4AXTGoM
 wm4dTsUgkl7kOyD2oZH0nBeTt7yFstb73Nkk38hbEa45S954Cd/DIved1oIpF7ozhmQe
 9LdkdRjob54H1juU3XPakHfcRYY/DncXba7CVZCyvzVkSXKYcWygcQEGg8L1Zzb6dgO7
 wXt0Spp5CKfeCPK8DBjjcE8mRTiRp/FjUtivSGCgNPbNuUoRaLoQmYSBw9irCOqX5lSj
 AfFO9/mtfRqrY1Jkh+dcaOxGT++wfe81pDAJaIXvFp49ls161S5oOBZOeUazkCArD6WR
 VO8w==
X-Gm-Message-State: APjAAAU8wAOYsaIpq/lxMqYDAMcGoR9gBw6nfd3pL28h+YzdeGuYKbBx
 Un5ZmcWphCXbikNjAttfow6V6g==
X-Google-Smtp-Source: APXvYqyTP4k0eF1dNYLfLBPz3xOUZqajJ8MktdmUINp3t0MNrFM4AUYuYE5IkIEDgwrBspHaABU2FA==
X-Received: by 2002:a5d:5589:: with SMTP id i9mr9222404wrv.198.1561978045919; 
 Mon, 01 Jul 2019 03:47:25 -0700 (PDT)
Received: from localhost.localdomain (176-150-251-154.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id d24sm11658802wra.43.2019.07.01.03.47.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 01 Jul 2019 03:47:25 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	khilman@baylibre.com,
	devicetree@vger.kernel.org
Subject: [RFC 02/11] dt-bindings: power: amlogic,
 meson-gx-pwrc: Add SM1 bindings
Date: Mon,  1 Jul 2019 12:46:56 +0200
Message-Id: <20190701104705.18271-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701104705.18271-1-narmstrong@baylibre.com>
References: <20190701104705.18271-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_034727_765113_82038DA1 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add bindings for the Amlogic SM1 Power control:
- the VPU power control compatible
- the general-purpose power controller, controlling the USB, PCIe, NNA and
  GE2D power domains.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../bindings/power/amlogic,meson-gx-pwrc.txt  | 35 +++++++++++++++++++
 include/dt-bindings/power/meson-sm1-power.h   | 15 ++++++++
 2 files changed, 50 insertions(+)
 create mode 100644 include/dt-bindings/power/meson-sm1-power.h

diff --git a/Documentation/devicetree/bindings/power/amlogic,meson-gx-pwrc.txt b/Documentation/devicetree/bindings/power/amlogic,meson-gx-pwrc.txt
index 0fdc3dd1125e..f0a1e20555bf 100644
--- a/Documentation/devicetree/bindings/power/amlogic,meson-gx-pwrc.txt
+++ b/Documentation/devicetree/bindings/power/amlogic,meson-gx-pwrc.txt
@@ -19,6 +19,7 @@ Required properties:
 - compatible: should be one of the following :
 	- "amlogic,meson-gx-pwrc-vpu" for the Meson GX SoCs
 	- "amlogic,meson-g12a-pwrc-vpu" for the Meson G12A SoCs
+	- "amlogic,meson-sm1-pwrc-vpu" for the Meson SM1 SoCs
 - #power-domain-cells: should be 0
 - amlogic,hhi-sysctrl: phandle to the HHI sysctrl node
 - resets: phandles to the reset lines needed for this power demain sequence
@@ -60,4 +61,38 @@ ao_sysctrl: sys-ctrl@0 {
 	};
 };
 
+General Purpose Power Controller
+--------------------------------
 
+The Amlogic SM1 SoCs embeds a General Purpose Power Controller used
+to control the power domain for, at least, the USB PHYs and PCIe
+peripherals.
+
+
+Device Tree Bindings:
+---------------------
+
+Required properties:
+- compatible: should be one of the following :
+	- "amlogic,meson-sm1-pwrc" for the Meson SM1 SoCs
+- #power-domain-cells: should be 0
+- amlogic,hhi-sysctrl: phandle to the HHI sysctrl node
+
+Parent node should have the following properties :
+- compatible: "amlogic,meson-gx-ao-sysctrl", "syscon", "simple-mfd"
+- reg: base address and size of the AO system control register space.
+
+
+Example:
+-------
+
+ao_sysctrl: sys-ctrl@0 {
+	compatible = "amlogic,meson-gx-ao-sysctrl", "syscon", "simple-mfd";
+	reg =  <0x0 0x0 0x0 0x100>;
+
+	pwrc: power-controller {
+		compatible = "amlogic,meson-sm1-pwrc";
+		#power-domain-cells = <1>;
+		amlogic,hhi-sysctrl = <&hhi>;
+	};
+};
diff --git a/include/dt-bindings/power/meson-sm1-power.h b/include/dt-bindings/power/meson-sm1-power.h
new file mode 100644
index 000000000000..30e17e4a478e
--- /dev/null
+++ b/include/dt-bindings/power/meson-sm1-power.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: (GPL-2.0+ or MIT) */
+/*
+ * Copyright (c) 2019 BayLibre, SAS
+ * Author: Neil Armstrong <narmstrong@baylibre.com>
+ */
+
+#ifndef _DT_BINDINGS_MESON_SM1_POWER_H
+#define _DT_BINDINGS_MESON_SM1_POWER_H
+
+#define PWRC_SM1_NNA_ID		0
+#define PWRC_SM1_USB_ID		1
+#define PWRC_SM1_PCIE_ID	2
+#define PWRC_SM1_GE2D_ID	3
+
+#endif
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
