Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C9749BF7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 10:24:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eS+6V0FdGHIagGQAFVecjmaL3wv2kG+T8ZlYndB2R2k=; b=QRZci7gq8QKqZh
	Q67JhxI57c97Y/mYJI8VWkMV+HAofnhUC7PWByzCACgawTi2wwO+FWjikBi5kPN2KPP0TU6xaVjoM
	42KfFjwRn6fYQCNFi929ClAP9jvu1w1oPe81e5dDfQzue+F7aQHwLh4+Q+klF6dK/bqi9N9kaiBS0
	vlBovM8zIW2ubFnTCXcjGs4FwERzOvBWevYVb2yJG5BZINeWiAPu4CynXfeh9GaFYHlQ4GBKLPrN4
	c/UN0u41TEW1mqcplqA+MlUhrLJBwkjuQkeuAgOCpFeFDnY3Q4z3pt4eQtvWCZCaPf3ciTRQwvZlT
	30Z/xYjceFSeDo083gpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd9Pz-0000Ym-VM; Tue, 18 Jun 2019 08:24:40 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd9Po-0000Xd-GF
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 08:24:30 +0000
Received: by mail-wm1-x344.google.com with SMTP id f17so2169633wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 01:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from:cc; bh=W+9Iar+D/OiOzzrKDiZiqAeQEh6uCiuEEmPg3kIUjiU=;
 b=t+fQ3t1+C+Ol95F4Ehmg85krkI7nvV7x++RSpalrQyhAHtLOeBWlCq6rFhRkLUiCAw
 HraH3RKb2RVAw0mt0R611dnh1P2BV6s0O1vzf3qYWE81nmhvojDN/kOricsSPknGFoyC
 4GqV2eE6bK/yKLyslzOsrHLC82Z86eK5H/PcOAYX+xPFD6n1ElLexIEnbaA/dt5dC45l
 Mh4wmORaXZtxAFquopWelj573r5F35d5U7pdhV7twpT4lV9g1VOS3Q27ZNYwfkghBdl4
 sbrkocArAK5rninwZT7z/kTBzqNpjurTYxFku07iLSf9Q/IUJTPXVJ1yWvcxpIv45eTa
 uU5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from:cc;
 bh=W+9Iar+D/OiOzzrKDiZiqAeQEh6uCiuEEmPg3kIUjiU=;
 b=Af7c2XGX9nEf8o8pRG+G0ycGxQ29fqdRScY3RzwCWOrWuPKCTYrafgqMhVB8y7a1fw
 M345lXle4DmowA/A+PFAuiEBhvSU+PPt95xHSsRbOvgTYBzAW4ZIZTZIkDTlE2YMdw2G
 he1+3W52DTutcltrM2xAzWqk6EFUZB25biERMdVx1gB2mHTMTu+3lvmsnWPGxNZcOCyN
 EmkeKdDP1Nowwopi66D/2ttnMI/uV2FrqZY2CSQzpNLu49IfgZgTiuuBe84xUH0fsryE
 /srI40+FoeXPHjK56rWJ5aTAXvmBm/XQnKk+VaKbGslzJp5NXZU+VkI6ZQlNmbwCJjL2
 LZZQ==
X-Gm-Message-State: APjAAAX4LWSvXahX1dWfWoB8BxHZajxfx7Jdma/B9O7KgH8FPcp7pd2Q
 aPczcNkw0InOnALsCbxzZdYJiQ==
X-Google-Smtp-Source: APXvYqzvk0zcxfuaY8s270EwCKUeK+BPAxVpb7P+2sZTq7d9vdwx5mz+cjlE5Wbg9LkI2U1XMoYlfA==
X-Received: by 2002:a1c:6545:: with SMTP id z66mr2291068wmb.77.1560846263672; 
 Tue, 18 Jun 2019 01:24:23 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id k82sm1750814wma.15.2019.06.18.01.24.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 01:24:22 -0700 (PDT)
