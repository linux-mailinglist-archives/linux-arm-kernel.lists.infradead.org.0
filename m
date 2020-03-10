Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 151F7180889
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 20:50:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dMQpL6wW5XMDZS5rnLCJq68JzwF+agpS+soza9vZ65M=; b=UfPw3D+xOyx2mk
	5X9OW3BX6DPmCE6FyAVbeimqxuOatFWoI2sgcMNTABmB36YvzJiqUqP37reeWLWrBVhxhfKHOlKXm
	2I8yyfS5deYBakEnqvUWNZ0/IengvuFsRYlJf5D4ELAp0zbaFxfbFv8gA/oZ4GugBx6c/6oFhc1aC
	yTnYL+Zu5OraTsPaylkfXa1KX3Pvb6U/1tBY+hRsKmgCR5Lx6f7cQUyTOyCuZcBgA2OhjWMsnDYGO
	DZseTe32c50m435vTw5KLnDvPYF39mW1t6cdf/LlhL3/O9oT+hDH5Ho2MPJWBdASTwo+xfo50Ie3x
	ki8G+SA8jR2VBlMiSkXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBktE-0001zv-MF; Tue, 10 Mar 2020 19:50:08 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBksf-0001mt-KM
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 19:49:35 +0000
Received: by mail-pg1-x544.google.com with SMTP id y30so6763076pga.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 12:49:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BlRRGob7J72IN5GyJz6pdMyom8cMcGq7qyRKyuALUpg=;
 b=rhryD9cRP9JWGlYM8BmlNtISu5pjR9nG0ynqwsbi6rIQ85sDJW03idDEW23s+vAirS
 WMX7E0seO5cpkiDSidLDDQJ/p/IdhM6inTTy9NNR6PHYvav6Jl5Ewuosa+e7jVL54r8p
 N3TT6tp9tBm9wlWi/XGfiWkyyUSYqm4nyzeYzEKfybMl6Fy/hV40g5/UwrTfg2fHW3Qx
 XoTkiIPQ7RVeP2dpTVuzBRhxGGtBR7QEZZAEPQ5B6Dsz9UfDSQS+m7PrF7/NajedMuOO
 XEIFHu0sY/dWoqSsCr1cY8IDT79KmBbVkAeJZqVMGSjVA9RaKBeHxaonyE0DH7vbFFhc
 bo/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BlRRGob7J72IN5GyJz6pdMyom8cMcGq7qyRKyuALUpg=;
 b=Iahp+HAgDhiYNtHBmujFk8VzYNJpnLmR1w9JU6Xhv8DVy5riAE9XD+aP+aeu2DoGtk
 SYH6bX8aUR/yOnoFQzWaEKvy1TtriPKYu5R3hnEdK+rqoitf7pV973XgJhMVhIrECQYn
 dAZUBqVeEiTJ/GBE9Gav/kiJBv8ejMGkdGTAAm2V2v6d052ShbL5HTgafGA8r7hjt4OK
 degtKnEUXl5aNO+Gns2iiYF52cDlPPeiR403OUfDjmzBSgy1BEQRARrn6HkDVOh11vre
 TVb+b8PxFhsQaRS2xvmFzOlvdW4AwExNJMM7tTH/gjIq7EedtUKkeiGTGO8U0wsv5v5T
 dImQ==
X-Gm-Message-State: ANhLgQ0vtRvzulI/Dm411tyP8uPJg/XvLqfkfYfPfV/lTAzvMpILqHnK
 VxN8z8K7HDbd1mvWFXYVuR4=
X-Google-Smtp-Source: ADFU+vtmfAWTjZEtzSy0EMp+kn2zIUsbV2u8IvW/1uuQblViS/0RtEbYS8Ss0AIaLMQ1+5H/3oUNAQ==
X-Received: by 2002:a63:fe58:: with SMTP id x24mr19572503pgj.170.1583869773118; 
 Tue, 10 Mar 2020 12:49:33 -0700 (PDT)
