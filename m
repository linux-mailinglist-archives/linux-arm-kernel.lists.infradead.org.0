Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF253134E69
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 22:08:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OS7poqgWvMe3nIU/gjadf0y6A8cXNbs/0yPwISyvV2o=; b=DIbaS1e1sk74WT
	htBV2fYEjGBYlkcWPB0sZfezsUnOoM4ACa/bFe53XadAC9iALIhiDb5aDjh2T0OR76M1o5v7Sl2bk
	t5pQZ+jmVOPHHbzGYtwAa2BVUS3DqyxFd3GOFj5sbkmsUtlTLsyhGHSlNk8xvNJ6K3mlz7sX/EIAR
	/0NqspWqjONraky9w7YniG2FEwK7PUNoP7nt8REAWaZErAqqxFK8ITXgyVd8K8K8fd1Nn4+dbgiqt
	MwHYJ9ioCQDw5Cdi6VU+l840rj6wnqKNeSWwJksXff89ASCXbQBxWNkZAEBtNYtMWXabtjXLaeqMd
	ra3wK0HqA5kvn6IU7BAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipIZL-0000x9-0w; Wed, 08 Jan 2020 21:08:47 +0000
Received: from o1.b.az.sendgrid.net ([208.117.55.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipIYQ-0000BG-M9
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 21:07:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=from:subject:to:cc:content-type:content-transfer-encoding;
 s=001; bh=uN626LkiVQ/IYQ07t5hafh9YVD29M1eVztEzw+fNXzo=;
 b=L+7rDbSuAq0Ia9qc9SRmnvqqaFTp4cKR53aOnONEMw+LyuDyZ8cOez218+z0LcpnDLq+
 I86taNWQY8ybiGAACLpwV/8+cOxvPGEtE+K4o1SB3TPbad7A+2MZm7uAqrh3PhPWfu2bqe
 0DMr6kaAbV/AbTZigTtv9Ag3u1KYVXdtg=
Received: by filterdrecv-p3mdw1-56c97568b5-m6gw4 with SMTP id
 filterdrecv-p3mdw1-56c97568b5-m6gw4-19-5E1644A3-A
 2020-01-08 21:07:47.202815829 +0000 UTC m=+1974280.427826101
Received: from bionic.localdomain (unknown [98.128.173.80])
 by ismtpd0005p1lon1.sendgrid.net (SG) with ESMTP id lJXBfmg9SiKtZf1InJRBnw
 Wed, 08 Jan 2020 21:07:47.011 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 00/14] Support more HDMI modes on RK3228/RK3328
Date: Wed, 08 Jan 2020 21:07:47 +0000 (UTC)
Message-Id: <20200108210740.28769-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.17.1
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h8tx7bkLKAWnDQBpQ?=
 =?us-ascii?Q?ZEr7pUsi+B2Ai3fmPPFJg85m7ZXab8HQv0FysAB?=
 =?us-ascii?Q?wzv2Lwwd2atjV7VtUYiUxWyFeOGsZB658mZxY1b?=
 =?us-ascii?Q?L1j8bcIXZ0WNAbX9RMDg71zNujliuBDh2RIze14?=
 =?us-ascii?Q?PwcwcCP9jILQhQ7Y49hiL7fZbGdoHE0sSOeT6Qq?=
 =?us-ascii?Q?yUv21Uhs01blsXy4jbCTw=3D=3D?=
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [208.117.55.133 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [208.117.55.133 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Zheng Yang <zhengyang@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series make it possible to use more HDMI modes on RK3328,
and presumably also on RK3228. It also prepares for a future YUV420 and
10-bit output series.

Part of this has been reworked from vendor BSP 4.4 kernel commits.

Patch 1-5 fixes issues and shortcomings in the inno hdmi phy driver.

Patch 6 prepares for use of high TMDS bit rates used with HDMI 2.0 and
10-bit output modes.

Patch 7-13 changes rk3228/rk3328 to use mode_valid functions suited for
the inno hdmi phy instead of the dw-hdmi phy. These changes allows for
more CEA modes to be usable, e.g. some 4K and fractal modes.

Patch 14 adds support for more pixel clock rates in order to support
common DMT modes in addition to CEA modes.

Note: I have only been able to build test RK322x related changes
as I do not have any RK322x device to test on.

All modes, including fractal modes, has been tested with modetest on
a RK3328 Rock64 device using e.g.

  modetest -M rockchip -s 39:3840x2160-29.97

Changes in v2:
  - collect acked-by tag
  - drop the limit resolution width to 3840 patch

This series is also available at [1] and the early work on YUV420 and
10-bit output is available at [2].

[1] https://github.com/Kwiboo/linux-rockchip/commits/next-20200108-inno-hdmi-phy
[2] https://github.com/Kwiboo/linux-rockchip/commits/next-20200108-bus-format

Regards,
Jonas

Algea Cao (1):
  phy/rockchip: inno-hdmi: Support more pre-pll configuration

Huicong Xu (1):
  phy/rockchip: inno-hdmi: force set_rate on power_on

Jonas Karlman (11):
  phy/rockchip: inno-hdmi: use correct vco_div_5 macro on rk3328
  phy/rockchip: inno-hdmi: remove unused no_c from rk3328 recalc_rate
  phy/rockchip: inno-hdmi: do not power on rk3328 post pll on reg write
  drm/rockchip: dw-hdmi: allow high tmds bit rates
  drm/rockchip: dw-hdmi: require valid vpll clock rate on rk3228/rk3328
  clk: rockchip: set parent rate for DCLK_VOP clock on rk3228
  arm64: dts: rockchip: increase vop clock rate on rk3328
  arm64: dts: rockchip: add vpll clock to hdmi node on rk3328
  ARM: dts: rockchip: add vpll clock to hdmi node on rk3228
  drm/rockchip: dw-hdmi: limit tmds to 340mhz on rk3228/rk3328
  drm/rockchip: dw-hdmi: remove unused plat_data on rk3228/rk3328

Zheng Yang (1):
  phy/rockchip: inno-hdmi: round fractal pixclock in rk3328 recalc_rate

 arch/arm/boot/dts/rk322x.dtsi                 |   4 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi      |   6 +-
 drivers/clk/rockchip/clk-rk3228.c             |   2 +-
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c   |  47 ++++++--
 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 110 ++++++++++++------
 5 files changed, 120 insertions(+), 49 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
