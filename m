Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A595E116355
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Dec 2019 19:06:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jQeT3gryEVepMnbcUbkoXtUpgKT27AVUyIUn2IhQDuI=; b=VULmsxRvWnA1Wb
	U8gTgqbtUsmIbkdSQ2sUHAXvs+lr2ETV1C1HgFCEt16AJM8Xy0aznj/zLfBWhHsPDXqcorpgOpVsl
	jWRp+xtPzGKyJHHqIOnWT7uu1Izvk6k4pjs5oeTPonSkCjMyYY4utne/ERCuWGLZ2bSKAyDfzvwl/
	VzmPDR9oc+33JNK+1O9iihjmwagiqMFXPGMnEfrq6E021aCEoOFz3K9yat80ZTbG4I5x7F8XLNowt
	LZDeLlf6yJV4IVu5UP6ui9Sl5vzlnjpnrKb9VVmbDq8UnlcbC6Jg1l0On7++09ebJ2ZTOEN6QKVfS
	eM1z4cGeT4RDdVl+DUPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ie0x9-0004Bo-So; Sun, 08 Dec 2019 18:06:43 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ie0wE-0003JX-LW; Sun, 08 Dec 2019 18:05:49 +0000
Received: by mail-wr1-x443.google.com with SMTP id d16so13428874wre.10;
 Sun, 08 Dec 2019 10:05:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=t0XKcjck8Slbhi+L1r11b0VN49r+cr19/9Vv0kqVx+o=;
 b=HtyNtbPN7Ttbygqr0BrZZ9yArlU2yvhY7/YuojoZyM2ftyokwrnpg3pFtsTCDqoWU5
 xP9B0pVsToNNHY9+yVx8D6NM1XyyE0/WlJA4aWYTxZ0i477Y4jgFUGxi/8m17nGQ5djt
 gvhvPyCIas3P82Q/L4u9N4dxcxNU4lRxXz3mPlDLLkQnUQwmkp2obGIC1rrfFbS8aKu1
 P3Nz50kKbKiHuJlvX9BKTCJDH2yYK2JSN2tjLSXNs6He4vXsKoz8IldyuDHTAGZ0cqr5
 V9HK+0oHAL7keu0LNd7y1HnXw/Bnxd2bwYwrSvw7JqfM5jrqjjqLCPNnileR+IQ/tsQF
 aOOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=t0XKcjck8Slbhi+L1r11b0VN49r+cr19/9Vv0kqVx+o=;
 b=qdK+Q/vimU7qQiGVftfXdR4SxGX1971/7JyX1NucfBqvgKdQqFkBpAExstxp87lYKn
 BvoCnaS2Gt1oM2QESx/sqG3O7HpTC8dwk/4TRdoO0CRutd6+td+hkdhG2FO4K8RQ8/Z0
 lqDlqDS0kW0yLT91cYra9uw+1Gaf9CKLQ83d2EA+h+8X1nVm3ZzLJDz4LQASEI7Dqog/
 1/0QfipJzQ6WVCsqsHHXPhlkVG1hD49PE8RBw6vtFgsojEDEnkWwoxq0iS4Sy1v3A3Lq
 ch16UP4yT7E6ub6UZ4mX1E/KP6qXS1H3lzhxVPxuWlH9TGwnhmTWvnJSPR12N5F5MdY4
 imLw==
X-Gm-Message-State: APjAAAUFmTar9IfO7la+S7//fq+Yh4jdMb43U0KrNl6pYfDJ/C4GyuQf
 Wz0oeLmaDCNd61fdR9p4usyWiX50
X-Google-Smtp-Source: APXvYqyToRxC7RZxSQuc4P+1emXKkW61mgRhwMHankrbHkqOII7xGvEXJVr1E7GLcxhl3+MwE0Tkow==
X-Received: by 2002:a5d:52c4:: with SMTP id r4mr9143995wrv.368.1575828344729; 
 Sun, 08 Dec 2019 10:05:44 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1371AD700428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:371a:d700:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id a64sm11797687wmc.18.2019.12.08.10.05.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Dec 2019 10:05:44 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, khilman@baylibre.com,
 jbrunet@baylibre.com
Subject: [PATCH 3/3] ARM: dts: meson8b: add the DDR clock controller
Date: Sun,  8 Dec 2019 19:05:25 +0100
Message-Id: <20191208180525.1076152-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191208180525.1076152-1-martin.blumenstingl@googlemail.com>
References: <20191208180525.1076152-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_100546_704341_9A78A286 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the DDR clock controller and pass it's DDR_CLKID_DDR_PLL to the main
(HHI) clock controller as "ddr_clk". The "ddr_clk" is used as one of the
inputs for the audio clock muxes.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8b.dtsi | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/meson8b.dtsi b/arch/arm/boot/dts/meson8b.dtsi
index 1934666ff60f..8ac8bdfaf58f 100644
--- a/arch/arm/boot/dts/meson8b.dtsi
+++ b/arch/arm/boot/dts/meson8b.dtsi
@@ -4,6 +4,7 @@
  * Author: Carlo Caione <carlo@endlessm.com>
  */
 
+#include <dt-bindings/clock/meson8-ddr-clkc.h>
 #include <dt-bindings/clock/meson8b-clkc.h>
 #include <dt-bindings/gpio/meson8b-gpio.h>
 #include <dt-bindings/reset/amlogic,meson8b-reset.h>
@@ -172,6 +173,14 @@ mmcbus: bus@c8000000 {
 		#size-cells = <1>;
 		ranges = <0x0 0xc8000000 0x8000>;
 
+		ddr_clkc: clock-controller@400 {
+			compatible = "amlogic,meson8b-ddr-clkc";
+			reg = <0x400 0x20>;
+			clocks = <&xtal>;
+			clock-names = "xtal";
+			#clock-cells = <1>;
+		};
+
 		dmcbus: bus@6000 {
 			compatible = "simple-bus";
 			reg = <0x6000 0x400>;
@@ -434,8 +443,8 @@ &gpio_intc {
 &hhi {
 	clkc: clock-controller {
 		compatible = "amlogic,meson8-clkc";
-		clocks = <&xtal>;
-		clock-names = "xtal";
+		clocks = <&xtal>, <&ddr_clkc DDR_CLKID_DDR_PLL>;
+		clock-names = "xtal", "ddr_pll";
 		#clock-cells = <1>;
 		#reset-cells = <1>;
 	};
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
