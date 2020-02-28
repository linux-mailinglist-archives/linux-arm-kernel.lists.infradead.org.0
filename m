Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB50172FFA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 05:41:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iyY4pWkfX2eP2tZIfQbCALavfrdBhDm/Gle4+qMOj9Y=; b=uKjsfvefi9hpvP
	bZvJzHqpA8pSgu9ny8PAKWcc3DwNbYrLjwoXNqtwgUMKq0A4bnXCJWaHtfAz0tsc/K3W/IJucqRgd
	Y63iz4hWNxIblJN3/GiQ8N4nSk/LkFmieQGlvqnbH4bpFMhcJz28/zCVehcJdYpBCyXfwkzVwl9kD
	1S6xt2RdkEMPk9Uct7p6yry52i+hujxyeDlFo1Ju1ypyfqM7WEEASRjYfqXqQ1I+Te1iMI7+g2bvH
	vl/ntSi4LBuXHc3xSGfLarwvRrANq1QfGV3iiXG+yDaDnlCYs8Es53LakBCKTZOJmVzSzUqGNPa55
	Ei7mjv19XXpGLrcnvi5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7XSW-0003Sa-FW; Fri, 28 Feb 2020 04:41:08 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7XQe-0000mE-5W; Fri, 28 Feb 2020 04:39:23 +0000
Received: by mail-pg1-x543.google.com with SMTP id 6so854652pgk.0;
 Thu, 27 Feb 2020 20:39:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uF8mAHKuVrBMGB/o7w8S6JooN7hmaPGPaRRfbIuRXNQ=;
 b=EswBM+L5uO9lt08OsOVjEALPl9n2xaPJU0Jos91e8cKEj52knpHB6sSN+GvWfvuFPK
 B9deXez3/sspraDtYg+4Wgwbgj7ZMSC4ovJwGmv63HPyG+Rx6UWHIrTiG4YINTMMFvmI
 5BRMbpq42tTEIdIwyvGYm+XLX88oJYSJ6mUSpveiA6neWIRY1CSnadOThY481rw4k7uH
 dHKTA9ziiDsZegJPcMptruU+nc7Iey4k1cTq3A5jVq4ZTw123pomXXXtlSAMhrREfqQo
 dq1nbUUJsU1dhUeiCCCX+/Ys8KkAlh6EVrY2Zw0ZIm2uu1ZmGZ/dkkdYmghtDMlsvd73
 OIUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uF8mAHKuVrBMGB/o7w8S6JooN7hmaPGPaRRfbIuRXNQ=;
 b=TaJ2D+a7ktw2gJRivROImYH0hBVy3c4ABrJ54oI+ugz3dfN4+hIUzqnuFIa/XnZO2w
 tecy0t3Vpigb6ylNVvIGLF4oYZ7iU+dgkTJ4eHfol1Th5JS1EhpicAWqbRtYZGukqLHu
 8PpCj99s8RcvM0JuRWWqz5OHOnIgXROlpvn7bI5bVOIvytJ+P9Y+GBFBcs03UpNsqfrv
 n0UAP4PJzlly7gMAEmpTXBEtc8u+bzUPYAXL9u7/PCvHo7fwHVyzuijpn9SJsWFL7CCT
 tuB6snuvbcf4cI6X6NCaz+uvqJ4Nq0TFM+8M9f6w6E3cmvQhrfTVHoO0haDa8BIj9S3h
 9bSQ==
X-Gm-Message-State: APjAAAUNmYBHAg2AuEvYALSNnVgVpAunM4VIAOxJ3j7dlNcbEOpsDLl/
 HvSDAr3pycEl3s98NbrhSq2fjcBfs6Bhr2/X
X-Google-Smtp-Source: APXvYqwLnm8ZWgco6AvNyOSQTTaYimGi7aF9mQhbEFhn4oFvft6Cb2wnkGLtkrsLqx05v2yNPHNkYQ==
X-Received: by 2002:a62:7681:: with SMTP id r123mr2518129pfc.169.1582864750963; 
 Thu, 27 Feb 2020 20:39:10 -0800 (PST)
Received: from localhost.localdomain ([240e:379:962:6595:7b84:9990:1a82:371c])
 by smtp.gmail.com with ESMTPSA id
 196sm9069047pfy.86.2020.02.27.20.38.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 20:39:10 -0800 (PST)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-mediatek@lists.infradead.org, linux-spi@vger.kernel.org,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v2 3/4] dt-bindings: convert mtk-quadspi binding doc for
 spi-mtk-nor
Date: Fri, 28 Feb 2020 12:36:35 +0800
Message-Id: <20200228043636.559915-4-gch981213@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200228043636.559915-1-gch981213@gmail.com>
References: <20200228043636.559915-1-gch981213@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_203921_459561_F7743323 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Mark Brown <broonie@kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Chuanhong Guo <gch981213@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
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
Change since v1:
 none

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
