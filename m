Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B9C19FAB8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 18:45:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ofjQON/uBrW/e6XgCeg832RdVH9JqHNSpnGhOo2AZiI=; b=X09
	Q+yWpKA2UyOFrP2qEJDPuMyZPdauJXfsGI8ifYiL88BQIY3bU2QSOZItyJpWnOFA70GuZ9dnoWpdW
	36h2ihysD+uKQLZT69CTmSAmfxND5cHdlnCM5Y3atpZSTkZJzaAo1u4hJEEIOpY3PcBUULQr/tZDG
	B5IHQZA6hSOhlmQKOA4CnWNE61MVVPVJu3Ua10GowE3zCrJwuGLrGIbDgkFLXgBD/TE3Tsldk7MGz
	Jg9tV6zhUVDMAe35mgXWDaz5dJHQm/bGQPi/tplPnR/R0mYsw37KHyOG8EzHRqc2hwtOGjD9iToJ5
	5+gA2DARoY9oI81WoqHFnI+Qmkw/2Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLUsb-0001PP-09; Mon, 06 Apr 2020 16:45:45 +0000
Received: from relmlor2.renesas.com ([210.160.252.172]
 helo=relmlie6.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLUpw-0005AQ-Hr
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 16:43:03 +0000
X-IronPort-AV: E=Sophos;i="5.72,351,1580742000"; d="scan'208";a="43643781"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
 by relmlie6.idc.renesas.com with ESMTP; 07 Apr 2020 01:42:54 +0900
Received: from localhost.localdomain (unknown [10.226.36.204])
 by relmlir5.idc.renesas.com (Postfix) with ESMTP id 9A53F4006CD9;
 Tue,  7 Apr 2020 01:42:50 +0900 (JST)
From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
Subject: [PATCH v5 0/5] ov5645: Deprecate usage of the clock-frequency
Date: Mon,  6 Apr 2020 17:42:36 +0100
Message-Id: <1586191361-16598-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_094300_729038_A467F80F 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.160.252.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-kernel@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Lad Prabhakar <prabhakar.csengg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

This patch series does the following:
1: Deprecate usage of the clock-frequency property.
2: Converts bindings to json-schema

Thanks,
Prabhakar

Changes for v5:
* Dropped assigned-clocks
* Fixed review comments from Laurent for patch 5/5

Changes for v4:
* Addressed to comments from Laurent updated patch description for
  patch 1/5, 4/5.
* Included Reviewed-by tags from Laurent.
* Increased tolerance level to 5% for external clock frequency.
* Patch 5/5 is new patch which converts bindings to json-schema.

Changed for v3:
* Dropped reading assigned-clock-rates
* Increased the maximum clock frequency to 24480000

Changes for v2:
* Instead of completely dropping clock-frequency property marked it as
  deprecated.
* Split up imx6qdl-wandboard.dtsi changes as separate patch.

Lad Prabhakar (5):
  media: dt-bindings: media: i2c: Deprecate usage of the clock-frequency
    property
  media: i2c: ov5645: Drop reading clock-frequency dt-property
  media: i2c: ov5645: Turn probe error into warning for xvclk frequency
    mismatch
  ARM: dts: imx6qdl-wandboard: Drop clock-frequency property from ov5645
    node
  media: dt-bindings: media: i2c: convert ov5645 bindings to json-schema

 .../devicetree/bindings/media/i2c/ov5645.txt  |  54 --------
 .../devicetree/bindings/media/i2c/ov5645.yaml | 126 ++++++++++++++++++
 arch/arm/boot/dts/imx6qdl-wandboard.dtsi      |   1 -
 drivers/media/i2c/ov5645.c                    |  21 +--
 4 files changed, 133 insertions(+), 69 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/media/i2c/ov5645.txt
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ov5645.yaml

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
