Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 706A41FB316
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 15:59:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8gr+Wvsu8dQHDtyhYRYp9Wk1XjObI/B1PbhK5yP8z4=; b=rNf87nekS1se4L
	cAAY9pnYwLilYWrZ9zGkEaOuQTdFcMo6z1lBPS3NKKfW4iY8jzav0oyG8COo3WuVbbz2S9v23nlDN
	N4czOtqvLvyC37cUrAiCrzKuzLHa6Xu6aM0GX41LKmL5N6kR28fY/+Oz9F31a+IP3aehp7VJ4iOMu
	D3JICeVTPfEn5jDbG/8SH75xk6aUeFssMFLIx7dvvtJJTh7fq7jdS1bh6HlAELOHLanmcclasnPD1
	haBUwu3VQk73U3b66kNQMSkM42O8tocuR8JSn6i5in2ob8g6GgaFGdPgl60gJLSag6qSPxM9gx7bH
	SFgJ2CYYHqkBw0p1pw4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlC78-00077x-I7; Tue, 16 Jun 2020 13:58:58 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC1c-0001Om-Fq
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:53:19 +0000
Received: by mail-wm1-x343.google.com with SMTP id l26so2966621wme.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tpIq7vACm4SRxkjFZliC+FSY9hil6puRxlsauHDzKe8=;
 b=ryLdf2LXTxwgiV7DZWr7/VLXC2xIGtU0POGsbmLk+xrVeTszRvGXuy3BDIzboqpXE+
 r1KRxGTBTTxRGoFe9ZZ1i2s4hPEejXZ6LO6nvh0OKrkN351IVql1yUhXR0MQbdEnytup
 x1Lx16+Vm27p4+qolpdSosQcDD1eBOWhvh6Q63I8A9r3/iX+SK8UsC1qB3pIEkS8+TBL
 DxnXEv9F5tWTc+yTXvG2g6vTuhP5fvW+YvHj2syCLd3UNvpt8sn2i24KEftZsKpiNquz
 niogcl9am/UShqHR9vgd1Tr+y5FkmUiXjy7TIAJKDbDIvQQKpyh5FG8iVhKIY8CrTq21
 3gMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tpIq7vACm4SRxkjFZliC+FSY9hil6puRxlsauHDzKe8=;
 b=bWw961uTCDc26nhBSn1kdSTswyHn9huquvDQgN3rBmuQjmwqzcypK0mZRj8Olc4YAk
 RFpnqN15WN9BT+S9rRwIGSlqtrHLMvYWsX64WzlgXH3if/4t4FC4QF2qsU8yNkJ80ALn
 ltm824rWI1Fena86qLL7ZjqnVJLUw8Nm9ttJcTVLWfg87LvW+c/mn1trTLsjZmAvcxHn
 NODaCQYxQASgW6cmBkB2V910wIveUQ4ZP604TBUEqi7jlas2RGnv0qByPKBpat0nLOuu
 q7XdIMkDL2rqG5S7W5mp0l7jjixvXNoNTJNWCcccQbH+5vTiM9yFVpAL5I6ErQEGVS6U
 i0Pg==
X-Gm-Message-State: AOAM532sQW0ZCdbhX/cmx8Uhw2qcT60Mw49elHK54bv6gM9fT7Mm2NJp
 ut1BwyI4baZfODZNO6khni0=
X-Google-Smtp-Source: ABdhPJzipveQTxSMnAX+CCSmUY/8CMrXker9nYOnhziBKgxrErWzwb0f+Alxp/k8cVnTn0Fsbmy3/g==
X-Received: by 2002:a1c:c302:: with SMTP id t2mr3273849wmf.72.1592315594678;
 Tue, 16 Jun 2020 06:53:14 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id o9sm3983949wmh.37.2020.06.16.06.53.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:53:13 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 12/73] ARM: tegra: Drop display controller parent clocks on
 Tegra114
Date: Tue, 16 Jun 2020 15:51:37 +0200
Message-Id: <20200616135238.3001888-13-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065316_598026_EE7C2BB4 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

The parent clocks are determined by the output that will be used, not by
the display controller that drives the output. Drop the parent clocks
from the display controller device tree nodes.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra114.dtsi | 10 ++++------
 arch/arm/boot/dts/tegra124.dtsi | 10 ++++------
 arch/arm/boot/dts/tegra20.dtsi  | 10 ++++------
 arch/arm/boot/dts/tegra30.dtsi  | 10 ++++------
 4 files changed, 16 insertions(+), 24 deletions(-)

