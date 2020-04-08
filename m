Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB5C1A2661
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 17:54:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zHspWS1DeJ2ss/TwsGEYyE7brlRW4kLQQcxTR9gJwpQ=; b=Li1Jk+yJUdEhPC
	K5LtkqBkiNE/Ra1IRJGK8+pKXRme46534yw7Sye+co8GkIWv+oTexyt577kYEwQcwcqFh81Y25MEZ
	NF+4cf7mV7MUkXVx/NAfqIwNTE7SLaYDr8v2bg31+9FnUd8NlZ2/ebIJ6nlLVL020AOvLA83puVZK
	hJ/EFry9EIhsrfRPCIFgEftTp2utfHMijxl0dsfNsvD17x4Q+ZjVYurZEEJC6ypObMYJFU4iRoEMH
	N5iexNHymbzIZriUZ8OFT8BAT4eVsxkJt7fahVU78/10BTrja+fgtFEGiVw9CrV3Yo4jmpQs+Tin6
	u3FEmcdCWB99rNjo0sfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMD1c-0003de-Dp; Wed, 08 Apr 2020 15:54:00 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMD1O-0003cL-1R; Wed, 08 Apr 2020 15:53:47 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MTAW9-1jjUM20lyh-00UXnC; Wed, 08 Apr 2020 17:53:29 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Helen Koike <helen.koike@collabora.com>
Subject: [PATCH] media: staging: rkisp1: avoid unused variable warning
Date: Wed,  8 Apr 2020 17:52:44 +0200
Message-Id: <20200408155325.2077345-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:68Z72znrNvEuHIJsN20T/ABmAB4bmydH1GC38M8EeLkViwTTCj5
 pGlc7UTVbkUzb3TX+27y7HvCoxt6g49BGBUEx+iIZG69x2Sw/ZAeDGz4YJQ/1RylPMQQTYI
 zejJf3aUKH6QMhCjW2+TZbGrVbYkE02vPqUUa6B8COUi1NZ10c+LnN9+a5YJYKVdNmBmcX6
 jwT6sd1yAggxfj72OZTEw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pHcQGDHfPRM=:BGjK9PBI3Cv7HcjiPXdVRV
 veg/Iv3oEeWyZrZuc526rWsTCrXGCmYKF61vLds7WqC0HQXbd1TKawxO2hzYiYKYziH50bYsA
 HWJeIq2XxRQ9awws9JYfGBbXHNnGsQ7KdDWyzhS8A5Mm7uWj6AbkwfYxZL1TOftZoC1poIxUy
 uhZfR0Ak/D/dNWB4KixIl8CEgsNAxK5eJtnh410RtBuz8RTq6FI5/SG/fml7J1Fy7OXnmsym1
 S+7zZYcGmpmfW5v7z9h4Eq8gFSTQNCMXISk/rTGfVJmg/2mavQxyO1SZfkYm6I45IY9qBSTe/
 hr7fg6zoCfYdnChvGHrGT5N91mIa9ZI0OJUKEnenUDA7GuqdcbPnNujJ9KN/s2tlBI4TYCDd4
 Sfqit78M6BuwyoBCPn4WnP6uT6zoAp69vf6WiI7Yl3eD/YBPihOU1vabHxjTBTt7zByNdC1sz
 +ovfdYMrlRcuSz2peoUqGfRWiWrRdVjpIvf/NlXNW1kmYxcUzy3tZYIjgodl3EUd1Wpkkeixc
 YLybc3H8NNrW30aiBxp81ZGHRbSTw1za6rxFwsVPt9FPMtJzhBsnqkAp1Qdzdn1ArIKijZ6YU
 D2+gDDX5iI6bGfT2iGpk3xlNzuOvBicVbCZWP/Ga1mt/Q5BaC9Rvpb85MeUqawXvl/l8lmFKj
 SR1m14dBS2CKphtSbaBWhEnn/LR4AnE237zjX4B+QXVr4R9bYwiR9LI79zyGTCGW6NzSTMIhi
 q5LadUcKDJvXiFsfA79FVSJiRXwvkfRuEgSTU8339oKtVSgdJss1V2c6YWqGXjdXDKLJ/wknV
 XpcE4nsXJ9yRJBZpgY2faYkTbrppcROTcP+ag9ETP8jT0xI2rY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_085346_375060_99AC2FAD 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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
