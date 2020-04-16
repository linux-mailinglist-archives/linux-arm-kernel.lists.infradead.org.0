Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A031AD002
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 20:58:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dR5+uaJaC2mgtxFlMmdINAhzFXkJC6KvvEUbabo03fM=; b=ON+RQPno/7+NJ/
	4Ip7jgMoauEVPHXfyBlK+xl9thu5tR4ChUtKWXaay/LxIzjURZLFNO/itVKJFUVB9tA3CVmpMk+9B
	d2Orsdpx+XtXQIBnXqBHzG7REhVc58/yI0i0lnA6ciHKAhZLUPvc1ARkABF9BQdP1Xqi0zClJugrj
	/jv1o0BsRCHHAA8VKwgGsKww+s67PlE16qr4aRoYDI/d1seEgWwJ2i2kQuG09WqoNh3OqByW1XigD
	hc4AS+5lFXR445cwFeS0oOOq7W/6rU9dGXMJ7oxY57GyQ1ttMzvxfTKt8l9lBhpjXz6aTVREA1Ktc
	5mJ+qYtk0rjrXym3o5EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP9iW-000298-Ux; Thu, 16 Apr 2020 18:58:28 +0000
Received: from mailoutvs56.siol.net ([185.57.226.247] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP9iM-00026r-SV
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 18:58:21 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id EADF55246A1;
 Thu, 16 Apr 2020 20:58:07 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id ZxZKBzIH5Qt0; Thu, 16 Apr 2020 20:58:07 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 750055246A0;
 Thu, 16 Apr 2020 20:58:07 +0200 (CEST)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id BBE2352465F;
 Thu, 16 Apr 2020 20:58:03 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: robh+dt@kernel.org, andrew@lunn.ch, f.fainelli@gmail.com,
 hkallweit1@gmail.com
Subject: [RFC PATCH 0/4] net: mfd: AC200 Ethernet PHY
Date: Thu, 16 Apr 2020 20:57:54 +0200
Message-Id: <20200416185758.1388148-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_115819_073802_FB79824B 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.247 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org, linux@armlinux.org.uk,
 mripard@kernel.org, linux-kernel@vger.kernel.org, wens@csie.org,
 lee.jones@linaro.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is attempt to support Ethernet PHY on AC200 MFD chip. I'm sending
this as RFC because I stumbled on a problem how to properly describe it
in DT. Proper DT documentation will be added later, once DT issue is
solved.

Before Ethernet PHY can be actually used, few things must happen:
1. 24 MHz clock must be enabled and connected to input pin of this
   chip. In this case, PWM is set to generate 24 MHz signal with 50%
   duty cycle.
2. Chip must be put out of reset through I2C
3. Ethernet PHY must be enabled and configured through I2C

All above suggest that AC200 chip must be child node of I2C and Ethernet
PHY child node of AC200 node. This is done in patch 3.

However, mdio bus binding also requires that ethernet PHY is child node
of mdio bus node which can't be, because it's already child node of
AC200 MFD node.

Currently I'm using workaround to have another PHY defined in mdio bus
node as can be seen in patch 4. Then, with careful module loading order,
I make sure that ethernet controller driver is loaded last, after AC200
ethernet PHY driver is loaded. But that's fragile and not acceptable.

Suggestions how to solve that are highly appreciated.

One possible solution is that mdio bus node would contain phandle to
PHY node instead of having actual PHY child node.

Documentation of this chip can be found at
http://linux-sunxi.org/File:AC200_Datasheet_V1.1.pdf

Note that in this case, AC200 IC is copackaged with Allwinner H6 SoC and
all connections between them are internal. So, for example, PWM is the
only way to provide 24 MHz clock to this chip.

Best regards,
Jernej

Jernej Skrabec (4):
  mfd: Add support for AC200
  net: phy: Add support for AC200 EPHY
  arm64: dts: allwinner: h6: Add AC200 EPHY related nodes
  arm64: dts: allwinner: h6: tanix-tx6: Enable ethernet

 .../dts/allwinner/sun50i-h6-tanix-tx6.dts     |  32 +++
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |  63 ++++++
 drivers/mfd/Kconfig                           |   9 +
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/ac200.c                           | 188 ++++++++++++++++
 drivers/net/phy/Kconfig                       |   7 +
 drivers/net/phy/Makefile                      |   1 +
 drivers/net/phy/ac200.c                       | 206 +++++++++++++++++
 include/linux/mfd/ac200.h                     | 210 ++++++++++++++++++
 9 files changed, 717 insertions(+)
 create mode 100644 drivers/mfd/ac200.c
 create mode 100644 drivers/net/phy/ac200.c
 create mode 100644 include/linux/mfd/ac200.h

-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
