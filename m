Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6816C56A92
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 15:33:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mxkeXzVqrYlopVoAb8fsjhDABHTQSD0s8XBt1b30EPo=; b=N24
	rna8s1G8u5IwCmAT65jvjlK3sEmI322EmHNKz2/qahSCMQpgXyMIZrR6ji1yt+2s7d4EbxLyYgPXB
	30HoxwJg+Lsx1/4OC3gVA1EsCa+eQALPNh/Bs3vE3qEiaf8EyYo24APOcSXKuc1JevuT5K9G4YCs6
	6wavazO3/Ezo7BgHi5iBZRv55fKOWD8X4HJj5raZo5HDpJ3k4pISx+a2zsGHSWQbHZUp6mtu71SeQ
	pgxEskQ3jRg9Sj4ZiiYcagtGaNpWssvJ3ZYKxzpTkDCj4G22WcMpUD8NK4pqgQ7XM/nf78lTmXfJN
	v96zxMHFARHhz+SP16s9Z+R9jR7b1rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg82o-0001II-NK; Wed, 26 Jun 2019 13:33:02 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg82D-00017N-TF
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 13:32:27 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 1DB852009AC;
 Wed, 26 Jun 2019 15:32:22 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 1069F2009AB;
 Wed, 26 Jun 2019 15:32:22 +0200 (CEST)
Received: from fsr-ub1664-120.ea.freescale.net
 (fsr-ub1664-120.ea.freescale.net [10.171.82.81])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 6078A205DB;
 Wed, 26 Jun 2019 15:32:21 +0200 (CEST)
From: Robert Chiras <robert.chiras@nxp.com>
To: Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 00/10] Improvements and fixes for mxsfb DRM driver
Date: Wed, 26 Jun 2019 16:32:08 +0300
Message-Id: <1561555938-21595-1-git-send-email-robert.chiras@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_063226_292767_DD1BD991 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Robert Chiras <robert.chiras@nxp.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch-set improves the use of eLCDIF block on iMX 8 SoCs (like 8MQ, 8MM
and 8QXP). Following, are the new features added and fixes from this
patch-set:

1. Add support for drm_bridge
On 8MQ and 8MM, the LCDIF block is not directly connected to a parallel
display connector, where an LCD panel can be attached, but instead it is
connected to DSI controller. Since this DSI stands between the display
controller (eLCDIF) and the physical connector, the DSI can be implemented
as a DRM bridge. So, in order to be able to connect the mxsfb driver to
the DSI driver, the support for a drm_bridge was needed in mxsfb DRM
driver (the actual driver for the eLCDIF block).

2. Add support for additional pixel formats
Some of the pixel formats needed by Android were not implemented in this
driver, but they were actually supported. So, add support for them.

3. Add support for horizontal stride
Having support for horizontal stride allows the use of eLCDIF with a GPU
(for example) that can only output resolution sizes multiple of a power of
8. For example, 1080 is not a power of 16, so in order to support 1920x1080
output from GPUs that can produce linear buffers only in sizes multiple to 16,
this feature is needed.

3. Few minor features and bug-fixing
The addition of max-res DT property was actually needed in order to limit
the bandwidth usage of the eLCDIF block. This is need on systems where
multiple display controllers are presend and the memory bandwidth is not
enough to handle all of them at maximum capacity (like it is the case on
8MQ, where there are two display controllers: DCSS and eLCDIF).
The rest of the patches are bug-fixes.

Mirela Rabulea (1):
  drm/mxsfb: Signal mode changed when bpp changed

Robert Chiras (9):
  drm/mxsfb: Update mxsfb to support a bridge
  drm/mxsfb: Update mxsfb with additional pixel formats
  drm/mxsfb: Fix the vblank events
  dt-bindings: display: Add max-res property for mxsfb
  drm/mxsfb: Add max-res property for MXSFB
  drm/mxsfb: Update mxsfb to support LCD reset
  drm/mxsfb: Improve the axi clock usage
  drm/mxsfb: Clear OUTSTANDING_REQS bits
  drm/mxsfb: Add support for horizontal stride

 .../devicetree/bindings/display/mxsfb.txt          |   6 +
 drivers/gpu/drm/mxsfb/mxsfb_crtc.c                 | 290 ++++++++++++++++++---
 drivers/gpu/drm/mxsfb/mxsfb_drv.c                  | 189 +++++++++++---
 drivers/gpu/drm/mxsfb/mxsfb_drv.h                  |  10 +-
 drivers/gpu/drm/mxsfb/mxsfb_out.c                  |  26 +-
 drivers/gpu/drm/mxsfb/mxsfb_regs.h                 | 128 ++++++---
 6 files changed, 531 insertions(+), 118 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
