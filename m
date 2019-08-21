Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64742976CC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 12:17:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yfKAnQdgyx0MObK+ft/DOtuRdfk8MjJw/bDALrgWJEE=; b=tejsqezzV2WaVn4Rr4qg+HQ40f
	rqFC0/DyEqEUeKwOjh/rCWIAV1NKgTa78g6SZIA85lSXZ5edP+/MPErC9VSYgUvehDOiQAa+nXhl5
	YKMjg2Cz8fa+i33BCtEJA7Zyou0Ve61+pZ9X5ZkFnCAdUgI9JkHxOoAD5g8apgzNBz9oaDkz2ojxm
	/RVYqcb2RJt+fLezJP/kfslf/BtmttF3tC8UY4LOoGGaZOpQpveIbETWqAJ/QYpoUpNjeY1Sj6S4e
	cuuTtVaqrnR4aVTh82hr9zb8WB7z/UVVB93nsvTgdQ0NG5xVKeRpZtEq9fxqajjd6MRDOCbXWr49y
	ot2m4ZOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0NgZ-0002hJ-Ny; Wed, 21 Aug 2019 10:17:47 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0NfB-00024n-8Y
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 10:16:23 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5BF3D1A00C1;
 Wed, 21 Aug 2019 12:16:18 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4D2A01A01DF;
 Wed, 21 Aug 2019 12:16:18 +0200 (CEST)
Received: from fsr-ub1664-120.ea.freescale.net
 (fsr-ub1664-120.ea.freescale.net [10.171.82.81])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 9B200205D3;
 Wed, 21 Aug 2019 12:16:17 +0200 (CEST)
From: Robert Chiras <robert.chiras@nxp.com>
To: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 03/15] drm/mxsfb: Add defines for the rest of registers
Date: Wed, 21 Aug 2019 13:15:43 +0300
Message-Id: <1566382555-12102-4-git-send-email-robert.chiras@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566382555-12102-1-git-send-email-robert.chiras@nxp.com>
References: <1566382555-12102-1-git-send-email-robert.chiras@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_031621_435860_911F46AB 
X-CRM114-Status: UNSURE (   8.97  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some of the existing registers in this controller are not defined, but
also not used. Add them to the register definitions, so that they can be
easily used in future improvements or fixes.

Signed-off-by: Robert Chiras <robert.chiras@nxp.com>
---
 drivers/gpu/drm/mxsfb/mxsfb_regs.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/mxsfb/mxsfb_regs.h b/drivers/gpu/drm/mxsfb/mxsfb_regs.h
index 932d7ea..71426aa 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_regs.h
+++ b/drivers/gpu/drm/mxsfb/mxsfb_regs.h
@@ -14,19 +14,31 @@
 
 #define LCDC_CTRL			0x00
 #define LCDC_CTRL1			0x10
+#define LCDC_V4_CTRL2			0x20
 #define LCDC_V3_TRANSFER_COUNT		0x20
 #define LCDC_V4_TRANSFER_COUNT		0x30
 #define LCDC_V4_CUR_BUF			0x40
 #define LCDC_V4_NEXT_BUF		0x50
 #define LCDC_V3_CUR_BUF			0x30
 #define LCDC_V3_NEXT_BUF		0x40
+#define LCDC_TIMING			0x60
 #define LCDC_VDCTRL0			0x70
 #define LCDC_VDCTRL1			0x80
 #define LCDC_VDCTRL2			0x90
 #define LCDC_VDCTRL3			0xa0
 #define LCDC_VDCTRL4			0xb0
+#define LCDC_DVICTRL0			0xc0
+#define LCDC_DVICTRL1			0xd0
+#define LCDC_DVICTRL2			0xe0
+#define LCDC_DVICTRL3			0xf0
+#define LCDC_DVICTRL4			0x100
+#define LCDC_V4_DATA			0x180
+#define LCDC_V3_DATA			0x1b0
 #define LCDC_V4_DEBUG0			0x1d0
 #define LCDC_V3_DEBUG0			0x1f0
+#define LCDC_AS_CTRL			0x210
+#define LCDC_AS_BUF			0x220
+#define LCDC_AS_NEXT_BUF		0x230
 
 #define CTRL_SFTRST			(1 << 31)
 #define CTRL_CLKGATE			(1 << 30)
@@ -45,12 +57,15 @@
 #define CTRL_DF24			(1 << 1)
 #define CTRL_RUN			(1 << 0)
 
+#define CTRL1_RECOVERY_ON_UNDERFLOW	(1 << 24)
 #define CTRL1_FIFO_CLEAR		(1 << 21)
 #define CTRL1_SET_BYTE_PACKAGING(x)	(((x) & 0xf) << 16)
 #define CTRL1_GET_BYTE_PACKAGING(x)	(((x) >> 16) & 0xf)
 #define CTRL1_CUR_FRAME_DONE_IRQ_EN	(1 << 13)
 #define CTRL1_CUR_FRAME_DONE_IRQ	(1 << 9)
 
+#define CTRL2_OUTSTANDING_REQS__REQ_16		(4 << 21)
+
 #define TRANSFER_COUNT_SET_VCOUNT(x)	(((x) & 0xffff) << 16)
 #define TRANSFER_COUNT_GET_VCOUNT(x)	(((x) >> 16) & 0xffff)
 #define TRANSFER_COUNT_SET_HCOUNT(x)	((x) & 0xffff)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