Message-ID: <5d089fb6.1c69fb81.4f92.9134@mx.google.com>
Date: Tue, 18 Jun 2019 01:24:22 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Report-Type: bisect
X-Kernelci-Kernel: next-20190617
X-Kernelci-Branch: master
X-Kernelci-Lab-Name: lab-baylibre
X-Kernelci-Tree: next
Subject: next/master boot bisection: next-20190617 on
 sun8i-h2-plus-orangepi-zero
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 David S. Miller <davem@davemloft.net>, tomeu.vizoso@collabora.com,
 guillaume.tucker@collabora.com, mgalka@collabora.com, broonie@kernel.org,
 matthew.hart@linaro.org, khilman@baylibre.com, enric.balletbo@collabora.com
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_012428_683018_40B626D1 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Alexandre Torgue <alexandre.torgue@st.com>,
 "kernelci.org bot" <bot@kernelci.org>, netdev@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* This automated bisection report was sent to you on the basis  *
* that you may be involved with the breaking commit it has      *
* found.  No manual investigation has been done to verify it,   *
* and the root cause of the problem may be somewhere else.      *
* Hope this helps!                                              *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

next/master boot bisection: next-20190617 on sun8i-h2-plus-orangepi-zero

Summary:
  Start:      a125097c8410 Add linux-next specific files for 20190617
  Details:    https://kernelci.org/boot/id/5d07987659b51412add51503
  Plain log:  https://storage.kernelci.org//next/master/next-20190617/arm/multi_v7_defconfig/gcc-8/lab-baylibre/boot-sun8i-h2-plus-orangepi-zero.txt
  HTML log:   https://storage.kernelci.org//next/master/next-20190617/arm/multi_v7_defconfig/gcc-8/lab-baylibre/boot-sun8i-h2-plus-orangepi-zero.html
  Result:     ce4ab73ab0c2 net: stmmac: drop the reset delays from struct stmmac_mdio_bus_data

Checks:
  revert:     PASS
  verify:     PASS

Parameters:
  Tree:       next
  URL:        git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
  Branch:     master
  Target:     sun8i-h2-plus-orangepi-zero
  CPU arch:   arm
  Lab:        lab-baylibre
  Compiler:   gcc-8
  Config:     multi_v7_defconfig
  Test suite: boot

Breaking commit found:

-------------------------------------------------------------------------------
commit ce4ab73ab0c27c6a3853695aa8ec0f453c6329cd
Author: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date:   Sat Jun 15 12:09:31 2019 +0200

    net: stmmac: drop the reset delays from struct stmmac_mdio_bus_data
    
    Only OF platforms use the reset delays and these delays are only read in
    stmmac_mdio_reset(). Move them from struct stmmac_mdio_bus_data to a
    stack variable inside stmmac_mdio_reset() because that's the only usage
    of these delays.
    
    Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
    Signed-off-by: David S. Miller <davem@davemloft.net>

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
index 459ef8afe4fb..c9454cf4f189 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
@@ -252,6 +252,7 @@ int stmmac_mdio_reset(struct mii_bus *bus)
 #ifdef CONFIG_OF
 	if (priv->device->of_node) {
 		struct gpio_desc *reset_gpio;
+		u32 delays[3];
 
 		reset_gpio = devm_gpiod_get_optional(priv->device,
 						     "snps,reset",
@@ -261,18 +262,18 @@ int stmmac_mdio_reset(struct mii_bus *bus)
 
 		device_property_read_u32_array(priv->device,
 					       "snps,reset-delays-us",
-					       data->delays, 3);
+					       delays, ARRAY_SIZE(delays));
 
-		if (data->delays[0])
-			msleep(DIV_ROUND_UP(data->delays[0], 1000));
+		if (delays[0])
+			msleep(DIV_ROUND_UP(delays[0], 1000));
 
 		gpiod_set_value_cansleep(reset_gpio, 1);
-		if (data->delays[1])
-			msleep(DIV_ROUND_UP(data->delays[1], 1000));
+		if (delays[1])
+			msleep(DIV_ROUND_UP(delays[1], 1000));
 
 		gpiod_set_value_cansleep(reset_gpio, 0);
-		if (data->delays[2])
-			msleep(DIV_ROUND_UP(data->delays[2], 1000));
+		if (delays[2])
+			msleep(DIV_ROUND_UP(delays[2], 1000));
 	}
 #endif
 
