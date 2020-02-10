Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A36D215731A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 11:52:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vLuC7G/nu8XxjO+j2u2xQ+D6AHUEte+jBLdPIgdRspM=; b=lts5LjTSYJR018
	g70vX6qFwT30YZGWtHh4bbikIO5kMMv83yGQBFHd7I3iIETa7iSsN7p6YI+F5zq2ng5lUpQCwO4RO
	QSKWK3wlMJctqQXFp9iSZrN1x95vZlnvvnWbC0VAC/e2SdQCp1oiZGlnr27xMb5vHy9+kQYG9iTqd
	ZzTPKPJGnMNsdst1OwXi1v1pr1NYakpJT0aZZZ9XNWeUCbWlBaM7hAbwGVjSq7IsVtO60ROmDqOrH
	oi/DiJaQRyntnZ520HBYhlx0QLKcWdaVVVTvGKbhWmKBedtLuAoePgCX0bGzQYQaDDxayRMr6nMSu
	YqM+WP8KrNk5VJAlXfnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j16fQ-00025o-FT; Mon, 10 Feb 2020 10:51:52 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j16f0-0001hp-SF
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 10:51:28 +0000
Received: by mail-pf1-x443.google.com with SMTP id k29so3514223pfp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 02:51:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p42+ttO1ACEDu5FtoT82sx8qB9cgNKUTPXb7H+w5L8U=;
 b=e5gEYlBGSlInNn4AZG1XTTS46MWPOqap/JFR+eiDitC23urRR1tMrP7R9ZoWSgwxos
 VhXUL0/zA89byw0SjgSZhCNCl6jZ0sDpmsFIhzehBmVW+x1DddG7cP6RPkkIga8lHQls
 VVtXMDpAOzYiGQS6EmZ7QPCmu3hUtRFGMwC5RjsD36sGfWXXGYYKOg+gbfjPprlULXfu
 GCeLwGczRH9f1NKxXmPm50Q9qN2NGTjxn0mHy7V7P4J00GrT6WvtQfqfnO/xcdxk63WE
 gjLB/VhZDCG2QJ4jOVpzKiadFYkVo9ezckoTAppoH3N/F9g42TBErZ6u2HbDi92iRU1u
 nJcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p42+ttO1ACEDu5FtoT82sx8qB9cgNKUTPXb7H+w5L8U=;
 b=kqV/sSmzRYTGIU/QXTkH9LQymajE1Bri9xgIYwT2H6gqW+QYPXF+ehtAIrFv6c2Ojh
 56uOPvhzEUnsj5RvM29Ay/4kkhLWpXRoWxPARiPLYEMfc7+L4ktcPt6hi623vdrNPH44
 TfGxYfSQIb1aGL6Vwn9A1F8ESFeb/Z790TWqNe8/wiFzduYXKrLrxg3RcVT9xEjXxLXF
 rerfEYfNJoz4akBgcXryqq2u5TU+0y3FOCvCutu1n2NBtF9GRzS/upSzoMQuRi+QtdnI
 L8XRnxRw2HEl0H8OIDpKvj+NNysG1l6Qsl5efnCUhdQAXZV+fWxv9KRYdQ4Ow2gi762u
 BaBw==
X-Gm-Message-State: APjAAAXwleXz8rsNB2Ub/pp7cBp8TEdrv1ltVjgK0McZFHu8J+6FwA6B
 6ECCA+qEKcCaOPxfED+Hwnc=
X-Google-Smtp-Source: APXvYqw8iY+vqIud8Ioh0QjR3WQXowpWGR+Hec/dOvsjTK0/PQfZW5BgsXFAwnUGmQz4TSoCS7H3NQ==
X-Received: by 2002:a65:5283:: with SMTP id y3mr1032908pgp.370.1581331886236; 
 Mon, 10 Feb 2020 02:51:26 -0800 (PST)
Received: from localhost.localdomain ([45.114.62.33])
 by smtp.gmail.com with ESMTPSA id g18sm12104833pfi.80.2020.02.10.02.51.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 02:51:25 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCHv3 2/3] ARM: dts: exynos: Add missing usbdrd3 suspend clk
Date: Mon, 10 Feb 2020 10:51:07 +0000
Message-Id: <20200210105108.1128-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210105108.1128-1-linux.amoon@gmail.com>
References: <20200210105108.1128-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_025126_973681_7321DCCD 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds new combatible strings for USBDRD3
for adding missing suspend clk, exynos5422 usbdrd3
support two clk USBD300 and SCLK_USBD300, so add missing
suspemd_clk for Exynos542x DWC3 nodes.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 arch/arm/boot/dts/exynos5420.dtsi | 8 ++++----
 arch/arm/boot/dts/exynos54xx.dtsi | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

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
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
