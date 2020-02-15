Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 334CE15FD42
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 08:01:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yszzMgbFTe0FbRxn2peCQJLPPfgXBIpTw/896Y5y6Is=; b=XKHJlvszljuecz
	lgt0SW43a8KqFBMeMIfZwnEpaSJ28l1rFr6kqf083kc46f6kXLbLuN4G9sYaerq5gsUj+rFRi80cB
	YWdIMA2rfZPWe9O8Pb50zBj3m9SZAvUrwkxIoIBSJrhlfFSpsSjmJkv2qraiOmEdrkvg7oFubIkZ6
	vF6VLVJbuexbLbn6ql5G2XumsTtIuWGMLFPPrbn78jeIZ6/rpBwnaSMbNlo3isq3f79aNA+ghebel
	4rKOazi3kEAMBWH3B1WVvjw9Uf8nqnv5ApUMCfULWYlmPePM/tRSPQLvGiHRGeFEbDQQMW2TdyFiW
	/1BgqPkmPTMtEEVIAfYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2rSc-0007Sm-SG; Sat, 15 Feb 2020 07:01:54 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2rRY-0006c8-SJ; Sat, 15 Feb 2020 07:00:53 +0000
Received: by mail-pl1-x644.google.com with SMTP id e8so4640798plt.9;
 Fri, 14 Feb 2020 23:00:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XE5CJKc1a7rUfnazp7u4JItKmlkGauSYL++r+MJXVmk=;
 b=eME8l+Mz1VmjGK/Dqrt0VHQY0F5h1jH976J9MEfHNjh/ccDMhF5qTx4G9+X6pveDZj
 OrPRJOhFt2qU/q4ghkaoEpK5rKN4blEs8DHOam/D1s0IzmKeVGNmGjLVRAdM9bbEP731
 84PeYQlsjXqiCXpKUqS6haWVcVTi78oZ/2XKO7dnR1p93wWCGB4Hq2MJ2LfNX3cFjIyv
 Omp7coDij8BcqHXw5kbdlPtKXExub2YkDL9K1plTEI/6gM+TsRyHsHeMtVuCSCle/WdE
 G+JqkPvAIGkzD/zt5tW0qBx0Egvnkg6tIjnpxzCVwRzdi15EoEy+Ql3K/DFQISC3WS2+
 /E3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XE5CJKc1a7rUfnazp7u4JItKmlkGauSYL++r+MJXVmk=;
 b=SSlm3zWZCu7+P7lEqnUFZHjR5JoV8BvUliDepdygP6MjmTCLWSbRw+unPjFtyWbSa8
 ne9RQx7vezObWJJcxH2ltOqTeVTsiAjEu2OZ6eN+ODJSAjw/QcEWTa2Wz2CxirONolOs
 W/nV36JqU0gmoxX6gxHLE5O7tSwPyaYyN6+hxtvnQXEAwcQXuNp9JCSAkaiKuLplJF7D
 /yybHCaw7R8IAhxMDZ1i7kBNpMEaPFjnO2eVQ16H5ve+jX81fDcI1byTfeDcLqLbamBt
 D078Wju4eRb9zFjzlDhCO+P3leIVkcnMKq6T9wp/AhPv6i5BEkObnTy7ZOT3ehgiJkd7
 4Crw==
X-Gm-Message-State: APjAAAUsEBOpy74oZginPMHoj/rL67nnbh5tIM+lpmYhlINraz3aigsA
 75mYMcEQvdXwMw85sEOh4hJkdOwO/nqc3uDy
X-Google-Smtp-Source: APXvYqyXRMtaMTp5YdXfgVA8qeIZoLUUB+MIfZxktdbjVBwb3h8kbRh7Ndkxqtzl8O5vUZ5Kjp91jQ==
X-Received: by 2002:a17:902:d684:: with SMTP id
 v4mr7221978ply.14.1581750047679; 
 Fri, 14 Feb 2020 23:00:47 -0800 (PST)
Received: from localhost.localdomain ([240e:379:95a:e780::fa3])
 by smtp.gmail.com with ESMTPSA id c15sm8918140pfo.137.2020.02.14.23.00.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Feb 2020 23:00:47 -0800 (PST)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-mediatek@lists.infradead.org, linux-spi@vger.kernel.org,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 2/2] dt-bindings: convert mtk-quadspi binding doc for
 spi-mtk-nor
