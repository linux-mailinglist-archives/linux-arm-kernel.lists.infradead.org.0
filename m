Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D043E1DB41D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 14:49:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B8d6Q91y1m31e0f9DRmMfjPjnm1d1ct8XbRvFxHkjGs=; b=Q6a5ahkj3QGAHN
	YRYX83u1z0DTb7DA7SbBaVP6IIL+aQwSNoevFd43yxyUOaIKzMzJQcIs0Mou3hZtAMvXuYdmPhRgA
	XqVUcHwo6eIU26UCSRnKPCfQb4b6DyHDH9ZeVVS9j4t4o88zNXVTFL3wbRpq6jjEx0+d775a7prEe
	wWZ1mMiyUXwlE7F6oRec9X1FPU5dGTSMnsYg2Ls52gT99jX1N6ulysPddRDASeqEgYG/91+mGfzGr
	W+WtB3aB3xEmRx2ZonBczjodE+TXXTQDxrMihDAjlhuJ+Jhz8OlEkdHWsrSCxhbVPfH+11uoQADOJ
	uxBbf5n238ObcGFvGEHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbOA7-0008WD-2l; Wed, 20 May 2020 12:49:31 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbO6e-00060n-3s
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 12:46:01 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04KCjlbs118861;
 Wed, 20 May 2020 07:45:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589978747;
 bh=ph+NrraTtxt19VvSc6u34tyYmVQvA+JzwETiqzuB5xI=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=xSF5SwwByE84exuEhhAsyRKN7KUhbvHrCnSvsj0Jc2UHD8Xz//7QN6HzazAUGMxdw
 kgAIgcrvN27Kgvuqy7O6S5eHArqHRPnh4bTFHAKQhBPHigRajF9oKfRsrMOz+EuLN1
 YOARCcGTXwe5Y899uh00cUZrP6ggCfqn8AA2DdYE=
Received: from DFLE110.ent.ti.com (dfle110.ent.ti.com [10.64.6.31])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04KCjl7b050595;
 Wed, 20 May 2020 07:45:47 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 20
 May 2020 07:45:47 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 20 May 2020 07:45:47 -0500
Received: from lokesh-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04KCiuvW026764;
 Wed, 20 May 2020 07:45:43 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 12/12] arm64: dts: k3-am65: Update the RM resource types
Date: Wed, 20 May 2020 18:14:54 +0530
Message-ID: <20200520124454.10532-13-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200520124454.10532-1-lokeshvutla@ti.com>
References: <20200520124454.10532-1-lokeshvutla@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_054556_287472_85C4BD82 
X-CRM114-Status: GOOD (  12.02  )
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

Update the ringacc and udma dt nodes to use the latest RM resource types
similar to the ones used in k3-j721e dt nodes.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 12 ++++++------
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi  | 12 ++++++------
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index 84fe71db7023..a3fb5c62d3bc 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -544,7 +544,7 @@
 				<0x0 0x33000000 0x0 0x40000>;
 			reg-names = "rt", "fifos", "proxy_gcfg", "proxy_target";
 			ti,num-rings = <818>;
-			ti,sci-rm-range-gp-rings = <0x2>; /* GP ring range */
+			ti,sci-rm-range-gp-rings = <0x1>; /* GP ring range */
 			ti,dma-ring-reset-quirk;
 			ti,sci = <&dmsc>;
 			ti,sci-dev-id = <187>;
@@ -564,11 +564,11 @@
 			ti,sci-dev-id = <188>;
 			ti,ringacc = <&ringacc>;
 
-			ti,sci-rm-range-tchan = <0x1>, /* TX_HCHAN */
-						<0x2>; /* TX_CHAN */
-			ti,sci-rm-range-rchan = <0x4>, /* RX_HCHAN */
-						<0x5>; /* RX_CHAN */
-			ti,sci-rm-range-rflow = <0x6>; /* GP RFLOW */
+			ti,sci-rm-range-tchan = <0xf>, /* TX_HCHAN */
+						<0xd>; /* TX_CHAN */
+			ti,sci-rm-range-rchan = <0xb>, /* RX_HCHAN */
+						<0xa>; /* RX_CHAN */
+			ti,sci-rm-range-rflow = <0x0>; /* GP RFLOW */
 		};
 	};
 
diff --git a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
index 353d1e2532a7..adc7e19194fc 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
@@ -134,7 +134,7 @@
 				<0x0 0x2a500000 0x0 0x40000>;
 			reg-names = "rt", "fifos", "proxy_gcfg", "proxy_target";
 			ti,num-rings = <286>;
-			ti,sci-rm-range-gp-rings = <0x2>; /* GP ring range */
+			ti,sci-rm-range-gp-rings = <0x1>; /* GP ring range */
 			ti,dma-ring-reset-quirk;
 			ti,sci = <&dmsc>;
 			ti,sci-dev-id = <195>;
@@ -154,11 +154,11 @@
 			ti,sci-dev-id = <194>;
 			ti,ringacc = <&mcu_ringacc>;
 
-			ti,sci-rm-range-tchan = <0x1>, /* TX_HCHAN */
-						<0x2>; /* TX_CHAN */
-			ti,sci-rm-range-rchan = <0x3>, /* RX_HCHAN */
-						<0x4>; /* RX_CHAN */
-			ti,sci-rm-range-rflow = <0x5>; /* GP RFLOW */
+			ti,sci-rm-range-tchan = <0xf>, /* TX_HCHAN */
+						<0xd>; /* TX_CHAN */
+			ti,sci-rm-range-rchan = <0xb>, /* RX_HCHAN */
+						<0xa>; /* RX_CHAN */
+			ti,sci-rm-range-rflow = <0x0>; /* GP RFLOW */
 		};
 	};
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
