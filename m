Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D24D6ABE6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 17:37:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bXuqK+HsniRLJ/ho16mSwohTF1gwXjZJGBhkbI/K6xA=; b=DmS
	WIUF3GMYwD9PCDUOBRlvpUCLKnGmjHRDeP2XEi8BY0p6RMlorZNUCrDrMmG7qRPDaKUP/toCGOJ0i
	aLOZBQ0shACWjRUKycLp2pUWCurjiDOXfoRV8pXukQpU8C1KnE9O9BiLhuBeSAAB7NElZPym55zs9
	KxLdp/Sc7HgZS4NYfkuTH0EaTIHrAunIFnSHWSniV821lBfbsTmEfV1wmdx0OYVU/6uXoFp5icrRw
	A9thzv551EzdbaltkwIFKLB5YSVF6m5PNxyURSBeiSwgnG1uOxPtu66eFbrQkXuCYKUDzVaRIbqrp
	7DM8u/bb6RpEgK2Ny/y3IqBxOrpM17w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnPVp-0004z1-8H; Tue, 16 Jul 2019 15:37:05 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnPVU-0004yB-7L
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 15:36:46 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B2D30200055;
 Tue, 16 Jul 2019 17:36:42 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B237520008E;
 Tue, 16 Jul 2019 17:36:36 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 814C54029F;
 Tue, 16 Jul 2019 23:36:29 +0800 (SGT)
From: Dong Aisheng <aisheng.dong@nxp.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 00/15] arm64: dts: imx8: architecture improvement and
 adding imx8qm support
Date: Tue, 16 Jul 2019 23:14:34 +0800
Message-Id: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_083644_553077_7C600B2E 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 fabio.estevam@nxp.com, shawnguo@kernel.org
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
[v3,00/11] clk: imx8: add new clock binding for better pm support
https://patchwork.kernel.org/cover/11046287/

NOTE: for the missing undocumented compatible strings for the new SoC IMX8QM
in this patch series. It will be sent in another patch series later.

ChangeLog:
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
 arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi    |   7 +
 arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi    | 185 ++++++++++
 arch/arm64/boot/dts/freescale/imx8-ss-ddr.dtsi     |  19 +
 arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi     | 205 +++++++++++
 arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi    | 294 +++++++++++++++
 arch/arm64/boot/dts/freescale/imx8qm-mek.dts       | 144 ++++++++
 arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi  |  21 ++
 arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi   |  50 +++
 arch/arm64/boot/dts/freescale/imx8qm-ss-lsio.dtsi  |  61 ++++
 arch/arm64/boot/dts/freescale/imx8qm.dtsi          | 179 +++++++++
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts      |   6 +-
 arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi |  37 ++
 arch/arm64/boot/dts/freescale/imx8qxp-ss-conn.dtsi |  21 ++
 arch/arm64/boot/dts/freescale/imx8qxp-ss-lsio.dtsi |  61 ++++
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi         | 401 ++-------------------
 arch/arm64/configs/defconfig                       |   1 +
 17 files changed, 1311 insertions(+), 382 deletions(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
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
