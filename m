Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C06321E6A6E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 21:22:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=622f8ekRp6v4z90Acd+mRiA+5pcWbHoyFaSFHpb6Aks=; b=LE2UMESRO3txj1rqOCg1IHryFK
	wEiMi+jPHakd1IWJkMpLzOXLU0w2qrjExawTs8aoqL87tShtRCQApF0eK7Icm+d5JuQlk+xv9lo1n
	Ji2d5TVPRi1FU0pQItQe/uHJItKskdoYV6xckSw49+av0UOYhkFwU3Rr5RBK+/sFvSvTQtGI+0dP/
	JhVNJ/wVJEjU+0bXsROZbn+YflT+HTCsv6lnm4tAdWhiqmdljDybx5mpZzZAskhPAkvwE+1SkLQS+
	afqkBZJNBSx1UGFkrilDM7XY+gwf3NjSV0SgkT0E28n8sYpmdgT6IBwNS+JsxZJzaHkrMPWcVxFe/
	ipq0G3Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeO6g-0007KS-2c; Thu, 28 May 2020 19:22:22 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeO5W-00072g-4R; Thu, 28 May 2020 19:21:23 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id E76512A41B5
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-pm@vger.kernel.org, linux-acpi@vger.kernel.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v4 00/11] Stop monitoring disabled devices
Date: Thu, 28 May 2020 21:20:40 +0200
Message-Id: <20200528192051.28034-1-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <Message-ID: <4493c0e4-51aa-3907-810c-74949ff27ca4@samsung.com>
References: <Message-ID: <4493c0e4-51aa-3907-810c-74949ff27ca4@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_122115_008405_FFADF02B 
X-CRM114-Status: GOOD (  16.21  )
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
Cc: Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 Heiko Stuebner <heiko@sntech.de>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Vishal Kulkarni <vishal@chelsio.com>, Luca Coelho <luciano.coelho@intel.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Allison Randal <allison@lohutok.net>, NXP Linux Team <linux-imx@nxp.com>,
 Darren Hart <dvhart@infradead.org>, Zhang Rui <rui.zhang@intel.com>,
 Gayatri Kammela <gayatri.kammela@intel.com>, Len Brown <lenb@kernel.org>,
 Johannes Berg <johannes.berg@intel.com>,
 Intel Linux Wireless <linuxwifi@intel.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ido Schimmel <idosch@mellanox.com>,
 Baolin Wang <baolin.wang7@gmail.com>, Jiri Pirko <jiri@mellanox.com>,
 Orson Zhai <orsonzhai@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Kalle Valo <kvalo@codeaurora.org>,
 Support Opensource <support.opensource@diasemi.com>,
 Enrico Weigelt <info@metux.net>, Peter Kaestle <peter@piie.net>,
 Sebastian Reichel <sre@kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Shawn Guo <shawnguo@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is already a reviewed v3 (not to be confused with RFC v3), which can
be considered for merging:

https://lore.kernel.org/linux-pm/20200423165705.13585-2-andrzej.p@collabora.com/

Let me cite Bartlomiej Zolnierkiewicz:

"I couldn't find the problems with the patch itself (no new issues
being introduced, all changes seem to be improvements over the current
situation).

Also the patch is not small but it also not that big and it mostly
removes the code:

17 files changed, 105 insertions(+), 244 deletions(-)"

There have been raised some concerns about bisectability and about
introducing "initial_mode" member in struct thermal_zone_params.

This v4 series addresses those concerns: it takes a more gradual
approach and uses explicit tzd state initialization, hence there are more
insertions than in v3, and the net effect is -63 lines versus -139 lines
in v3.

Patch 2/11 converts the 3 drivers which don't store their mode in
enum thermal_device_mode to do so. Once that is cleared,
struct thermal_zone_device gains its "mode" member (patch 3/11) and then
all interested drivers change the location where they store their
state: instead of storing it in some variable in a driver, they store it
in struct thermal_zone_device (patch 4/11). Patch 4/11 does not introduce
other changes. Then get_mode() driver method becomes redundant, and so
it is removed (patch 5/11). This is the first part of the groundwork.

