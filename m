Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FFC16FCFA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 12:10:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0eYLu9T2WIvb+zmH2/Sid8VQmtsvqoK5u+WjgqvZMyc=; b=LxkrwSpsHFzbkC
	b1U71u3TCftrjMgN7wQMEJVCW5Vp1OpR4w7SMpkzgz80RiogQv1WNqDSpavuSNo94r3t7onnIqVz9
	KxB18HRjd4QLVViLDeQLuX4p8l586XfH5TyuEsgWU9mVZxx0ug0TfO8clBZQkVCV4Hh/OkheF7+fH
	oY9sQzAjoia2WDGkAStYW6ttSgtL7SsAmJV/GSrvqARqzfca4Yb4OXJTOqt+DApbbAxmD0ekZD2FG
	djVGuFz8kd0md73tYzTwb8O+MR7UfUUlSNf9XSs8ipcfeze5JbwND+bu6Xmq2Vp7bLYPxdfBptJCJ
	bEuDfmQz95xqRwNfTQOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ua6-0002Uy-2k; Wed, 26 Feb 2020 11:10:22 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6uZt-00024i-Np
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 11:10:12 +0000
Received: by mail-lj1-x241.google.com with SMTP id h23so2611335ljc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 03:10:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FsgbEzBxjKSv2xuQB4khOQkKbskk5aVcNPSeji/sUrE=;
 b=UlLWXv77kEousFnEiEzNx9EQpIyIorKP91GluWedvIUlussTXIdQkZrk2HEQo2M1J8
 D+SXjjcPCk7d/czFVRWMFdtDLPL2I5BXmdjaAxE+3nwvgdDzN4+w0pDG3yspM3UScvFN
 4gVb7vRspPDmf3lZR8QS/Y/FRcBDpIM35tRdkPPsEnnSySbo9dUiKrhuDtB7/iKq3IVr
 EudX8WM8VQe54za4fnAQ4JP9BtkWUd9gII6HkllKrMowv+x6l4lHhaMaQIEYBIZ++CYC
 eFY33lsvlG2DiBVahTMrS74PoZVwxqTboFSc9399TxYAesOHI7fA6XrZCmRrMeeNTUAC
 QXUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FsgbEzBxjKSv2xuQB4khOQkKbskk5aVcNPSeji/sUrE=;
 b=NfrWjqWDPwzzY2kLtNFBpv+0UXzxSbMX4TUH+twgBOh6HCjD7/vsv4N2LaxeQOBEN0
 APtpliVCxf3RYY1k30/Uk37DjzgheU1N/ku5rBduaIBazqG5yvAVdNtKkJDk0LBpiQvx
 L8dJ5iHiOJqNOVPEC7jVozpbs31q0iCnWdmI/FNc9nFlWzb05yF80rqCDE+7uDODPGF8
 UDvW2RISDljkA9WG1Bfjqj4CpxEMPmuRvm61ca8tOos0mCwUB2c8DfP877soP2/p2d1V
 Jzu0QeclI2AurzehQ9u70GFUYjq1OlrItZAyqPNNl+eKJ1n0MLVty/nwV2sbSBqN8H4E
 oCeQ==
X-Gm-Message-State: APjAAAXuSO9LzUeA36chAuuzHGcEpKyOD5SBwvqRepZWEpMYrDprCw0y
 OrkqP1CDYaJyY0/nGhSgTKghayfzudA=
X-Google-Smtp-Source: ADFU+vuQuPMZ7BPQ90s3i7DwpjzrVA1xy/DsYefI/WyoxEZU/s8CwUH1QwfB4Z90RxmIpizjXCp62g==
X-Received: by 2002:a2e:b60d:: with SMTP id r13mr2664146ljn.40.1582715406135; 
 Wed, 26 Feb 2020 03:10:06 -0800 (PST)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id y7sm1009743ljy.92.2020.02.26.03.10.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 03:10:05 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM/arm64: dts: Rename SMB bus to just bus
