Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D7C325E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 03:05:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=apUGU4jIRecJxRPFpZ5vUQL5s1+M5DbThfKT0Ej8ofs=; b=BUtd1Hi5UrLVa1
	+dy/KUb5RTtsO7R5olQo3KbpyE1yl3kM45P9mTvZmoXBLb9RAy2Owfy5WvVJ+bowKaoNkNzJDs/dt
	94/EA9BQZ0enKdZr5WZPML927DQZxYGkPGtAp08ADhth3Ov0cziP2kRaBzhETSyoL/gyMf8GOuyhY
	XtFNDKpFNDTlY9eW0IHyqDwb5EeY6DSx+ZPjLGnUB5BB/f/GEjcl0YLrGlEHNd5TVokJX0ICx23MG
	SjyK+Dm7DWmkRKnszFko3X5w1UaBKKn5lDXnahYGvLw9SYglVMxYrh1p6k22Ja3qHVHdLcc+Eyusf
	MgTy1i7EHuHH2ltYVr8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXbPi-0003cx-Ti; Mon, 03 Jun 2019 01:05:26 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXbPR-0002vu-9k
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 01:05:11 +0000
Received: from localhost.localdomain (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id 2291B3E915;
 Mon,  3 Jun 2019 01:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1559523906;
 bh=sdl01qJ2uFOVm96mhhb77dF76U7n3aLmtqmCIxvMuGg=;
 h=From:To:Cc:Subject:Date:From;
 b=q4ARI7oZzDH/xdYeYGt65b39aYt9kSD8yB9o8pg+0AcOVD/pb2SiHcs1F2Y0xbMbe
 EIxkS9G7djE+H8pljVmDB5+oHYQ1pc4LDSSFyU5AptIdTGTtMpW9xm+3nII9MbhZ0W
 L76/ZwhPTA7Z62mFSXn05PGefAusaqjWrvDhXTh4=
From: Brian Masney <masneyb@onstation.org>
To: agross@kernel.org
Subject: [PATCH 1/2] ARM: dts: qcom: msm8974-hammerhead: add touchscreen
 support
Date: Sun,  2 Jun 2019 21:04:54 -0400
Message-Id: <20190603010455.17060-1-masneyb@onstation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_180509_455067_605EC1A5 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jonathan Marek <jonathan@marek.ca>,
 linux-arm-msm@vger.kernel.org, linus.walleij@linaro.org, linux@armlinux.org.uk,
 bjorn.andersson@linaro.org, david.brown@linaro.org, absahu@codeaurora.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 miquel.raynal@bootlin.com, frank.rowand@sony.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jonathan Marek <jonathan@marek.ca>

Add support for the Synaptics RMI4 touchscreen that is found on the
Nexus 5.

Signed-off-by: Jonathan Marek <jonathan@marek.ca>
Signed-off-by: Brian Masney <masneyb@onstation.org>
---
This is to be applied on top of the display patch series:
https://lore.kernel.org/lkml/20190531094619.31704-1-masneyb@onstation.org/

 .../qcom-msm8974-lge-nexus5-hammerhead.dts    | 64 +++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-msm8974-lge-nexus5-hammerhead.dts b/arch/arm/boot/dts/qcom-msm8974-lge-nexus5-hammerhead.dts
index c92ea01e3918..06c33bd71620 100644
--- a/arch/arm/boot/dts/qcom-msm8974-lge-nexus5-hammerhead.dts
+++ b/arch/arm/boot/dts/qcom-msm8974-lge-nexus5-hammerhead.dts
@@ -280,6 +280,16 @@
 			};
 		};
 
+		i2c2_pins: i2c2 {
+			mux {
+				pins = "gpio6", "gpio7";
+				function = "blsp_i2c2";
+
+				drive-strength = <2>;
+				bias-disable;
+			};
+		};
+
 		i2c3_pins: i2c3 {
 			mux {
 				pins = "gpio10", "gpio11";
@@ -326,6 +336,25 @@
 				bias-disable;
 			};
 		};
+
+		touch_pin: touch {
+			int {
+				pins = "gpio5";
+				function = "gpio";
+
+				drive-strength = <2>;
+				bias-disable;
+				input-enable;
+			};
+
+			reset {
+				pins = "gpio8";
+				function = "gpio";
+
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+		};
 	};
 
 	sdhci@f9824900 {
@@ -468,6 +497,41 @@
 		};
 	};
 
+	i2c@f9924000 {
+		status = "ok";
+
+		clock-frequency = <355000>;
+		qcom,src-freq = <50000000>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2c2_pins>;
+
+		synaptics@70 {
+			compatible = "syna,rmi4-i2c";
+			reg = <0x70>;
+
+			interrupts-extended = <&msmgpio 5 IRQ_TYPE_EDGE_FALLING>;
+			vdd-supply = <&pm8941_l22>;
+			vio-supply = <&pm8941_lvs3>;
+
+			pinctrl-names = "default";
+			pinctrl-0 = <&touch_pin>;
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			rmi4-f01@1 {
+				reg = <0x1>;
+				syna,nosleep-mode = <1>;
+			};
+
+			rmi4-f12@12 {
+				reg = <0x12>;
+				syna,sensor-type = <1>;
+			};
+		};
+	};
+
 	i2c@f9925000 {
 		status = "ok";
 		pinctrl-names = "default";
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
