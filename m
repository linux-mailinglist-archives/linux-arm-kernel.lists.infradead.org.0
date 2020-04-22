Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E189E1B4770
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 16:37:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7RYHyLesjykFsz7NvAwWdS7S41MKJ/bMspuu+mLOb3c=; b=Cf+8M1x7/6A2Ja
	zERVRv774m9K3srvRovE/VfAvfxFNEp6bPX17F7+V7oc4Dsh9v6jNjWVSCe6F/qmhHwo3rGrLKP06
	UfHvVC555VXPzItRcXFkddqMvkT861CReAmTAEmLDH5u+6hG4jlHuj8qF+keCs3IwT9EQOA7aueR6
	ufk7GlbLCFh410StWZSN29mKMkRISxwbc5Ie3uo4kENA08efzIxokrqDlboPxK6RNM7hLUv5hToJM
	YKX/mRHd9VlJqM43GkO5WxkLtScPmd7meheU5VPjHzRrOyvZ0xNSpFUtBuzuENCeOf97O3vaiSa3T
	qUhXbqiGDcf7zFVsfFqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRGV6-00018Z-7x; Wed, 22 Apr 2020 14:37:20 +0000
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRGUu-00017N-8z
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 14:37:10 +0000
Received: from oscar.flets-west.jp (softbank126090202047.bbtec.net
 [126.90.202.47]) (authenticated)
 by conuserg-09.nifty.com with ESMTP id 03MEaaEO012204;
 Wed, 22 Apr 2020 23:36:37 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 03MEaaEO012204
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1587566198;
 bh=Bznt0cL8BIH1py8BFs9AtQCl/NitEIeYc3BeOYY2PNY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SGBWRKZDHwt+YDrs9Qp7PDjDXkJtfJ45kaCh74pm7CQtbhguLhJsnI0tmJ3zfHwCR
 PkkALjzHdrXiZ8ygG1z6BDkjKsCz7gBD6N18BMNhhcX12ft1L6ET0/plZBBmWP0hCW
 Xd7uQF0FoXR09CyytL5Votq8JF8MBFv/oD6TQef6IAyEGm5tooQRptxAMYEXPT/SKS
 pqSipA1aN98IGX8BlgM3x3MJ8IlNHxPGd2CNg9a+omLm5Olk/iugxgXKpi2A28N9tB
 spzOaEEsZ4UmxqHhs0U50MnHxoVkYOnWdsjgBdqNegXEUcXP2RpQ970/TYQdM1id7e
 yLBPDHGNCND2Q==
X-Nifty-SrcIP: [126.90.202.47]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64: dts: uniphier: add #address-cells and #size-cells
 to SPI nodes
Date: Wed, 22 Apr 2020 23:36:33 +0900
Message-Id: <20200422143633.1972154-2-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200422143633.1972154-1-yamada.masahiro@socionext.com>
References: <20200422143633.1972154-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_073708_528363_2AC99DB1 
X-CRM114-Status: UNSURE (   9.32  )
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

Due to this, 'make ARCH=arm64 dtbs_check' is super-noisy.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi | 4 ++++
 arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi | 8 ++++++++
 arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi | 4 ++++
 3 files changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
index 60ff9b4f9126..15dcfc259854 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
@@ -129,6 +129,8 @@ spi0: spi@54006000 {
 			compatible = "socionext,uniphier-scssi";
 			status = "disabled";
 			reg = <0x54006000 0x100>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			interrupts = <0 39 4>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_spi0>;
@@ -140,6 +142,8 @@ spi1: spi@54006100 {
 			compatible = "socionext,uniphier-scssi";
 			status = "disabled";
 			reg = <0x54006100 0x100>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			interrupts = <0 216 4>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_spi1>;
diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
index afa90b762ea9..f4a56b208837 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
@@ -234,6 +234,8 @@ spi0: spi@54006000 {
 			compatible = "socionext,uniphier-scssi";
 			status = "disabled";
 			reg = <0x54006000 0x100>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			interrupts = <0 39 4>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_spi0>;
@@ -245,6 +247,8 @@ spi1: spi@54006100 {
 			compatible = "socionext,uniphier-scssi";
 			status = "disabled";
 			reg = <0x54006100 0x100>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			interrupts = <0 216 4>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_spi1>;
@@ -256,6 +260,8 @@ spi2: spi@54006200 {
 			compatible = "socionext,uniphier-scssi";
 			status = "disabled";
 			reg = <0x54006200 0x100>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			interrupts = <0 229 4>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_spi2>;
@@ -267,6 +273,8 @@ spi3: spi@54006300 {
 			compatible = "socionext,uniphier-scssi";
 			status = "disabled";
 			reg = <0x54006300 0x100>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			interrupts = <0 230 4>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_spi3>;
diff --git a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
index ba18a9661ca2..72f16881cf53 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
@@ -193,6 +193,8 @@ spi0: spi@54006000 {
 			compatible = "socionext,uniphier-scssi";
 			status = "disabled";
 			reg = <0x54006000 0x100>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			interrupts = <0 39 4>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_spi0>;
@@ -204,6 +206,8 @@ spi1: spi@54006100 {
 			compatible = "socionext,uniphier-scssi";
 			status = "disabled";
 			reg = <0x54006100 0x100>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			interrupts = <0 216 4>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_spi1>;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
