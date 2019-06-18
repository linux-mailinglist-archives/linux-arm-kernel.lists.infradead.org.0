Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2479149D47
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 11:31:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=orPINR60xM7EOClnJJY8OQ4kXfYHpM+AWzlkf1h35r8=; b=l6tXjPx4iEKgDN
	LjfWu+nmgjRrkWWciEacnjJmp2+oMs5d0MqMgwBFXYkztJiEGkDOxJi6DrD2YLNtIcJWSODPFjuuF
	GKyj64FMx7oDjfSjPB1P4XpJvzYSc/zZu0UK3+LU3eMA/QF24aZpIxJQaEv0ubdlYtSrNBQnyKPGM
	NbnkVPy1ZYZyxy5pS+vgZzsVWdHNjgdaDNFjHokKxLBQoabPHeLao9SxOKgZNaWzUd4UsSZ3fHDb5
	jSOvPxV0L2+0mJabH28QlOMIauS0iKcQhN4Fa+gcDzIKmWKt00zDyDjFgOu3Vp4cqWMk8JLtAB8OC
	sCp2GtlTAMFj0lQNvxAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdASM-0001ou-9g; Tue, 18 Jun 2019 09:31:10 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAQ9-0006Yc-IZ; Tue, 18 Jun 2019 09:28:57 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5I9SgaB040832;
 Tue, 18 Jun 2019 04:28:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560850122;
 bh=2TkX47PpEr2O84IMWZfOIOxTLKerptBo+sgP1esA6ak=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=VfaIcfZJcJfptwPq4CbiVRhYx3iEyyas55IjW3aj9O7xmoWbS49SepwPabq7rAiAf
 eqVKnnmlBA5FisA6XkIWMl2k+OCTPDkLxjjHlpb5xvUdrySG1f9djfZZ4nzgIMFrJz
 +gCaVcPK/LE2ZoQIeBgKqRISpOKWr7zrpgjGfV50=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5I9SgNt075159
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 18 Jun 2019 04:28:42 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 18
 Jun 2019 04:28:42 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 18 Jun 2019 04:28:42 -0500
Received: from a0132425.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5I9SJS1067156;
 Tue, 18 Jun 2019 04:28:38 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, David Woodhouse
 <dwmw2@infradead.org>, Brian Norris <computersforpeace@gmail.com>, Boris
 Brezillon <bbrezillon@kernel.org>, Marek Vasut <marek.vasut@gmail.com>,
 Richard Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 4/5] dt-bindings: mtd: Add bindings for TI's AM654 HyperBus
 memory controller
Date: Tue, 18 Jun 2019 14:59:00 +0530
Message-ID: <20190618092901.31764-5-vigneshr@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190618092901.31764-1-vigneshr@ti.com>
References: <20190618092901.31764-1-vigneshr@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_022853_956942_E7411965 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, linux-kernel@vger.kernel.org,
 Joakim Tjernlund <Joakim.Tjernlund@infinera.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add binding documentation for TI's HyperBus memory controller present on
AM654 SoC.

Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
---
v6:
Use generic names for bindings

 .../devicetree/bindings/mtd/ti,am654-hbmc.txt | 51 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 52 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt

diff --git a/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt b/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
new file mode 100644
index 000000000000..c06038c136d8
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
@@ -0,0 +1,51 @@
+Bindings for HyperBus Memory Controller (HBMC) on TI's K3 family of SoCs
+
+Required properties:
+- compatible : "ti,am654-hbmc" for AM654 SoC
+- reg : Two entries:
+	First entry pointed to the register space of HBMC controller
+	Second entry pointing to the memory map region dedicated for
+	MMIO access to attached flash devices
+- ranges : Address translation from offset within CS to allocated MMIO
+	   space in SoC
+
+Optional properties:
+- mux-controls : phandle to the multiplexer that controls selection of
+		 HBMC vs OSPI inside Flash SubSystem (FSS). Default is OSPI,
+		 if property is absent.
+		 See Documentation/devicetree/bindings/mux/reg-mux.txt
+		 for mmio-mux binding details
+
+Example:
+
+	fss: system-controller@47000000 {
+		compatible = "syscon", "simple-mfd";
+		reg = <0x0 0x47000000 0x0 0x100>;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		hbmc_mux: multiplexer {
+			compatible = "mmio-mux";
+			#mux-control-cells = <1>;
+			mux-reg-masks = <0x4 0x2>; /* 0: reg 0x4, bit 1 */
+		};
+
+		hbmc: hyperbus@47034000 {
+			compatible = "ti,am654-hbmc";
+			reg = <0x0 0x47034000 0x0 0x100>,
+				<0x5 0x00000000 0x1 0x0000000>;
+			power-domains = <&k3_pds 55>;
+			#address-cells = <2>;
+			#size-cells = <1>;
+			ranges = <0x0 0x0 0x5 0x00000000 0x4000000>, /* CS0 - 64MB */
+				 <0x1 0x0 0x5 0x04000000 0x4000000>; /* CS1 - 64MB */
+			mux-controls = <&hbmc_mux 0>;
+
+			/* Slave flash node */
+			flash@0,0 {
+				compatible = "cypress,hyperflash", "cfi-flash";
+				reg = <0x0 0x0 0x4000000>;
+			};
+		};
+	};
diff --git a/MAINTAINERS b/MAINTAINERS
index 58c6ad3dae66..0d5a8c36682d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7359,6 +7359,7 @@ S:	Supported
 F:	drivers/mtd/hyperbus/
 F:	include/linux/mtd/hyperbus.h
 F:	Documentation/devicetree/bindings/mtd/cypress,hyperflash.txt
+F:	Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
 
 HYPERVISOR VIRTUAL CONSOLE DRIVER
 L:	linuxppc-dev@lists.ozlabs.org
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
