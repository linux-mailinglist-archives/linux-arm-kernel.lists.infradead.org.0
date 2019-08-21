Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D21897C90
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 16:22:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QNRD34q0dBAIwEg0e/ejat8QPYdmHfmLKFxDGUE4J4w=; b=b1uRliyIFisatW
	HcNmtz3iIINkLkBwNYkJJMdZ9nCaba0hRmlJXqnRBuczS8CfTdUYxm/5BHEwwQwMGIIXUVcPNVEHy
	4mpwzZkFpeIb8iXCveycsBilDE9km0XVxLBE51gu7ZSdicPVtROg1Pgv7bJvekCUftZKOE7hozplb
	RH7cOCl6Wud3mtihtlQoKmFYuHzJbghNGRP0dvYq97ZRdDyOwb9EbzH0DkZ2cMYq1B70LNSo690Wu
	lcIg7x7I1r3kpIblylsrZ6VH2+qWPK9xhRxi7tGJz3HBRvC7izgqhsLP9N4XhhTNCj0MXpWL/tPxT
	xWxR2ukoDKsN6N6duNKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0RUr-0007TU-42; Wed, 21 Aug 2019 14:21:57 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0RTr-0006fs-Nx
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 14:20:57 +0000
Received: by mail-wr1-x443.google.com with SMTP id p17so2204197wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 07:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vAP1onnqXTzP/lvNpHvvz2UdnrOcw8U+6337qerbDS8=;
 b=pAj6gXZSmQY63NCHL74oE4dUYzy2conZuGZKMrHcQ8dFBZk4xZKCcF569gE8DG8yX2
 41g1BLBzwPbS9/gq1k1rXEfFpX04K3JOt8Ic59XAGA6XSqgOAi427bH9818L35i+hiDY
 rprG0fXDwO2HM9fvCSULC6hX83fO++VOSseEP0toge8degLpXt/9xgqKbLIJVV++RhaC
 tp9bchzxyuk2oFL3AGjLImSfQbiMS5yEZlaOsvrsDJKwkDEK003mJg4Yh2MxiK6Xkm/r
 7SFlYlelfAoOFjoIQjD8g72WEpv7cH7djvSwkixH+TpDLGX41sFzFK1j4BPCZBT7OL8w
 FUTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vAP1onnqXTzP/lvNpHvvz2UdnrOcw8U+6337qerbDS8=;
 b=V5rHHhAxfmtB5K8ES4T0nMO+fD6+7WMgdumajoY0jLk8p6v9uoMF9c1InbTvtpJWyR
 YEq/ncpAdxQqRzhRhcV/8tHGUR/KrcXy9q7nwjNRVjrjQs6bqWphygukE2ZQWzmjNgz1
 IaBqIwVtqL3SgZdLUCBF0qaR1hzXtCAdse897AMsvBlXf49sCPITFJ976e4FS1m6LqfG
 XyOMJ+pL61ByB3fm4/jL56TVmTKmjRvojQN6iNUTdbZWteQeq9HDnPIcGMmY0bANcqEi
 qlYokpWJ4q+RZ5WzXF9EwjRRXnF71M0aKTfYIj+ihhUVYHBbx361sCRmDsbv1umscAtb
 QJ9Q==
X-Gm-Message-State: APjAAAUsuuRJ+PGPVd0uhx+kVFr3WyTX1w1FM5ixubpUisQGwhFnDAPk
 pn0Hc+qqxD5PMaq4gjWjZ7ERJg==
X-Google-Smtp-Source: APXvYqyao145aZphdebE9ne8Van69sub9EKRL8yfyjYDM6LtGh2JA3XPFvYbCsnwXYhL4YBE/YOoGQ==
X-Received: by 2002:a5d:4a45:: with SMTP id v5mr32619231wrs.108.1566397253939; 
 Wed, 21 Aug 2019 07:20:53 -0700 (PDT)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id o9sm33418939wrm.88.2019.08.21.07.20.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 07:20:53 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 01/14] arm64: dts: meson: fix ethernet mac reg format
Date: Wed, 21 Aug 2019 16:20:30 +0200
Message-Id: <20190821142043.14649-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190821142043.14649-1-narmstrong@baylibre.com>
References: <20190821142043.14649-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_072055_777784_7E9B8529 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-axg-s400.dt.yaml: soc: ethernet@ff3f0000:reg:0: [0, 4282318848, 0, 65536, 0, 4284695872, 0, 8] is too long
meson-axg-s400.dt.yaml: ethernet@ff3f0000: reg: [[0, 4282318848, 0, 65536, 0, 4284695872, 0, 8]] is too short
meson-g12a-u200.dt.yaml: soc: ethernet@ff3f0000:reg:0: [0, 4282318848, 0, 65536, 0, 4284695872, 0, 8] is too long
meson-g12a-u200.dt.yaml: ethernet@ff3f0000: reg: [[0, 4282318848, 0, 65536, 0, 4284695872, 0, 8]] is too short
meson-gxbb-nanopi-k2.dt.yaml: soc: ethernet@c9410000:reg:0: [0, 3376480256, 0, 65536, 0, 3364046144, 0, 4] is too long
meson-gxl-s805x-libretech-ac.dt.yaml: soc: ethernet@c9410000:reg:0: [0, 3376480256, 0, 65536, 0, 3364046144, 0, 4] is too lon

while here, also drop the redundant reg property from meson-gxl.dtsi
because it had the same value as meson-gx.dtsi from which it inherits.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi  | 4 ++--
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 4 ++--
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi   | 4 ++--
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi  | 3 ---
 4 files changed, 6 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index 6219337033a0..4a134d29491d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -174,8 +174,8 @@
 			compatible = "amlogic,meson-axg-dwmac",
 				     "snps,dwmac-3.70a",
 				     "snps,dwmac";
-			reg = <0x0 0xff3f0000 0x0 0x10000
-			       0x0 0xff634540 0x0 0x8>;
+			reg = <0x0 0xff3f0000 0x0 0x10000>,
+			      <0x0 0xff634540 0x0 0x8>;
 			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
 			clocks = <&clkc CLKID_ETH>,
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index f8d43e3dcf20..465106d37289 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -141,8 +141,8 @@
 			compatible = "amlogic,meson-axg-dwmac",
 				     "snps,dwmac-3.70a",
 				     "snps,dwmac";
-			reg = <0x0 0xff3f0000 0x0 0x10000
-			       0x0 0xff634540 0x0 0x8>;
+			reg = <0x0 0xff3f0000 0x0 0x10000>,
+			      <0x0 0xff634540 0x0 0x8>;
 			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
 			clocks = <&clkc CLKID_ETH>,
diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index 74d03fc706be..faff77175486 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -489,8 +489,8 @@
 			compatible = "amlogic,meson-gxbb-dwmac",
 				     "snps,dwmac-3.70a",
 				     "snps,dwmac";
-			reg = <0x0 0xc9410000 0x0 0x10000
-			       0x0 0xc8834540 0x0 0x4>;
+			reg = <0x0 0xc9410000 0x0 0x10000>,
+			      <0x0 0xc8834540 0x0 0x4>;
 			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
 			status = "disabled";
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
index c959456bacc6..ee1ecdbcc958 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
@@ -80,9 +80,6 @@
 };
 
 &ethmac {
-	reg = <0x0 0xc9410000 0x0 0x10000
-	       0x0 0xc8834540 0x0 0x4>;
-
 	clocks = <&clkc CLKID_ETH>,
 		 <&clkc CLKID_FCLK_DIV2>,
 		 <&clkc CLKID_MPLL2>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
