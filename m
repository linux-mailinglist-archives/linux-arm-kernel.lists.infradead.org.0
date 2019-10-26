Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3244EE5FA6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 22:49:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUPg8EF3NV9CWyxGFVeoY6PYGP2VizUhl+DbsDI5AkI=; b=PQ3MAoFAW+iiqx
	ncHbvuX0fVYDtMKIcs+FBKMRRo6ntDL7o8XubuQo2GgsOInNTj8HDH4UvorZNhez6NOR8fY+PPQsz
	pgrdgCvDT9e1t4XwbOlHzMhhxaS4QSgFoC1tYv9X8i31MH+P6wnTrgoR0qWOwsAOpI2qEJz4LwgUP
	pADT8Nnx8sIXNJxVUnT3ivC4GNcntoqvtGJwvXq97G4VO9VQ/BD/ETfLQwHRt1wLOZXICfa4DTNN9
	lzz8hd4WURrCuSakINhDsZie8UssvoZ87LxBSjVn0zrx57GVz913SrYNnecPP8hGCq73yie+LeC2w
	znrK9lS8s8R2y3KWTB4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOSze-0001YC-LO; Sat, 26 Oct 2019 20:49:02 +0000
Received: from vault.bonstra.fr.eu.org ([51.158.68.104])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOSzT-0001WH-3E
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 20:48:52 +0000
Received: from val.bonstra.fr.eu.org (unknown [192.168.128.2])
 by vault.bonstra.fr.eu.org (Postfix) with ESMTP id ECC5ABFCD6;
 Sat, 26 Oct 2019 20:41:47 +0000 (UTC)
Received: from bonstra.fr.eu.org (vlad.gr1 [IPv6:fd7b:45cc:aa3d::3])
 by val.bonstra.fr.eu.org (Postfix) with ESMTPSA id 5BE6A60871;
 Sat, 26 Oct 2019 22:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=bonstra.fr.eu.org;
 s=dkim1; t=1572122506; x=1573332106;
 bh=okg4/RrUrpM90N+gfPD7IrHzDsoXwkD6ueG/FO07g5A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=EINBN9ZXwqVpF8rJ4xUkRTL+V6CcIsjhqtGGqA0BVj0WCHC01c1g1TVMK6yqER+Zl
 8df8LXfT7Cwhad1qdS7a8AHFEBn6URJShul2OfmCNtDLGCijNrx5PMTLCcTJzyWgTC
 rD1oyfPbA0NzVzWQXil644pDfH7qovDqFZ2xUXsSVamCUUctqXsRsC+cTjyOHBc/l9
 7aOWW4BGZN5/6QMiilHChXRHH8uAtQn62ESTsljHaZbhoG2za6jqTjNt9bcDl5uq4n
 5b8N/5zH99h+gRLpbrD3vGdBSnGjrD4e6EvV/aYi3+ASN+nKN7TEPmdrWHFEWTlw3W
 8sR6pdgHqPong==
From: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 1/3] dt-bindings: net: bluetooth: add DT binding for rtl8723bs
Date: Sat, 26 Oct 2019 22:41:14 +0200
Message-Id: <20191026204116.95119-2-bonstra@bonstra.fr.eu.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191026204116.95119-1-bonstra@bonstra.fr.eu.org>
References: <20191026204116.95119-1-bonstra@bonstra.fr.eu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_134851_282176_416BC7F2 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>,
 linux-arm-kernel@lists.infradead.org, linux-bluetooth@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The rtl_bt driver already supports rtl8723bs devices on ACPI platforms.
This commit adds bindings for DT-only platforms.

Signed-off-by: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
---
 .../bindings/net/realtek,rtl8723bs-bt.txt     | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.txt

diff --git a/Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.txt b/Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.txt
new file mode 100644
index 000000000000..16b5cf799103
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.txt
@@ -0,0 +1,25 @@
+Realtek rtl8723bs Bluetooth controller
+======================================
+
+This documents the binding structure and properties for the serial
+attached rtl8723bs Bluetooth controller.
+
+Required properties:
+- compatible: must be "realtek,rt8723bs-bt"
+
+Optional properties:
+- enable-gpio: gpio line controlling the power down (BT_DIS#) signal
+- device-wake: gpio line controlling the device wakeup (BT_WAKE) signal
+- realtek,config-name: postfix added to the name of the firmware file
+  containing the chip configuration
+
+Example:
+
+&uart1 {
+	bluetooth {
+		compatible = "realtek,rtl8723bs-bt";
+		enable-gpio = <&r_pio 0 4 GPIO_ACTIVE_HIGH>; /* PL4 */
+		device-wake-gpio = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
+		realtek,config-name = "olimex_a64_teres_i";
+	};
+};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