Date: Wed, 26 Feb 2020 12:09:56 +0100
Message-Id: <20200226110956.135214-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_031009_817130_49F782D4 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Discussing the YAML validation schema with the DT maintainers
it came out that a bus named "smb@80000000" is not really
accepted, and the schema was written to name the static memory
bus just "bus@80000000".

This change is necessary for the schema to kick in and validate
these device trees, else the schema gets ignored.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Hi Sudeep, if you agree I can merge this patch with the bunch
of new YAML schemas, I can also split it if you prefer that.
---
 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi              | 2 +-
 arch/arm/boot/dts/vexpress-v2m.dtsi                  | 2 +-
 arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dts          | 2 +-
 arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts           | 2 +-
 arch/arm/boot/dts/vexpress-v2p-ca5s.dts              | 2 +-
 arch/arm/boot/dts/vexpress-v2p-ca9.dts               | 2 +-
 arch/arm64/boot/dts/arm/foundation-v8.dtsi           | 2 +-
 arch/arm64/boot/dts/arm/fvp-base-revc.dts            | 2 +-
 arch/arm64/boot/dts/arm/juno-base.dtsi               | 2 +-
 arch/arm64/boot/dts/arm/juno-motherboard.dtsi        | 2 +-
 arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts           | 2 +-
 arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi | 2 +-
 arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi     | 2 +-
 arch/arm64/boot/dts/arm/vexpress-v2f-1xv7-ca53x2.dts | 2 +-
 14 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
