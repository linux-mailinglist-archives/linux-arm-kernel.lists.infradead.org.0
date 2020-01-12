Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFDC11387E5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 20:13:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6dzZ8Nri19u2TwTn4IRVk/FhaVrE5S9vqjEZ6d1Sup8=; b=MvH3gRufIUPfmh
	bRo88CFcTi8MLnW/nNVZxR0C23bOQw5Q15KJ1icmBLluS1uR3XBNlb0fHwxRNcMvVedUWvYdL+hMq
	5VDxFW9diaB/+Bnd3QCTbmZgEn2PIs6xF/0fzDGenw678DKNX/ktzepcLoim/mSmt39vpK7aB2miO
	3yha51TPNN3znKAKQJ9KHqIENM5VlLUMHSoyzvVKhAWFWYmM+RSn3XaoilimO8rkRer06Mxy0bwgn
	Tb433WAjnfkonZWF276zz1h9kBYynRPuWBXHa5NhUBfpXU53Wa96r3hZfuFmNWPW69qoHuaYcoJOj
	fMX/zV/KFhatGktNvuzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqigC-0000aD-SW; Sun, 12 Jan 2020 19:13:44 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqig1-0000Zc-5K
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 19:13:34 +0000
Received: by mail-wr1-x442.google.com with SMTP id y17so6505570wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Jan 2020 11:13:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F93r4W5TT+UANdmf3uZsJ4rCPeQMdPoslDgiksoeuZM=;
 b=DV2eAX2nCi+sT5spOQZVveW1lzDfsjoe/jHMteFsOvFy3L40Th+QWqMXwDKROd8MqS
 Y4yQfM4D8zFJlQP9YXzKmrxutHmZo5hE7jx4rcKv5HpOk89Zw4Vc9I4uOUG3j6Dupj5/
 Z1fi6okm8TMR3IU3ARfB1Xry9uY7O4LqaK/Brp3kqfhh7X8ZMJrpWW/4WwWVol/JS8uK
 +vQU05myd2JJLdup6+ZI6eiWGv5MbYQS9Zw8gfe1Oj1qtaFJqfIdCad/JWtTGgRpAXTm
 2ezsOmUXlB6/mBie3taIncQdpk+FjaoakKK7K0SazCEtwR64fCBiZyxD0EIkDowgDFvn
 XqzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F93r4W5TT+UANdmf3uZsJ4rCPeQMdPoslDgiksoeuZM=;
 b=ZIOWap+2+LCJcbIVh0uGqZG+UhR7qjOHwkhu+D4J+FW66OuAgLEJGbiCJ8BPmRfbaM
 EK4TEO4tHZgXrAteRsWEqWvAqhpWuezVXSYBDHmV5J+Uk1JefpYolhU1P9nOBOXDrvT2
 Thr/5XHWzfxLFZP+bDv/H0+5xLiPvAjUaahefiVywBhd3TRaCjTO+piHNjdR7Q+4NkFQ
 rq5fKAuY5v6Ct73Kjh4dgZwBQpVouSnGeglj4WuSCl3EKyCGp/k5zNhT4+9PiroGnbPO
 xG/j9Ahz6gW/q4P33KP0p/whgnub2GfhgOku6lQLpPN3i9wyptOGJTj5CUr4ymI9TP0a
 t1nA==
X-Gm-Message-State: APjAAAWyu2HFEfM/wfjZmzPWy2eWeDCmFlz6xMswhfZ6T6u9rzP77Xcq
 2xPwSrtzY2GtpHeo03UrLOXHXyTW
X-Google-Smtp-Source: APXvYqwpHMDLdCF8cLDyA9fbFvj870WcW9R+1uWaUnO2bw2pZGKS/h90TZIF9GOy+rnZnUfg+yjQiA==
X-Received: by 2002:a5d:45c4:: with SMTP id b4mr14409475wrs.303.1578856410865; 
 Sun, 12 Jan 2020 11:13:30 -0800 (PST)
Received: from chi.lan (cst-prg-19-39.cust.vodafone.cz. [46.135.19.39])
 by smtp.gmail.com with ESMTPSA id o7sm10974030wmh.11.2020.01.12.11.13.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Jan 2020 11:13:28 -0800 (PST)
From: marek.vasut@gmail.com
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC][PATCH] ARM: dts: renesas: Add missing ethernet PHY reset GPIO
 on Gen2 reference boards
