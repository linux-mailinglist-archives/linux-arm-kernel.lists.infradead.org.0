Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A11E95D4E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 13:26:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08GO+ioZxw7soZt9N4wP84mMylxk0cC9cZ3Qg1QGlJY=; b=snMmeGxn3gIKoi
	pQ9Dsjxz78PSc+lU9S0QeYMIPvdaVjFugcxN/6C1MnpAq+W6FIMIKRKwUQhBRjCPWgr4rSMH6cWP0
	hubHRFCsGBUCLiuTb99ofNJlJlx2rRBS3H//Uz8QpKroaHrc08n+g/b2JrboT4fqS6mfj2h2+JWsQ
	BHJIdbyokIC9R/aipbFXq9scAsjHDTNpzuUt3D1JGEWxrltIcM75FV1hYT5Amb8AGqMs3NReeTKNB
	TcdZdkm0U6x4bGF7CnudDcLSNDrFLDylkWhnIj1FqO/HgP7TxLlfi93KGC+0X/nf1f8Mye/oHys8l
	xUQ2CSiuXDhYfETBK79g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i02HX-00084S-L2; Tue, 20 Aug 2019 11:26:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i02Fz-0005ir-1T
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 11:24:56 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 41D1022D6D;
 Tue, 20 Aug 2019 11:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566300294;
 bh=X1W8O7WR9KJI5jwenMWm+UPsfIL6Rn9a3Bmw4eKTkjU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gxBPJv7J7nQUWgzP7bwlSuZioGh03+7UEx0QSyveMtgbw1/wiMjiqwWw/JL0HCdC2
 JCSy0+N/wWtMOGEauPuPNPpgO6oVamTOx3in7+ug/tP0KG8T5me5CtKcbov0hlr4sv
 enOzhxBDu7dogAEgwsJuj5Q86dCGe3MPM6BZLy8U=
From: Maxime Ripard <mripard@kernel.org>
To: Hans Verkuil <hans.verkuil@cisco.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH v7 2/5] media: sunxi: Refactor the Makefile and Kconfig
Date: Tue, 20 Aug 2019 13:24:33 +0200
Message-Id: <1345e5d1beb34549399bd2c2dc30adb52cda2b01.1566300265.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.b695c63cf668192aff5574a3005d483c601e77f6.1566300265.git-series.maxime.ripard@bootlin.com>
References: <cover.b695c63cf668192aff5574a3005d483c601e77f6.1566300265.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_042455_273666_03B99B99 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

The Makefile and Kconfig for the sun6i CSI driver are included in the main
Makefile / KConfig file. Since we're going to add a new CSI driver for an
older chip, and the Cedrus driver eventually, it makes more sense to put
those in our directory.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 drivers/media/platform/Kconfig        | 2 +-
 drivers/media/platform/Makefile       | 2 +-
 drivers/media/platform/sunxi/Kconfig  | 1 +
 drivers/media/platform/sunxi/Makefile | 1 +
 4 files changed, 4 insertions(+), 2 deletions(-)
 create mode 100644 drivers/media/platform/sunxi/Kconfig
 create mode 100644 drivers/media/platform/sunxi/Makefile

diff --git a/drivers/media/platform/Kconfig b/drivers/media/platform/Kconfig
index 89555f9a813f..2fda8036d11d 100644
--- a/drivers/media/platform/Kconfig
+++ b/drivers/media/platform/Kconfig
@@ -146,7 +146,7 @@ source "drivers/media/platform/am437x/Kconfig"
 source "drivers/media/platform/xilinx/Kconfig"
 source "drivers/media/platform/rcar-vin/Kconfig"
 source "drivers/media/platform/atmel/Kconfig"
-source "drivers/media/platform/sunxi/sun6i-csi/Kconfig"
+source "drivers/media/platform/sunxi/Kconfig"
 
 config VIDEO_TI_CAL
 	tristate "TI CAL (Camera Adaptation Layer) driver"
diff --git a/drivers/media/platform/Makefile b/drivers/media/platform/Makefile
index 7cbbd925124c..6ee7eb0d36f4 100644
--- a/drivers/media/platform/Makefile
+++ b/drivers/media/platform/Makefile
@@ -100,4 +100,4 @@ obj-y					+= meson/
 
 obj-y					+= cros-ec-cec/
 
-obj-$(CONFIG_VIDEO_SUN6I_CSI)		+= sunxi/sun6i-csi/
+obj-y					+= sunxi/
diff --git a/drivers/media/platform/sunxi/Kconfig b/drivers/media/platform/sunxi/Kconfig
new file mode 100644
index 000000000000..1b6e89cb78b2
--- /dev/null
+++ b/drivers/media/platform/sunxi/Kconfig
@@ -0,0 +1 @@
+source "drivers/media/platform/sunxi/sun6i-csi/Kconfig"
diff --git a/drivers/media/platform/sunxi/Makefile b/drivers/media/platform/sunxi/Makefile
new file mode 100644
index 000000000000..8d06f98500ee
--- /dev/null
+++ b/drivers/media/platform/sunxi/Makefile
@@ -0,0 +1 @@
+obj-y		+= sun6i-csi/
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
