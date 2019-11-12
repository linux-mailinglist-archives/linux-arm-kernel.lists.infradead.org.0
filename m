Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73870F927E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 15:30:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pWY3eCS8Wsya2hVIKZ92cKTzVMRcFiFG7NT+B2/eAAA=; b=qh+K5t1PUPn5u5
	9xUOX99BKbaZIKsKFrvNgdfE8gTUMGBLSj1m4LXHup/+wtzOl1vlMwJdNMr/73QCEOfGqt3p5PHw5
	nBgTNaj5v4kaQ2iM9vIGbieAr73ln8SeaLZ3gceGtRlIgOeOhddIj8A0s3K/h57M7XSJLfRHIKX9V
	YxqrNp4epDdAzTFSeFRNKUbLQKgCi15pkZtCeUXGJkqDSFURgnDVoCGP7oTZMPjAPC6zsebwKZYPR
	QT/eLBwULq6nLCk/lWmsX5J+1xrSZFM56v2KcrCgtc6LldMdVQkKkSgmDrDDWOM6+WAjluBMjdG/9
	k4sppjIeSlrDcg+nPHwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUXAz-0004SL-Gy; Tue, 12 Nov 2019 14:29:49 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUX7r-0001Yi-BQ
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 14:26:37 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xACEQXhu013418;
 Tue, 12 Nov 2019 08:26:33 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573568793;
 bh=X9B0cbHSFBh6z+++yuvEhMSytocbxnyPPOMKchxLqbc=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=Bh8jzIfRPh0zVawLd6Lz41xrQ+aaqzb1ZzSqwxtCfpuDIsQZu4MjZiniPBbdGyFL3
 adr8UKQu4g4/IfUiZwP1scdCqzLKzLSqm4eAq4/ULPcReLkykdOM7HWbTObvqb/lfB
 ZKwukGkhuhir4CPLwyBtSnjes3gLklbnKU1fP82o=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xACEQXuD014383
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 12 Nov 2019 08:26:33 -0600
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 12
 Nov 2019 08:26:32 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 12 Nov 2019 08:26:15 -0600
Received: from uda0869644b.dal.design.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xACEQUtv040290;
 Tue, 12 Nov 2019 08:26:32 -0600
From: Benoit Parrot <bparrot@ti.com>
To: Tony Lindgren <tony@atomide.com>, Tero Kristo <t-kristo@ti.com>
Subject: [Patch v2 2/3] ARM: dts: am437x-sk-evm: Add VPFE and OV2659 entries
Date: Tue, 12 Nov 2019 08:29:28 -0600
Message-ID: <20191112142929.23058-3-bparrot@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191112142929.23058-1-bparrot@ti.com>
References: <20191112142929.23058-1-bparrot@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_062635_493394_CBA23E4C 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
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

The sensor clock (xvclk) is sourced from clkout1.
Add clock entries to properly select clkout1 and set its parent
clock to sys_clkin_ck.

Signed-off-by: Benoit Parrot <bparrot@ti.com>
---
 arch/arm/boot/dts/am437x-sk-evm.dts | 27 ++++++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/am437x-sk-evm.dts b/arch/arm/boot/dts/am437x-sk-evm.dts
index 74eaa6a3b258..25222497f828 100644
--- a/arch/arm/boot/dts/am437x-sk-evm.dts
+++ b/arch/arm/boot/dts/am437x-sk-evm.dts
@@ -272,6 +272,12 @@
 		>;
 	};
 
+	clkout1_pin: pinmux_clkout1_pin {
+		pinctrl-single,pins = <
+			0x270 (PIN_OUTPUT_PULLDOWN | MUX_MODE3)	/* XDMA_EVENT_INTR0/CLKOUT1 */
+		>;
+	};
+
 	cpsw_default: cpsw_default {
 		pinctrl-single,pins = <
 			/* Slave 1 */
@@ -593,6 +599,25 @@
 	pinctrl-0 = <&i2c1_pins>;
 	clock-frequency = <400000>;
 
+	ov2659@30 {
+		compatible = "ovti,ov2659";
+		reg = <0x30>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&clkout1_pin>;
+
+		clocks = <&clkout1_mux_ck>;
+		clock-names = "xvclk";
+		assigned-clocks = <&clkout1_mux_ck>;
+		assigned-clock-parents = <&clkout1_osc_div_ck>;
+
+		port {
+			ov2659_1: endpoint {
+				remote-endpoint = <&vpfe0_ep>;
+				link-frequencies = /bits/ 64 <70000000>;
+			};
+		};
+	};
+
 	edt-ft5306@38 {
 		status = "okay";
 		compatible = "edt,edt-ft5306", "edt,edt-ft5x06";
@@ -877,7 +902,7 @@
 	/* Camera port */
 	port {
 		vpfe0_ep: endpoint {
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