Date: Sat, 15 Feb 2020 14:58:26 +0800
Message-Id: <20200215065826.739102-3-gch981213@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200215065826.739102-1-gch981213@gmail.com>
References: <20200215065826.739102-1-gch981213@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_230049_359121_89B8C1CD 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Richard Weinberger <richard@nod.at>, Mark Brown <broonie@kernel.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Chuanhong Guo <gch981213@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

spi-mtk-nor is a driver to replace mtk-quadspi and they have almost
the same device-tree bindings. Reuse this binding documentation and
convert it for new driver:

1. "Mediatek SoCs" -> "Mediatek ARM SoCs" because MTK MIPS SoCs
   use different controllers.
2. document "interrupts" as a required property because it's
   available on all SoCs with this controller and new driver takes
   advantages of it. It's implemented as optional only to maintain
   backward compatibility.
3. replace binding example with a mt7629 one because this is the
   only one I know the interrupt assignment.

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
 .../mtk-quadspi.txt => spi/spi-mtk-nor.txt}   | 34 ++++++++-----------
 1 file changed, 15 insertions(+), 19 deletions(-)
 rename Documentation/devicetree/bindings/{mtd/mtk-quadspi.txt => spi/spi-mtk-nor.txt} (62%)

diff --git a/Documentation/devicetree/bindings/mtd/mtk-quadspi.txt b/Documentation/devicetree/bindings/spi/spi-mtk-nor.txt
similarity index 62%
rename from Documentation/devicetree/bindings/mtd/mtk-quadspi.txt
rename to Documentation/devicetree/bindings/spi/spi-mtk-nor.txt
index a12e3b5c495d..829da480b9a9 100644
--- a/Documentation/devicetree/bindings/mtd/mtk-quadspi.txt
+++ b/Documentation/devicetree/bindings/spi/spi-mtk-nor.txt
@@ -1,4 +1,4 @@
-* Serial NOR flash controller for MediaTek SoCs
+* SPI NOR flash controller for MediaTek ARM SoCs
 
 Required properties:
 - compatible: 	  For mt8173, compatible should be "mediatek,mt8173-nor",
@@ -13,6 +13,7 @@ Required properties:
 		  "mediatek,mt7629-nor", "mediatek,mt8173-nor"
 		  "mediatek,mt8173-nor"
 - reg: 		  physical base address and length of the controller's register
+- interrupts:	  Interrupt number used by the controller.
 - clocks: 	  the phandle of the clocks needed by the nor controller
 - clock-names: 	  the names of the clocks
 		  the clocks should be named "spi" and "sf". "spi" is used for spi bus,
@@ -22,29 +23,24 @@ Required properties:
 - #address-cells: should be <1>
 - #size-cells:	  should be <0>
 
-The SPI flash must be a child of the nor_flash node and must have a
-compatible property. Also see jedec,spi-nor.txt.
-
-Required properties:
-- compatible:	  May include a device-specific string consisting of the manufacturer
-		  and name of the chip. Must also include "jedec,spi-nor" for any
-		  SPI NOR flash that can be identified by the JEDEC READ ID opcode (0x9F).
-- reg :		  Chip-Select number
+There should be only one spi slave device following generic spi bindings.
+It's not recommended to use this controller for devices other than SPI NOR
+flash due to limited transfer capability of this controller.
 
 Example:
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/clock/mt7629-clk.h>
 
-nor_flash: spi@1100d000 {
-	compatible = "mediatek,mt8173-nor";
-	reg = <0 0x1100d000 0 0xe0>;
-	clocks = <&pericfg CLK_PERI_SPI>,
-		 <&topckgen CLK_TOP_SPINFI_IFR_SEL>;
+spi_nor: spi@11014000 {
+	compatible = "mediatek,mt7629-nor",
+		     "mediatek,mt8173-nor";
+	reg = <0x11014000 0xe0>;
+	interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_LOW>;
+	clocks = <&pericfg CLK_PERI_FLASH_PD>,
+		 <&topckgen CLK_TOP_FLASH_SEL>;
 	clock-names = "spi", "sf";
 	#address-cells = <1>;
 	#size-cells = <0>;
-
-	flash@0 {
-		compatible = "jedec,spi-nor";
-		reg = <0>;
-	};
 };
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
