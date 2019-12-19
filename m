Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 440BF126ED2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 21:24:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4o6PVLyhAxlLH538lyZCbGAA4yGCjVspfrptVi6K+Ek=; b=n9OzXVq7tfrg9O
	/G8GfbSP+2E0vcTQi55Ew1KrFtD3LfFRUFqeRm2CNMQ+fKPpKsRBbQwVgT/W1Ryng0Vx7E4gXhIWZ
	ufIG2ASCt0zRAXAUYLk7Wg0pQ3Is5Auo1quZlvTGRG5w5Sw+rz68GSB7ztg6qX1cazDz04mOZ7nTu
	RWo2zKQeX5jLf65JxKJ2GkitlDvi3yYtEAfJEjA6zysklNslJd4dEmca8WMIsRQ40twu1J8607GvD
	y+Ouco4Y0Btyxq96274vJqEU3dJx9+gkILYkYP8S8oDEbDAwKYlkkx4T2ppsF/hAADOqqXUEz4BWF
	IOshrO5ZybkBOuVKwDfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii2LC-0001R5-6k; Thu, 19 Dec 2019 20:24:10 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii2Iz-0007zp-Rw
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 20:21:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1576786912;
 s=strato-dkim-0002; d=gerhold.net;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=242MZ4oNGy59VHbDAySilGw2vsKQ/HMaVeyHMssbOd8=;
 b=SzOJsTKC8Is3zBoeQzRGeix6e/L95qLPxLhYnDVg2OQcmjlIq+E/G1wUnf3Y8F0tXZ
 hazH8C9UVAor/UcwMwTJkLg0lGx0lUedajbAxNAOWmbW5evrKDhQqhl0v7aAbkoIkBG9
 y6WehOWEAhEJb5hfUC8tavDySM/nYlMnlDau/wYV1X7lYMrla0Lbk0bHaGakQpVcf3rr
 1wqP36eARWm9qJbONGGNNfAxm/BZaTun3IcEpof8L07CtXX8ZOL4q9Z9TIb5bpEK3r6D
 OaNmOLPmXbWOGe/snfM9AlCITP7tsdB9gnNd7bLvNsRpflYW1oEhoipIjtAv9RQQ3+Hb
 sAeQ==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQrEOHTIXtszvsxM1"
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 46.1.1 AUTH)
 with ESMTPSA id f021e2vBJKLk3ZG
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Thu, 19 Dec 2019 21:21:46 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 8/9] ARM: dts: ux500: samsung-golden: Add Bluetooth
Date: Thu, 19 Dec 2019 21:20:51 +0100
Message-Id: <20191219202052.19039-9-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219202052.19039-1-stephan@gerhold.net>
References: <20191219202052.19039-1-stephan@gerhold.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_122154_067204_53D16394 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:3 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephan Gerhold <stephan@gerhold.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

samsung-golden uses a BCM4334 WiFi+BT combo chip.
The BT part is connected via UART and supported by the hci_bcm
driver in mainline.
Add the necessary device tree changes to make it load correctly.

It requires (seemingly) device-specific firmware that can be
extracted from the stock Android system used on samsung-golden:
  - /system/bin/bcm4334.hcd -> /lib/firmware/brcm/BCM4334B0.hcd

On my device, scanning for other Bluetooth devices works just fine,
but for some reason it keeps disconnecting immediately
when attempting to connect to an other device.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 .../arm/boot/dts/ste-ux500-samsung-golden.dts | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm/boot/dts/ste-ux500-samsung-golden.dts b/arch/arm/boot/dts/ste-ux500-samsung-golden.dts
index d22b2879c46a..313f0ab16866 100644
--- a/arch/arm/boot/dts/ste-ux500-samsung-golden.dts
+++ b/arch/arm/boot/dts/ste-ux500-samsung-golden.dts
@@ -113,6 +113,19 @@ uart@80120000 {
 			pinctrl-names = "default", "sleep";
 			pinctrl-0 = <&u0_a_1_default>;
 			pinctrl-1 = <&u0_a_1_sleep>;
+
+			bluetooth {
+				compatible = "brcm,bcm4330-bt";
+				/* GPIO222 (BT_VREG_ON) */
+				shutdown-gpios = <&gpio6 30 GPIO_ACTIVE_HIGH>;
+				/* GPIO199 (BT_WAKE) */
+				device-wakeup-gpios = <&gpio6 7 GPIO_ACTIVE_HIGH>;
+				/* GPIO97 (BT_HOST_WAKE) */
+				host-wakeup-gpios = <&gpio3 1 GPIO_ACTIVE_HIGH>;
+
+				pinctrl-names = "default";
+				pinctrl-0 = <&bluetooth_default>;
+			};
 		};
 
 		/* GPF UART */
@@ -396,6 +409,20 @@ golden_cfg1 {
 		};
 	};
 
+	bluetooth {
+		bluetooth_default: bluetooth_default {
+			golden_cfg1 {
+				pins = "GPIO199_AH23",	/* BT_WAKE */
+				       "GPIO222_AJ9";	/* BT_VREG_ON */
+				ste,config = <&gpio_out_lo>;
+			};
+			golden_cfg2 {
+				pins = "GPIO97_D9";	/* BT_HOST_WAKE */
+				ste,config = <&gpio_in_nopull>;
+			};
+		};
+	};
+
 	vibrator {
 		vibrator_default: vibrator_default {
 			golden_cfg1 {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
