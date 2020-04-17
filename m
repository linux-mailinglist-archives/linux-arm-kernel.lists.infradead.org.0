Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E191AE205
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 18:20:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cv73myxE1FOlz9Ox134rNrgkE1hvNd2Rjxdg6xi73ys=; b=B3V+tdtYniDWhVvpK9R+HYkHpA
	kMoKHB220r74xL+mU6XrbFRwpFbX8XwNDn2yJKO9GtG2l7RmaRq2pI00Z4uFYNWXnutmkJK4768Vu
	faetdxROD+fdHX8iHVeDDkjJLOonp91SzmXUeNf+mpm9GNm8XHl+NhSImEQMHxkh3FZTtFOmoDeyW
	YRkv/kuGoez8MZ2IdxSG5VUTQIkeTRLXYBlB/Sr3z6my95TSzPkJlLkjre5DuCOFHzQBQP0FCJf0z
	77AyR5BlPDgw/MI9MXn4xa0b6MF7JCrDN7t/Qx6YIq88C8FC0jZZTAkbOI1msZ8wHJQZMcbt4tldp
	+B2/fUaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPTjT-0005I0-4W; Fri, 17 Apr 2020 16:20:47 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPTjE-0005GB-SF
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 16:20:34 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 1A17C2A2AE9
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-pm@vger.kernel.org
Subject: [RFC v3 0/2] Stop monitoring disabled devices
Date: Fri, 17 Apr 2020 18:20:18 +0200
Message-Id: <20200417162020.19980-1-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <9ac3b37a-8746-b8ee-70e1-9c876830ac83@linaro.org>
References: <9ac3b37a-8746-b8ee-70e1-9c876830ac83@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_092033_041368_75CA308E 
X-CRM114-Status: UNSURE (   6.13  )
X-CRM114-Notice: Please train this message.
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
Cc: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 platform-driver-x86@vger.kernel.org, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-acpi@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 Len Brown <lenb@kernel.org>,
 Barlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ido Schimmel <idosch@mellanox.com>,
 Jiri Pirko <jiri@mellanox.com>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
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

This is the third iteration of this RFC. It has been substantially
rewritten compared to v2.

The first patch makes all the drivers store their mode in struct
thermal_zone_device. Such a move has consequences: driver-specific
variables for storing mode are not necessary. Consequently get_mode()
methods become obsolete. Then sysfs "mode" attribute stops depending
on get_mode() being provided, because it is always provided from now on.

The first patch also introduces the initial mode to be optionally passed
to thermal_zone_device_register().

Given all the groundwork done in patch 1/2 patch 2/2 becomes very simple.

This series addresses comments from Daniel and Bartlomiej - thank you guys!

Andrzej Pietrasiewicz (2):
  thermal: core: Let thermal zone device's mode be stored in its struct
  thermal: core: Stop polling DISABLED thermal devices

 drivers/acpi/thermal.c                        | 46 +++++---------
 .../ethernet/mellanox/mlxsw/core_thermal.c    | 57 ++++--------------
 drivers/platform/x86/acerhdf.c                | 17 +-----
 drivers/thermal/da9062-thermal.c              | 16 ++---
 drivers/thermal/imx_thermal.c                 | 29 +++------
 .../intel/int340x_thermal/int3400_thermal.c   | 30 ++--------
 .../thermal/intel/intel_quark_dts_thermal.c   | 22 ++-----
 drivers/thermal/of-thermal.c                  | 30 +++-------
 drivers/thermal/thermal_core.c                | 60 +++++++++++++++++--
 drivers/thermal/thermal_core.h                | 16 +++++
 drivers/thermal/thermal_sysfs.c               | 29 +--------
 include/linux/thermal.h                       |  7 ++-
 12 files changed, 139 insertions(+), 220 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
