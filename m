Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A35A31B616A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 18:57:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aZCGOq2Q9mU7CbNLaD1T2NQb7DbdJVMSKx6xmYEz5IM=; b=Dqeold0SrBGmGHxm646J4/Qub+
	FaGngQn2EQqID7G8Ikb2XMAy3KYgTnD1lCQbMaGOabI0wWYJPOmfoAygC3YDQJMmBzSAVRkLhkB5z
	Hqt9G5G8V+ZHoyEThOhz/3WCboX42zLzHp6NqFcooQ8qRUlQAgFtn6tXdeFeeOZMu2wwGBEFrR4qu
	5DBESrPQa7pLbOHzWdDzv61r+GPvkweCYwilXuwJ39/hBUGl+usWL/6GzpVBBRjcXMcVFKSH/mVEs
	rRpR3kZdXhYIRHslSmp56eLemIwVln/Zj4M0KnNe8o/k9+suHlTM3tF4CykHSRPAoZFzgBci2SLKa
	TJZRQ22g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRfAF-0005Bx-Q7; Thu, 23 Apr 2020 16:57:27 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRfA4-00059s-LM
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 16:57:18 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 303362A0661
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-pm@vger.kernel.org
Subject: [PATCH v3 0/2] Stop monitoring disabled devices
Date: Thu, 23 Apr 2020 18:57:03 +0200
Message-Id: <20200423165705.13585-1-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <a3998ad2-19bc-0893-a10d-2bb5adf7d99f@samsung.com>
References: <a3998ad2-19bc-0893-a10d-2bb5adf7d99f@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_095716_848728_35586C86 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Heiko Stuebner <heiko@sntech.de>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 platform-driver-x86@vger.kernel.org, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-acpi@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Orson Zhai <orsonzhai@gmail.com>,
 Zhang Rui <rui.zhang@intel.com>, Len Brown <lenb@kernel.org>,
 Barlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ido Schimmel <idosch@mellanox.com>,
 Jiri Pirko <jiri@mellanox.com>, Darren Hart <dvhart@infradead.org>,
 linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>, netdev@vger.kernel.org,
 Peter Kaestle <peter@piie.net>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Baolin Wang <baolin.wang7@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Andy Shevchenko <andy@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is the third iteration of this PATCH series (not counting RFCs).
It addresses comments from Bartlomiej - thanks, Bartlomiej!

The first patch makes all the drivers store their mode in struct
thermal_zone_device. Such a move has consequences: driver-specific
variables for storing mode are not necessary. Consequently get_mode()
methods become obsolete. Then sysfs "mode" attribute stops depending
on get_mode() being provided, because it is always provided from now on.

The first patch also introduces the initial mode to be optionally passed
to thermal_zone_device_register().

Given all the groundwork done in patch 1/2 patch 2/2 becomes very simple.

I incorrectly named PATCH v2 a PATCH RESEND 1/2, so now I'm counting that
as PATCH v2, hence this series is PATCH v3.

PATCH v2..PATCH v3:
- removed redundant regmap_write() in imx_thermal_suspend() and
imx_thermal_resume() (Bartlomiej)
- removed unnecessary call to soc_dts_enable() (now called indirectly
from thermal_zone_device_register()->set_mode()) (Bartlomiej)
- removed defensive-style checks for non-existent enum values in
thermal_zone_device_set_mode() (Bartlomiej)
- change mode only if driver's set_mode() succeeded in
thermal_zone_device_set_mode() (Bartlomiej)
- don't set tz->need_update in thermal_zone_device_register() - this
was supposed to be part of PATCH v1, but was omitted (Bartlomiej)

PATCH..PATCH v2:

- fixed typo (missing semicolon in dummy thermal_zone_device_set_mode()
implementation) (kbuild test robot)
- fixed misspelled enum value in int3400_thermal_params.initial_mode

RFCv3..this PATCH:

- export thermal_zone_device_{enable|disable}() for drivers (Bartlomiej)
- don't check provided enum values in acpi's thermal_zet_mode()
and in int3400_thermal_set_mode() (Bartlomiej)
- use thermal_zone_device_enable() in of_thermal instead of open coding it
(Bartlomiej)
- use thermal_zone_device_{enable|disable}() in hisi_thermal, rockchip_thermal
and sprd_thermal (Bartlomiej)
- assume THERMAL_DEVICE_ENABLED is thermal_zone_params not provided at
tzd's register time (Bartlomiej)
- eliminated tzp-s which contain only .initial_mode = THERMAL_DEVICE_ENABLED,
(Bartlomiej)
- don't set tz->need_update and don't call thermal_zone_device_update()
at the end of thermal_zone_device_register() (Bartlomiej)
- used .initial_mode in int340x_thermal_zone, x86_pkg_temp_thermal and
int3400_thermal (Bartlomiej)

Andrzej Pietrasiewicz (2):
  thermal: core: Let thermal zone device's mode be stored in its struct
  thermal: core: Stop polling DISABLED thermal devices

 drivers/acpi/thermal.c                        | 35 ++--------
 .../ethernet/mellanox/mlxsw/core_thermal.c    | 42 ------------
 drivers/platform/x86/acerhdf.c                | 17 +----
 drivers/thermal/da9062-thermal.c              | 11 ----
 drivers/thermal/hisi_thermal.c                |  6 +-
 drivers/thermal/imx_thermal.c                 | 36 ++--------
 .../intel/int340x_thermal/int3400_thermal.c   | 31 ++-------
 .../int340x_thermal/int340x_thermal_zone.c    |  1 +
 .../thermal/intel/intel_quark_dts_thermal.c   | 30 ++-------
 drivers/thermal/intel/x86_pkg_temp_thermal.c  |  1 +
 drivers/thermal/of-thermal.c                  | 24 +------
 drivers/thermal/rockchip_thermal.c            |  6 +-
 drivers/thermal/sprd_thermal.c                |  6 +-
 drivers/thermal/thermal_core.c                | 65 +++++++++++++++----
 drivers/thermal/thermal_core.h                |  3 +
 drivers/thermal/thermal_sysfs.c               | 29 +--------
 include/linux/thermal.h                       | 22 ++++++-
 17 files changed, 119 insertions(+), 246 deletions(-)


base-commit: 79799562bf087b30d9dd0fddf5bed2d3b038be08
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
