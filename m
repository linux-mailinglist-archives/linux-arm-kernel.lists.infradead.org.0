Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A2B7D177
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 00:44:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K4AtkZv3fnfot30Tim6z3eH/A9++uq2LnPVA2c0JZ18=; b=GVFBcYv4VzU+6k
	a1nsvbLa9Vq5NeE6iKfVuEVuGCq7lNl/2pmL5BFQCn1i/+UoDREW+oY9AMnwUb7RVvV3J5q73MLIn
	VmeAhK+pXpW27c8/FNosZdr9mtN1F19Jg0ZIpi9YMbUVkH49Ij0kUOuMbRCXD4VzGyR+9KkXNhLtO
	lMdYUJ4io2rlzjikt2VvbPrZi6yMtXczPw/fOnadViuZT96+aIUCWWNlyHTUhhWtOJG5JeGdsE4NW
	Hn7OYUxNZdlZxzzRflyNJQzNSTHy/sRx/Lza7MaS2RY2dx2DEK68KvOEDl4HxqJqVWQUqULraN3bt
	uNk5ALqFFW0k0U6fQR1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsxKT-0004up-0c; Wed, 31 Jul 2019 22:44:17 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsxJy-0004Zw-Nu
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 22:43:49 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6VMgfeH026871;
 Wed, 31 Jul 2019 17:42:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1564612961;
 bh=9K/J0BXXkg1V7+TopOSDu0/Aqdt/mMj4ZSjiFenqJH4=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=XkRz1vAWQLHKKSJe/tZLpTEEwx6B7dBcPNNBunjhkK12rY9tPmW1BeaD6upeAmzt/
 kBMzRjpemMTmnjlDdhMmzbs7JLoJNY+NlLumCWUwAsmEN2I9Sq+0ElgKUANU0bB/XI
 ZaNeV7Gouyu4JuyWppthhUObCi0l/2fjflqicvvs=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6VMgfoN072378
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 31 Jul 2019 17:42:41 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 31
 Jul 2019 17:42:40 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 31 Jul 2019 17:42:40 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6VMgeVh072677;
 Wed, 31 Jul 2019 17:42:40 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x6VMgeZ25759; 
 Wed, 31 Jul 2019 17:42:40 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Jason
 Cooper <jason@lakedaemon.net>
Subject: [PATCH v2 1/6] dt-bindings: irqchip: Add PRUSS interrupt controller
 bindings
Date: Wed, 31 Jul 2019 17:41:44 -0500
Message-ID: <20190731224149.11153-2-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731224149.11153-1-s-anna@ti.com>
References: <20190731224149.11153-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_154346_906674_755E3136 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 David Lechner <david@lechnology.com>, Rob Herring <robh@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, "Andrew F. Davis" <afd@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Murali Karicheri <m-karicheri2@ti.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Programmable Real-Time Unit Subsystem (PRUSS) contains an interrupt
controller (INTC) that can handle various system input events and post
interrupts back to the device-level initiators. The INTC can support
upto 64 input events on most SoCs with individual control configuration
and hardware prioritization. These events are mapped onto 10 output
interrupt lines through two levels of many-to-one mapping support.
Different interrupt lines are routed to the individual PRU cores or
to the host CPU or to other PRUSS instances.

The K3 AM65x and J721E SoCs have the next generation of the PRU-ICSS IP,
commonly called ICSSG. The ICSSG interrupt controller on K3 SoCs provide
a higher number of host interrupts (20 vs 10) and can handle an increased
number of input events (160 vs 64) from various SoC interrupt sources.

Add the bindings document for these interrupt controllers on all the
applicable SoCs. It covers the OMAP architecture SoCs - AM33xx, AM437x
and AM57xx; the Keystone 2 architecture based 66AK2G SoC; the Davinci
architecture based OMAPL138 SoCs, and the K3 architecture based AM65x
and J721E SoCs.

Signed-off-by: Suman Anna <s-anna@ti.com>
Signed-off-by: Andrew F. Davis <afd@ti.com>
Signed-off-by: Roger Quadros <rogerq@ti.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
v2:
 - Updated the interrupt-names from "hostX" to "host_intrX" and updated
   example accordingly
 - Updated the description for interrupts property
 - Used generic interrupt controller in descriptions rather than GIC
 - Added some clarifications about interrupt names to PRUSS INTC output
   interrupts
 - Picked up Rob's reviewed-by
v1: https://patchwork.kernel.org/patch/11034567/

 .../interrupt-controller/ti,pruss-intc.txt    | 98 +++++++++++++++++++
 1 file changed, 98 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.txt

