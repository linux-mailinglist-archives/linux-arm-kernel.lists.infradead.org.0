Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C261FF6BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:29:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=46pJFQrx+tBM9dYksrLR/YflmFVWsxVx/LjwgaZDwCo=; b=amcoIDMFyfIdZ2
	XiLrZmcae1XH/jIu6uB+d3ngMm/Vy6ZSxzTF+bdX1Qwxn7AnIMgWwYRSWm+lh7Lo5GU2ftT/1dmgj
	hojYxoSLObafb+sDUce34nzVqHpyzVGBw+9P8k0mG6UaTLOv5pUjXvGIuN8r3UJGJn/Peq4RL/vtz
	a/f/A81E6d8Ko0YVHMwF0eR4UXf5e/jyw2f3H8uBDRl15nG3v9iNQxcd39ZeoXn1lEB54v8UUzF0+
	cCUPUSah3TeMT6dBTsVseJ2Wjize9SvBBBoakJEOTByKMtybX9aRVKh3HLYH/4UWyhDG4UQbFOi8z
	JbZvEOSzI9/zUVFYQjNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwTh-0003Sz-7I; Thu, 18 Jun 2020 15:29:21 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlwTX-0003Rl-RI
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:29:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592494151; x=1624030151;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zm+f5NC0s8tHPMJu0+UciLLciIrxqv4wIAMMNwcR3sg=;
 b=BF8Tire8Q5NHBxQHLauDK8JQOB3xfD5T9fo7TeUIki7YqjcpNfLONWcp
 kL90Ekqy2bLpJzrzcM8YiByOgBWoSghOt+S06WWmjXTP2IfvBGgr96jZD
 Fsf3AE0Nvh8GY7UE1oQ+7S2SCUu6zwnGgFz2jwetq/ZIelKuHUlC16QVA
 ZDYjH5oI9E25ZCYTcQP4ESlOIRpihpcddjPcq/2WWmI5yUOMrtPg1SZZn
 0mDuH3lVQBsCKdqiW4GlDyFDXv0OZ6TxdZeJEBD0GvI9kYRRwl27H6GEK
 qhusU6Dc6UT/6X7Tt47cCEwopj/KD8nXFaSjlRGHGZDbjC9IvJTugpTGB A==;
IronPort-SDR: BBpKP0k80BnzTU0KNlP6t6swWUaLBzHXrPQ8Ly60CEey804TPvXbbsK0m9ZcnqXXTXx822ANG2
 uTjRRrwsDJ9VfbqeLQKzOHZnHHGzijHMuUujh2w0D0ixwz1XliJhUfghlM28+0Iqf8gNGTADoI
 bOzRHkPl+n1YoaZnqRUXMMfXQYqhVJJz3zn9GTz29hdb3KKVxH5wg/1d64f0eYJIYaOjqVpaMQ
 3pvBw6dGw7pVNd4i5lXU9OiJwxG3/1yI/9RsYapsRpqt0ZS/gONstlQ6mOcGYUxQ7Kcms8rDfj
 26g=
X-IronPort-AV: E=Sophos;i="5.75,251,1589266800"; d="scan'208";a="16258207"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Jun 2020 08:29:06 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 18 Jun 2020 08:29:05 -0700
Received: from rob-ult-m19940.microchip.com (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Thu, 18 Jun 2020 08:28:46 -0700
From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
To: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v2] ARM: dts: at91: sama5d2_xplained: Remove pdmic node
Date: Thu, 18 Jun 2020 18:28:45 +0300
Message-ID: <20200618152845.682723-1-codrin.ciubotariu@microchip.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_082911_971874_7BBF460C 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.71.154.253 listed in wl.mailspike.net]
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
Cc: ludovic.desroches@microchip.com, Codrin
 Ciubotariu <codrin.ciubotariu@microchip.com>, alexandre.belloni@bootlin.com,
 robh+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PDMIC needs PDM microphones to work. sama5d2 xplained doesn't have
such microphones, so there is no reason to enable PDMIC and take the
pins since there is no-one using them.

Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
---

Changes in v2:
 - rebased on top of at91-dt;
 - added more details in the commit description;
 - changed subject from:
  "[PATCH 3/3] Revert "ARM: at91/dt: sama5d2 Xplained: add pdmic node""
to
  "[PATCH v2] ARM: dts: at91: sama5d2_xplained: Remove pdmic node"


 arch/arm/boot/dts/at91-sama5d2_xplained.dts | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/arch/arm/boot/dts/at91-sama5d2_xplained.dts b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
index 0e17df568d0b..058fae1b4a76 100644
--- a/arch/arm/boot/dts/at91-sama5d2_xplained.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
@@ -168,16 +168,6 @@ timer1: timer@1 {
 				};
 			};
 
-			pdmic@f8018000 {
-				pinctrl-names = "default";
-				pinctrl-0 = <&pinctrl_pdmic_default>;
-				atmel,model = "PDMIC @ sama5d2_xplained";
-				atmel,mic-min-freq = <1000000>;
-				atmel,mic-max-freq = <3246000>;
-				atmel,mic-offset = <0x0>;
-				status = "okay";
-			};
-
 			uart1: serial@f8020000 {
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_uart1_default>;
@@ -599,12 +589,6 @@ pinctrl_macb0_phy_irq: macb0_phy_irq {
 					bias-disable;
 				};
 
-				pinctrl_pdmic_default: pdmic_default {
-					pinmux = <PIN_PB26__PDMIC_DAT>,
-						<PIN_PB27__PDMIC_CLK>;
-					bias-disable;
-				};
-
 				pinctrl_qspi0_default: qspi0_default {
 					sck_cs {
 						pinmux = <PIN_PA22__QSPI0_SCK>,
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
