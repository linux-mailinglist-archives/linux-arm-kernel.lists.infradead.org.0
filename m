Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BAAF1414A6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Jan 2020 00:09:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KGRRq6hFyn+L0k3SW0lCrT6bgLhthE36l+05LLo8UE0=; b=G2efYrBtVtsNWj
	0SJm0YRnjNVMJDRG2wJ6sV0P5xAYU+kzRIv5yIE+ZZNfMGCuWK8EsJ6kWZE31nPJXh6Km8Pwj3w3a
	IPLGsaPiFPrw+LsulJXD7CjnrSMDnG1xFLwqllvBwytd3VggioPB5JrM7uNrPB9vR/0Z/PuqELKVd
	qn9LJPTOPcqAz4lMLxq0xebpoz/oFWTUfbBPiumstbdDBrj9c5TNGkoMyvzQr+E3YwNJHdX5DDPRW
	D56FObS6PPD/A/4WV+YZyuO/nX9wTKtaJ5BDfppohWb+ie2YteJCSBQNgil6yAZfIDSKDKtdlB4kb
	dONfqcje5CB8OsI5nJOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isajY-0006lo-6j; Fri, 17 Jan 2020 23:08:56 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isajP-0006lX-Sm
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 23:08:49 +0000
Received: by mail-ot1-f66.google.com with SMTP id 77so23993351oty.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 15:08:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=N8hdqMaq/doeD5Jkd2oGwg+Pp4eYPs3dtRKwLCY0trE=;
 b=JFy6EAsJwDm0NwtU3+IGpkfjKKmGdoeMTv3mXjqqgnOY+1dd4Aakb1SAMJHRllfOOw
 Ug6Iz/KcvuSJA1jabor6ZsJmqe5XJSRBWrsHd84IyBBYDIUApv/L1a7YwnT0pLUIpAlO
 pmYqPsdAUERGcYl8bl+pQKy36RilRK/p6r9dL8qeOn8p2Iya0iTZP0+/QGQKtQ3rs2NI
 gy4+WNq1MSysIFdA6ZiocGNlCA/ATV3A/U5LheUBQCKFTElyerBUxvlmDshgmr+3FQGu
 ppELCBww/I+ddLtlsyztZ/2DFh6GWOiuG5765XQTtzvbDDAJDVwW7JE142IbN7Lvdna4
 idGw==
X-Gm-Message-State: APjAAAVey1hB7u6x+61ZpzDqqtpj45hh5gZvGUd0mtPmW6f4uYf4pfOk
 729W/uhktz1RLo3+4iw6Sw==
X-Google-Smtp-Source: APXvYqy5FudxbtjStY+FSbTxvAWAunOp3IIrdLrcs3cvXtAk51klBz+Xzr/0v1q7xhXtqafaDKqvwQ==
X-Received: by 2002:a05:6830:1f13:: with SMTP id
 u19mr7694105otg.237.1579302526924; 
 Fri, 17 Jan 2020 15:08:46 -0800 (PST)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id i13sm8260533oik.7.2020.01.17.15.08.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 15:08:46 -0800 (PST)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm: at91: dts: Kill off "simple-panel" compatibles
Date: Fri, 17 Jan 2020 17:08:45 -0600
Message-Id: <20200117230845.25190-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_150847_925394_D480B9EA 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

"simple-panel" is a Linux driver and has never been an accepted upstream
compatible string, so remove it.

Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm/boot/dts/at91-dvk_su60_somc_lcm.dtsi | 2 +-
 arch/arm/boot/dts/at91-sama5d4_ma5d4evk.dts   | 2 +-
 arch/arm/boot/dts/at91sam9n12ek.dts           | 2 +-
 arch/arm/boot/dts/at91sam9x5dm.dtsi           | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/at91-dvk_su60_somc_lcm.dtsi b/arch/arm/boot/dts/at91-dvk_su60_somc_lcm.dtsi
index df0f0cc575c1..bea920b192b6 100644
--- a/arch/arm/boot/dts/at91-dvk_su60_somc_lcm.dtsi
+++ b/arch/arm/boot/dts/at91-dvk_su60_somc_lcm.dtsi
@@ -17,7 +17,7 @@
 	};
 
 	panel: panel {
-		compatible = "winstar,wf70gtiagdng0", "innolux,at070tn92", "simple-panel";
+		compatible = "winstar,wf70gtiagdng0", "innolux,at070tn92";
 		backlight = <&backlight>;
 		power-supply = <&vcc_lcd_reg>;
 		#address-cells = <1>;
diff --git a/arch/arm/boot/dts/at91-sama5d4_ma5d4evk.dts b/arch/arm/boot/dts/at91-sama5d4_ma5d4evk.dts
index af4969485c88..4d7cee569ff2 100644
--- a/arch/arm/boot/dts/at91-sama5d4_ma5d4evk.dts
+++ b/arch/arm/boot/dts/at91-sama5d4_ma5d4evk.dts
@@ -136,7 +136,7 @@
 
 	panel: panel {
 		/* Actually Ampire 800480R2 */
-		compatible = "foxlink,fl500wvr00-a0t", "simple-panel";
+		compatible = "foxlink,fl500wvr00-a0t";
 		backlight = <&backlight>;
 		#address-cells = <1>;
 		#size-cells = <0>;
diff --git a/arch/arm/boot/dts/at91sam9n12ek.dts b/arch/arm/boot/dts/at91sam9n12ek.dts
index ea5cef0b0974..d36e162a8817 100644
--- a/arch/arm/boot/dts/at91sam9n12ek.dts
+++ b/arch/arm/boot/dts/at91sam9n12ek.dts
@@ -238,7 +238,7 @@
 	};
 
 	panel: panel {
-		compatible = "qiaodian,qd43003c0-40", "simple-panel";
+		compatible = "qiaodian,qd43003c0-40";
 		backlight = <&backlight>;
 		power-supply = <&panel_reg>;
 		#address-cells = <1>;
diff --git a/arch/arm/boot/dts/at91sam9x5dm.dtsi b/arch/arm/boot/dts/at91sam9x5dm.dtsi
index 7f00c1f57b90..a9278038af3b 100644
--- a/arch/arm/boot/dts/at91sam9x5dm.dtsi
+++ b/arch/arm/boot/dts/at91sam9x5dm.dtsi
@@ -27,7 +27,7 @@
 	};
 
 	panel: panel {
-		compatible = "foxlink,fl500wvr00-a0t", "simple-panel";
+		compatible = "foxlink,fl500wvr00-a0t";
 		backlight = <&backlight>;
 		power-supply = <&panel_reg>;
 		#address-cells = <1>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
