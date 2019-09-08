Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 276DAACF90
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Sep 2019 17:47:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=geM+FziBoYIwK8JGGiHcfGVEiY618xwvYNzRHVpU/ZM=; b=Yve
	nn2IM+w8VUVT/4WiMkT93KXPueCFruqL3aC0KHABCdvJ/32jg8CBh9GLuudifJp4aMh6w4npMa8KM
	V+ESS3ljNwmg6A6vDXCqtqpPX6BmRwOD13RCzBKJkiGiFGD6IaDfpkTR7bgHSd/tWjeUVi+qyzy72
	Jiddbr6JhrYMbOriDjW/PPgeDwLfheJf2x+AQmYQqSwT/I50zXFdRJM2+vow1CK7GYRLJpHWWHym4
	UYp3Gmgx9jDplfVdxn70RY3PIhpJ/KgaulX3ApGeiVFex80objOsqnf2IUDF9tNk1mu+4ARsLMpLd
	r6pEtxy/jl3VVv4XZvTDQW8P/3NwS6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6zOx-0003Xo-JR; Sun, 08 Sep 2019 15:46:55 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6zOq-0003XU-RB
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Sep 2019 15:46:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1567957589;
 bh=SFrQS2AE6buvSq2XcNrsQJ4HnzDculs7JE6sErBescQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=JO+8z0/XnByWrmxPvyOb1faBCxMcF0FUA8/pZfKP3fW7SQCTHe5fJA2DtFfpXT35m
 KCyXXNWlYDVumbFAZc/s/9B6KlHxzW/8psL0tBwhKDzzOQNnGUvZF6NVVwDZ5urx2Y
 gfca2qqRqCRnzu3dluHaw1SVQg9KjFw2PV/6uNy4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.90]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1M7sDq-1i39de3QNm-0050ua; Sun, 08
 Sep 2019 17:46:28 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 boris.brezillon@bootlin.com
Subject: [PATCH] Revert "ARM: bcm283x: Switch V3D over to using the PM driver
 instead of firmware."
Date: Sun,  8 Sep 2019 17:44:53 +0200
Message-Id: <1567957493-4567-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:8SS2m039FZNDDpUlAdXTSHBal6u5+ujaEtxV4T1c3m87WsiWPbb
 nyfhBWj3eZScVg5xk3v6P65yl3Qcc+sNzVQNDYFzbWY9z61kGwjaU9rkHg7xTLUVfOd5qLt
 4iZ5YPEPVod6zIFHiNBxkUea52dqThXP8AhrTbRAEd6R0wJh/otCLINEOIn24Kbj0bmbT1d
 LIEB9T6Ww3qBlBezldbtA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tpXs0A6dc1I=:TjCpWo0lunQ5VVesCO+nDv
 TwoByk8SZxK0ecUDsG9NCVLvB6f0IhUQCXrP3+5q8YiurBxgVbDlDALbrUh+2gIlNGWTeFHko
 f2KAXvtmDhHuT06VVJZh3emH46wrrcYFYxZfSvu+kBVwqJP/49Iy2L2oan/NYU2kyRRh+Lek4
 h29rE+t2IytoTdBVt2rp6NxE83M8pNmYbof7iVORrglJxZhkrB+EN4G2rmOFnKkZvFiFukjKx
 kmCMsfa8kBRw4gfaF5PLfpbTSo1D+tkdBXA0qML546d6o+w+8mJeL5t02kg8nRdHF8rJOcI0G
 E+bnva7qsZlikM/aoFk4eNuKNpQv2K36rJF86weM5LDX16iHXzNaDiKQIhh8V+DvUJuuH22bn
 mSTlqZIeKLMGf94J14RhrXDNfM8heb7XtFnPv6vEKlR7wdU8PYcH67u5fjDYe3ZEK5M2yZEef
 TfxO4ZGtzGXX2ojYYCXrURQDNXrKsci6cf6lEQrEe+H9fk1fOQl1247TIEXiVpjcZ4qjYIUN9
 TO0IxiaAmMb7tdiQbN5ABhUyjCZpmB9hEY+isbItHgvzTKqBm6W2yTUf/ZiUQtS17btRoXUUS
 VjbiAGYaP2BM5n2/gxO2xwLnId4Ksb5fu9hBWDYDwF91QJty+wXzHFix9Hb/Em1X9jfrooAkt
 bhmrit8nGIPB/vbD+S9AH/LyQKkd4FqNthNiqpO9d2MIyrJSkSQVzxRVn9N+MvxDDJRKzV5YH
 /kAgizDCBIXqK9pkzBUHyT+SkUo0RCdLrRhxGwAwg117458SF91hv8V7l4YKjKMkEb96uuo7z
 MVdekbIDR1BH9oBeWL1YsoVGSOPoHVGqQXjCZ0c4uW2GQCIwkwLEQKGFi3MZUziD26UV7km2f
 4XYelyGN2wCZmNhND/TL3YFGUDmaef2s/IxGQWSqIu/O65EQ1QcWELOfiDwSVbsiw32LQ33oi
 E25MqHiopj3KFFn9ZxcNKtZiwzeh2TsG1dsk1QRBUDR8g+J9Hgz8rm9tXMkj71o6Y5uHWNAvg
 v53p8sqnqUnOVagoFA9Y/AIpQXEtMCiWFHWVtegcSSHto2u/YNmq/K9HL6s25dM/9id7A1z7R
 z5DMn5S9RaucG+iCqJdqeOQAsmIub4pdXj0lF7/fDPHlgb4Rn7QAGqTh7ldc/Y/DquJfg1DGs
 +KrN77tt3qIWOlTerxb2HlpsJTHmw4xOP/c/tNiWiSO86J+DXIy0rfminkkelY3vtL1c4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_084649_215777_1BF279D2 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
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
Cc: stable@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since release of the new BCM2835 PM driver there has been several reports
of V3D probing issues. This is caused by timeouts during powering-up the
GRAFX PM domain:

  bcm2835-power: Timeout waiting for grafx power OK