diff --git a/arch/arm/boot/dts/tegra114.dtsi b/arch/arm/boot/dts/tegra114.dtsi
index a06b88b01ef3..23df7a5f37d3 100644
--- a/arch/arm/boot/dts/tegra114.dtsi
+++ b/arch/arm/boot/dts/tegra114.dtsi
@@ -59,9 +59,8 @@ dc@54200000 {
 			compatible = "nvidia,tegra114-dc";
 			reg = <0x54200000 0x00040000>;
 			interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&tegra_car TEGRA114_CLK_DISP1>,
-				 <&tegra_car TEGRA114_CLK_PLL_P>;
-			clock-names = "dc", "parent";
+			clocks = <&tegra_car TEGRA114_CLK_DISP1>;
+			clock-names = "dc";
 			resets = <&tegra_car 27>;
 			reset-names = "dc";
 
@@ -78,9 +77,8 @@ dc@54240000 {
 			compatible = "nvidia,tegra114-dc";
 			reg = <0x54240000 0x00040000>;
 			interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&tegra_car TEGRA114_CLK_DISP2>,
-				 <&tegra_car TEGRA114_CLK_PLL_P>;
-			clock-names = "dc", "parent";
+			clocks = <&tegra_car TEGRA114_CLK_DISP2>;
+			clock-names = "dc";
 			resets = <&tegra_car 26>;
 			reset-names = "dc";
 
diff --git a/arch/arm/boot/dts/tegra124.dtsi b/arch/arm/boot/dts/tegra124.dtsi
index 1afed8496c95..2c992e8e3594 100644
--- a/arch/arm/boot/dts/tegra124.dtsi
+++ b/arch/arm/boot/dts/tegra124.dtsi
@@ -105,9 +105,8 @@ dc@54200000 {
 			compatible = "nvidia,tegra124-dc";
 			reg = <0x0 0x54200000 0x0 0x00040000>;
 			interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&tegra_car TEGRA124_CLK_DISP1>,
-				 <&tegra_car TEGRA124_CLK_PLL_P>;
-			clock-names = "dc", "parent";
+			clocks = <&tegra_car TEGRA124_CLK_DISP1>;
+			clock-names = "dc";
 			resets = <&tegra_car 27>;
 			reset-names = "dc";
 
@@ -120,9 +119,8 @@ dc@54240000 {
 			compatible = "nvidia,tegra124-dc";
 			reg = <0x0 0x54240000 0x0 0x00040000>;
 			interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&tegra_car TEGRA124_CLK_DISP2>,
-				 <&tegra_car TEGRA124_CLK_PLL_P>;
-			clock-names = "dc", "parent";
+			clocks = <&tegra_car TEGRA124_CLK_DISP2>;
+			clock-names = "dc";
 			resets = <&tegra_car 26>;
 			reset-names = "dc";
 
diff --git a/arch/arm/boot/dts/tegra20.dtsi b/arch/arm/boot/dts/tegra20.dtsi
index f0a172c61b26..8b6909839f59 100644
--- a/arch/arm/boot/dts/tegra20.dtsi
+++ b/arch/arm/boot/dts/tegra20.dtsi
@@ -103,9 +103,8 @@ dc@54200000 {
 			compatible = "nvidia,tegra20-dc";
 			reg = <0x54200000 0x00040000>;
 			interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&tegra_car TEGRA20_CLK_DISP1>,
-				 <&tegra_car TEGRA20_CLK_PLL_P>;
-			clock-names = "dc", "parent";
+			clocks = <&tegra_car TEGRA20_CLK_DISP1>;
+			clock-names = "dc";
 			resets = <&tegra_car 27>;
 			reset-names = "dc";
 
@@ -120,9 +119,8 @@ dc@54240000 {
 			compatible = "nvidia,tegra20-dc";
 			reg = <0x54240000 0x00040000>;
 			interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&tegra_car TEGRA20_CLK_DISP2>,
-				 <&tegra_car TEGRA20_CLK_PLL_P>;
-			clock-names = "dc", "parent";
+			clocks = <&tegra_car TEGRA20_CLK_DISP2>;
+			clock-names = "dc";
 			resets = <&tegra_car 26>;
 			reset-names = "dc";
 
diff --git a/arch/arm/boot/dts/tegra30.dtsi b/arch/arm/boot/dts/tegra30.dtsi
index 27000f0ba35b..23fedb76e5ae 100644
--- a/arch/arm/boot/dts/tegra30.dtsi
+++ b/arch/arm/boot/dts/tegra30.dtsi
@@ -200,9 +200,8 @@ dc@54200000 {
 			compatible = "nvidia,tegra30-dc", "nvidia,tegra20-dc";
 			reg = <0x54200000 0x00040000>;
 			interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&tegra_car TEGRA30_CLK_DISP1>,
-				 <&tegra_car TEGRA30_CLK_PLL_P>;
-			clock-names = "dc", "parent";
+			clocks = <&tegra_car TEGRA30_CLK_DISP1>;
+			clock-names = "dc";
 			resets = <&tegra_car 27>;
 			reset-names = "dc";
 
@@ -219,9 +218,8 @@ dc@54240000 {
 			compatible = "nvidia,tegra30-dc";
 			reg = <0x54240000 0x00040000>;
 			interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&tegra_car TEGRA30_CLK_DISP2>,
-				 <&tegra_car TEGRA30_CLK_PLL_P>;
-			clock-names = "dc", "parent";
+			clocks = <&tegra_car TEGRA30_CLK_DISP2>;
+			clock-names = "dc";
 			resets = <&tegra_car 26>;
 			reset-names = "dc";
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
