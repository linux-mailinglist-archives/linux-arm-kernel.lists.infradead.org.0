Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D948A1DB416
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 14:48:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=20N6mHhT5hiVCVca+myFsA2tePQVljoGMBqCD2OM6dw=; b=fg4kW+w7SF+fog
	b5nbvOwYoFHpdlMyj4KKOXG0AGxRbdX16kSXLcW32rrKADeuC7OCE6ArO2F0KjLMyYdiwQq4Q6P81
	rV2n7luW1We7KUBFaDtjLubO4ptwwqUvmNBgBwGk/LVt2xzdLF9o6KNOfx0OQpjVIL/JAVsS9A8b/
	YwWWM6QZceB3CnHA3RqOmK2B+eTnt+nTWmDb89hsGIGrWr/HwPChqGkdLPNNReqWe9Wdlw3EJQ1ct
	s7vIEphvmDOXEncdfVLalo6WBaVZajtbPEmV3InbuNY+JNAs0iUNqtC5mvNsZDS2liIgu6S+DYIU+
	fgge2mfcasTb3jBkQXng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbO8e-0007N4-Pz; Wed, 20 May 2020 12:48:00 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbO6K-0005jL-M1
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 12:45:42 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04KCjRXk118761;
 Wed, 20 May 2020 07:45:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589978728;
 bh=IcP5VbLlGy8fVSZstLhchJxvgH8Y6DoVDDnUKRkJxro=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=HOfRPl1oQ+u14otoqG+6AqhXLjChF2J8m7L139gF3EN8Xf37LHKr9A5dbMjQlv8f3
 oTH3VcgSw4hS8ryUISc+axPhxj8Djstz6WAiRiGn3xjfJFPsZ72RPwkEwN1hhnID9g
 Nev4rzPfvftDnXRwYSAtIP/onLQZ/cTXkEF7D1oI=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04KCjRE2001565
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 20 May 2020 07:45:27 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 20
 May 2020 07:45:27 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 20 May 2020 07:45:27 -0500
Received: from lokesh-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04KCiuvR026764;
 Wed, 20 May 2020 07:45:24 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 07/12] dt-bindings: irqchip: ti,
 sci-inta: Update docs to support different parent.
Date: Wed, 20 May 2020 18:14:49 +0530
Message-ID: <20200520124454.10532-8-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200520124454.10532-1-lokeshvutla@ti.com>
References: <20200520124454.10532-1-lokeshvutla@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_054536_803760_25CE009A 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nishanth Menon <nm@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 Tero Kristo <t-kristo@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Drop the firmware related interrupt ranges and use the hardware specified
interrupt numbers within Interrupt Aggregator. This ensures interrupt
aggregator DT node need not assume any interrupt parent type.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 .../interrupt-controller/ti,sci-inta.txt       | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-inta.txt b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-inta.txt
index 7841cb099e13..b14abec580a2 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-inta.txt
+++ b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-inta.txt
@@ -43,13 +43,14 @@ TISCI Interrupt Aggregator Node:
 - msi-controller:	Identifies the node as an MSI controller.
 - interrupt-parent:	phandle of irq parent.
 - ti,sci:		Phandle to TI-SCI compatible System controller node.
-- ti,sci-dev-id:	TISCI device ID of the Interrupt Aggregator.
-- ti,sci-rm-range-vint:	Array of TISCI subtype ids representing vints(inta
-			outputs) range within this INTA, assigned to the
-			requesting host context.
-- ti,sci-rm-range-global-event:	Array of TISCI subtype ids representing the
-			global events range reaching this IA and are assigned
-			to the requesting host context.
+- ti,sci-dev-id:	TISCI device id of interrupt controller.
+- ti,interrupt-ranges:	Set of triplets containing ranges that convert
+			the INTA output interrupt numbers to parent's
+			interrupt number. Each triplet has following entries:
+			- First entry specifies the base for vint
+			- Second entry specifies the base for parent irqs
+			- Third entry specifies the limit
+
 
 Example:
 --------
@@ -61,6 +62,5 @@ main_udmass_inta: interrupt-controller@33d00000 {
 	interrupt-parent = <&main_navss_intr>;
 	ti,sci = <&dmsc>;
 	ti,sci-dev-id = <179>;
-	ti,sci-rm-range-vint = <0x0>;
-	ti,sci-rm-range-global-event = <0x1>;
+	interrupt-ranges = <0 0 256>;
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
