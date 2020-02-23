Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CC216994C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 19:03:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ULtSpCa0j/0z49AokM9aEgHdKsCF2VM1c0X+N2EF1jg=; b=bRk
	5XJsCsqcpurZL2iB09AZWUgCE9ZOpMKR2WerQjiwTFvQo1ZBGve6Wg75kPp3vW37hrVG8sJlgAOwa
	2R3b1+QqvC9GKQ86o+yhvzom8OoNZIjNld8ifw4JUykrShKthSgTQl26WLfqklqWl1jiTDfBlSd8E
	zFkM2qpDfy0VtkUEMLbpSredSLZSqjOieR1mGcZnfteXS/M12axGR3cV6Vf1HgRK1r2jFW90c91Oy
	EpSCuLTlfpB5jw7MK2n50TiGV6KKS3dIaPzxetAXlj/nDTjXa9eM92KMznXR4htb23wEPZfD6gkzX
	W6FLOA9mR8piPeFENAHRxxWutV70fTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5vbQ-00016l-Jk; Sun, 23 Feb 2020 18:03:40 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5vbI-00016P-Ae; Sun, 23 Feb 2020 18:03:33 +0000
Received: from localhost.localdomain ([37.4.249.121]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N8EdM-1jRo3d2MZk-014Eed; Sun, 23 Feb 2020 19:03:29 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH] ARM: dts: bcm283x: Add missing properties to the PWR LED
Date: Sun, 23 Feb 2020 19:03:05 +0100
Message-Id: <1582480985-6773-1-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:XcNS9Ic/XYxQMTQVRGfFHMyCdVwa7jnl5/ZEYauO68lvf+tRpdP
 RG4lDH6u8NZ95HK7hjeqZscQmy/bYszpKWfZ/uHyy+neEAvAFQN4Oi7M8YuRrFFsWnwe4Qj
 IIsnv03fNNuVecjADqaz36u1EWxM8PF5rFFqTUsCXd3HjaLFOA29KRIFoPNoFgDdlILA210
 fUTVkGAFhc0eWswM5BeWA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FUS2MfPpk1Q=:Y8tGNSjK/6mAPT2ud3hm5B
 NvB1PT+wrqRcQETrjkr8Rkr1iSdJBdSmHvxqrpkl6MK6mkCa9On9DOvKrvpzjdoMf4Cl1+uL6
 imEugl63jZLPiDk3YCeLXhxSxhhHWdrgRrd8a9mGGTPgtDMczTlGJJbPVov1B1XigGT5gHNo6
 b0meEfJeDMdbTYJQRf5uaATuJNh1m99/YE0jxN3O7yvtMW27cznFtSL2K3+tQrietupGTB4lv
 ARF51pd6lVOGaC+N/HyGXufUUcQmnzuecC1OV5hz7MoKtBfGd+l4mdfOa2lf1MVL17a3e3as2
 gTNeuneOoPamVDXfo4et7HTw7xvRxchCftvE+Xq/92VuSgFNwtcyKOEJsLCq9lrpytBMNbb5F
 nkSzKRvg8WLDsSnAs+7yLADS18MKAS5TGCZllOvMldv3D5Re8f8Kh9d5cA0dRpVwfP5NHtDMY
 JxDhj8nZf1e3iFgvW76m5lbzSOtO9bWpueuy+68DBjAounpF2NHK2KmtFT3lNzu8QRf68SXu5
 t6dAuU2QGWnKyh4RLcoKB276Mwiy8cJOVgi2b+urOktt6EYBaYF19rmfDDzREweaybgAeHViP
 qlIDPDs4tuqaxStm1nIKbrYILPNS1JQHXjKG2n7WIt3f+bMP3LrAQtfQk/V7hvzBV0/Rr26hN
 DESJA6quAgDIba04/IRHSoTrYMm+z7er/5B/4+rWoIhA1PUNr1bpYdVjIWhnkOD4TZGoUoCIP
 2jFy/QH7DqrkVJeYz0NfVyxrDoLF2vIVWYZZS7vWH6JjBQrW/HxuUqpboXGze9RZbgOoKVoX6
 ylYECUTbjknv5T5/jI/8oU35z2e+B4B12l85NYr99Sz9t3nvfjtmWreZcgu9O5CTLgDNz7a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_100332_657771_1CC27822 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, devicetree@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds the missing properties to the PWR LED for the RPi 3 & 4 boards,
which are already set for the other boards. Without them we will lose
the LED state after suspend.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts      | 2 ++
 arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts | 2 ++
 arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts | 2 ++
 3 files changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
index cb33852..f242834 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
@@ -31,6 +31,8 @@
 		pwr {
 			label = "PWR";
 			gpios = <&expgpio 2 GPIO_ACTIVE_LOW>;
+			default-state = "keep";
+			linux,default-trigger = "default-on";
 		};
 	};
 
diff --git a/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts b/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts
index 66ab35e..28be033 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts
+++ b/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts
@@ -26,6 +26,8 @@
 		pwr {
 			label = "PWR";
 			gpios = <&expgpio 2 GPIO_ACTIVE_LOW>;
+			default-state = "keep";
+			linux,default-trigger = "default-on";
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts b/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
index 74ed6d0..3734314 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
+++ b/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
@@ -27,6 +27,8 @@
 		pwr {
 			label = "PWR";
 			gpios = <&expgpio 2 GPIO_ACTIVE_LOW>;
+			default-state = "keep";
+			linux,default-trigger = "default-on";
 		};
 	};
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