diff --git a/Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.txt b/Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.txt
new file mode 100644
index 000000000000..17c7b49a7f2e
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.txt
@@ -0,0 +1,98 @@
+PRU ICSS INTC on TI SoCs
+========================
+
+Each PRUSS has a single interrupt controller instance that is common to both
+the PRU cores. Most interrupt controllers can route 64 input events which are
+then mapped to 10 possible output interrupts through two levels of mapping.
+The input events can be triggered by either the PRUs and/or various other PRUSS
+internal and external peripherals. The first 2 output interrupts (0 & 1) are
+fed exclusively to the internal PRU cores, with the remaining 8 (2 through 9)
+connected to external interrupt controllers including the MPU and/or other
+PRUSS instances, DSPs or devices.
+
+The K3 family of SoCs can handle 160 input events that can be mapped to 20
+different possible output interrupts. The additional output interrupts (10
+through 19) are connected to new sub-modules within the ICSSG instances.
+
+This interrupt-controller node should be defined as a child node of the
+corresponding PRUSS node. The node should be named "interrupt-controller".
+Please see the overall PRUSS bindings document for additional details
+including a complete example,
+    Documentation/devicetree/bindings/soc/ti/ti,pruss.txt
+
+Required Properties:
+--------------------
+- compatible           : should be one of the following,
+                             "ti,pruss-intc" for OMAP-L13x/AM18x/DA850 SoCs,
+                                                 AM335x family of SoCs,
+                                                 AM437x family of SoCs,
+                                                 AM57xx family of SoCs
+                                                 66AK2G family of SoCs
+                             "ti,icssg-intc" for K3 AM65x & J721E family of SoCs
+- reg                  : base address and size for the PRUSS INTC sub-module
+- interrupts           : all the interrupts generated towards the main host
+                         processor in the SoC. The format depends on the
+                         interrupt specifier for the particular SoC's Arm
+                         parent interrupt controller. A shared interrupt can
+                         be skipped if the desired destination and usage is by
+                         a different processor/device.
+- interrupt-names      : should use one of the following names for each valid
+                         host event interrupt connected to Arm interrupt
+                         controller, the name should match the corresponding
+                         host event interrupt number,
+                             "host_intr0", "host_intr1", "host_intr2",
+                             "host_intr3", "host_intr4", "host_intr5",
+                             "host_intr6" or "host_intr7"
+- interrupt-controller : mark this node as an interrupt controller
+- #interrupt-cells     : should be 1. Client users shall use the PRU System
+                         event number (the interrupt source that the client
+                         is interested in) as the value of the interrupts
+                         property in their node
+
+Optional Properties:
+--------------------
+The following properties are _required_ only for some SoCs. If none of the below
+properties are defined, it implies that all the PRUSS INTC output interrupts 2
+through 9 (host_intr0 through host_intr7) are connected exclusively to the
+Arm interrupt controller.
+
+- ti,irqs-reserved     : an array of 8-bit elements of host interrupts between
+                         0 and 7 (corresponding to PRUSS INTC output interrupts
+                         2 through 9) that are not connected to the Arm
+                         interrupt controller.
+                           Eg: AM437x and 66AK2G SoCs do not have "host_intr5"
+                               interrupt connected to MPU
+- ti,irqs-shared       : an array of 8-bit elements of host interrupts between
+                         0 and 7 (corresponding to PRUSS INTC output interrupts
+                         2 through 9) that are also connected to other devices
+                         or processors in the SoC.
+                           Eg: AM65x and J721E SoCs have "host_intr5",
+                               "host_intr6" and "host_intr7" interrupts
+                               connected to MPU, and other ICSSG instances
+
+
+Example:
+--------
+
+1.	/* AM33xx PRU-ICSS */
+	pruss: pruss@0 {
+		compatible = "ti,am3356-pruss";
+		reg = <0x0 0x80000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+		...
+
+		pruss_intc: interrupt-controller@20000 {
+			compatible = "ti,pruss-intc";
+			reg = <0x20000 0x2000>;
+			interrupts = <20 21 22 23 24 25 26 27>;
+			interrupt-names = "host_intr0", "host_intr1",
+					  "host_intr2", "host_intr3",
+					  "host_intr4", "host_intr5",
+					  "host_intr6", "host_intr7";
+			interrupt-controller;
+			#interrupt-cells = <1>;
+			ti,irqs-shared = /bits/ 8 <0 6 7>;
+		};
+	};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
