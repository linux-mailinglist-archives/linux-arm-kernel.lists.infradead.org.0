Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DC622A95
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 06:10:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ksDNHbwCFUYm7XVVo3Gw7NZeZrR3MBLN7rGKq/ZmwPg=; b=hpqE+QLOugQxo6
	h7LFWbTG93qdatg1Qt9vFURNS/mWRGjm4Mo0+FLB2hsSk8D33f/ojng5iJ5ioMFCN2gkl6yuv3c4b
	Laoxq+I81S2o+JgOwpAdQ3AqHmO/Qpozq8lsSMFp23K0m4dYOLqpdVC4ddgNgSSPZOhrhWEcJceYt
	geyKbZT8VPjXMAuBFnvtLX8hFi1vVMXGR8yD/yX4wyAOvGuU5WTcdTXkZ/sQxtgzVH5h8scfkIk2W
	XFc6PUy0bB3PHUDCuSHv6grVJ44GmGlNVNzYy7/8TiBpSk7puMGliAeYyaGAuM0Jz9qsV57jalsfv
	G8lqhL7zbXXE1M8lU5Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSZco-0003SM-FK; Mon, 20 May 2019 04:10:10 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSZcc-0003DD-VD
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 04:10:01 +0000
Received: from sapphire.lan (unknown [192.168.100.188])
 by mx.tkos.co.il (Postfix) with ESMTP id DA432440459;
 Mon, 20 May 2019 07:09:51 +0300 (IDT)
From: Baruch Siach <baruch@tkos.co.il>
To: Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: [PATCH v2 1/2] arm64: dts: marvell: mcbin: set SFP power limit
Date: Mon, 20 May 2019 07:08:20 +0300
Message-Id: <9cb7837edf96d5a0d41b4ef67c635695e92f1a21.1558325301.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_210959_317180_F991A153 
X-CRM114-Status: UNSURE (   7.98  )
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

The Macchitobin board is capable of supplying power up to 2W to SFP
modules. Make that explicit in the device-tree. Without this property
current kernel does not allow SFP modules that require more than 1W.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
v2: Fix power measure scale (RMK)
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
