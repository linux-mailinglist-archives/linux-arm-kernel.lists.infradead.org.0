Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BA02265D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 May 2019 11:23:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DE9Fg+Z0Fd9g8YED/p4D9yCw1KdLD7CxKc3dnqDOq3g=; b=YYaAQd+P5g6nKp
	mPNvEcVhJHwZivyEAT/KuQYz2W22Q7+vU+N0WmV9cG4qsOH/FQAsSfg3BXlyq/hNUNRaLrksmZwab
	2o/6sU4qa7oJCDAMeSiXMGNehIe7tBZONXWNeyKopiolD+Lo7I/XxKf1cjIgcAX+2GTVBoaIsG+qN
	aDhoaG8lhk2RidfffZW97AxgDawoVtixPAaLI/QTs3tuean3zM0A7b2p3o5ebloUd7MTJp4rpcQfv
	NuMPTLgSmuAM8H/OPieL5xHQlDxsH5XDTaHypU+VYux1xdSVP4l/0YnHVsuchRmMjiqHCi6T8sD+O
	VYDAwceh7DKr90VAEa8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSI2Q-0004Qd-Ak; Sun, 19 May 2019 09:23:26 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSI28-0004KI-6c
 for linux-arm-kernel@lists.infradead.org; Sun, 19 May 2019 09:23:10 +0000
Received: from tarshish.tkos.co.il (unknown [10.0.8.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id 9B60D440744;
 Sun, 19 May 2019 12:22:59 +0300 (IDT)
From: Baruch Siach <baruch@tkos.co.il>
To: Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: [PATCH 2/2] arm64: dts: marvell: clearfog-gt-8k: set SFP power limit
Date: Sun, 19 May 2019 12:21:06 +0300
Message-Id: <a79d8f55eab7ed551ea4e052478b04a107e771c1.1558257666.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <202cfd4a4c01edef9cbb04fae96d588e115dfeeb.1558257666.git.baruch@tkos.co.il>
References: <202cfd4a4c01edef9cbb04fae96d588e115dfeeb.1558257666.git.baruch@tkos.co.il>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_022308_460576_A4FFB2FB 
X-CRM114-Status: GOOD (  10.69  )
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

The Clearfog GT-8K board is capable of supplying power up to 2A to SFP
modules. Make that explicit in the device-tree. Without this property
current kernel does not allow SFP modules that require more than 1A.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
index 9143aa13ceb1..f275d9420d5b 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
@@ -63,6 +63,7 @@
 		tx-disable-gpio = <&cp1_gpio1 29 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&cp0_sfp_present_pins &cp1_sfp_tx_disable_pins>;
+		maximum-power-milliwatt = <2000>;
 	};
 
 	leds {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