index dfae90adbb7c..5c183483ec3b 100644
--- a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
@@ -19,7 +19,7 @@
  */
 
 / {
-	smb@8000000 {
+	bus@8000000 {
 		motherboard {
 			model = "V2M-P1";
 			arm,hbi = <0x190>;
diff --git a/arch/arm/boot/dts/vexpress-v2m.dtsi b/arch/arm/boot/dts/vexpress-v2m.dtsi
index 2e29d7790497..5e48b641068a 100644
--- a/arch/arm/boot/dts/vexpress-v2m.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m.dtsi
@@ -19,7 +19,7 @@
  */
 
 / {
-	smb@4000000 {
+	bus@4000000 {
 		motherboard {
 			model = "V2M-P1";
 			arm,hbi = <0x190>;
diff --git a/arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dts b/arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dts
index 0dc4277d5f8b..f82fa34c90be 100644
--- a/arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dts
+++ b/arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dts
@@ -236,7 +236,7 @@ energy {
 		};
 	};
 
-	smb@8000000 {
+	bus@8000000 {
 		compatible = "simple-bus";
 
 		#address-cells = <2>;
diff --git a/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts b/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
index 1de0a658adf1..3ac95a179452 100644
--- a/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
+++ b/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
@@ -608,7 +608,7 @@ etm2_out_port: endpoint {
 		};
 	};
 
-	smb: smb@8000000 {
+	smb: bus@8000000 {
 		compatible = "simple-bus";
 
 		#address-cells = <2>;
diff --git a/arch/arm/boot/dts/vexpress-v2p-ca5s.dts b/arch/arm/boot/dts/vexpress-v2p-ca5s.dts
index d5b47d526f9e..7aa64ae25779 100644
--- a/arch/arm/boot/dts/vexpress-v2p-ca5s.dts
+++ b/arch/arm/boot/dts/vexpress-v2p-ca5s.dts
@@ -206,7 +206,7 @@ temp-dcc {
 		};
 	};
 
-	smb: smb@8000000 {
+	smb: bus@8000000 {
 		compatible = "simple-bus";
 
 		#address-cells = <2>;
diff --git a/arch/arm/boot/dts/vexpress-v2p-ca9.dts b/arch/arm/boot/dts/vexpress-v2p-ca9.dts
index d796efaadbe3..623246f37448 100644
--- a/arch/arm/boot/dts/vexpress-v2p-ca9.dts
+++ b/arch/arm/boot/dts/vexpress-v2p-ca9.dts
@@ -295,7 +295,7 @@ power-vd10-s3 {
 		};
 	};
 
-	smb: smb@4000000 {
+	smb: bus@4000000 {
 		compatible = "simple-bus";
 
 		#address-cells = <2>;
diff --git a/arch/arm64/boot/dts/arm/foundation-v8.dtsi b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
index 3f78373f708a..12f039fa3dad 100644
--- a/arch/arm64/boot/dts/arm/foundation-v8.dtsi
+++ b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
@@ -92,7 +92,7 @@ watchdog@2a440000 {
 		timeout-sec = <30>;
 	};
 
-	smb@8000000 {
+	bus@8000000 {
 		compatible = "arm,vexpress,v2m-p1", "simple-bus";
 		arm,v2m-memory-map = "rs1";
 		#address-cells = <2>; /* SMB chipselect number and offset */
diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
index 62ab0d54ff71..c8ba328ed3fe 100644
--- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
+++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
@@ -206,7 +206,7 @@ panel-timing {
 	       };
 	};
 
-	smb@8000000 {
+	bus@8000000 {
 		compatible = "simple-bus";
 
 		#address-cells = <2>;
diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index 1f3c80aafbd7..f5889281545f 100644
--- a/arch/arm64/boot/dts/arm/juno-base.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
@@ -800,7 +800,7 @@ memory@80000000 {
 		      <0x00000008 0x80000000 0x1 0x80000000>;
 	};
 
-	smb@8000000 {
+	bus@8000000 {
 		compatible = "simple-bus";
 		#address-cells = <2>;
 		#size-cells = <1>;
diff --git a/arch/arm64/boot/dts/arm/juno-motherboard.dtsi b/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
index 9f60dacb4f80..e3983ded3c3c 100644
--- a/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
@@ -8,7 +8,7 @@
  */
 
 / {
-	smb@8000000 {
+	bus@8000000 {
 		mb_clk24mhz: clk24mhz {
 			compatible = "fixed-clock";
 			#clock-cells = <0>;
diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts b/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts
index 6e685d883303..c5d15cbd8cf6 100644
--- a/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts
+++ b/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts
@@ -132,7 +132,7 @@ panel_in: endpoint {
 		};
 	};
 
-	smb@8000000 {
+	bus@8000000 {
 		compatible = "simple-bus";
 
 		#address-cells = <2>;
diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi
index 57b0b9d7f3fa..60703b5763c6 100644
--- a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi
+++ b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi
@@ -5,7 +5,7 @@
  * "rs2" extension for the v2m motherboard
  */
 / {
-	smb@8000000 {
+	bus@8000000 {
 		motherboard {
 			arm,v2m-memory-map = "rs2";
 
diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
index 03a7bf079c8f..e333c8d2d0e4 100644
--- a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
+++ b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
@@ -8,7 +8,7 @@
  * VEMotherBoard.lisa
  */
 / {
-	smb@8000000 {
+	bus@8000000 {
 		motherboard {
 			arm,v2m-memory-map = "rs1";
 			compatible = "arm,vexpress,v2m-p1", "simple-bus";
diff --git a/arch/arm64/boot/dts/arm/vexpress-v2f-1xv7-ca53x2.dts b/arch/arm64/boot/dts/arm/vexpress-v2f-1xv7-ca53x2.dts
index 22383c26bb03..d859914500a7 100644
--- a/arch/arm64/boot/dts/arm/vexpress-v2f-1xv7-ca53x2.dts
+++ b/arch/arm64/boot/dts/arm/vexpress-v2f-1xv7-ca53x2.dts
@@ -144,7 +144,7 @@ temp-fpga {
 		};
 	};
 
-	smb: smb@8000000 {
+	smb: bus@8000000 {
 		compatible = "simple-bus";
 
 		#address-cells = <2>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
