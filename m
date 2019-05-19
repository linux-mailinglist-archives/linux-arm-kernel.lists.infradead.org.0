Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CF42265C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 May 2019 11:23:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OsLMSl1CB1oK8gk3aIBbZgznBVZ63ddWEIJLQHxfOkM=; b=JIPuvHtVOci+mp
	De0DwVOFQoSGcIJGJLUqZAc54AceNJwKVOMTksdaBHNBSkwAJGlqbvyx3WeNa4MHLd4pY/7YjQzlE
	PWpufXiaEvOcViITJktzTKwc6XzwBPQroobnaMy+Wvoc39X7g3vTlWE9xjEmM3BmEg+uR54YNw5Mo
	oSYz44lHGmB8j4l8nBbCMGTB0TijkE8j9tObdBhfaUl2u6JisP5mDhl9IMUQILuHAIlBLNuXTRfQE
	8uZmcq9ep3qd+QKu3BhEEuVnZkXKQXdyP/TlYlMUhnErYqh737p3/Ix6B8/WXcF507F98obl1Uwf6
	bxYltSMCVE/dAa5kDQeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSI2I-0004LR-4e; Sun, 19 May 2019 09:23:18 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSI28-0004KJ-6z
 for linux-arm-kernel@lists.infradead.org; Sun, 19 May 2019 09:23:10 +0000
Received: from tarshish.tkos.co.il (unknown [10.0.8.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id 45AE4440713;
 Sun, 19 May 2019 12:22:59 +0300 (IDT)
From: Baruch Siach <baruch@tkos.co.il>
To: Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: [PATCH 1/2] arm64: dts: marvell: mcbin: set SFP power limit
Date: Sun, 19 May 2019 12:21:05 +0300
Message-Id: <202cfd4a4c01edef9cbb04fae96d588e115dfeeb.1558257666.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_022308_476278_6D5A181B 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Baruch Siach <baruch@tkos.co.il>, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Macchitobin board is capable of supplying power up to 2A to SFP
modules. Make that explicit in the device-tree. Without this property
current kernel does not allow SFP modules that require more than 1A.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
index 329f8ceeebea..70b495175c8e 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
@@ -76,6 +76,7 @@
 		tx-fault-gpio  = <&cp1_gpio1 26 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&cp1_sfpp0_pins>;
+		maximum-power-milliwatt = <2000>;
 	};
 
 	sfp_eth1: sfp-eth1 {
@@ -88,6 +89,7 @@
 		tx-fault-gpio = <&cp0_gpio2 30 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&cp1_sfpp1_pins &cp0_sfpp1_pins>;
+		maximum-power-milliwatt = <2000>;
 	};
 
 	sfp_eth3: sfp-eth3 {
@@ -100,6 +102,7 @@
 		tx-fault-gpio = <&cp0_gpio2 19 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&cp0_sfp_1g_pins &cp1_sfp_1g_pins>;
+		maximum-power-milliwatt = <2000>;
 	};
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
