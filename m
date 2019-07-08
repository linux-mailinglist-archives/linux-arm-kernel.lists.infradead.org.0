Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D379619B8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 05:56:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uyp8enzwFLdErzfRAY+J/uIYJu4gxboH4IObZRfbfqw=; b=At1RoXQ8qNCGMv
	R4utX6YzpcpZ/YKei4oiNsNjx9oln4+aBq5fKaDNjaj5x939IMsry2T/t/sSH17HTgC6DD9lSt5U6
	i0Qo9gt7CAeYJGlXfS890fYk0iQQm/ABjm1AzgOlZCL3FeW6a16u7RDdOFtjhNpr7lqQX8t+9YtRp
	0zrqmIlahK1pVZOwtW4n8Rzb6/JGOEVNW7CQ9BrpdV1VH8tlzU5W5y/9bWEFR1kPIX4pEoJW454oL
	COgBDE6UaWkplZxCwVESmdStS0DWGZm3CbD3P9mkZgO30trUAZqeBojwVcq+fitUK87DvrGv0bKIC
	g1WIs9hLQaVymfKjX1fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkKl5-0002mT-Ps; Mon, 08 Jul 2019 03:56:07 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkKix-0008V4-LK
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 03:53:57 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x683qkKH073380;
 Sun, 7 Jul 2019 22:52:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1562557966;
 bh=EcFLJFC2+wvayMjqstbhNZltmYBb5S5lX7Fn2k8pbl0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=mTMxLCa/fwW2j/kg1ssLNIzmpF7ibPiqLDHvf4TWz8rRFUGFABerB8tIfkNEWbCx3
 D11kqcIy0uucnGLzcW8O7/at4tj5/xinfYjz7hv9Qc/GjhhHv9Y33Bi6vGtK6rvhuV
 UXkyTwvcD+1qWUV/HaIFOZStDT7xOFW/Pn7R/P+E=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x683qkfh016576
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sun, 7 Jul 2019 22:52:46 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Sun, 7 Jul
 2019 22:52:45 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Sun, 7 Jul 2019 22:52:45 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x683qjDX026300;
 Sun, 7 Jul 2019 22:52:45 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x683qjm26433; 
 Sun, 7 Jul 2019 22:52:45 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Marc Zyngier <marc.zyngier@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>
Subject: [PATCH 1/6] dt-bindings: irqchip: Add PRUSS interrupt controller
 bindings
Date: Sun, 7 Jul 2019 22:52:38 -0500
Message-ID: <20190708035243.12170-2-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190708035243.12170-1-s-anna@ti.com>
References: <20190708035243.12170-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_205355_802562_F23CF844 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 David Lechner <david@lechnology.com>, Tony Lindgren <tony@atomide.com>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 "Andrew F. Davis" <afd@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
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
and hardware prioritization. These events are mapped onto 10 interrupt
lines through two levels of many-to-one mapping support. Different
interrupt lines are routed to the individual PRU cores or to the
host CPU or to other PRUSS instances.

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
---
Prior version: https://patchwork.kernel.org/patch/10795771/

 .../interrupt-controller/ti,pruss-intc.txt    | 92 +++++++++++++++++++
 1 file changed, 92 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.txt

diff --git a/Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.txt b/Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.txt
new file mode 100644
index 000000000000..020073c07a92
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.txt
@@ -0,0 +1,92 @@
+PRU ICSS INTC on TI SoCs
+========================
+
+Each PRUSS has a single interrupt controller instance that is common to both
+the PRU cores. Most interrupt controllers can route 64 input events which are
+then mapped to 10 possible output interrupts through two levels of mapping.
+The input events can be triggered by either the PRUs and/or various other
+PRUSS internal and external peripherals. The first 2 output interrupts are
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
+                         interrupt specifier for the particular SoC's ARM GIC
+                         parent interrupt controller. A shared interrupt can
+                         be skipped if the desired destination and usage is by
+                         a different processor/device.
+- interrupt-names      : should use one of the following names for each valid
+                         interrupt connected to ARM GIC, the name should match
+                         the corresponding host interrupt number,
+                             "host0", "host1", "host2", "host3", "host4",
+                             "host5", "host6" or "host7"
+- interrupt-controller : mark this node as an interrupt controller
+- #interrupt-cells     : should be 1. Client users shall use the PRU System
+                         event number (the interrupt source that the client
+                         is interested in) as the value of the interrupts
+                         property in their node
+
+Optional Properties:
+--------------------
+The following properties are _required_ only for some SoCs. If none of the below
+properties are defined, it implies that all the host interrupts 2 through 9 are
+connected exclusively to the ARM GIC.
+
+- ti,irqs-reserved     : an array of 8-bit elements of host interrupts between
+                         0 and 7 (corresponding to PRUSS INTC output interrupts
+                         2 through 9) that are not connected to the ARM GIC.
+                           Eg: AM437x and 66AK2G SoCs do not have "host5"
+                               interrupt connected to MPU
+- ti,irqs-shared       : an array of 8-bit elements of host interrupts between
+                         0 and 7 (corresponding to PRUSS INTC output interrupts
+                         2 through 9) that are also connected to other devices
+                         or processors in the SoC.
+                           Eg: AM65x and J721E SoCs have "host5", "host6" and
+                               "host7" interrupts connected to MPU, and other
+                               ICSSG instances
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
+		...
+
+		pruss_intc: interrupt-controller@20000 {
+			compatible = "ti,pruss-intc";
+			reg = <0x20000 0x2000>;
+			interrupts = <20 21 22 23 24 25 26 27>;
+			interrupt-names = "host0", "host1", "host2",
+					  "host3", "host4", "host5",
+					  "host6", "host7";
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
