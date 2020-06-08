Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 344071F19E4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 15:23:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XdnuH3bFoARvwxPkJ9uZnQuzczxKVJ8JcNdiEgLT5Ds=; b=PK5
	mX6a2vdjGJ2q/aao1ue/bpb3JeYxQO4pAVmiGr+BZPsOKhQa2egDlD5b6qKI3QAaPhOPNqiy8SJ1L
	R0+IoiSiGXKLh8XullUhnvkFrYVpMay5ovTzhfrvKiQkw3bp4ThqOw3p3D8XwsFN9xGH9dOWALvuO
	JLzRC1j0LwOmW/Ao+7LZPreA3iD2j6cLXm3ziN63fTTCSuQ28+zWlpdV1fCih1L/T4QNH28mUi14k
	gdlCN1G1vok27waLLC32FdN2psvGDB8eGcNFK0DtEzBUQUKRhtDlkzzIiB07wcpg9R3VOe4jAqZmS
	izSbjAUbfyR8LWywpqGGV/2rzAsID7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiHkK-000191-Kn; Mon, 08 Jun 2020 13:23:24 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiHkB-00017a-Mk
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 13:23:17 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9647B20008C;
 Mon,  8 Jun 2020 15:23:11 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A939B200DF5;
 Mon,  8 Jun 2020 15:23:01 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 52FE740297;
 Mon,  8 Jun 2020 21:22:49 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: linux@armlinux.org.uk, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, mturquette@baylibre.com,
 sboyd@kernel.org, oleksandr.suvorov@toradex.com, stefan.agner@toradex.com,
 arnd@arndb.de, abel.vesa@nxp.com, peng.fan@nxp.com, aisheng.dong@nxp.com,
 tglx@linutronix.de, allison@lohutok.net, gregkh@linuxfoundation.org,
 info@metux.net, leonard.crestez@nxp.com, fugang.duan@nxp.com,
 daniel.baluta@nxp.com, yuehaibing@huawei.com, sfr@canb.auug.org.au,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH 0/9] Support building i.MX8 SoCs clock driver as module
Date: Mon,  8 Jun 2020 21:12:07 +0800
Message-Id: <1591621936-11886-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_062315_882233_0C022AB4 
X-CRM114-Status: UNSURE (   6.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Nowdays, there are more and more requirements of building SoC specific
drivers as modules, such as Android GKI (generic kernel image), this patch
set support building i.MX8 SoCs clock drivers as modules, including
i.MX8MQ/MM/MN/MP/QXP, the common clock modules are: mxc-clk.ko for
i.MX8MQ/MM/MN/MP, mxc-clk-scu.ko for i.MX8QXP and later SoCs with SCU inside,
normally, each platform can ONLY insmod 1 common i.MX clock driver and
its own SoC clock driver.

Since i.MX common clk driver will support module build and no longer selected
by default, so for i.MX ARMv7 platforms, need to manually select it to
make build pass.

Anson Huang (9):
  clk: composite: Export clk_hw_register_composite()
  ARM: imx: Select MXC_CLK for ARCH_MXC
  clk: imx: Support building SCU clock driver as module
  clk: imx: Support building i.MX common clock driver as module
  clk: imx8mm: Support module build
  clk: imx8mn: Support module build
  clk: imx8mp: Support module build
  clk: imx8mq: Support module build
  clk: imx8qxp: Support module build

 arch/arm/mach-imx/Kconfig          |  1 +
 drivers/clk/clk-composite.c        |  1 +
 drivers/clk/imx/Kconfig            | 20 ++++++++++++--------
 drivers/clk/imx/Makefile           | 30 +++++++-----------------------
 drivers/clk/imx/clk-composite-8m.c |  1 +
 drivers/clk/imx/clk-cpu.c          |  1 +
 drivers/clk/imx/clk-frac-pll.c     |  1 +
 drivers/clk/imx/clk-gate2.c        |  1 +
 drivers/clk/imx/clk-imx8mm.c       |  1 +
 drivers/clk/imx/clk-imx8mn.c       |  1 +
 drivers/clk/imx/clk-imx8mp.c       |  1 +
 drivers/clk/imx/clk-imx8mq.c       |  1 +
 drivers/clk/imx/clk-imx8qxp-lpcg.c |  1 +
 drivers/clk/imx/clk-imx8qxp.c      |  1 +
 drivers/clk/imx/clk-lpcg-scu.c     |  1 +
 drivers/clk/imx/clk-pll14xx.c      |  4 ++++
 drivers/clk/imx/clk-scu.c          |  5 +++++
 drivers/clk/imx/clk-sscg-pll.c     |  1 +
 drivers/clk/imx/clk.c              | 28 ++++++++++++++++++++++------
 19 files changed, 64 insertions(+), 37 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
