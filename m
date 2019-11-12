Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD05F9284
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 15:30:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rQRIXTNBqn1/24siYbQF+THSOYG5aNolJpjMk/7XvaQ=; b=ifx/Z86SKx/VhI
	fxjAJboy4skN5N+wgY4XQgPhMy+mwCkmFgU0UmfWCpFKnuQ3BK/zmpEKJdWn2y2/tCLtj9fBk23vT
	DZaWtYHvDaXUXmxAj2pwhwHSLugSJfZ+MQpmfyIdyoPM143DGFwShv+U9R1CrY2CSBnAwVS9vofdZ
	ldTRt2wl/Fhg7F9XmIQNQxwEtHeM1qorFc/kaTNurZrRGUwqBBpHsWL2z3Y5dsKlvQ3oSRZ39/MS6
	oGY0LUURgiESJZtNYev0DGVCmd9XfWi1KT5/sgoRQnPGO003ddHv4X96ZX3VW6JC67u5xpXsiDAEI
	ol62NB8nml4JkhLnPXxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUXBH-0004kO-Tq; Tue, 12 Nov 2019 14:30:07 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUX7s-0001Zp-Ls
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 14:26:39 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xACEQY0B044790;
 Tue, 12 Nov 2019 08:26:34 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573568794;
 bh=xR1q4oJvoGA+wohzuEttJn191zD2w3UlwCSVL2BSxL8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=vBQYJ46HB861NLdLbUOscG2Y+P4xqMZ4sup5DV295k5dQmDaOzx0JfOmGaZdo4T4b
 aWr6FC0iBaYdopO9Td9hasEJXmKeRt0s2SMtoCqPwnnNhPlcku7UNgcd3XauthhRqZ
 qiPqiufh3PiuNtutq7IeELftCBUSIMZJlcFMsRoo=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xACEQYf2014428
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 12 Nov 2019 08:26:34 -0600
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 12
 Nov 2019 08:26:16 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 12 Nov 2019 08:26:16 -0600
Received: from uda0869644b.dal.design.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xACEQUtw040290;
 Tue, 12 Nov 2019 08:26:34 -0600
From: Benoit Parrot <bparrot@ti.com>
To: Tony Lindgren <tony@atomide.com>, Tero Kristo <t-kristo@ti.com>
Subject: [Patch v2 3/3] ARM: dts: am43x-epos-evm: Add VPFE and OV2659 entries
Date: Tue, 12 Nov 2019 08:29:29 -0600
Message-ID: <20191112142929.23058-4-bparrot@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191112142929.23058-1-bparrot@ti.com>
References: <20191112142929.23058-1-bparrot@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_062636_827384_28A0FC96 
X-CRM114-Status: GOOD (  14.47  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Benoit Parrot <bparrot@ti.com>, linux-omap@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add VPFE device nodes entries.
Add OmniVision OV2659 sensor device nodes and linkage.

Since Rev1.2a on this board the sensor source clock (xvclk) has a
dedicated 12Mhz oscillator instead of using clkout1.
Add 'audio_mstrclk' fixed clock object to represent it.

Signed-off-by: Benoit Parrot <bparrot@ti.com>
---
 arch/arm/boot/dts/am43x-epos-evm.dts | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/am43x-epos-evm.dts b/arch/arm/boot/dts/am43x-epos-evm.dts
index 95314121d111..b0df37014888 100644
--- a/arch/arm/boot/dts/am43x-epos-evm.dts
+++ b/arch/arm/boot/dts/am43x-epos-evm.dts
@@ -145,6 +145,12 @@
 			system-clock-frequency = <12000000>;
 		};
 	};
+
+	audio_mstrclk: clock {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <12000000>;
+	};
 };
 
 &am43xx_pinmux {
@@ -696,6 +702,21 @@
 		IOVDD-supply = <&dcdc4>; /* V3_3D -> DCDC4 */
 		DVDD-supply = <&ldo1>; /* V1_8AUD -> V1_8D -> LDO1 */
 	};
+
+	ov2659@30 {
+		compatible = "ovti,ov2659";
+		reg = <0x30>;
+
+		clocks = <&audio_mstrclk>;
+		clock-names = "xvclk";
+
+		port {
+			ov2659_1: endpoint {
+				remote-endpoint = <&vpfe1_ep>;
+				link-frequencies = /bits/ 64 <70000000>;
+			};
+		};
+	};
 };
 
 &i2c2 {
@@ -962,7 +983,7 @@
 
 	port {
 		vpfe1_ep: endpoint {
-			/* remote-endpoint = <&sensor>; add once we have it */
+			remote-endpoint = <&ov2659_1>;
 			ti,am437x-vpfe-interface = <0>;
 			bus-width = <8>;
 			hsync-active = <0>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
