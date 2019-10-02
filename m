Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4ABC8A85
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 16:06:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/cSNVRSK+FRyncxaqNpfawX2hpUnwHZL6bKcVdviSJo=; b=V+k
	GSKsi6+cJii7+1tW2Pnwx8vAl/wbJcC2gFKT6jNqALaZmt8O3+EcyhRVHJO0z7J+U1cD16I/7xhtz
	4isWjLIgC4ZZE7lyEYcqS1oL9rfBSUM6wErDb12DATYglWPuYlw6sUoTSYlgpzeU0Ea39GOr4SN15
	/XenuofdkNACCNDdDpzcwFRfPmyyEmZumGZ0ptap3NqNlkAE1dfQaTBhr5mUT4x3NS1kRw5Z4kzti
	gcR868p6nUPKVQU6OrYpeL0/SzVSiolcIPvVf0nOrwZ+GUjK0nxsk6RcOGC5gtPrn0fg93QaRRCYA
	U89WrwqoYQdTB0XjBZt8S/NmH87G/Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFfGP-0005eS-8Y; Wed, 02 Oct 2019 14:05:57 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFfGD-0005cg-5W
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 14:05:46 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5C7E920067F;
 Wed,  2 Oct 2019 16:05:40 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4B46E200141;
 Wed,  2 Oct 2019 16:05:40 +0200 (CEST)
Received: from fsr-ub1664-121.ea.freescale.net
 (fsr-ub1664-121.ea.freescale.net [10.171.82.171])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id C8B962060C;
 Wed,  2 Oct 2019 16:05:39 +0200 (CEST)
From: Laurentiu Palcu <laurentiu.palcu@nxp.com>
To: Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/5] Add support for iMX8MQ Display Controller Subsystem
Date: Wed,  2 Oct 2019 17:04:52 +0300
Message-Id: <1570025100-5634-1-git-send-email-laurentiu.palcu@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_070545_489064_A49A23CA 
X-CRM114-Status: GOOD (  10.52  )
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
Cc: devicetree@vger.kernel.org, agx@sigxcpu.org, linux-kernel@vger.kernel.org,
 Laurentiu Palcu <laurentiu.palcu@nxp.com>, linux-clk@vger.kernel.org,
 l.stach@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This patchset adds initial DCSS support for iMX8MQ chip. Initial support
includes only graphics plane support (no video planes), no HDR10 capabilities,
no graphics decompression (only linear, tiled and super-tiled buffers allowed).

Support for the rest of the features will be added incrementally, in subsequent
patches.

The patchset was tested with both HDP driver (not yet upstreamed) and MIPI-DSI
(drivers already on the dri-devel ML).

Thanks,
Laurentiu

Changes in v2:
 * Removed '0x' in node's unit-address both in DT and yaml;
 * Made the address region size lowercase, to be consistent;
 * Removed some left-over references to P010;
 * Added a Kconfig dependency of DRM && ARCH_MXC. This will also silence compilation
   issues reported by kbuild for other architectures;


Laurentiu Palcu (5):
  clk: imx8mq: Add VIDEO2_PLL clock
  drm/imx: compile imx directory by default
  drm/imx: Add initial support for DCSS on iMX8MQ
  dt-bindings: display: imx: add bindings for DCSS
  arm64: dts: imx8mq: add DCSS node

 .../bindings/display/imx/nxp,imx8mq-dcss.yaml      |  86 +++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi          |  25 +
 drivers/clk/imx/clk-imx8mq.c                       |   4 +
 drivers/gpu/drm/Makefile                           |   2 +-
 drivers/gpu/drm/imx/Kconfig                        |   2 +
 drivers/gpu/drm/imx/Makefile                       |   1 +
 drivers/gpu/drm/imx/dcss/Kconfig                   |   8 +
 drivers/gpu/drm/imx/dcss/Makefile                  |   6 +
 drivers/gpu/drm/imx/dcss/dcss-blkctl.c             |  75 ++
 drivers/gpu/drm/imx/dcss/dcss-crtc.c               | 223 ++++++
 drivers/gpu/drm/imx/dcss/dcss-ctxld.c              | 447 +++++++++++
 drivers/gpu/drm/imx/dcss/dcss-dev.c                | 286 +++++++
 drivers/gpu/drm/imx/dcss/dcss-dev.h                | 195 +++++
 drivers/gpu/drm/imx/dcss/dcss-dpr.c                | 548 ++++++++++++++
 drivers/gpu/drm/imx/dcss/dcss-drv.c                | 182 +++++
 drivers/gpu/drm/imx/dcss/dcss-dtg.c                | 438 +++++++++++
 drivers/gpu/drm/imx/dcss/dcss-kms.c                | 321 ++++++++
 drivers/gpu/drm/imx/dcss/dcss-kms.h                |  52 ++
 drivers/gpu/drm/imx/dcss/dcss-plane.c              | 418 +++++++++++
 drivers/gpu/drm/imx/dcss/dcss-scaler.c             | 826 +++++++++++++++++++++
 drivers/gpu/drm/imx/dcss/dcss-ss.c                 | 179 +++++
 include/dt-bindings/clock/imx8mq-clock.h           |   4 +-
 22 files changed, 4326 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/imx/nxp,imx8mq-dcss.yaml
 create mode 100644 drivers/gpu/drm/imx/dcss/Kconfig
 create mode 100644 drivers/gpu/drm/imx/dcss/Makefile
 create mode 100644 drivers/gpu/drm/imx/dcss/dcss-blkctl.c
 create mode 100644 drivers/gpu/drm/imx/dcss/dcss-crtc.c
 create mode 100644 drivers/gpu/drm/imx/dcss/dcss-ctxld.c
 create mode 100644 drivers/gpu/drm/imx/dcss/dcss-dev.c
 create mode 100644 drivers/gpu/drm/imx/dcss/dcss-dev.h
 create mode 100644 drivers/gpu/drm/imx/dcss/dcss-dpr.c
 create mode 100644 drivers/gpu/drm/imx/dcss/dcss-drv.c
 create mode 100644 drivers/gpu/drm/imx/dcss/dcss-dtg.c
 create mode 100644 drivers/gpu/drm/imx/dcss/dcss-kms.c
 create mode 100644 drivers/gpu/drm/imx/dcss/dcss-kms.h
 create mode 100644 drivers/gpu/drm/imx/dcss/dcss-plane.c
 create mode 100644 drivers/gpu/drm/imx/dcss/dcss-scaler.c
 create mode 100644 drivers/gpu/drm/imx/dcss/dcss-ss.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
