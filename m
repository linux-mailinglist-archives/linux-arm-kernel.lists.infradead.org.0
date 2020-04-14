Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 211A61A8836
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 20:02:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Nx5ACVbXgzdK8PnQeT9dcVXWmu0lQGeZ6+T3/vc7C7s=; b=a16JLx34jskdvt7SffbfTB2SqB
	yMy2CZZjm/w8ySAYBg6KX9JWgloaSr0l3zDolGXiUU6iPp3dVHKDu3ugc+tNXTD143CgXl9LX5i6g
	3qahUYaz29N0+3cbL9eC9PSaTQCCGIB9l6RtHYi56Iy4dIj3UR81lo3WeX2HVi8bGqWNRKfFHA5zB
	p2N2FxuWOfexjFF8LASw5IyG/Yy5fyeErqxo4UekMgGP+byBYaAu1EoMGRz0iiBG+G+wulhU1a/vc
	VcxAutqwna9FDjHTcibULW22BkOJAyw26aTOEQ78NmWVfEhi1/8Kh6hmL3MiDAPZwESCTL93pARuk
	GlViRxiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPse-0002Lt-Ke; Tue, 14 Apr 2020 18:01:52 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPs5-0002D6-8a
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 18:01:20 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 5A7222A1BDC
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-pm@vger.kernel.org
Subject: [RFC v2 0/9] Stop monitoring disabled devices
Date: Tue, 14 Apr 2020 20:00:56 +0200
Message-Id: <20200414180105.20042-1-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <2bc5a902-acde-526a-11a5-2357d899916c@linaro.org>
References: <2bc5a902-acde-526a-11a5-2357d899916c@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_110117_445269_5C39DAE1 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 platform-driver-x86@vger.kernel.org, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-acpi@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 Len Brown <lenb@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Ido Schimmel <idosch@mellanox.com>, Jiri Pirko <jiri@mellanox.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>,
 Shawn Guo <shawnguo@kernel.org>, Peter Kaestle <peter@piie.net>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, netdev@vger.kernel.org,
 Enrico Weigelt <info@metux.net>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is the second iteration of this RFC.

The series now focuses on cleaning up the code in the first place.

After the cleanups in patches 1-3 struct thermal_zone_device is extended
so that it contains a "mode" member (patch 4/9).

The next patch (5/9) makes all thermal zone devices use the "mode" member.
This patch makes drivers' ->get_mode() methods redundant, so the next one
(6/9) removes the method altogether.

Patches 7-8/9 ensure that after changing thermal zone device's mode
an attempt will be made to monitor the device.

And finally patch 9/9 prevents DISABLED devices from being monitored.
It also adds THERMAL_DEVICE_INITIAL to accommodate the devices, which
should be monitored but cannot be initially ENABLED.

Andrzej Pietrasiewicz (9):
  thermal: int3400_thermal: Statically initialize
    .get_mode()/.set_mode() ops
  thermal: Eliminate an always-false condition
  thermal: Properly handle mode values in .set_mode()
  thermal: core: Let thermal zone device's mode be stored in its struct
  thermal: Store mode in thermal_zone_device
  thermal: Remove get_mode() method
  thermal: core: Monitor thermal zone after mode change
  thermal: of: Monitor thermal zone after enabling it
  thermal: core: Stop polling DISABLED thermal devices

 drivers/acpi/thermal.c                        | 44 +++++----------
 .../ethernet/mellanox/mlxsw/core_thermal.c    | 43 ++++-----------
 drivers/platform/x86/acerhdf.c                | 28 +++++-----
 drivers/thermal/da9062-thermal.c              | 12 +---
 drivers/thermal/imx_thermal.c                 | 30 ++++------
 .../intel/int340x_thermal/int3400_thermal.c   | 39 +++----------
 .../thermal/intel/intel_quark_dts_thermal.c   | 27 ++++-----
 drivers/thermal/of-thermal.c                  | 28 ++++------
 drivers/thermal/thermal_core.c                | 40 ++++++++++++--
 drivers/thermal/thermal_core.h                |  2 +
 drivers/thermal/thermal_sysfs.c               | 40 ++++----------
 include/linux/thermal.h                       | 55 ++++++++++++++++++-
 12 files changed, 180 insertions(+), 208 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
