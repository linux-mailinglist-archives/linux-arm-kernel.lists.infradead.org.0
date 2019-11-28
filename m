Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A0010C21B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 03:03:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3l8izLmGDbaCk2OSuSRiYPrpx/6NPSSPSPOJMH0n5L4=; b=Jtr19kVjfrgygC
	5WjHWhmzzsk64PJuFTd2CDgVgQGEh86hYwGOf/uSjwMBUGyfeRBo/BVpUZ+FxCLY4q8oqOnwaVOJl
	45cGZA1/Dxk2Xa3R5I0beTt/zQ5Ov999kOPV+Z1fQ+Ddw/gdqh1tpH6UxCRqHyyzqV4fqgHja2Uvg
	BulLDJFok2jrYuzTF+RrDpgpjY4D/ljQUQcHw4tpWNoeUx6ZnyXLOnAUsc5dWdbl5WHE24j6INzb+
	772JBBwDxZPib/dwo9/dyjeLEDffoHVaDYTtPvUKIpI2ZbImq/e87h45Cour8W1DrnoxnSG5OsQ0r
	UMfsg9DKuLqYY15g8+zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia99K-0000mu-Hy; Thu, 28 Nov 2019 02:03:18 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia999-0000lE-KB
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 02:03:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1574906584; bh=RQDxlS9cbGfCHiTwpM+hDX9ba2b7M56PlxJbEpAHn64=;
 h=From:To:Cc:Subject:Date:From;
 b=HZ6ehS36f/dOdSnmk5GP4TRHuPE5bEB17WNVtwVPxZ+dU+9XgmjOztv287/Y7dPU6
 jVbH7zLVqAMBBJN73o67NC1c0PSAdpoW5Q07s95ocjhsEOGKRZQjX7Yt84jnjY0+PU
 BD1aJHCmMZ14EpvKQA70oEFi9rhFMBAIr4B/8VUI=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com
Subject: [PATCH] media: sun6i-csi: Fix incorrect HSYNC/VSYNC/PCLK polarity
 configuration
Date: Thu, 28 Nov 2019 03:02:59 +0100
Message-Id: <20191128020259.1338188-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_180307_997357_FC1ACBC9 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ondrej Jirman <megous@megous.com>, open list <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Yong Deng <yong.deng@magewell.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:CSI DRIVERS FOR ALLWINNER V3s" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This was discovered by writing a new camera driver and wondering, why
hsync/vsync polarity setting behaves in reverse to what would be
expected. Verified by looking at the actual signals and the SoC
user manual.

Fixes: 5cc7522d8965 ("media: sun6i: Add support for Allwinner CSI V3s")
Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
index f17e5550602d..98bbcca59a90 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
@@ -417,12 +417,12 @@ static void sun6i_csi_setup_bus(struct sun6i_csi_dev *sdev)
 		if (flags & V4L2_MBUS_FIELD_EVEN_LOW)
 			cfg |= CSI_IF_CFG_FIELD_POSITIVE;
 
-		if (flags & V4L2_MBUS_VSYNC_ACTIVE_LOW)
+		if (flags & V4L2_MBUS_VSYNC_ACTIVE_HIGH)
 			cfg |= CSI_IF_CFG_VREF_POL_POSITIVE;
-		if (flags & V4L2_MBUS_HSYNC_ACTIVE_LOW)
+		if (flags & V4L2_MBUS_HSYNC_ACTIVE_HIGH)
 			cfg |= CSI_IF_CFG_HREF_POL_POSITIVE;
 
-		if (flags & V4L2_MBUS_PCLK_SAMPLE_RISING)
+		if (flags & V4L2_MBUS_PCLK_SAMPLE_FALLING)
 			cfg |= CSI_IF_CFG_CLK_POL_FALLING_EDGE;
 		break;
 	case V4L2_MBUS_BT656:
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