I was able to reproduce this reliable on my Raspberry Pi 3B+ after setting
force_turbo=1 in the firmware configuration. Since there are no issues
using the firmware PM driver with the same setup, there must be an issue
in the BCM2835 PM driver.

Unfortunately there hasn't been much progress in identifying the root cause
since June (mostly in the lack of documentation), so i decided to switch
back until the issue in the BCM2835 PM driver is fixed.

Link: https://github.com/raspberrypi/linux/issues/3046
Fixes: e1dc2b2e1bef (" ARM: bcm283x: Switch V3D over to using the PM driver instead of firmware.")
Cc: stable@vger.kernel.org
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 arch/arm/boot/dts/bcm2835-rpi.dtsi | 4 ++++
 arch/arm/boot/dts/bcm283x.dtsi     | 4 +---
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/bcm2835-rpi.dtsi b/arch/arm/boot/dts/bcm2835-rpi.dtsi
index 6c6a7f6..b909e3b 100644
--- a/arch/arm/boot/dts/bcm2835-rpi.dtsi
+++ b/arch/arm/boot/dts/bcm2835-rpi.dtsi
@@ -67,6 +67,10 @@
 	power-domains = <&power RPI_POWER_DOMAIN_USB>;
 };

+&v3d {
+	power-domains = <&power RPI_POWER_DOMAIN_V3D>;
+};
+
 &vec {
 	power-domains = <&power RPI_POWER_DOMAIN_VEC>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/bcm283x.dtsi b/arch/arm/boot/dts/bcm283x.dtsi
index 2d191fc..b238567 100644
--- a/arch/arm/boot/dts/bcm283x.dtsi
+++ b/arch/arm/boot/dts/bcm283x.dtsi
@@ -3,7 +3,6 @@
 #include <dt-bindings/clock/bcm2835-aux.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/irq.h>
-#include <dt-bindings/soc/bcm2835-pm.h>

 /* firmware-provided startup stubs live here, where the secondary CPUs are
  * spinning.
@@ -121,7 +120,7 @@
 			#interrupt-cells = <2>;
 		};

-		pm: watchdog@7e100000 {
+		watchdog@7e100000 {
 			compatible = "brcm,bcm2835-pm", "brcm,bcm2835-pm-wdt";
 			#power-domain-cells = <1>;
 			#reset-cells = <1>;
@@ -641,7 +640,6 @@
 			compatible = "brcm,bcm2835-v3d";
 			reg = <0x7ec00000 0x1000>;
 			interrupts = <1 10>;
-			power-domains = <&pm BCM2835_POWER_DOMAIN_GRAFX_V3D>;
 		};

 		vc4: gpu {
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
