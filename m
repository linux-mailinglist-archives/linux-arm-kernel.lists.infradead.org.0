Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 372C24E6AC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 13:03:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XpoCb74K9KmvoU0KIIphLD5uwGpABZtx3Ex1Q/w+ZVI=; b=qvZ
	yVQR7wErOt6MoAH4F8YAVHr195aV93+kFXg/eC5hHkP5Fthig3Cbs24p2Fo6y/djTp9TA2vdWjVYP
	+xbm0qvnGQs+VEIxoX5q2rg1HQAXbzoMxcQn5sLV5XyWFgG+d7IYMwTEgUjOqNKbVZKIJdshnUetk
	utT7+mmnLflgF6F8QB6hUBfHdtxc8hE4WjGIfEdDyVs4NEHi2zFLtI693YZQTKV9vHq8uVhlB77/e
	M+lP2UJPeBN5kIMTGSkmRqwDo8HgnnVAq/+Fagt/OC32QhydGw9JL+0fZS8hUe7F8oNtrPIzfdbNA
	mZfErSEXsL7pBiyGHaUQWIWUhZxqcFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heHKH-0003YY-UP; Fri, 21 Jun 2019 11:03:26 +0000
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heHJk-0003W3-UE
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 11:02:56 +0000
Received: from localhost.localdomain (softbank126205003112.bbtec.net
 [126.205.3.112]) (authenticated)
 by conuserg-09.nifty.com with ESMTP id x5LB2TFi005760;
 Fri, 21 Jun 2019 20:02:30 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com x5LB2TFi005760
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1561114952;
 bh=566G5ZJA7HhdKKqomzyRKpv+TUpB4KwzLjdLVp/NDac=;
 h=From:To:Cc:Subject:Date:From;
 b=vZRndXuDCODRwLRC1TxbV4cOhoQvs3X2lq5+WWq/oatAqA9MbrYOlbtfOdKct4Caf
 DwlAU9ym+XA6etPb0H6yJ4Ggj47YlNKfAKjHeA/BoptNoUJ9Er7NDoXTNfmzW36EVE
 c9KVfSox+VhFPJUr+3cvnGjRSJYjyIgtLs7tUllSayTmHlv7LTsH+7RVaCuC/CI+q8
 fNIO6avUpH6C4NH0AyxyaAxY2Cc0q1yuUxJVS73by7pnFv6PuX4V5sBVVXFcGTHNwW
 a2EESx/S1DkPAuJQrnOnHezE7MAelTWvHlPubQheedQr2SxEky4k5gNl7CDwGUG/vi
 BfF8LuxIYqebQ==
X-Nifty-SrcIP: [126.205.3.112]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: uniphier: update to new Denali NAND binding
Date: Fri, 21 Jun 2019 20:02:25 +0900
Message-Id: <20190621110225.22710-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_040253_491362_813F8009 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.76 listed in list.dnswl.org]
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

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm64/boot/dts/socionext/uniphier-ld11-global.dts | 4 ++++
 arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi       | 2 ++
 arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi       | 2 ++
 arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts    | 4 ++++
 arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi       | 2 ++
 5 files changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld11-global.dts b/arch/arm64/boot/dts/socionext/uniphier-ld11-global.dts
index 7968d524351b..f72f048a0c9d 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld11-global.dts
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld11-global.dts
@@ -163,4 +163,8 @@
 
 &nand {
 	status = "okay";
+
+	nand@0 {
+		reg = <0>;
+	};
 };
diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
index a3cd475b48d2..e32f8aef40bf 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
@@ -617,6 +617,8 @@
 			status = "disabled";
 			reg-names = "nand_data", "denali_reg";
 			reg = <0x68000000 0x20>, <0x68100000 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			interrupts = <0 65 4>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_nand>;
diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
index 017f6328c191..0e1b30656fea 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
@@ -921,6 +921,8 @@
 			status = "disabled";
 			reg-names = "nand_data", "denali_reg";
 			reg = <0x68000000 0x20>, <0x68100000 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			interrupts = <0 65 4>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_nand>;
diff --git a/arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts b/arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts
index 1965e4dfe4a4..754315bbd1c8 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts
+++ b/arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts
@@ -115,4 +115,8 @@
 
 &nand {
 	status = "okay";
+
+	nand@0 {
+		reg = <0>;
+	};
 };
diff --git a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
index bb97abe1a55f..d3863157ddd9 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
@@ -779,6 +779,8 @@
 			status = "disabled";
 			reg-names = "nand_data", "denali_reg";
 			reg = <0x68000000 0x20>, <0x68100000 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			interrupts = <0 65 4>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_nand>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