diff --git a/include/linux/stmmac.h b/include/linux/stmmac.h
index a0cc6fa4965b..7c8328edd501 100644
--- a/include/linux/stmmac.h
+++ b/include/linux/stmmac.h
@@ -96,9 +96,6 @@ struct stmmac_mdio_bus_data {
 	unsigned int phy_mask;
 	int *irqs;
 	int probed_phy_irq;
-#ifdef CONFIG_OF
-	u32 delays[3];
-#endif
 };
 
 struct stmmac_dma_cfg {
-------------------------------------------------------------------------------


Git bisection log:

-------------------------------------------------------------------------------
git bisect start
# good: [d4d5d8e83c9616aeef28a2869cea49cc3fb35526] ax25: fix inconsistent lock state in ax25_destroy_timer
git bisect good d4d5d8e83c9616aeef28a2869cea49cc3fb35526
# bad: [a125097c841039deef9dd589b86467f7d20f4b3d] Add linux-next specific files for 20190617
git bisect bad a125097c841039deef9dd589b86467f7d20f4b3d
# bad: [4595fa52d5346117e65bb2aa17f972062c40a18c] Merge remote-tracking branch 'wireless-drivers-next/master'
git bisect bad 4595fa52d5346117e65bb2aa17f972062c40a18c
# good: [87f4a5a7e5b7cc0e92d700339d34cf16eeec9dfb] Merge remote-tracking branch 'pstore/for-next/pstore'
git bisect good 87f4a5a7e5b7cc0e92d700339d34cf16eeec9dfb
# good: [b4a6d9abeb545d79cc76f150f31c3cebc3472287] Merge tag 'mlx5-updates-2019-06-13' of git://git.kernel.org/pub/scm/linux/kernel/git/saeed/linux
git bisect good b4a6d9abeb545d79cc76f150f31c3cebc3472287
# good: [19f18e90aa597906157a8f31c2cfd1eba0892764] Merge remote-tracking branch 'v4l-dvb/master'
git bisect good 19f18e90aa597906157a8f31c2cfd1eba0892764
# bad: [0d744c8931dc83b786c5489d559b9b8ddcc1e6ef] Merge remote-tracking branch 'net-next/master'
git bisect bad 0d744c8931dc83b786c5489d559b9b8ddcc1e6ef
# good: [40d22bdeabaccfce39ad43e7113bf9c6de6b462f] Merge remote-tracking branch 'swiotlb/linux-next'
git bisect good 40d22bdeabaccfce39ad43e7113bf9c6de6b462f
# good: [a52c8e2469c30cf7ac453d624aed9c168b23d1af] RDMA: Clean destroy CQ in drivers do not return errors
git bisect good a52c8e2469c30cf7ac453d624aed9c168b23d1af
# good: [422efd032775757c41e9579facd9656a87bf4f00] net: dsa: mv88e6xxx: do not flood CPU with unknown multicast
git bisect good 422efd032775757c41e9579facd9656a87bf4f00
# good: [42a90766fe1ff438b2af26a94bb8395c405f684b] net: stmmac: use device_property_read_u32_array to read the reset delays
git bisect good 42a90766fe1ff438b2af26a94bb8395c405f684b
# bad: [1718132587e8c73c9a6fd7cfbf0fa9f14559c134] tc-tests: updated skbedit tests
git bisect bad 1718132587e8c73c9a6fd7cfbf0fa9f14559c134
# bad: [fead5b1b5838ba2f231d76e1b8ed31a4e9449382] net: stmmac: drop the phy_reset hook from struct stmmac_mdio_bus_data
git bisect bad fead5b1b5838ba2f231d76e1b8ed31a4e9449382
# bad: [ce4ab73ab0c27c6a3853695aa8ec0f453c6329cd] net: stmmac: drop the reset delays from struct stmmac_mdio_bus_data
git bisect bad ce4ab73ab0c27c6a3853695aa8ec0f453c6329cd
# good: [7e770b252a62e7498cfa9411018100fd86e56d47] net: stmmac: drop the reset GPIO from struct stmmac_mdio_bus_data
git bisect good 7e770b252a62e7498cfa9411018100fd86e56d47
# first bad commit: [ce4ab73ab0c27c6a3853695aa8ec0f453c6329cd] net: stmmac: drop the reset delays from struct stmmac_mdio_bus_data
-------------------------------------------------------------------------------

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
