Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5452018E85D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 12:27:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lkb2p2NK/ydCEl/1AIKTiBNzmGzS3FXuYMV0mK1bNhA=; b=mhU8pIJU9eTcx+
	rYZDqpfBTWqdMTzu0Ud1ANW/X4rggY+KsgAVt+1yc/dpUxqkhgvR7jUQpnpBV34hV76M1hi8/DZ2D
	rxBA5YuHrARUySJYPNHqINDl5BWRiGMeV80AVGw3sW6rIWL/6uCKbkYleyaUowDAspuZTqKvOhUiU
	ys0mCDuRaoC/xWAaW7Ib3AUTTXFaxbPdY3t3mjCxuyxFW8NAjJDJaIn1Rt3X3OUh50W3OOWqSOuN0
	y3m5g/s8axoxRg9PTZuTdQgY7oDHNH4oxAtN9nZ7ym5IF8Zw+mzOnPEdF692cNp+C3xhhIVDofp5P
	mOV3V+ElEWVLicS3KeCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFyko-00081T-Se; Sun, 22 Mar 2020 11:26:54 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFykg-000809-Gb
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 11:26:48 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02MBQYtm124964;
 Sun, 22 Mar 2020 06:26:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584876394;
 bh=rV6bGvKdd7JY4+Ufo6jMxHjB1DmFUcKzhVpTmeJSLAw=;
 h=From:To:CC:Subject:Date;
 b=tP5OkVBeQuE7+WpLRLZDUel/rOm/9pMNqeasGR3reqRjDBP9t9+XWKbZAQ8wRviRi
 jv0m7DZ/P9jf9+vJdoZ+taSZdgIxFqp9ELK4OAPXniVaxqnNXOTAj8O5lUr25Bw8MB
 jU3fWDDrM5pm6/4uBTmuTivzKME7takpiwt5HpaI=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02MBQYCP081146
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sun, 22 Mar 2020 06:26:34 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Sun, 22
 Mar 2020 06:26:34 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Sun, 22 Mar 2020 06:26:34 -0500
Received: from a0132425.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02MBQV5b089468; 
 Sun, 22 Mar 2020 06:26:32 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH] arm64: dts: ti: k3-am65-main: Add ehrpwm nodes
Date: Sun, 22 Mar 2020 16:56:30 +0530
Message-ID: <20200322112630.25541-1-vigneshr@ti.com>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_042646_656080_A889ABFA 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-arm-kernel@lists.infradead.org, Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DT nodes for all ehrpwm instances present on AM654 EVM.

Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
---

clk driver and bindings has been merged to clk-next tree.

 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 60 ++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index e5df20a2d2f9..da6427bed801 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -285,6 +285,12 @@ serdes_mux: mux-controller {
 			mux-reg-masks = <0x4080 0x3>, /* SERDES0 lane select */
 					<0x4090 0x3>; /* SERDES1 lane select */
 		};
+
+		ehrpwm_tbclk: syscon@4140 {
+			compatible = "ti,am654-ehrpwm-tbclk", "syscon";
+			reg = <0x4140 0x18>;
+			#clock-cells = <1>;
+		};
 	};
 
 	dwc3_0: dwc3@4000000 {
@@ -742,4 +748,58 @@ csi2_0: port@0 {
 			};
 		};
 	};
+
+	ehrpwm0: pwm@3000000 {
+		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
+		#pwm-cells = <3>;
+		reg = <0x0 0x3000000 0x0 0x100>;
+		power-domains = <&k3_pds 40 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&ehrpwm_tbclk 0>, <&k3_clks 40 0>;
+		clock-names = "tbclk", "fck";
+	};
+
+	ehrpwm1: pwm@3010000 {
+		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
+		#pwm-cells = <3>;
+		reg = <0x0 0x3010000 0x0 0x100>;
+		power-domains = <&k3_pds 41 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&ehrpwm_tbclk 1>, <&k3_clks 41 0>;
+		clock-names = "tbclk", "fck";
+	};
+
+	ehrpwm2: pwm@3020000 {
+		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
+		#pwm-cells = <3>;
+		reg = <0x0 0x3020000 0x0 0x100>;
+		power-domains = <&k3_pds 42 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&ehrpwm_tbclk 2>, <&k3_clks 42 0>;
+		clock-names = "tbclk", "fck";
+	};
+
+	ehrpwm3: pwm@3030000 {
+		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
+		#pwm-cells = <3>;
+		reg = <0x0 0x3030000 0x0 0x100>;
+		power-domains = <&k3_pds 43 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&ehrpwm_tbclk 3>, <&k3_clks 43 0>;
+		clock-names = "tbclk", "fck";
+	};
+
+	ehrpwm4: pwm@3040000 {
+		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
+		#pwm-cells = <3>;
+		reg = <0x0 0x3040000 0x0 0x100>;
+		power-domains = <&k3_pds 44 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&ehrpwm_tbclk 4>, <&k3_clks 44 0>;
+		clock-names = "tbclk", "fck";
+	};
+
+	ehrpwm5: pwm@3050000 {
+		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
+		#pwm-cells = <3>;
+		reg = <0x0 0x3050000 0x0 0x100>;
+		power-domains = <&k3_pds 45 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&ehrpwm_tbclk 5>, <&k3_clks 45 0>;
+		clock-names = "tbclk", "fck";
+	};
 };
-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