Cc: devel@driverdev.osuosl.org, Eddie Cai <eddie.cai.linux@gmail.com>,
 Jacob Chen <cc@rock-chips.com>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Jacob Chen <jacob2.chen@rock-chips.com>,
 Jeffy Chen <jeffy.chen@rock-chips.com>, Yichong Zhong <zyc@rock-chips.com>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Allon Huang <allon.huang@rock-chips.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-rockchip@lists.infradead.org,
 Shunqian Zheng <zhengsq@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When compile-testing with CONFIG_OF disabled, we get a warning
about an unused variable, and about inconsistent Kconfig dependencies:

WARNING: unmet direct dependencies detected for PHY_ROCKCHIP_DPHY_RX0
  Depends on [n]: STAGING [=y] && STAGING_MEDIA [=y] && MEDIA_SUPPORT [=m] && (ARCH_ROCKCHIP [=n] || COMPILE_TEST [=y]) && OF [=n]
  Selected by [m]:
  - VIDEO_ROCKCHIP_ISP1 [=m] && STAGING [=y] && STAGING_MEDIA [=y] && MEDIA_SUPPORT [=m] && VIDEO_V4L2 [=m] && VIDEO_V4L2_SUBDEV_API [=y] && (ARCH_ROCKCHIP [=n] || COMPILE_TEST [=y])

drivers/staging/media/rkisp1/rkisp1-dev.c: In function 'rkisp1_probe':
drivers/staging/media/rkisp1/rkisp1-dev.c:457:22: error: unused variable 'node' [-Werror=unused-variable]
  457 |  struct device_node *node = pdev->dev.of_node;

Simply open-coding the pointer dereference in the only place
the variable is used avoids the warning in all configurations,
so we can allow compile-testing as well.

Fixes: d65dd85281fb ("media: staging: rkisp1: add Rockchip ISP1 base driver")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig | 2 +-
 drivers/staging/media/rkisp1/rkisp1-dev.c           | 3 +--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig b/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig
index bd0147624de1..dd5d4d741bdd 100644
--- a/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig
+++ b/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig
@@ -2,7 +2,7 @@
 
 config PHY_ROCKCHIP_DPHY_RX0
 	tristate "Rockchip MIPI Synopsys DPHY RX0 driver"
-	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OF
+	depends on (ARCH_ROCKCHIP && OF) || COMPILE_TEST
 	select GENERIC_PHY_MIPI_DPHY
 	select GENERIC_PHY
 	help
diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
index b1b3c058e957..5e7e797aad71 100644
--- a/drivers/staging/media/rkisp1/rkisp1-dev.c
+++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
@@ -454,7 +454,6 @@ static void rkisp1_debug_init(struct rkisp1_device *rkisp1)
 
 static int rkisp1_probe(struct platform_device *pdev)
 {
-	struct device_node *node = pdev->dev.of_node;
 	const struct rkisp1_match_data *clk_data;
 	const struct of_device_id *match;
 	struct device *dev = &pdev->dev;
@@ -463,7 +462,7 @@ static int rkisp1_probe(struct platform_device *pdev)
 	unsigned int i;
 	int ret, irq;
 
-	match = of_match_node(rkisp1_of_match, node);
+	match = of_match_node(rkisp1_of_match, pdev->dev.of_node);
 	rkisp1 = devm_kzalloc(dev, sizeof(*rkisp1), GFP_KERNEL);
 	if (!rkisp1)
 		return -ENOMEM;
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