The second part of the groundwork is to add (patch 6/11) and use (patch
7/11) helpers for accessing tzd's state from drivers. From this moment
on the drivers don't access tzd->mode directly. Please note that after
patch 4/11 all thermal zone devices have their mode implicitly initialized
to DISABLED, as a result of kzalloc and THERMAL_DEVICE_DISABLED == 0.
This is not a problem from the point of view of polling them, because
their state is not considered when deciding to poll or to cease polling.
In preparation for considering tzd's state when deciding to poll or to
cease polling it ensured (patch 8/11 and some in patch 7/11) that all the
drivers are explicitly initialized with regard to their state.

With all that groundwork in place now it makes sense to modify thermal_core
so that it stops polling DISABLED devices (patch 9/11), which is the
ultimate purpose of this work.

While at it, some set_mode() implementations only change the polling
variables to make the core stop polling their drivers, but that is now
unnecessary and those set_mode() implementations are removed. In other
implementations polling variables modifications are removed. Some other
set_mode() implementations are simplified or removed (patch 10/11).

set_mode() is now only called when tzd's mode is about to change. Actual
setting is performed in thermal_core, in thermal_zone_device_set_mode().
The meaning of set_mode() callback is actually to notify the driver about
the mode being changed and giving the driver a chance to oppose such
a change. To better reflect the purpose of the method it is renamed to
change_mode() (patch 11/11).

Andrzej Pietrasiewicz (11):
  acpi: thermal: Fix error handling in the register function
  thermal: Store thermal mode in a dedicated enum
  thermal: Add current mode to thermal zone device
  thermal: Store device mode in struct thermal_zone_device
  thermal: remove get_mode() operation of drivers
  thermal: Add mode helpers
  thermal: Use mode helpers in drivers
  thermal: Explicitly enable non-changing thermal zone devices
  thermal: core: Stop polling DISABLED thermal devices
  thermal: Simplify or eliminate unnecessary set_mode() methods
  thermal: Rename set_mode() to change_mode()

 drivers/acpi/thermal.c                        | 75 +++++----------
 .../ethernet/chelsio/cxgb4/cxgb4_thermal.c    |  8 ++
 .../ethernet/mellanox/mlxsw/core_thermal.c    | 91 ++++---------------
 drivers/net/wireless/intel/iwlwifi/mvm/tt.c   |  9 +-
 drivers/platform/x86/acerhdf.c                | 33 +++----
 drivers/platform/x86/intel_mid_thermal.c      |  6 ++
 drivers/power/supply/power_supply_core.c      |  9 +-
 drivers/thermal/armada_thermal.c              |  6 ++
 drivers/thermal/da9062-thermal.c              | 16 +---
 drivers/thermal/dove_thermal.c                |  6 ++
 drivers/thermal/hisi_thermal.c                |  6 +-
 drivers/thermal/imx_thermal.c                 | 57 ++++--------
 .../intel/int340x_thermal/int3400_thermal.c   | 43 +++------
 .../int340x_thermal/int340x_thermal_zone.c    |  5 +
 drivers/thermal/intel/intel_pch_thermal.c     |  5 +
 .../thermal/intel/intel_quark_dts_thermal.c   | 34 ++-----
 drivers/thermal/intel/intel_soc_dts_iosf.c    |  3 +
 drivers/thermal/intel/x86_pkg_temp_thermal.c  |  6 ++
 drivers/thermal/kirkwood_thermal.c            |  7 ++
 drivers/thermal/rcar_thermal.c                |  9 +-
 drivers/thermal/rockchip_thermal.c            |  6 +-
 drivers/thermal/spear_thermal.c               |  7 ++
 drivers/thermal/sprd_thermal.c                |  6 +-
 drivers/thermal/st/st_thermal.c               |  5 +
 drivers/thermal/thermal_core.c                | 76 ++++++++++++++--
 drivers/thermal/thermal_of.c                  | 51 ++---------
 drivers/thermal/thermal_sysfs.c               | 37 +-------
 include/linux/thermal.h                       | 19 +++-
 28 files changed, 289 insertions(+), 352 deletions(-)


base-commit: 351f4911a477ae01239c42f771f621d85b06ea10
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