Received: from localhost.localdomain ([45.114.62.228])
 by smtp.gmail.com with ESMTPSA id d19sm3784490pfd.82.2020.03.10.12.49.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 12:49:32 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Subject: [PATCHv3 2/5] ARM: dts: exynos: Add missing usbdrd3 suspend clk
Date: Tue, 10 Mar 2020 19:48:51 +0000
Message-Id: <20200310194854.831-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200310194854.831-1-linux.amoon@gmail.com>
References: <20200310194854.831-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_124933_702282_5EBE6F0E 
X-CRM114-Status: GOOD (  14.02  )
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

Add new compatible strings for USBDRD3 for adding missing
suspend clk, exynos5422 usbdrd3 support two clk USBD300 and
SCLK_USBD300, so add missing suspemd_clk for Exynos542x DWC3 nodes.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
fix the commit message
---
 arch/arm/boot/dts/exynos5410.dtsi | 8 ++++----
 arch/arm/boot/dts/exynos5420.dtsi | 8 ++++----
 arch/arm/boot/dts/exynos54xx.dtsi | 4 ++--
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/exynos5410.dtsi b/arch/arm/boot/dts/exynos5410.dtsi
index 2eab80bf5f3a..19845dcd528f 100644
--- a/arch/arm/boot/dts/exynos5410.dtsi
+++ b/arch/arm/boot/dts/exynos5410.dtsi
@@ -396,8 +396,8 @@ &trng {
 };
 
 &usbdrd3_0 {
-	clocks = <&clock CLK_USBD300>;
-	clock-names = "usbdrd30";
+	clocks = <&clock CLK_USBD300>, <&clock CLK_SCLK_USBD300>;
+	clock-names = "usbdrd30", "usbdrd30_susp_clk";
 };
 
 &usbdrd_phy0 {
@@ -407,8 +407,8 @@ &usbdrd_phy0 {
 };
 
 &usbdrd3_1 {
-	clocks = <&clock CLK_USBD301>;
-	clock-names = "usbdrd30";
+	clocks = <&clock CLK_USBD301>, <&clock CLK_SCLK_USBD301>;
+	clock-names = "usbdrd30", "usbdrd30_susp_clk";
 };
 
 &usbdrd_dwc3_1 {
diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index b672080e7469..bd505256a223 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -1372,8 +1372,8 @@ &trng {
 };
 
 &usbdrd3_0 {
-	clocks = <&clock CLK_USBD300>;
-	clock-names = "usbdrd30";
+	clocks = <&clock CLK_USBD300>, <&clock CLK_SCLK_USBD300>;
+	clock-names = "usbdrd30", "usbdrd30_susp_clk";
 };
 
 &usbdrd_phy0 {
@@ -1383,8 +1383,8 @@ &usbdrd_phy0 {
 };
 
 &usbdrd3_1 {
-	clocks = <&clock CLK_USBD301>;
-	clock-names = "usbdrd30";
+	clocks = <&clock CLK_USBD301>, <&clock CLK_SCLK_USBD301>;
+	clock-names = "usbdrd30", "usbdrd30_susp_clk";
 };
 
 &usbdrd_dwc3_1 {
diff --git a/arch/arm/boot/dts/exynos54xx.dtsi b/arch/arm/boot/dts/exynos54xx.dtsi
index 8aa5117e58ce..0aac6255de5d 100644
--- a/arch/arm/boot/dts/exynos54xx.dtsi
+++ b/arch/arm/boot/dts/exynos54xx.dtsi
@@ -143,7 +143,7 @@ hsi2c_7: i2c@12cd0000 {
 		};
 
 		usbdrd3_0: usb3-0 {
-			compatible = "samsung,exynos5250-dwusb3";
+			compatible = "samsung,exynos5420-dwusb3";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -165,7 +165,7 @@ usbdrd_phy0: phy@12100000 {
 		};
 
 		usbdrd3_1: usb3-1 {
-			compatible = "samsung,exynos5250-dwusb3";
+			compatible = "samsung,exynos5420-dwusb3";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
