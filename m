Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE7F1D5686
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 18:50:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mvxUaG2FvXM26m4v2+kqps9Z9M4cmpg8rI6jwt4Bk2g=; b=WQHhaO9LDm0Pt4Kgiqm2kLNxKA
	OQMmH6bh5ovrCr5NDRjYdLpU95zFxEfp3X+oPY69nFTb972gvZjYOrnKZw9MXooPAhnJe4Fn4Hcj0
	T9XBcYQ49VAMihVrTasoMObuo1FiM8/u3JnTVWdTN8UxXtz89bgCtRkFMgdj2rTF4ZOPDH84tSBDc
	370osDQCb+vmXX5v2PXi5u20X4q7TFwWPoX9f3HZV7iVl5Y84PTkNK1FlZ46zgxiMcUtd9Day9Wc2
	pPw3fJS97KCPzZOnTP+ccoC1SMiG1yR7xH6o9fIt43aRu1rooQMbtR+tkMR93mGjU0DRZFlwxP+gU
	ghE8ohBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZdXN-00051Z-FN; Fri, 15 May 2020 16:50:17 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdWy-00050e-Ve
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 16:49:57 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id AB6292A32FD
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-input@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-tegra@vger.kernel.org,
 patches@opensource.cirrus.com, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org
Subject: [PATCHv2 0/7] Support inhibiting input devices
Date: Fri, 15 May 2020 18:49:43 +0200
Message-Id: <20200515164943.28480-1-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200506002746.GB89269@dtor-ws>
References: <20200506002746.GB89269@dtor-ws>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_094953_282058_FE910997 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Nick Dyer <nick@shmanahar.org>, Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>, Lars-Peter Clausen <lars@metafoo.de>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>, Len Brown <lenb@kernel.org>,
 Michael Hennerich <michael.hennerich@analog.com>,
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
from certain devices, including not treating them as wakeup sources.

An example use case is a laptop, whose keyboard can be folded under the
screen to create tablet-like experience. The user then must hold the laptop
in such a way that it is difficult to avoid pressing the keyboard keys. It
is therefore desirable to temporarily disregard input from the keyboard,
until it is folded back. This obviously is a policy which should be kept
out of the kernel, but the kernel must provide suitable means to implement
such a policy.

Due to interactions with suspend/resume, a helper has been added for drivers
to decide if the device is being used or not (PATCH 1/7) and it has been
applied to relevant drivers (PATCH 2-5/7). Patches 2-5 are only being sent
to relevant mailing lists and maintainers.

PATCH 6/7 adds support for inhibiting input devices, while PATCH 7/7
provides an example how to convert a driver to take advantage of this
new feature. Patch 7/7 is only being sent to input mailing list and
maintainer.

This work is inspired by:

https://chromium.googlesource.com/chromiumos/third_party/kernel/+/45c2d7bb398f74adfae0017e20b224152fde3822

and

https://chromium.googlesource.com/chromiumos/third_party/kernel/+/4ce0e8a3697edb8fd071110b3af65014512061c7

v1..v2:
- added input_device_enabled() helper and used it in drivers (Dmitry)
- the fact of open() and close() being called in inhibit/uninhibit paths has
been emphasized in the commit message of PATCH 6/7 (Dmitry)

Andrzej Pietrasiewicz (5):
  Input: add input_device_enabled()
  Input: use input_device_enabled()
  ACPI: button: Use input_device_enabled() helper
  iio: adc: exynos: Use input_device_enabled()
  platform/x86: thinkpad_acpi: Use input_device_enabled()

Dmitry Torokhov (1):
  Input: elan_i2c: Support inhibiting

Patrik Fimml (1):
  Input: Add "inhibited" property

 drivers/acpi/button.c                       |   8 +-
 drivers/iio/adc/exynos_adc.c                |  11 +-
 drivers/input/input.c                       | 142 ++++++++++++++++++--
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
 drivers/input/mouse/elan_i2c_core.c         | 112 +++++++++++----
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
 drivers/input/touchscreen/wm97xx-core.c     |  14 +-
 drivers/input/touchscreen/zforce_ts.c       |   8 +-
 drivers/platform/x86/thinkpad_acpi.c        |   4 +-
 include/linux/input.h                       |  10 ++
 43 files changed, 336 insertions(+), 119 deletions(-)


base-commit: 2ef96a5bb12be62ef75b5828c0aab838ebb29cb8
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
