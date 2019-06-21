Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 383154E67F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:54:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cpAAdUId6yKf0WJ/i1/kWoSkF2lad9dk1GpwA/DG62A=; b=ih9
	GFR/v5nFrltEjmFdkG62ZtLGHX+AboWDezliULOZeEUQwDW+jqhXOXEkJBiZPcm3VDresmxJZfnop
	z/rrDj/K7oqF1FPaiJflq0yt6iYuT7QgjvduRHvdytR9EFtxrNnEPcOyiz4+6W/ZiZ68BlzntXFKG
	i8kvzXabQLk2q5lOX4As2wLVMp49zUdgdi2/S51sj2YBOMKGYgkBlrjOLzzC+heIf2UfPboHikmQC
	QhCtadHtWt6KYvRnURs5KE26n2HefI5E4n3hEZeJxN6gN+Hc5bepp3+KomqT6P9acjBfR0aAsZMVb
	baORf5QjFyFFNl98AOwyXTO+t8bkEUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heHBc-0007f4-Io; Fri, 21 Jun 2019 10:54:28 +0000
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heHAr-0007Cq-CM
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 10:53:50 +0000
Received: from localhost.localdomain (softbank126205003112.bbtec.net
 [126.205.3.112]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id x5LArK6K004596;
 Fri, 21 Jun 2019 19:53:21 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com x5LArK6K004596
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1561114403;
 bh=JLXwVSOGR+h70am1yo5VHpNL60vncdLe6CxLvJz2/uU=;
 h=From:To:Cc:Subject:Date:From;
 b=cVsR6Y+kYOxCRbyPFsK7mEEL3RrgK5J2onUmXHEoJKqV91ijwIRM+hL/4aQ0/2O2y
 vWuuHzjKUVK3ht3Ns496j4FuLrCttR4HB7BafpZWVTUwrJwu4jhb86bIGZkVPQLjtf
 P1jm+CnJHgB/mpQo3t3wWmZzUwgczMWeJU3K6whiVLHGY7g8aUb745wLHhOJ7Fer+9
 0Sfh0ZzDJC8tEXRnPmC3t+3VARtbk9BvrKnQSQQcDqbTF0o2/zm70rGcG7ebHuVGAA
 pycnY71jxp4NQQeK3WuakO4O+FzKd+eKW5JUDwS5DVl4leV5qLedkbb5JeAbox4xyJ
 d/m6rcWoNzW7Q==
X-Nifty-SrcIP: [126.205.3.112]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: uniphier: update to new Denali NAND binding
Date: Fri, 21 Jun 2019 19:53:16 +0900
Message-Id: <20190621105316.22201-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_035341_673727_5AE5ECAD 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With commit d8e8fd0ebf8b ("mtd: rawnand: denali: decouple controller
and NAND chips"), the Denali NAND controller driver migrated to the
new controller/chip representation.

Update DT for it.

In the new binding, the number of connected chips are described in
DT instead of run-time probed.

I added just one chip to the reference boards, where we do not know
if the on-board NAND device is a single chip or multiple chips.
If we added too many chips into DT, it would end up with the timeout
error in nand_scan_ident().

I changed all the pinctrl properties to use the single CS.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm/boot/dts/uniphier-ld4-ref.dts  | 4 ++++
 arch/arm/boot/dts/uniphier-ld4.dtsi     | 4 +++-
 arch/arm/boot/dts/uniphier-ld6b-ref.dts | 4 ++++
 arch/arm/boot/dts/uniphier-pro4-ref.dts | 4 ++++
 arch/arm/boot/dts/uniphier-pro4.dtsi    | 2 ++
 arch/arm/boot/dts/uniphier-pro5.dtsi    | 4 +++-
 arch/arm/boot/dts/uniphier-pxs2.dtsi    | 4 +++-
 arch/arm/boot/dts/uniphier-sld8-ref.dts | 4 ++++
 arch/arm/boot/dts/uniphier-sld8.dtsi    | 4 +++-
 9 files changed, 30 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/uniphier-ld4-ref.dts b/arch/arm/boot/dts/uniphier-ld4-ref.dts
index 3aaca10f6644..f2d060f403cc 100644
--- a/arch/arm/boot/dts/uniphier-ld4-ref.dts
+++ b/arch/arm/boot/dts/uniphier-ld4-ref.dts
@@ -77,4 +77,8 @@
 
 &nand {
 	status = "okay";
+
+	nand@0 {
+		reg = <0>;
+	};
 };
diff --git a/arch/arm/boot/dts/uniphier-ld4.dtsi b/arch/arm/boot/dts/uniphier-ld4.dtsi
index c2706cef0b8a..58cd4e8fa5be 100644
--- a/arch/arm/boot/dts/uniphier-ld4.dtsi
+++ b/arch/arm/boot/dts/uniphier-ld4.dtsi
@@ -403,9 +403,11 @@
 			status = "disabled";
 			reg-names = "nand_data", "denali_reg";
 			reg = <0x68000000 0x20>, <0x68100000 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			interrupts = <0 65 4>;
 			pinctrl-names = "default";
-			pinctrl-0 = <&pinctrl_nand2cs>;
+			pinctrl-0 = <&pinctrl_nand>;
 			clock-names = "nand", "nand_x", "ecc";
 			clocks = <&sys_clk 2>, <&sys_clk 3>, <&sys_clk 3>;
 			resets = <&sys_rst 2>;
diff --git a/arch/arm/boot/dts/uniphier-ld6b-ref.dts b/arch/arm/boot/dts/uniphier-ld6b-ref.dts
index 3d9080ee7aef..60994b6e8b99 100644
--- a/arch/arm/boot/dts/uniphier-ld6b-ref.dts
+++ b/arch/arm/boot/dts/uniphier-ld6b-ref.dts
@@ -90,4 +90,8 @@
 
 &nand {
 	status = "okay";
+
+	nand@0 {
+		reg = <0>;
+	};
 };
diff --git a/arch/arm/boot/dts/uniphier-pro4-ref.dts b/arch/arm/boot/dts/uniphier-pro4-ref.dts
index 28038b17bbb3..854f2eba3e72 100644
--- a/arch/arm/boot/dts/uniphier-pro4-ref.dts
+++ b/arch/arm/boot/dts/uniphier-pro4-ref.dts
@@ -98,4 +98,8 @@
 
 &nand {
 	status = "okay";
+
+	nand@0 {
+		reg = <0>;
+	};
 };
diff --git a/arch/arm/boot/dts/uniphier-pro4.dtsi b/arch/arm/boot/dts/uniphier-pro4.dtsi
index 97d051ef4968..7f64e5a616d6 100644
--- a/arch/arm/boot/dts/uniphier-pro4.dtsi
+++ b/arch/arm/boot/dts/uniphier-pro4.dtsi
@@ -593,6 +593,8 @@
 			status = "disabled";
 			reg-names = "nand_data", "denali_reg";
 			reg = <0x68000000 0x20>, <0x68100000 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			interrupts = <0 65 4>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_nand>;
diff --git a/arch/arm/boot/dts/uniphier-pro5.dtsi b/arch/arm/boot/dts/uniphier-pro5.dtsi
index 365738739412..eff74717b37c 100644
--- a/arch/arm/boot/dts/uniphier-pro5.dtsi
+++ b/arch/arm/boot/dts/uniphier-pro5.dtsi
@@ -458,9 +458,11 @@
 			status = "disabled";
 			reg-names = "nand_data", "denali_reg";
 			reg = <0x68000000 0x20>, <0x68100000 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			interrupts = <0 65 4>;
 			pinctrl-names = "default";
-			pinctrl-0 = <&pinctrl_nand2cs>;
+			pinctrl-0 = <&pinctrl_nand>;
 			clock-names = "nand", "nand_x", "ecc";
 			clocks = <&sys_clk 2>, <&sys_clk 3>, <&sys_clk 3>;
 			resets = <&sys_rst 2>;
diff --git a/arch/arm/boot/dts/uniphier-pxs2.dtsi b/arch/arm/boot/dts/uniphier-pxs2.dtsi
index 06a049f6edf8..4eddbb8d7fca 100644
--- a/arch/arm/boot/dts/uniphier-pxs2.dtsi
+++ b/arch/arm/boot/dts/uniphier-pxs2.dtsi
@@ -766,9 +766,11 @@
 			status = "disabled";
 			reg-names = "nand_data", "denali_reg";
 			reg = <0x68000000 0x20>, <0x68100000 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			interrupts = <0 65 4>;
 			pinctrl-names = "default";
-			pinctrl-0 = <&pinctrl_nand2cs>;
+			pinctrl-0 = <&pinctrl_nand>;
 			clock-names = "nand", "nand_x", "ecc";
 			clocks = <&sys_clk 2>, <&sys_clk 3>, <&sys_clk 3>;
 			resets = <&sys_rst 2>;
diff --git a/arch/arm/boot/dts/uniphier-sld8-ref.dts b/arch/arm/boot/dts/uniphier-sld8-ref.dts
index 01bf94c6b93a..cf9ea0b15065 100644
--- a/arch/arm/boot/dts/uniphier-sld8-ref.dts
+++ b/arch/arm/boot/dts/uniphier-sld8-ref.dts
@@ -81,4 +81,8 @@
 
 &nand {
 	status = "okay";
+
+	nand@0 {
+		reg = <0>;
+	};
 };
diff --git a/arch/arm/boot/dts/uniphier-sld8.dtsi b/arch/arm/boot/dts/uniphier-sld8.dtsi
index efce02768b6f..cbebb6e4c616 100644
--- a/arch/arm/boot/dts/uniphier-sld8.dtsi
+++ b/arch/arm/boot/dts/uniphier-sld8.dtsi
@@ -407,9 +407,11 @@
 			status = "disabled";
 			reg-names = "nand_data", "denali_reg";
 			reg = <0x68000000 0x20>, <0x68100000 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			interrupts = <0 65 4>;
 			pinctrl-names = "default";
-			pinctrl-0 = <&pinctrl_nand2cs>;
+			pinctrl-0 = <&pinctrl_nand>;
 			clock-names = "nand", "nand_x", "ecc";
 			clocks = <&sys_clk 2>, <&sys_clk 3>, <&sys_clk 3>;
 			resets = <&sys_rst 2>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
