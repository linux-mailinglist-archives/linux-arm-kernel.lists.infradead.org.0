Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A32410D8FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 18:26:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I24tGswtcyONImIcMV/CPy4mkIX2amvE0hGwzPvJgZM=; b=sKGeVrdjIo/mTK
	0XAojWeYJ1paapVOTUtN3/IcW/nQPTOK7RljR9cQOtWvmBGhjLu0fiHVXDViAarjKbEj/dksUUKSp
	WcglUN7KIcgYQuSZqSwUIx3FM7p+IkZGcIu/IdqqekXs/E5FetsCH+ad77HslwwH7NIUdXZjSWA3i
	sASLXEsoVrTX4IaieejHFwyzLMnlEQC8VC/sHy062lW+WqwZLShRitpIektvpEollAqCnk3JVJjzy
	IoYr1vJCnXp00pHXJkHbgeECFjdFG82C9vWc3+pVOsTvsB3qRdAR82Xep95d6aLYRkDbrKm8BM8xt
	UFwteKmwEo66iglys8Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iak2B-0004kI-7h; Fri, 29 Nov 2019 17:26:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iak1d-0004X6-TO
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 17:25:51 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iak1U-0003D5-My; Fri, 29 Nov 2019 18:25:40 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iak1S-0003AL-KV; Fri, 29 Nov 2019 18:25:38 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: support.opensource@diasemi.com, lee.jones@linaro.org, robh+dt@kernel.org,
 linus.walleij@linaro.org, bgolaszewski@baylibre.com, joel@jms.id.au,
 andrew@aj.id.au, lgirdwood@gmail.com, broonie@kernel.org
Subject: [PATCH v3 0/6] DA9062 PMIC features
Date: Fri, 29 Nov 2019 18:25:31 +0100
Message-Id: <20191129172537.31410-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_092549_952636_27548F91 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

this series address all comments made on [1]. Patch "gpio: add support
to get local gpio number" is splitted into:
 - "gpio: treewide rename gpio_chip_hwgpio to gpiod_to_offset"
 - "gpio: make gpiod_to_offset() available for other users"
Please check the discussion [1] for more information. You need to apply
[2] to test the new features.

[1] https://lore.kernel.org/lkml/20191127135932.7223-1-m.felsch@pengutronix.de/
[2] https://lore.kernel.org/linux-gpio/20191129165817.20426-1-m.felsch@pengutronix.de/T/#m3da1fb0d16a37979c74bbcebdb29f3da9e89a9ac

Marco Felsch (6):
  gpio: treewide rename gpio_chip_hwgpio to gpiod_to_offset
  gpio: make gpiod_to_offset() available for other users
  dt-bindings: mfd: da9062: add regulator voltage selection
    documentation
  regulator: da9062: add voltage selection gpio support
  dt-bindings: mfd: da9062: add regulator gpio enable/disable
    documentation
  regulator: da9062: add gpio based regulator dis-/enable support

 .../devicetree/bindings/mfd/da9062.txt        |  16 ++
 drivers/gpio/gpio-aspeed.c                    |  15 +-
 drivers/gpio/gpiolib-sysfs.c                  |   9 +-
 drivers/gpio/gpiolib.c                        |  74 +++--
 drivers/gpio/gpiolib.h                        |   8 -
 drivers/regulator/da9062-regulator.c          | 258 ++++++++++++++++++
 include/linux/gpio/private.h                  |  27 ++
 7 files changed, 361 insertions(+), 46 deletions(-)
 create mode 100644 include/linux/gpio/private.h

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