Date: Sun, 12 Jan 2020 20:13:15 +0100
Message-Id: <20200112191315.118831-1-marek.vasut@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_111333_229430_D4D54826 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marek.vasut[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-renesas-soc@vger.kernel.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marek Vasut <marek.vasut+renesas@gmail.com>

The ethernet PHY reset GPIO was missing and the kernel was depending
solely on the bootloader to bring the PHY out of reset. Fix this to
get rid of the dependency on bootloader.

Signed-off-by: Marek Vasut <marek.vasut+renesas@gmail.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
NOTE: Thus far tested on R8A7791 Koelsch
---
 arch/arm/boot/dts/r8a7790-lager.dts   | 1 +
 arch/arm/boot/dts/r8a7790-stout.dts   | 1 +
 arch/arm/boot/dts/r8a7791-koelsch.dts | 1 +
 arch/arm/boot/dts/r8a7791-porter.dts  | 1 +
 arch/arm/boot/dts/r8a7793-gose.dts    | 1 +
 arch/arm/boot/dts/r8a7794-alt.dts     | 1 +
 arch/arm/boot/dts/r8a7794-silk.dts    | 1 +
 7 files changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/r8a7790-lager.dts b/arch/arm/boot/dts/r8a7790-lager.dts
index 097fd9317c6e..b88d4f4d5d9e 100644
--- a/arch/arm/boot/dts/r8a7790-lager.dts
+++ b/arch/arm/boot/dts/r8a7790-lager.dts
@@ -671,6 +671,7 @@ &ether {
 
 	phy1: ethernet-phy@1 {
 		reg = <1>;
+		reset-gpios = <&gpio5 31 GPIO_ACTIVE_LOW>;
 		interrupt-parent = <&irqc0>;
 		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
 		micrel,led-mode = <1>;
diff --git a/arch/arm/boot/dts/r8a7790-stout.dts b/arch/arm/boot/dts/r8a7790-stout.dts
index a315ba749aa4..98dcfcbf0b70 100644
--- a/arch/arm/boot/dts/r8a7790-stout.dts
+++ b/arch/arm/boot/dts/r8a7790-stout.dts
@@ -200,6 +200,7 @@ &ether {
 
 	phy1: ethernet-phy@1 {
 		reg = <1>;
+		reset-gpios = <&gpio3 31 GPIO_ACTIVE_LOW>;
 		interrupt-parent = <&irqc0>;
 		interrupts = <1 IRQ_TYPE_LEVEL_LOW>;
 		micrel,led-mode = <1>;
diff --git a/arch/arm/boot/dts/r8a7791-koelsch.dts b/arch/arm/boot/dts/r8a7791-koelsch.dts
index 2b096d5e06fb..6619689a17d4 100644
--- a/arch/arm/boot/dts/r8a7791-koelsch.dts
+++ b/arch/arm/boot/dts/r8a7791-koelsch.dts
@@ -630,6 +630,7 @@ &ether {
 
 	phy1: ethernet-phy@1 {
 		reg = <1>;
+		reset-gpios = <&gpio5 22 GPIO_ACTIVE_LOW>;
 		interrupt-parent = <&irqc0>;
 		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
 		micrel,led-mode = <1>;
diff --git a/arch/arm/boot/dts/r8a7791-porter.dts b/arch/arm/boot/dts/r8a7791-porter.dts
index f9ece7ab2010..2ba2e8e5f1c3 100644
--- a/arch/arm/boot/dts/r8a7791-porter.dts
+++ b/arch/arm/boot/dts/r8a7791-porter.dts
@@ -304,6 +304,7 @@ &ether {
 
 	phy1: ethernet-phy@1 {
 		reg = <1>;
+		reset-gpios = <&gpio5 22 GPIO_ACTIVE_LOW>;
 		interrupt-parent = <&irqc0>;
 		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
 		micrel,led-mode = <1>;
diff --git a/arch/arm/boot/dts/r8a7793-gose.dts b/arch/arm/boot/dts/r8a7793-gose.dts
index 22ca7cd1e7d2..4da82f1e1e94 100644
--- a/arch/arm/boot/dts/r8a7793-gose.dts
+++ b/arch/arm/boot/dts/r8a7793-gose.dts
@@ -588,6 +588,7 @@ &ether {
 
 	phy1: ethernet-phy@1 {
 		reg = <1>;
+		reset-gpios = <&gpio5 22 GPIO_ACTIVE_LOW>;
 		interrupt-parent = <&irqc0>;
 		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
 		micrel,led-mode = <1>;
diff --git a/arch/arm/boot/dts/r8a7794-alt.dts b/arch/arm/boot/dts/r8a7794-alt.dts
index f79fce74cd9c..7aa1e8ca808b 100644
--- a/arch/arm/boot/dts/r8a7794-alt.dts
+++ b/arch/arm/boot/dts/r8a7794-alt.dts
@@ -340,6 +340,7 @@ &ether {
 
 	phy1: ethernet-phy@1 {
 		reg = <1>;
+		reset-gpios = <&gpio1 24 GPIO_ACTIVE_LOW>;
 		interrupt-parent = <&irqc0>;
 		interrupts = <8 IRQ_TYPE_LEVEL_LOW>;
 		micrel,led-mode = <1>;
diff --git a/arch/arm/boot/dts/r8a7794-silk.dts b/arch/arm/boot/dts/r8a7794-silk.dts
index 2c16ad854300..3c0ed684f4a1 100644
--- a/arch/arm/boot/dts/r8a7794-silk.dts
+++ b/arch/arm/boot/dts/r8a7794-silk.dts
@@ -391,6 +391,7 @@ &ether {
 
 	phy1: ethernet-phy@1 {
 		reg = <1>;
+		reset-gpios = <&gpio1 24 GPIO_ACTIVE_LOW>;
 		interrupt-parent = <&irqc0>;
 		interrupts = <8 IRQ_TYPE_LEVEL_LOW>;
 		micrel,led-mode = <1>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
