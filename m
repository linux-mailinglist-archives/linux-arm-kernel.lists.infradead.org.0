Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E298518088B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 20:50:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aou3cGMHBlOATgAkAUZrW1qV7W0nvFAZOk7mLGe97DI=; b=IAIkTLcfW+CpTd
	7yKUwUSnDlF55q0qMOZlWWY2zVk05jZeyZa4PGGYay6Cmfosrz2mBATYzqWtLxmAUyDk6tqSZuBxD
	OLzC6ILlDNacvWCRdSi3Jlmu8O9YHwzWbc0oCaJGTTLKMl0aMGxv8WInMte8xE4HrAsGDp73Ju32W
	ldY5vaYWpLyGZMQIEUSB0WKJ5vnDeleEOgzaVZlkwj5AfQkTbAacDJyovaJu7M82jQUAjJAqDhEeB
	48aENPEh54t/lHdp5WDn9yyS7Ah+MjZRErle9VRfZeVyEz3ojPPyIgLFVGbO3dnn+NC6n6dBqYdqt
	Oyg3EAE00rV6h71xM5KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBktW-00036O-Al; Tue, 10 Mar 2020 19:50:26 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBksk-0001rd-PB
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 19:49:40 +0000
Received: by mail-pg1-x544.google.com with SMTP id z12so6784218pgl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 12:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=emQ/yaW/q4/ovb1N6uLBO7edbmwlmGSYTgLz5DT87lA=;
 b=EV6ESjvMWVAvTDBujuWToM6fGI3hSCL2aCgcuSqMgAc8yycZzHOC7OHaPIsAiB713o
 O/Y0aZQJKvNIJjiF8siDeNtT636r09VfJU6Yd9CiAe5EJ170hoiWEXi/Z1DxnPZt4MGI
 L9me3kaVwfNRlFe6A8UuV3qHHJhTgGd3YObjOhAgOOu50a39FWrGcYTIZttalqZq8fmk
 OwXkGP/mgJVMvjpBc4asDsjBUXVyND9oa+PcwKfJpfYg+477WFUjU2uCAIGagz8wJuna
 YCy2P6DTgxZT6a6ZJ6/gMl5DTJniwhkupAh/Vu4DcgpjvcickHR23AVoJW9WbVGUWGRj
 BxYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=emQ/yaW/q4/ovb1N6uLBO7edbmwlmGSYTgLz5DT87lA=;
 b=EEUNWeFhbCBpMCJPpgkqWVt/uhUIWw0lyrkZWkTlbJ8vX9tKHpi13UO7S8qbIAHGMI
 z39PsDxmKa00hOFLMVVJiBE0xzWPf5Na70zl42ElssydPUUlJ49OC0bij0Y5VWu25D+U
 Ed+G8e0dKXOPOdD17Hi6FyhB9jyDJxXnNmsTnjrOdsFCX9SilMTP91PqFGYu89FKe7/9
 lVY8bixbynNvWuu/ORNnObbwsc8xLPqKngSkWzPFr0Ml528EytDb+J8c2k2zNX2LGTjB
 vKzqPvWG/O1x/hd6X3vq1zojddlyteYJL/dlxfiROEBn8TpzUj4ZqoNm0HgEoO3tAUoh
 yP6A==
X-Gm-Message-State: ANhLgQ2gL/bBhym6zBcrS0StbHeK3isjTCzGm+wo1AQQtGZlJGWj0LEm
 6o88DQ9xDwR9nte7zAFihAk=
X-Google-Smtp-Source: ADFU+vtDBYANFwpiHqzazrotjATDf0coh4Fl5OzSUKLN06VFFAld3h6QHUGXG0wvNEoqt2bc+hC5wg==
X-Received: by 2002:a62:3086:: with SMTP id w128mr2539561pfw.63.1583869778145; 
 Tue, 10 Mar 2020 12:49:38 -0700 (PDT)
