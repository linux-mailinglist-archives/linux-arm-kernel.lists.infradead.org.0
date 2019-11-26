Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1AA109E41
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 13:49:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k2Nb0u7xqICuN/9aJnf6LWLX94DOs3a06QpQMpoErQM=; b=hEww0UKTVFBXFh
	ZF3R9x8sCtimv8ggLnBUqwc8hm333FwFlyiM+M+dk2KGrfQC57m2B3r35WE30kLVm14gAlPbtwzql
	LkvOn6P2Z1w2peDPKLS5qE78JYu64Rt7VLv2jkig7cLWCNqtCTSgtB1uP91uNQZU1lbKtzo9dZY9h
	opoipOH80YJHAC4ULVwdA1IWtF2tDh5T1lYACXPwm2zGFWtQjutgLS/qdyq6PDbVmeWZ4sPQ1aqcD
	ZUNtxnao+ZDhf4s+YuSJgyGAV4xp9R3K6ZeIsYhB+KkhPbZmqHnbFWueTsETovxR0++QP5NkAYhl+
	3O5L9oCVX9aN0GLMuyng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZaHO-0005Lh-OP; Tue, 26 Nov 2019 12:49:18 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZaG2-0002Hf-Lx
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 12:47:56 +0000
Received: by mail-lf1-x144.google.com with SMTP id y5so1263723lfy.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 04:47:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MjkUMS44IlupoDCTn64uvPwtCzdUzIO1TZ6FO2BGbwM=;
 b=w3OTUCFSh20BhTrbSJ+3Pf8v0JitRZ9VDDzrkAdFWafoatbb52tEWU000bVcI/42VV
 l6rgNXK5JGS4/6/CV5toTl1UDuXJ57cA9Qot6RmA/65sRHWYRtt4kH+cCZCcpfNzqdbC
 RNsUuMxdAjtNiPezpj48AWP+8YPdkyGumhlNERPjOvGScYcDqEo6lRI1gWxRoEuswcvl
 pkmohHpfPJj5SJVWSbEq3QxgpE7F9/UA+mYm64yxQDFIPuEfTFkxx3+Ge1W+mdvZHbHl
 pWqfLSCqP2toyesIEmIJEHUZe4AZAAnU00EKH9ogwbSNUaP82Geb0K5568t2fb5Relts
 /fLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MjkUMS44IlupoDCTn64uvPwtCzdUzIO1TZ6FO2BGbwM=;
 b=k0x9HV67scYHhx2A3qltRAI1k52EaWYxqywF7u9nN8Xf9p5D0zyu/daa0j48WiOYSF
 1HmDuL7ZDH58HtFS3bVvU3u4VRmC93zaRguwjwHvWge2xlUuuPw6BRa2+oFpZ+75xS/i
 7I1U4gVwQE+Q1bUygpB/EjOVB8LJYd7epFncYDBisQ408nSl65KqocwF5cQyP//zxAwn
 gxj18uSIHB0F+w6MBGltEegE8fmaXRHTUll2yuTq0OXGynFgbVl48GhZNd2PrtrfUtkR
 NRd8waF6vCa5dLeu18o7W9Fdvvr/ymHvRRC6tisL4espPA7Wn1mzUuDmeBax0R4WUyIa
 SfhQ==
X-Gm-Message-State: APjAAAU6FLcOMY1NdI00ZmJM87iVczkznvL33EfMW7w/3OukQjDsQgtq
 KKa0MUqIw9cHt7H+zWfRrk1yk1UejKc=
X-Google-Smtp-Source: APXvYqwzEHcPa4LpXJ3FSRC/5hZtQ7iH+LmTCPyvJLyh0+nl9doV4x7qfJmWuaxdt70KGatSxR+wtA==
X-Received: by 2002:ac2:53ba:: with SMTP id j26mr2559843lfh.92.1574772473016; 
 Tue, 26 Nov 2019 04:47:53 -0800 (PST)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id j10sm14874lfc.53.2019.11.26.04.47.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Nov 2019 04:47:51 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/4] ARM: dts: ux500: Fix up DSI controller nodes
Date: Tue, 26 Nov 2019 13:47:38 +0100
Message-Id: <20191126124738.77690-4-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191126124738.77690-1-linus.walleij@linaro.org>
References: <20191126124738.77690-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_044754_781690_FC08E2F3 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Stephan Gerhold <stephan@gerhold.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These nodes should be named dsi-controller@* so fix it up.

Cc: Stephan Gerhold <stephan@gerhold.net>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/ste-dbx5x0.dtsi             | 6 +++---
 arch/arm/boot/dts/ste-href-tvk1281618-r2.dtsi | 2 +-
 arch/arm/boot/dts/ste-href-tvk1281618-r3.dtsi | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/ste-dbx5x0.dtsi b/arch/arm/boot/dts/ste-dbx5x0.dtsi
index 4e02b1b6c0bf..f4fb782d3afc 100644
--- a/arch/arm/boot/dts/ste-dbx5x0.dtsi
+++ b/arch/arm/boot/dts/ste-dbx5x0.dtsi
@@ -1092,7 +1092,7 @@
 			ranges;
 			status = "disabled";
 
-			dsi0: dsi@a0351000 {
+			dsi0: dsi-controller@a0351000 {
 				compatible = "ste,mcde-dsi";
 				reg = <0xa0351000 0x1000>;
 				clocks = <&prcmu_clk PRCMU_DSI0CLK>, <&prcmu_clk PRCMU_DSI0ESCCLK>;
@@ -1100,7 +1100,7 @@
 				#address-cells = <1>;
 				#size-cells = <0>;
 			};
-			dsi1: dsi@a0352000 {
+			dsi1: dsi-controller@a0352000 {
 				compatible = "ste,mcde-dsi";
 				reg = <0xa0352000 0x1000>;
 				clocks = <&prcmu_clk PRCMU_DSI1CLK>, <&prcmu_clk PRCMU_DSI1ESCCLK>;
@@ -1108,7 +1108,7 @@
 				#address-cells = <1>;
 				#size-cells = <0>;
 			};
-			dsi2: dsi@a0353000 {
+			dsi2: dsi-controller@a0353000 {
 				compatible = "ste,mcde-dsi";
 				reg = <0xa0353000 0x1000>;
 				/* This DSI port only has the Low Power / Energy Save clock */
diff --git a/arch/arm/boot/dts/ste-href-tvk1281618-r2.dtsi b/arch/arm/boot/dts/ste-href-tvk1281618-r2.dtsi
index e024520f4d47..de82b9db956f 100644
--- a/arch/arm/boot/dts/ste-href-tvk1281618-r2.dtsi
+++ b/arch/arm/boot/dts/ste-href-tvk1281618-r2.dtsi
@@ -66,7 +66,7 @@
 		mcde@a0350000 {
 			status = "okay";
 
-			dsi@a0351000 {
+			dsi-controller@a0351000 {
 				panel {
 					compatible = "samsung,s6d16d0";
 					reg = <0>;
diff --git a/arch/arm/boot/dts/ste-href-tvk1281618-r3.dtsi b/arch/arm/boot/dts/ste-href-tvk1281618-r3.dtsi
index cb3677f0a1cb..9f285c7cf914 100644
--- a/arch/arm/boot/dts/ste-href-tvk1281618-r3.dtsi
+++ b/arch/arm/boot/dts/ste-href-tvk1281618-r3.dtsi
@@ -45,7 +45,7 @@
 		mcde@a0350000 {
 			status = "okay";
 
-			dsi@a0351000 {
+			dsi-controller@a0351000 {
 				panel {
 					compatible = "sony,acx424akp";
 					reg = <0>;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
