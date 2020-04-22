Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 614C61B4774
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 16:37:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=omlyeUIK7Evp6mDd9vuCOHozT/C+cN55UlOHhqovOSA=; b=RFetsDYZ7CCPyU
	1xsP/2wtCisddv+SsaLk7Sxg9pjkCWcubb5idohkfOYA8Dg8og8e9zCEsB/VNaQg5rdC5YsSWPpoI
	BCbX/yXvRxJ33HEwAm2+DgIzPuC90MdeDvi2j4+CjfmsCQ87DN8MNYCkIeTTOrO3FyFkUhdDZPJKa
	Y79HuqeuZWkdlnVbN3T3aaS9Y6klRATaJ40tPkTYPXlFDIcPIoqQDa2eLRV/aA18md9e5K3GItfG8
	ODZ8QzQR1C1oSLERF6v3+avyAob2j5WyTwdWDpMprn2ytHjQl+zed21RfmcDiCob0HgZ0Cjx4kQG4
	txbLO2Wdk5gw+vsj5tGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRGVL-0001Hl-RO; Wed, 22 Apr 2020 14:37:35 +0000
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRGUu-00017M-Aj
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 14:37:10 +0000
Received: from oscar.flets-west.jp (softbank126090202047.bbtec.net
 [126.90.202.47]) (authenticated)
 by conuserg-09.nifty.com with ESMTP id 03MEaaEN012204;
 Wed, 22 Apr 2020 23:36:36 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 03MEaaEN012204
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1587566197;
 bh=qtkMM7xy3zIEAGobkYGRENcGZkyxHsxrtwH6kA03juo=;
 h=From:To:Cc:Subject:Date:From;
 b=Bbe8fkiZi25X8K0u0JC3pEpd+M3uyHKiWQ3Fh4HnAabPhqW4l2sjIJ8g5wCkeNGnW
 YNrhw/idkidv98yShZ11vbP2W0VlKyHelFmYmP6L2gheRnHRMmS2RBpYp98hIPpyrA
 SYusnuIHSSaRIo+JSYIQ0Q5+U0Qz5NYFx901ctAXi5ylhE/Z0Kl/o3HPLiaH1IZ7+p
 69cyQwSd/CdB4f1FNHz2ZGqz0eAuh7fDdAbUFsFIwAogFgZgumHJGtVN3Xs+zV4vDG
 TDj1XXFVqYE0v/h0AM+oLFNxl8ZvlQw2wDB2N7gKV6oOQ6IQ8HMX0Mevz2V1mhGaM3
 HwxyadhtZ83FA==
X-Nifty-SrcIP: [126.90.202.47]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] ARM: dts: uniphier: add #address-cells and #size-cells to
 SPI nodes
Date: Wed, 22 Apr 2020 23:36:32 +0900
Message-Id: <20200422143633.1972154-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_073708_578707_70761BC8 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.76 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Documentation/devicetree/bindings/spi/spi-uniphier.txt requires
#address-cells and #size-cells, but they are missing in actual DT files.

Due to this, 'make ARCH=arm dtbs_check' is super-noisy.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm/boot/dts/uniphier-ld4.dtsi  | 2 ++
 arch/arm/boot/dts/uniphier-pro4.dtsi | 2 ++
 arch/arm/boot/dts/uniphier-pro5.dtsi | 4 ++++
 arch/arm/boot/dts/uniphier-pxs2.dtsi | 4 ++++
 arch/arm/boot/dts/uniphier-sld8.dtsi | 2 ++
 5 files changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/uniphier-ld4.dtsi b/arch/arm/boot/dts/uniphier-ld4.dtsi
index 06e7400d2940..b52957ccda0d 100644
--- a/arch/arm/boot/dts/uniphier-ld4.dtsi
+++ b/arch/arm/boot/dts/uniphier-ld4.dtsi
@@ -67,6 +67,8 @@ spi: spi@54006000 {
 			compatible = "socionext,uniphier-scssi";
 			status = "disabled";
 			reg = <0x54006000 0x100>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			interrupts = <0 39 4>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_spi0>;
diff --git a/arch/arm/boot/dts/uniphier-pro4.dtsi b/arch/arm/boot/dts/uniphier-pro4.dtsi
index 1c866f0306fc..012d9b181311 100644
--- a/arch/arm/boot/dts/uniphier-pro4.dtsi
+++ b/arch/arm/boot/dts/uniphier-pro4.dtsi
@@ -75,6 +75,8 @@ spi0: spi@54006000 {
 			compatible = "socionext,uniphier-scssi";
 			status = "disabled";
 			reg = <0x54006000 0x100>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			interrupts = <0 39 4>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_spi0>;
diff --git a/arch/arm/boot/dts/uniphier-pro5.dtsi b/arch/arm/boot/dts/uniphier-pro5.dtsi
index 8f1ae0957f5f..03a9fd33243a 100644
--- a/arch/arm/boot/dts/uniphier-pro5.dtsi
+++ b/arch/arm/boot/dts/uniphier-pro5.dtsi
@@ -160,6 +160,8 @@ spi0: spi@54006000 {
 			compatible = "socionext,uniphier-scssi";
 			status = "disabled";
 			reg = <0x54006000 0x100>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			interrupts = <0 39 4>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_spi0>;
@@ -171,6 +173,8 @@ spi1: spi@54006100 {
 			compatible = "socionext,uniphier-scssi";
 			status = "disabled";
 			reg = <0x54006100 0x100>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			interrupts = <0 216 4>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_spi1>;
diff --git a/arch/arm/boot/dts/uniphier-pxs2.dtsi b/arch/arm/boot/dts/uniphier-pxs2.dtsi
index 2f2a24994c69..a04fba6d4064 100644
--- a/arch/arm/boot/dts/uniphier-pxs2.dtsi
+++ b/arch/arm/boot/dts/uniphier-pxs2.dtsi
@@ -173,6 +173,8 @@ spi0: spi@54006000 {
 			compatible = "socionext,uniphier-scssi";
 			status = "disabled";
 			reg = <0x54006000 0x100>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			interrupts = <0 39 4>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_spi0>;
@@ -184,6 +186,8 @@ spi1: spi@54006100 {
 			compatible = "socionext,uniphier-scssi";
 			status = "disabled";
 			reg = <0x54006100 0x100>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			interrupts = <0 216 4>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_spi1>;
diff --git a/arch/arm/boot/dts/uniphier-sld8.dtsi b/arch/arm/boot/dts/uniphier-sld8.dtsi
index 09992163e1f4..96a766deb8d1 100644
--- a/arch/arm/boot/dts/uniphier-sld8.dtsi
+++ b/arch/arm/boot/dts/uniphier-sld8.dtsi
@@ -67,6 +67,8 @@ spi: spi@54006000 {
 			compatible = "socionext,uniphier-scssi";
 			status = "disabled";
 			reg = <0x54006000 0x100>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			interrupts = <0 39 4>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_spi0>;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