Received: from localhost.localdomain ([45.114.62.228])
 by smtp.gmail.com with ESMTPSA id d19sm3784490pfd.82.2020.03.10.12.49.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 12:49:37 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Subject: [PATCHv3 3/5] ARM: dts: exynos: Add FSYS power domain to Exynos542x
 USB nodes
Date: Tue, 10 Mar 2020 19:48:52 +0000
Message-Id: <20200310194854.831-4-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200310194854.831-1-linux.amoon@gmail.com>
References: <20200310194854.831-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_124938_890301_130476F5 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Felipe Balbi <balbi@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a power domain FSYS for USB 3.0 and USB 2.0 and pdma nodes present
on Exynos542x/5800 SoCs.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
New patch in this series.
---
 arch/arm/boot/dts/exynos5420.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index bd505256a223..4046b669b105 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -396,6 +396,13 @@ msc_pd: power-domain@10044120 {
 			label = "MSC";
 		};
 
+		fsys_pd: power-domain@10044140 {
+			compatible = "samsung,exynos4210-pd";
+			reg = <0x10044140 0x20>;
+			#power-domain-cells = <0>;
+			label = "FSYS";
+		};
+
 		pinctrl_0: pinctrl@13400000 {
 			compatible = "samsung,exynos5420-pinctrl";
 			reg = <0x13400000 0x1000>;
@@ -461,6 +468,7 @@ pdma0: pdma@121a0000 {
 				#dma-cells = <1>;
 				#dma-channels = <8>;
 				#dma-requests = <32>;
+				power-domains = <&fsys_pd>;
 			};
 
 			pdma1: pdma@121b0000 {
@@ -472,6 +480,7 @@ pdma1: pdma@121b0000 {
 				#dma-cells = <1>;
 				#dma-channels = <8>;
 				#dma-requests = <32>;
+				power-domains = <&fsys_pd>;
 			};
 
 			mdma0: mdma@10800000 {
@@ -1374,17 +1383,20 @@ &trng {
 &usbdrd3_0 {
 	clocks = <&clock CLK_USBD300>, <&clock CLK_SCLK_USBD300>;
 	clock-names = "usbdrd30", "usbdrd30_susp_clk";
+	power-domains = <&fsys_pd>;
 };
 
 &usbdrd_phy0 {
 	clocks = <&clock CLK_USBD300>, <&clock CLK_SCLK_USBPHY300>;
 	clock-names = "phy", "ref";
 	samsung,pmu-syscon = <&pmu_system_controller>;
+	power-domains = <&fsys_pd>;
 };
 
 &usbdrd3_1 {
 	clocks = <&clock CLK_USBD301>, <&clock CLK_SCLK_USBD301>;
 	clock-names = "usbdrd30", "usbdrd30_susp_clk";
+	power-domains = <&fsys_pd>;
 };
 
 &usbdrd_dwc3_1 {
@@ -1395,16 +1407,19 @@ &usbdrd_phy1 {
 	clocks = <&clock CLK_USBD301>, <&clock CLK_SCLK_USBPHY301>;
 	clock-names = "phy", "ref";
 	samsung,pmu-syscon = <&pmu_system_controller>;
+	power-domains = <&fsys_pd>;
 };
 
 &usbhost1 {
 	clocks = <&clock CLK_USBH20>;
 	clock-names = "usbhost";
+	power-domains = <&fsys_pd>;
 };
 
 &usbhost2 {
 	clocks = <&clock CLK_USBH20>;
 	clock-names = "usbhost";
+	power-domains = <&fsys_pd>;
 };
 
 &usb2_phy {
@@ -1412,6 +1427,7 @@ &usb2_phy {
 	clock-names = "phy", "ref";
 	samsung,sysreg-phandle = <&sysreg_system_controller>;
 	samsung,pmureg-phandle = <&pmu_system_controller>;
+	power-domains = <&fsys_pd>;
 };
 
 &watchdog {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
