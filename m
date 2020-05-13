Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F10A1D13AD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 14:59:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9nzDYq7JN5CeejKP3LgoH5uTC4MSZP/z9J/7L4tyCDs=; b=ojV+lSJ7r2EQlX
	i+n+0beksqTUtmTA+PF7+bgdX1uvwILS/hXqEtWTFfoApTHlpchKqso9YUftupckz03JvZx15qy+p
	8WM2KsHZiX1WJ+pIPgT394FjYn/d7IwOiG/+FpAhRyzegL6TWmJNtoEQ1g1cH9WF5FNKWXywD7MgG
	bY7skFDpOzHQyuttDHFlWqFTdndl6mRx1mkINLAh/5MX42tpd43oHkfO4wGEkpTRI3QKS3CLGS7nx
	gklmPbJ/GpSOTzuyzFkfF74iyfqmlm1KmZ1P9QC9k8nY3QTlLu79Qti5YZCJ0gAfJVDjPebJwWQXx
	us2RxcBha5jD77SeTUyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYqyi-0003wK-PU; Wed, 13 May 2020 12:59:16 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYqwZ-0002Hl-Uc
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 12:57:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589374623; x=1620910623;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cocnq6C3Sx04OlU4tTo1v6TxiLLEsTWDPS8e3sD9Sss=;
 b=PZLEjl0brNrY9AD0quJxESwfP2mVLxbmshWUXyImJdKvcWpwoOVunOuJ
 7IpCrzmvZl2xjw1GtDBnYlT6RfWpXhYmHzjrKl/nSMWqKaPfmehKlhS5K
 N3ndKmJ2PY42mqYpltqoWDhhtoGJ1Fe8ltH9URsEgp5DQOcRnETtBFxQk
 wxYg7SItJRcmHsZDGBwp3RvEd+re1s/AezKTvLLRGhljh014MpuEkW3T1
 E9SP1zxZBiN779D3VTYC4hkWkyaoD1XUqJ7P5ZpARbMGrvsRLUnVLWi91
 LU7aVIZqj/xF7MtP3BS2r8mPGoXZO9tuYQFoz5X7vqvrReOGr7wmPDnZq A==;
IronPort-SDR: hMNzW5FtpKKk1XnrrpvqvgpTTqFT95jAYklPcOtPflJB8uikGtYPodcZHxK0eLpS7ZYdmnqpmF
 yaHywINWj1rT6V8JJAIr95dAifHfuLZzJ0X5q6A28eIs2Ju3VYuM4ebHoHrAoSEEFGUW7DIVw3
 ZApFkDW8iEmeyIWNhgOrPMLX3lzz3FjzhOCarPXBrA/k2JhKRAgdkb2n5dG597AVtYR4JnEfvG
 ArGAy9kkiTIKVWzdSkuQXfymTpgzxEAW0CXfoUKqFFS31J6VCvf6VzSNH44fztIOwDVw9N/LJ+
 9AI=
X-IronPort-AV: E=Sophos;i="5.73,387,1583218800"; d="scan'208";a="75132842"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 05:57:02 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 05:57:02 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 05:56:59 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: SoC Team <soc@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Stephen Boyd
 <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 10/14] dt-bindings: clock: sparx5: Add Sparx5 SoC DPLL clock
Date: Wed, 13 May 2020 14:55:28 +0200
Message-ID: <20200513125532.24585-11-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513125532.24585-1-lars.povlsen@microchip.com>
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_055704_064945_109D6752 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Olof Johansson <olof@lixom.net>, Michael
 Turquette <mturquette@baylibre.com>, Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This add the DT bindings documentation for the Sparx5 SoC DPLL clock

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 .../bindings/clock/microchip,sparx5-dpll.yaml | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/microchip,sparx5-dpll.yaml

diff --git a/Documentation/devicetree/bindings/clock/microchip,sparx5-dpll.yaml b/Documentation/devicetree/bindings/clock/microchip,sparx5-dpll.yaml
new file mode 100644
index 0000000000000..594007d8fc59a
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/microchip,sparx5-dpll.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/microchip,sparx5-dpll.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip Sparx5 DPLL Clock
+
+maintainers:
+  - Lars Povlsen <lars.povlsen@microchip.com>
+
+description: |
+  The Sparx5 DPLL clock controller generates and supplies clock to
+  various peripherals within the SoC.
+
+  This binding uses common clock bindings
+  [1] Documentation/devicetree/bindings/clock/clock-bindings.txt
+
+properties:
+  compatible:
+    const: microchip,sparx5-dpll
+
+  reg:
+    items:
+      - description: dpll registers
+
+  '#clock-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - '#clock-cells'
+
+additionalProperties: false
+
+examples:
+  # Clock provider for eMMC:
+  - |
+    clks: clks@61110000c {
+         compatible = "microchip,sparx5-dpll";
+         #clock-cells = <1>;
+         reg = <0x1110000c 0x24>;
+    };
+
+...
--
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
