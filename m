Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4FF1EFEE7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 19:34:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=K4f8fyjMtI4mooKlu2Sj/X3NUEmBzOzxjDkHwrLhpsY=; b=MBDZIODIXetULZtdd3gHgPj0gH
	GUgC31ZuMIszsH5Frl/hxPeBjlkj+mb+eDC11/PmVXZnH2WsRkZ/XFm3cxIGdeG9zJ/FXmbG1lU5x
	RmO9iqbhzMobykT3w0qsEnpm8/mIDpKKbR+s25nA0r5KRiivS8yTWVv4nkcO/4W2Zk0x6zQq4WCWC
	bVgIbpBWp0eTGpdIjDsUM7bsUQPS7Dmww8afJseF+qVWyY2tjF4NRrQJhTiyS61Lo8kS/cntcx/bS
	SywMb2iagxjT+jxFK4mzwTVfGvDXeBgUeGyOhWW66K7mikKboU4dcUB3Euu6d4axCd21/qxFo8JWS
	c5mt7Sqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhGEC-0004sO-7S; Fri, 05 Jun 2020 17:34:00 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhGDz-0004re-Te
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 17:33:49 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 62DAB2A506F
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-pm@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-input@vger.kernel.org, linux-tegra@vger.kernel.org,
 patches@opensource.cirrus.com, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org
Subject: [PATCH v3 0/7] Support inhibiting input devices
Date: Fri,  5 Jun 2020 19:33:28 +0200
Message-Id: <20200605173335.13753-1-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200604072853.GP89269@dtor-ws>
References: <20200604072853.GP89269@dtor-ws>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_103348_219434_3CF71461 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: kernel@collabora.com, Nick Dyer <nick@shmanahar.org>,
 Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Peter Hutterer <peter.hutterer@redhat.com>, Fabio Estevam <festevam@gmail.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Len Brown <lenb@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Hans de Goede <hdegoede@redhat.com>,
 Barry Song <baohua@kernel.org>, Ferruh Yigit <fery@cypress.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Userspace might want to implement a policy to temporarily disregard input
from certain devices.

An example use case is a convertible laptop, whose keyboard can be folded
under the screen to create tablet-like experience. The user then must hold
the laptop in such a way that it is difficult to avoid pressing the keyboard
keys. It is therefore desirable to temporarily disregard input from the
keyboard, until it is folded back. This obviously is a policy which should
be kept out of the kernel, but the kernel must provide suitable means to
implement such a policy.

Due to interactions with suspend/resume, a helper has been added for drivers
to decide if the device is being used or not (PATCH 1/7) and it has been
applied to relevant drivers (PATCH 2,4,5,6/7).

PATCH 7/7 adds support for inhibiting input devices.

This work is inspired by:

https://chromium.googlesource.com/chromiumos/third_party/kernel/+/45c2d7bb398f74adfae0017e20b224152fde3822

and

https://chromium.googlesource.com/chromiumos/third_party/kernel/+/4ce0e8a3697edb8fd071110b3af65014512061c7

In this respin the elan_i2c patch is dropped and converting it will be
addressed later.

v2..v3:
- ignored autorepeat events in input_get_disposition() if a key is not
pressed (Hans)
- dropped inhibit()/uninhibit() driver callbacks (Hans)
- split ACPI button patch into taking the lock and using the helper (Rafael)
- dropped the elan_i2c conversion
- fixed typos in exynos adc

v1..v2:
- added input_device_enabled() helper and used it in drivers (Dmitry)
- the fact of open() and close() being called in inhibit/uninhibit paths has
been emphasized in the commit message of PATCH 6/7 (Dmitry)

Andrzej Pietrasiewicz (6):
  Input: add input_device_enabled()
  Input: use input_device_enabled()
  ACPI: button: Access input device's users under appropriate mutex
  ACPI: button: Use input_device_enabled() helper
  iio: adc: exynos: Use input_device_enabled()
  platform/x86: thinkpad_acpi: Use input_device_enabled()

Patrik Fimml (1):
  Input: Add "inhibited" property

 drivers/acpi/button.c                       |   7 +-
 drivers/iio/adc/exynos_adc.c                |  11 +-
 drivers/input/input.c                       | 121 +++++++++++++++++++-
 drivers/input/joystick/xpad.c               |   4 +-
 drivers/input/keyboard/ep93xx_keypad.c      |   2 +-
 drivers/input/keyboard/gpio_keys.c          |   4 +-
 drivers/input/keyboard/imx_keypad.c         |   4 +-
 drivers/input/keyboard/ipaq-micro-keys.c    |   2 +-
 drivers/input/keyboard/lpc32xx-keys.c       |   4 +-
 drivers/input/keyboard/pmic8xxx-keypad.c    |   4 +-
 drivers/input/keyboard/pxa27x_keypad.c      |   2 +-
 drivers/input/keyboard/samsung-keypad.c     |   4 +-
 drivers/input/keyboard/spear-keyboard.c     |   8 +-
 drivers/input/keyboard/st-keyscan.c         |   4 +-
 drivers/input/keyboard/tegra-kbc.c          |   4 +-
 drivers/input/misc/drv260x.c                |   4 +-
 drivers/input/misc/drv2665.c                |   4 +-
 drivers/input/misc/drv2667.c                |   4 +-
 drivers/input/misc/gp2ap002a00f.c           |   4 +-
 drivers/input/misc/kxtj9.c                  |   4 +-
 drivers/input/misc/sirfsoc-onkey.c          |   2 +-
 drivers/input/mouse/navpoint.c              |   4 +-
 drivers/input/touchscreen/ad7879.c          |   6 +-
 drivers/input/touchscreen/atmel_mxt_ts.c    |   4 +-
 drivers/input/touchscreen/auo-pixcir-ts.c   |   8 +-
 drivers/input/touchscreen/bu21029_ts.c      |   4 +-
 drivers/input/touchscreen/chipone_icn8318.c |   4 +-
 drivers/input/touchscreen/cyttsp_core.c     |   4 +-
 drivers/input/touchscreen/eeti_ts.c         |   4 +-
 drivers/input/touchscreen/ektf2127.c        |   4 +-
 drivers/input/touchscreen/imx6ul_tsc.c      |   4 +-
 drivers/input/touchscreen/ipaq-micro-ts.c   |   2 +-
 drivers/input/touchscreen/iqs5xx.c          |   4 +-
 drivers/input/touchscreen/lpc32xx_ts.c      |   4 +-
 drivers/input/touchscreen/melfas_mip4.c     |   4 +-
 drivers/input/touchscreen/mms114.c          |   6 +-
 drivers/input/touchscreen/pixcir_i2c_ts.c   |   8 +-
 drivers/input/touchscreen/ucb1400_ts.c      |   4 +-
 drivers/input/touchscreen/wm97xx-core.c     |  14 ++-
 drivers/input/touchscreen/zforce_ts.c       |   8 +-
 drivers/platform/x86/thinkpad_acpi.c        |   4 +-
 include/linux/input.h                       |  14 ++-
 42 files changed, 230 insertions(+), 95 deletions(-)


base-commit: 3d77e6a8804abcc0504c904bd6e5cdf3a5cf8162
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
