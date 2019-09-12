Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8ABB1234
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 17:32:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ywc1Cu5uHq8rR5PktzVciqL23ji4lT43khM63BdHOSk=; b=FbQ
	U0H/RQ6xQ07jPQx9KK5XoAmnvcots9feexI03FKi+/MePtZ88w+SM1bFL46f4VlZ52dtS1TDfsHhi
	egRsmVB33PPgDmAN1Rrgr7f7twrZtbwSduorQUsQAwfwIVvY3LVXtdhNztO2YRdrY4cT7Mig+0+N+
	8q3Ngvxl7rcDRfcGmWYYBKD478YyZcmeJMyOaUxUa0iUqoOH9MlM8cpsmpf+MHKNKJfgGsp5vCZKH
	viuory5dQnIt+dGgegvejMLX0viSSyKIY2Rx+nnEDFNBVqnx+ZPd6/6JvWZqgvAkIEeCeQ3ngeiLd
	WlvbjdfQp0In07nioAOA4caQjRk4V6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8R5V-0006HQ-4O; Thu, 12 Sep 2019 15:32:49 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8R4t-00062Y-Qd
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 15:32:13 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 939CF1A0695;
 Thu, 12 Sep 2019 17:32:08 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D9E0F1A068E;
 Thu, 12 Sep 2019 17:32:02 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id E9BDD402AE;
 Thu, 12 Sep 2019 23:31:55 +0800 (SGT)
From: Dong Aisheng <aisheng.dong@nxp.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V3 00/15] arm64: dts: imx8: architecture improvement and
 adding imx8qm support
Date: Thu, 12 Sep 2019 23:30:37 +0800
Message-Id: <1568302252-28066-1-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_083212_138019_94CA013E 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, devicetree@vger.kernel.org,
 dongas86@gmail.com, catalin.marinas@arm.com, will.deacon@arm.com,
 oliver.graute@gmail.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, fabio.estevam@nxp.com, shawnguo@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

IMX SCU based platforms (e.g. MX8QM/MX8QXP) are comprised of a number of SS
(Subsystems), those SS may be shared between different SoCs while most of them
can be reused like Devices Resources, Clocks, Power domains and etc.

This patch series aims to improve the MX8 architecture to comply with the HW
design to save a lot of duplicated codes and benefits us a better
maintainability and scalability in the future.

This patch series depends on another clk new binding series:
https://patchwork.kernel.org/cover/11046287/

NOTE: for the missing undocumented compatible strings for the new SoC IMX8QM
in this patch series. It will be sent in another patch series later.

ChangeLog:
v2->v3:
 * use clock-indices property instead of bit-offset property suggested by Shawn Guo
 * rebase to latest shawn/for-next
v1->v2:
 * change to the new two cells scu clock binding, so original adding scu clocks
   patches were removed.
 * Move scu pd node above clk node

Dong Aisheng (15):
  arm64: dts: imx8qxp: add fallback compatible string for scu pd
  arm64: dts: imx8qxp: move scu pd node before scu clock node
  arm64: dts: imx8qxp: orginize dts in subsystems
  arm64: dts: imx8: add lsio lpcg clocks
  arm64: dts: imx8: add conn lpcg clocks
  arm64: dts: imx8: add adma lpcg clocks
  arm64: dts: imx8: switch to two cell scu clock binding
  arm64: dts: imx8: switch to new lpcg clock binding
  arm64: dts: imx8qm: add lsio ss support
  arm64: dts: imx8qm: add conn ss support
  arm64: dts: imx8: split adma ss into dma and audio ss
  arm64: dts: imx8qm: add dma ss support
  arm64: dts: imx: add imx8qm common dts file
  arm64: dts: imx: add imx8qm mek support
  arm64: defconfig: add imx8qm mek support

 arch/arm64/boot/dts/freescale/Makefile             |   1 +
 arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi    |   8 +
 arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi   |  67 ++++
 arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi    | 192 +++++++++
 arch/arm64/boot/dts/freescale/imx8-ss-ddr.dtsi     |  19 +
 arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi     | 209 ++++++++++
 arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi    | 310 +++++++++++++++
 arch/arm64/boot/dts/freescale/imx8qm-mek.dts       | 144 +++++++
 arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi  |  21 +
 arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi   |  51 +++
 arch/arm64/boot/dts/freescale/imx8qm-ss-lsio.dtsi  |  61 +++
 arch/arm64/boot/dts/freescale/imx8qm.dtsi          | 180 +++++++++
 arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts    |  16 +-
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts      |   8 +-
 arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi |  37 ++
 arch/arm64/boot/dts/freescale/imx8qxp-ss-conn.dtsi |  21 +
 arch/arm64/boot/dts/freescale/imx8qxp-ss-lsio.dtsi |  61 +++
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi         | 431 ++-------------------
 arch/arm64/configs/defconfig                       |   1 +
 19 files changed, 1420 insertions(+), 418 deletions(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-ddr.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-mek.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-ss-lsio.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ss-conn.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ss-lsio.dtsi

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
