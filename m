Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1786EFCA3A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 16:48:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nRAfY+kqIU9PbNHwjjTFhZ3bLMG/x39s7zTTFtALEuw=; b=pv/URcs5mOjASmKRSkBk1k2uXL
	KJ+aCp6FMHS/Gg9zDTIouFjzLviCteFwmkiqbZcODn/A9BGBmRI8vLAPHxGD8nVXcXPJg+jpQw3ju
	GUDynxQstPsNG3mRSPlogzVS5pxClu2IbDHzZXY3GTLCo7LOknujE46mRJWadprGLhSM3wx3TLgqg
	thRs2U0/PpoiG0GSlSvTrGngJa5KmYT1imQFL2EBAzr75szviCgTaVreF1Xqdd0uoIluzfLxLMhEz
	6OM7YinnUNEaJ1CYaoRb+BlzRe/bBgh5/1Smk8nifjMCXDdcV3CsZZ9qImBQE2lsam884Sl8r/ylz
	QIwOGpig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVHM8-0000Tz-9z; Thu, 14 Nov 2019 15:48:24 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVHLT-000070-4I
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 15:47:45 +0000
Received: by mail-wm1-x341.google.com with SMTP id b11so6175776wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 07:47:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4wo8zGUvhFjwqDku4wCv5Ttt+MaXXuVDd4WBIo+uQ0g=;
 b=vTb5m9+WaTOE3iBR11VUP1HOuDyLJJ4anFAIcbYrl9gsMDJmtO5LsTgjIcmmzCVOX3
 mmJFbxltKy6H5678MrC572cNRSmTUuoE5sN6ELk7jEEUgCq4IdwLHnUt5eg7M8NofQZ/
 lOE3yR9QAVgaLeeCzW5R08UjHNuvSFEGDuQGB7KT3VnSHuVqBRfrn3sjk2yxwaALzwoY
 Z6MJEszjxjgAod3LNNRN0dZ5W7kaxRJXvI4nfRM+aYkXvPBG287T2ZMZawmx0kFv+X3G
 7EfYFK3UpierUlO6tcUrjUQ7dvK/sDO7lu3Hp96o6FKJi0DZl4zMkFm0pCuFRC01UCPA
 /BcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4wo8zGUvhFjwqDku4wCv5Ttt+MaXXuVDd4WBIo+uQ0g=;
 b=VpOjtnfd/TVC/VSUmEO0JEETkLERCSF7+hoPfo3O0kufrAohVEpfA/NX1Qm0fT0o6h
 wDAq7lBbaDDDBzqm/9s8FXeh8L5X3OgR6HdY6TVxSVvsAeV0nk4X2UdLKBUBFt2Z/5lu
 BiI3m3yAOlQW0vDtG8mdlEU4MMKZNWGN9qhJdpjKLFBValKe0STuMjQGL4pmItucPcjR
 GMt2ANTe4E5TatxAMh78ivZK4Fy7AzbwTz2lqgBXIeftx6GjVtddwpXyd+7igzHgQfS4
 R7E2TU7lVkK2mosCrHyqRuMk3prF/BhZeuBY26EXZF2Y4ipdSIescI8pezdcxxDQvdXc
 X0Wg==
X-Gm-Message-State: APjAAAVT4h/krL3Ufl0nJOrYix5S30QlVZKTqWRsSoq33xtXZ9Cuewvr
 1obHJJwO8nmZo2pltNTbxtegHg==
X-Google-Smtp-Source: APXvYqzJh07JEnxYOEI4mYx1Z1ivxmp/MoUyRRmyw3wJuJusYUN5a6zAe5JPqYIKsp/B7oBTJMaLDg==
X-Received: by 2002:a05:600c:506:: with SMTP id
 i6mr8873908wmc.153.1573746461977; 
 Thu, 14 Nov 2019 07:47:41 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l4sm6428629wml.33.2019.11.14.07.47.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 14 Nov 2019 07:47:41 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: mark.rutland@arm.com, mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH v5 2/2] ARM64: dts: allwinner: add pineh64 model B
Date: Thu, 14 Nov 2019 15:47:33 +0000
Message-Id: <1573746453-5123-3-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573746453-5123-1-git-send-email-clabbe@baylibre.com>
References: <1573746453-5123-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_074743_166949_DA5C0A17 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the model B of the PineH64.
The model B is smaller than the pine64 model A and has no PCIE slot.

The only devicetree difference with the pineH64 model A, is the PHY
regulator and the HDMI connector node.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../devicetree/bindings/arm/sunxi.yaml        |  5 +++++
 arch/arm64/boot/dts/allwinner/Makefile        |  1 +
 .../allwinner/sun50i-h6-pine-h64-model-b.dts  | 21 +++++++++++++++++++
 3 files changed, 27 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-model-b.dts

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index a02baa374adc..3e3e74cfa3c3 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -604,6 +604,11 @@ properties:
           - const: pine64,pine-h64
           - const: allwinner,sun50i-h6
 
+      - description: Pine64 PineH64 model B
+        items:
+          - const: pine64,pine-h64-model-b
+          - const: allwinner,sun50i-h6
+
       - description: Pine64 LTS
         items:
           - const: pine64,pine64-lts
diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
index d2418021768b..62bc43f187bf 100644
--- a/arch/arm64/boot/dts/allwinner/Makefile
+++ b/arch/arm64/boot/dts/allwinner/Makefile
@@ -26,4 +26,5 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-3.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-lite2.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-one-plus.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64.dtb
+dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64-model-b.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-tanix-tx6.dtb
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-model-b.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-model-b.dts
new file mode 100644
index 000000000000..f4c8966a6497
--- /dev/null
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-model-b.dts
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: (GPL-2.0+ or MIT)
+/*
+ * Copyright (C) 2019 Corentin LABBE <clabbe@baylibre.com>
+ */
+
+#include "sun50i-h6-pine-h64.dts"
+
+/ {
+	model = "Pine H64 model B";
+	compatible = "pine64,pine-h64-model-b", "allwinner,sun50i-h6";
+
+	/delete-node/ reg_gmac_3v3;
+};
+
+&hdmi_connector {
+	/delete-property/ ddc-en-gpios;
+};
+
+&emac {
+	phy-supply = <&reg_aldo2>;
+};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
