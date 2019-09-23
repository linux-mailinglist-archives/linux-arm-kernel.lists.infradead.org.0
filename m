Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB89BAD3F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 06:26:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ckFi8GrdrXULr3deKgdKjRRe31MjX83QKauOil98zSE=; b=c0lA7IMrwrasjq
	UaXUNDj2mCM0fQ/14RwGr4FmlSmgR/kGUpeflYE/PcGuDlKmdzI1DdMh1Pyfhyp/rUgrBR9uLq2MF
	FdsVJ5fLlqWYXFFdbSjHHtl2HXnEGh/l0L8jq2ekG5LgVzY/VVWLcn8WxRATX83CqYbdBbX8fe6N3
	RzEQbBtw0Rlqt0N8S6ksiM0IdHRtaWwOy/SFQwo4yuc2CQ8rAZPQ4RD7/G2XCOCauK5EqRSLnhwF/
	wkbe5tLrrcMYx2Zr/cXJokDMoavln/McZ2+ulRkj/YXO+Le350xJMWFFwlu1aeg1HcFAzMrWFSBaI
	dXLzG2Qje0RTHbBoOYzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCFvk-0001XY-HT; Mon, 23 Sep 2019 04:26:32 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCFuE-00006Z-Ae
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 04:25:00 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8N4OuX7083950;
 Sun, 22 Sep 2019 23:24:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1569212696;
 bh=XF/Pqm4FRebAJMnNt1sRQ2zo0I96eNBt6KSCzvUBCLs=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=vINgM0AuO/RO2NSt8zKeRi91VFKmh++S4UtH7XjqGNcM9zWg/LCkrFr3W5r+vjwo0
 3NnBb329YFwtT4ME6k+4cDTtQOrwEwjBycBhPkyNdbXf574EipGMATIE5ML+UF87eB
 f5qRYavdMXZWdj+Fk2YSB+sYhqj92Z91ZtZC2dbU=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8N4Ouln067432
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sun, 22 Sep 2019 23:24:56 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Sun, 22
 Sep 2019 23:24:56 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Sun, 22 Sep 2019 23:24:56 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8N4OqE0094081;
 Sun, 22 Sep 2019 23:24:55 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Marc Zyngier <maz@kernel.org>
Subject: [RFC PATCH 1/2] dt-bindings: irqchip: Update bindings to drop the
 usage of gic as parent
Date: Mon, 23 Sep 2019 09:54:04 +0530
Message-ID: <20190923042405.26064-2-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190923042405.26064-1-lokeshvutla@ti.com>
References: <20190923042405.26064-1-lokeshvutla@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_212458_692811_2BF3EE0B 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nishanth Menon <nm@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Drop the firmware related dt-bindings and use the hardware specified
interrupt numbers within Interrupt Router. This ensures interrupt router
DT node need not assume any interrupt parent type.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 .../interrupt-controller/ti,sci-intr.txt      | 28 +++++++++----------
 1 file changed, 13 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
index 1a8718f8855d..de5de2a4b467 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
+++ b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.txt
@@ -44,15 +44,14 @@ Required Properties:
 			4: If intr supports level triggered interrupts.
 - interrupt-controller:	Identifies the node as an interrupt controller
 - #interrupt-cells:	Specifies the number of cells needed to encode an
-			interrupt source. The value should be 2.
-			First cell should contain the TISCI device ID of source
-			Second cell should contain the interrupt source offset
-			within the device.
+			interrupt source. The value should be 1.
+			First cell should contain interrupt router input number
+			as specified by hardware.
+- power-domains:	phandle pointing to the corresponding PM domain node
+			and an ID representing the device.
 - ti,sci:		Phandle to TI-SCI compatible System controller node.
-- ti,sci-dst-id:	TISCI device ID of the destination IRQ controller.
-- ti,sci-rm-range-girq:	Array of TISCI subtype ids representing the host irqs
-			assigned to this interrupt router. Each subtype id
-			corresponds to a range of host irqs.
+- interrupt-ranges:	Ranges that convert the INTR output interrupt numbers to
+			parent's interrupt number.
 
 For more details on TISCI IRQ resource management refer:
 http://downloads.ti.com/tisci/esd/latest/2_tisci_msgs/rm/rm_irq.html
@@ -62,21 +61,20 @@ Example:
 The following example demonstrates both interrupt router node and the consumer
 node(main gpio) on the AM654 SoC:
 
-main_intr: interrupt-controller0 {
+main_gpio_intr: interrupt-controller0 {
 	compatible = "ti,sci-intr";
 	ti,intr-trigger-type = <1>;
 	interrupt-controller;
 	interrupt-parent = <&gic500>;
-	#interrupt-cells = <2>;
+	power-domains = <&k3_pds 131 TI_SCI_PD_SHARED>;
+	#interrupt-cells = <1>;
 	ti,sci = <&dmsc>;
-	ti,sci-dst-id = <56>;
-	ti,sci-rm-range-girq = <0x1>;
+	interrupt-ranges = <0 360 32>;
 };
 
 main_gpio0: gpio@600000 {
 	...
-	interrupt-parent = <&main_intr>;
-	interrupts = <57 256>, <57 257>, <57 258>,
-		     <57 259>, <57 260>, <57 261>;
+	interrupt-parent = <&main_gpio_intr>;
+	interrupts = <192>, <193>, <194>, <195>, <196>, <197>;
 	...
 };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
