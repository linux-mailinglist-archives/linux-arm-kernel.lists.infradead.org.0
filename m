Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C372622A96
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 06:10:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kjD11hQ0L+aoqnZm5WTARaNE1JwDsZRDCh2MRPbzsM0=; b=iuiCV6xCCK1EpJ
	yjLh0vrv7MWXyaXNoDOVRXg2nZBp+p1mSXgxPd36yExZOyjCq59nXqQfpXNGRlr9TUIjzJ3pP1YrZ
	1FMUv7xnzuhZebo/yTXz8Y+98E7A9R6qk+7e9WSNgte7cdbfNCLeIG6wgX5SkfeDi2mv9OGzlJdhz
	DsUN6kcwMjLaATQCrLbceciECxrrW4o2HCHQD4uU3G40H5dOuzLCzFdDAvFUbK5L2k8k7UfBss94+
	gNyNWqKrL7wYHGbU41bYvzSFQES2MHoN4Gv5PqVagz2jJLiTzjQqlob+3oZXPYqBzAYncmbtAOpyf
	G/M0knqIYw4vwHs0bktg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSZcy-0004Gs-25; Mon, 20 May 2019 04:10:20 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSZcc-0003DE-VB
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 04:10:01 +0000
Received: from sapphire.lan (unknown [192.168.100.188])
 by mx.tkos.co.il (Postfix) with ESMTP id 1BA8B440744;
 Mon, 20 May 2019 07:09:52 +0300 (IDT)
From: Baruch Siach <baruch@tkos.co.il>
To: Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: [PATCH v2 2/2] arm64: dts: marvell: clearfog-gt-8k: set SFP power
 limit
Date: Mon, 20 May 2019 07:08:21 +0300
Message-Id: <27f5b086099cd8b7573b3ea9aa77f95fb1b3398f.1558325301.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <9cb7837edf96d5a0d41b4ef67c635695e92f1a21.1558325301.git.baruch@tkos.co.il>
References: <9cb7837edf96d5a0d41b4ef67c635695e92f1a21.1558325301.git.baruch@tkos.co.il>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_210959_233127_3C13C412 
X-CRM114-Status: UNSURE (   8.59  )
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

The Clearfog GT-8K board is capable of supplying power up to 2W to SFP
modules. Make that explicit in the device-tree. Without this property
current kernel does not allow SFP modules that require more than 1W.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
v2: Fix power measure scale (RMK)
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
