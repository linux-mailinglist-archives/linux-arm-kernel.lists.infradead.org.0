Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C71ACF0F
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Sep 2019 15:44:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9CsBVjx11PS8eE98yHvOXfB6X3rhmEivvBkSf6dTP80=; b=kP5Zi2kUqsjLp8zMNXi7iwqyOu
	rKJxs1Vp21aunAfnSSdIgjPcPc+VDM0KWmUF8J+NvLEguAE1JbGsr4IIijwcjz2IWD+Sol/cIiLXo
	VrdiVezNsuFMKyMpc/6sMpt/H9jphb/XbqIszXxgZizVpQzo1KLqN9Fo8q/lxJ9WBOw0qgRIn5/mw
	GQ2sz8Goj/wr6vwbhGnWJ04mybaxAOoEp4G4YQ4BXUOHbyKArLqsQZQDDkloCh1aJ2lUgI+9r2rjh
	77wIYRKSBXx4TVFuNrfEZswq0BHsSALdy9p4wQWy50tDheotaP8AyflFzSPkJw7aZ7LCvZviXWatN
	lm72fPaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6xUQ-0006fS-Qz; Sun, 08 Sep 2019 13:44:26 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6xTC-0004rS-Rm
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Sep 2019 13:43:17 +0000
Received: by mail-wm1-x341.google.com with SMTP id c10so10958500wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 08 Sep 2019 06:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QWP79fY1JKJ4Q8J2pghEAh/SdWHmEms4TAuDdfokLg8=;
 b=YIGG+kJsJiFhCq3dqmypto366EH9ax3zhx8JVdur/EKxb+SmXYRhG28v5Z63pHp8zN
 OCBmiFSYfe7EbgzmvvQaWF4jBUbNCHjb9U0uhY77dUiOkRvq2CMyuS33EiGQ1utr7OIc
 FSZ93GRxpYLtF1fMwZa+LFkGEvZhyMQY8xVOcASm877jwvppWgo75O/hfqkKQO9lGgMA
 YU3yblmv3OwAATFQ7hetuxDEb7YPDEjN6U0gFc2BopqhFn6UIR0AkAOHbFOuRMJSyIwx
 OV9fpvur/5+VTfiqO6r29dWMVSjemOfYtPgj6bolH2f9y307wxErNay27xD8B2Elh0Vp
 qhpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QWP79fY1JKJ4Q8J2pghEAh/SdWHmEms4TAuDdfokLg8=;
 b=C5h29M8iK8iIkWDFhyJDMqfoAMz/AkN75xduvXtroDimLFZyS1wSg1y6aIJ9phuGue
 UsLgCPr92KBGePnHd/RhwUgx1sA0GYLf2Ay9srP+FG3neDTvzxZDO3E0sC0j1KYRD9Gb
 F986hARVioFJCK7ioRKKhhUwt/nDRRbxQw8N91Mo3OKrVmD1dH3t+5scD7tOeNRjO2to
 sCIOUkS52fp8ceAXp3LoAyy6OpLwRjniLdPmGu63D4fZa/v3s8ORkwkJMAdVIS4BuSXI
 Lf43fmQ6HWTN07jDoKj/eerKcUnMfmyAnzR4+bOtI3xeULKS9x4q6qPuwvcUmjzpkegR
 dCbg==
X-Gm-Message-State: APjAAAX8ZnRNspWWGQDw3U0fIWhln23ylMJQTmcgj9y1VILnVCQFEkoU
 VB6xtLesCCDVkdBnG/VC3btMXQ==
X-Google-Smtp-Source: APXvYqwdzoUJ+xfSz6GH/LJMRb9Td9tMK7kXH9Jy2I+h19yDQS7ztmE9hdHBq8Oox4JtUbGCGnVL4w==
X-Received: by 2002:a1c:ca02:: with SMTP id a2mr16087461wmg.127.1567950189470; 
 Sun, 08 Sep 2019 06:43:09 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.gmail.com with ESMTPSA id t203sm14313902wmf.42.2019.09.08.06.43.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 08 Sep 2019 06:43:09 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com, bhelgaas@google.com, lorenzo.pieralisi@arm.com,
 yue.wang@Amlogic.com, kishon@ti.com
Subject: [PATCH 5/6] arm64: dts: meson-g12a: Add PCIe node
Date: Sun,  8 Sep 2019 13:42:57 +0000
Message-Id: <1567950178-4466-6-git-send-email-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567950178-4466-1-git-send-email-narmstrong@baylibre.com>
References: <1567950178-4466-1-git-send-email-narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_064310_898483_9CADADE3 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, maz@kernel.org,
 linux-kernel@vger.kernel.org, repk@triplefau.lt, linux-pci@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds the Amlogic G12A PCI Express controller node, also
using the USB3+PCIe Combo PHY.

The PHY mode selection is static, thus the USB3+PCIe Combo PHY
phandle would need to be removed from the USB control node if the
shared differentil lines are used for PCIe instead of USB3.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12-common.dtsi    | 33 +++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 852cf9cf121b..7330dc37b7a6 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -95,6 +95,39 @@
 		#size-cells = <2>;
 		ranges;
 
+		pcie: pcie@fc000000 {
+			compatible = "amlogic,g12a-pcie", "snps,dw-pcie";
+			reg = <0x0 0xfc000000 0x0 0x400000
+			       0x0 0xff648000 0x0 0x2000
+			       0x0 0xfc400000 0x0 0x200000>;
+			reg-names = "elbi", "cfg", "config";
+			interrupts = <GIC_SPI 221 IRQ_TYPE_LEVEL_HIGH>;
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0>;
+			interrupt-map = <0 0 0 0 &gic GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
+			bus-range = <0x0 0xff>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+			device_type = "pci";
+			ranges = <0x81000000 0 0 0x0 0xfc600000 0 0x00100000
+				  0x82000000 0 0xfc700000 0x0 0xfc700000 0 0x1900000>;
+
+			clocks = <&clkc CLKID_PCIE_PHY
+				  &clkc CLKID_PCIE_COMB
+				  &clkc CLKID_PCIE_PLL>;
+			clock-names = "general",
+				      "pclk",
+				      "port";
+			resets = <&reset RESET_PCIE_CTRL_A>,
+				 <&reset RESET_PCIE_APB>;
+			reset-names = "port",
+				      "apb";
+			num-lanes = <1>;
+			phys = <&usb3_pcie_phy PHY_TYPE_PCIE>;
+			phy-names = "pcie";
+			status = "disabled";
+		};
+
 		ethmac: ethernet@ff3f0000 {
 			compatible = "amlogic,meson-axg-dwmac",
 				     "snps,dwmac-3.70a",
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
