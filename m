Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC4A1F3543
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 09:44:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QfRI9xWKN+Y7inmexE1fHO4kwmOiUNBLCTof61ZU/QI=; b=Ai+
	Bs0lhIVC5hgKE8T7Svv4L1E39nql+yEMxuk/DLVq0WymlqU6Kto01JXmiMfxeCA4mZ57DPNwBXSVU
	P8g9FdJQom/jDyslRT/yQkHByZdvfezFM7ZB9fk4SRK7hJfQsqNP3mKYBSSxdFZcml7yUnET9ehe9
	H4xbl733ID2juPYq+tx1pjwWU2Ewv/yA2UyRu+4mb9nI0OFjz2DXi7IYaMHZS5cc4K4pDbtGne/us
	mN0ZN05GlxohYuDW8qMXP4txeUfZWTtT0AXd/3NvktkaFXIr6llNhatP8AbDkEJqf9IKws77o9v6i
	SjwoO5EVS+OMzGBpw//Fdq7tQPNpb/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiYvR-0004vG-PM; Tue, 09 Jun 2020 07:44:01 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiYuf-0004Xe-Gr
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 07:43:15 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C2D97200189;
 Tue,  9 Jun 2020 09:43:11 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B65A1201036;
 Tue,  9 Jun 2020 09:43:01 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 660AF402F3;
 Tue,  9 Jun 2020 15:42:49 +0800 (SGT)
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
Subject: [PATCH V2 0/9] Support building i.MX8 SoCs clock driver as module
Date: Tue,  9 Jun 2020 15:32:04 +0800
Message-Id: <1591687933-19495-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_004313_712840_B51FB31D 
X-CRM114-Status: UNSURE (   6.76  )
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

Nowdays, there are more and more requirements of building SoC specific drivers
as modules, such as Android GKI (generic kernel image), this patch set supports
building i.MX8 SoCs clock drivers as modules, including i.MX8MQ/MM/MN/MP/QXP,
the common clock modules are: mxc-clk.ko for i.MX8MQ/MM/MN/MP, mxc-clk-scu.ko
for i.MX8QXP and later SoCs with SCU inside, normally, each platform can ONLY
insmod 1 common i.MX clock driver and its own SoC clock driver.

Since i.MX common clk driver will support module build and no longer selected
by default, so for i.MX ARMv7 platforms, need to manually select it to make build pass.

Changes since V1:
	- Fix build error for x86_64-allyesconfig by adding dependency for MXC_CLK_SCU;
	- Move lpcg clock driver change to SCU patch, this is incorrect in V1.

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
 drivers/clk/imx/Kconfig            | 22 +++++++++++++---------
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
 19 files changed, 65 insertions(+), 38 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
