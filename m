Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3BA217B8C0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 09:54:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5wo+bkaFSWH0M+zlQrE2SiPEp5S7GETVnjE4gTzZQH0=; b=jaox8xnm/EZxHh
	Q9KwGw1WPoUunYgtsHZT7swkeklOnjaZBbwaMrz/Jb4lLWDAtB0U50HPhiMdl1aizM9Hsq6hzwmtl
	46e+1bpv0N18yp4ZcrQt43fox6ax2z++pN/J/ISh59JTWc4Y0FNUiPv5nP8HtlI6eEXybPseVhQjf
	bnqOvCu1RfmA0x1beJp5PO0mcRhMdy6p0R89aky0EEgoZAayMmqVO4HHSwNYRFuffskp+JktpXEHc
	e95Wg0HhvEj6ze5JJ5KlmldO4/yPVhKkrVOrZ3XQV7NqpKhC246A0OG+26jmk/3tWhJs3rU4XVwvT
	i0s//emqKSc32JUXsKGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA8jw-00052r-OF; Fri, 06 Mar 2020 08:53:52 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA8iH-0003QF-Gg; Fri, 06 Mar 2020 08:52:11 +0000
Received: by mail-pl1-x643.google.com with SMTP id w3so597232plz.5;
 Fri, 06 Mar 2020 00:52:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nq881lgKOLIIpdSUyUsX80ryCzlcWplNblDWi6QrHjg=;
 b=NLl10i5AccNBdKIbIqt9pT8dMCuGSSYYS1LjbO1HjGQdwI8vKEKBO+mdXNc+uSSqS1
 fMwNRW7OznarQdPmMxyMIRupOhalSm9SpwPnxDIvT+2JfANmiiiTroAWHmPdyyt9szlq
 BwQO1H/6nwYj+ULyvsLiS2VAvJp6VB1Y70dvN0q7ttCf6BWK/x7niF4O8ohp0mTAjlh8
 k1R5sL5Py/P02wmsKtTepnVCinnVnODB2j4OeB/OUI5idLWfTLOSEngxzqxpSjO4QnAx
 9eQpVKJfBa/LgbQpntyEh7u2Qy8Fmu2wUxABiDcjUdOdsJDlJtUQJBZOeuG0Li1j6HR0
 zK7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nq881lgKOLIIpdSUyUsX80ryCzlcWplNblDWi6QrHjg=;
 b=qimoadEm4XToAchEQ3PDWtOTpEsnyHmbQjMxkzkR6RjMMd3L0EwHt+S2ue3LD1x0bb
 DVjQZBxv1UN4l76JT7jv/t53FtOmiEhC4H3aV1ue9DcVNvQvObZsp6Z8KrLTgTqDAlV8
 BESNUc8U13HInH0krCaRyrjP5rXZdngWAyxgYRpEj2Njn01VWNceACaaG7w0VUFKzieB
 WUH0n/BYUfsZQ8EEvOS2D8osDsdVvo+x7KeWKj36PH2Yx7cI4CPYxqkRy07Hmeb5Y6/e
 JM+ErTHxO/ICBZN/S8/JwuZIcoYVElm+DcwTXiyrJrP7SEo44UYVNZLVDgpgc+fNmfn2
 mYdA==
X-Gm-Message-State: ANhLgQ1r5ujqLSm/XLb22N8KAuOE4/4w9tHjSan9catWNvPfZuuW/7Si
 ZDzwQxNA9K9x69cMp11xcr6u2mbrCU214g==
X-Google-Smtp-Source: ADFU+vv+kojzyPXMVD6IMwmecLqebvvVDZoQGqL3IKEa5XIcftV7rogWjU8t9o5E5BSegtwRB+Xm0w==
X-Received: by 2002:a17:90a:5d97:: with SMTP id
 t23mr2571919pji.61.1583484728328; 
 Fri, 06 Mar 2020 00:52:08 -0800 (PST)
Received: from guoguo-omen.lan ([240e:379:94a:b53:8200:7767:6b7e:4da3])
 by smtp.gmail.com with ESMTPSA id s23sm8527334pjp.28.2020.03.06.00.52.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2020 00:52:07 -0800 (PST)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-mediatek@lists.infradead.org, linux-spi@vger.kernel.org,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v3 3/4] dt-bindings: convert mtk-quadspi binding doc for
 spi-mtk-nor
Date: Fri,  6 Mar 2020 16:50:51 +0800
Message-Id: <20200306085052.28258-4-gch981213@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200306085052.28258-1-gch981213@gmail.com>
References: <20200306085052.28258-1-gch981213@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_005209_665256_8A24CC9F 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
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
3. add a dummy interrupt binding in example.

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
Change since v2:
 revert binding example replacement and add a dummy irq binding

Change since v1:
 none

 .../{mtd/mtk-quadspi.txt => spi/spi-mtk-nor.txt}  | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)
 rename Documentation/devicetree/bindings/{mtd/mtk-quadspi.txt => spi/spi-mtk-nor.txt} (75%)

diff --git a/Documentation/devicetree/bindings/mtd/mtk-quadspi.txt b/Documentation/devicetree/bindings/spi/spi-mtk-nor.txt
similarity index 75%
rename from Documentation/devicetree/bindings/mtd/mtk-quadspi.txt
rename to Documentation/devicetree/bindings/spi/spi-mtk-nor.txt
index a12e3b5c495d..984ae7fd4f94 100644
--- a/Documentation/devicetree/bindings/mtd/mtk-quadspi.txt
+++ b/Documentation/devicetree/bindings/spi/spi-mtk-nor.txt
@@ -1,4 +1,4 @@
-* Serial NOR flash controller for MediaTek SoCs
+* Serial NOR flash controller for MediaTek ARM SoCs
 
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
@@ -22,20 +23,16 @@ Required properties:
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
 
 nor_flash: spi@1100d000 {
 	compatible = "mediatek,mt8173-nor";
 	reg = <0 0x1100d000 0 0xe0>;
+	interrupts = <&spi_flash_irq>;
 	clocks = <&pericfg CLK_PERI_SPI>,
 		 <&topckgen CLK_TOP_SPINFI_IFR_SEL>;
 	clock-names = "spi", "sf";
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
