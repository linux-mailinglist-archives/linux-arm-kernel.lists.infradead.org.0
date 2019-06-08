Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D79F139C8E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 12:57:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/D3yjI9Phj8SgQF/S/WAGWN0ixm38ze0isCorPxPgWY=; b=FeiU+r4vu45P0M
	r/31Zqpn0JtJsWnzYNm37JckCf0ay6ZvFNwwpJORmhLoPoCrijenfXJjm7hugWtS2pASNQWGzeVad
	3vBRaInIQ/cRetmGT7MuyT7oeC+yiUL8xCnSQIo+eV60c8s4hmjNZg8YV+20Pg33hlrPObkg033+G
	aIQlVVk7ZSfHak/mkRXuu0rD74uCqMZkb2wLTtlZtvPk95ClVqTK2iBaOGdVEb0VsYH/zL0SEb3sd
	tYP00IEVVBxQi2IXZSNx9CZViAF0DsB0yr21zAXgY11ZRpIbkjCVToF4iWja186c7p3zMelaUXPzK
	cpletmkkJ8kj3OU2bGyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZZ1t-0000hq-7D; Sat, 08 Jun 2019 10:56:57 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZZ1h-0000gl-QY; Sat, 08 Jun 2019 10:56:48 +0000
Received: from localhost (p5486CBCC.dip0.t-ipconnect.de [84.134.203.204])
 by pokefinder.org (Postfix) with ESMTPSA id D0A142C3637;
 Sat,  8 Jun 2019 12:56:40 +0200 (CEST)
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Subject: [PATCH 00/34] treewide: simplify getting the adapter of an I2C client
Date: Sat,  8 Jun 2019 12:55:39 +0200
Message-Id: <20190608105619.593-1-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_035646_162389_3A3B5A1F 
X-CRM114-Status: UNSURE (   6.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, linux-rtc@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-iio@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-renesas-soc@vger.kernel.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-mtd@lists.infradead.org,
 linux-leds@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While preparing a refactoring series, I noticed that some drivers use a
complicated way of determining the adapter of a client. The easy way is
to use the intended pointer: client->adapter

These drivers do:
	to_i2c_adapter(client->dev.parent);

The I2C core populates the parent pointer as:
	client->dev.parent = &client->adapter->dev;

Now take into consideration that
	to_i2c_adapter(&adapter->dev);

is a complicated way of saying 'adapter', then we can even formally
prove that the complicated expression can be simplified by using
client->adapter.

The conversion was done using a coccinelle script with some manual
indentation fixes applied on top.

To avoid a brown paper bag mistake, I double checked this on a Renesas
Salvator-XS board (R-Car M3N) and verified both expression result in the
same pointer. Other than that, the series is only build tested.

A branch can be found here:

git://git.kernel.org/pub/scm/linux/kernel/git/wsa/linux.git i2c/no_to_adapter

Please apply the patches to the individual subsystem trees. There are no
dependencies.

Thanks and kind regards,

   Wolfram


Wolfram Sang (34):
  clk: clk-cdce706: simplify getting the adapter of a client
  gpu: drm: bridge: sii9234: simplify getting the adapter of a client
  iio: light: bh1780: simplify getting the adapter of a client
  leds: leds-pca955x: simplify getting the adapter of a client
  leds: leds-tca6507: simplify getting the adapter of a client
  media: i2c: ak881x: simplify getting the adapter of a client
  media: i2c: mt9m001: simplify getting the adapter of a client
  media: i2c: mt9m111: simplify getting the adapter of a client
  media: i2c: mt9p031: simplify getting the adapter of a client
  media: i2c: ov2640: simplify getting the adapter of a client
  media: i2c: tw9910: simplify getting the adapter of a client
  misc: fsa9480: simplify getting the adapter of a client
  misc: isl29003: simplify getting the adapter of a client
  misc: tsl2550: simplify getting the adapter of a client
  mtd: maps: pismo: simplify getting the adapter of a client
  power: supply: bq24190_charger: simplify getting the adapter of a client
  power: supply: bq24257_charger: simplify getting the adapter of a client
  power: supply: bq25890_charger: simplify getting the adapter of a client
  power: supply: max14656_charger_detector: simplify getting the adapter
    of a client
  power: supply: max17040_battery: simplify getting the adapter of a client
  power: supply: max17042_battery: simplify getting the adapter of a client
  power: supply: rt5033_battery: simplify getting the adapter of a client
  power: supply: rt9455_charger: simplify getting the adapter of a client
  power: supply: sbs-manager: simplify getting the adapter of a client
  regulator: max8952: simplify getting the adapter of a client
  rtc: fm3130: simplify getting the adapter of a client
  rtc: m41t80: simplify getting the adapter of a client
  rtc: rv8803: simplify getting the adapter of a client
  rtc: rx8010: simplify getting the adapter of a client
  rtc: rx8025: simplify getting the adapter of a client
  staging: media: soc_camera: imx074: simplify getting the adapter of a client
  staging: media: soc_camera: mt9t031: simplify getting the adapter of a client
  staging: media: soc_camera: soc_mt9v022: simplify getting the adapter
    of a client
  usb: typec: tcpm: fusb302: simplify getting the adapter of a client

 drivers/clk/clk-cdce706.c                        | 2 +-
 drivers/gpu/drm/bridge/sii9234.c                 | 4 ++--
 drivers/iio/light/bh1780.c                       | 2 +-
 drivers/leds/leds-pca955x.c                      | 2 +-
 drivers/leds/leds-tca6507.c                      | 2 +-
 drivers/media/i2c/ak881x.c                       | 2 +-
 drivers/media/i2c/mt9m001.c                      | 2 +-
 drivers/media/i2c/mt9m111.c                      | 2 +-
 drivers/media/i2c/mt9p031.c                      | 2 +-
 drivers/media/i2c/ov2640.c                       | 2 +-
 drivers/media/i2c/tw9910.c                       | 3 +--
 drivers/misc/fsa9480.c                           | 2 +-
 drivers/misc/isl29003.c                          | 2 +-
 drivers/misc/tsl2550.c                           | 2 +-
 drivers/mtd/maps/pismo.c                         | 2 +-
 drivers/power/supply/bq24190_charger.c           | 2 +-
 drivers/power/supply/bq24257_charger.c           | 2 +-
 drivers/power/supply/bq25890_charger.c           | 2 +-
 drivers/power/supply/max14656_charger_detector.c | 2 +-
 drivers/power/supply/max17040_battery.c          | 2 +-
 drivers/power/supply/max17042_battery.c          | 2 +-
 drivers/power/supply/rt5033_battery.c            | 2 +-
 drivers/power/supply/rt9455_charger.c            | 2 +-
 drivers/power/supply/sbs-manager.c               | 2 +-
 drivers/regulator/max8952.c                      | 2 +-
 drivers/rtc/rtc-fm3130.c                         | 8 +++-----
 drivers/rtc/rtc-m41t80.c                         | 2 +-
 drivers/rtc/rtc-rv8803.c                         | 2 +-
 drivers/rtc/rtc-rx8010.c                         | 2 +-
 drivers/rtc/rtc-rx8025.c                         | 2 +-
 drivers/staging/media/soc_camera/imx074.c        | 2 +-
 drivers/staging/media/soc_camera/mt9t031.c       | 2 +-
 drivers/staging/media/soc_camera/soc_mt9v022.c   | 2 +-
 drivers/usb/typec/tcpm/fusb302.c                 | 3 +--
 34 files changed, 37 insertions(+), 41 deletions(-)

-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
