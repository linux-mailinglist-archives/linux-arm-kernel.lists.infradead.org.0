Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4775A15CD0B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 22:15:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YkC0I2ctSYInICTgdxcNz5Xsngp9T/T/94wrgpLVg28=; b=rq+wOgaPwrn4vF
	OIh13/hgUkzJmEoOtnQWztU29VC3M+PTGu9nj7sl2Q0TtSM2cnrJiQ6cY6lRMrmjLOfxrwyJTWpI7
	lVJpRODBs1D0svzmMFZgiSWKZ1eak6TPRyM+SrGrjh+qPh5+JPLsQ0lCA65SVrUDu2dAVcnmhf86/
	MVQqXazGA9KiAiqLtrXS8CnOXBBfsAzMhPm6f6RfvJQrSo/QxaaYX4reegNyN5qv/4r3aDpB3kaY9
	xE9aB5wP5tBRGicTCJ+sBb86/eDTuvSaZ3bi7LsigwTQXgtJfOZ13TYpPgV5l70arLaBAWdu0VoKc
	zF1ijims2Xiv2LXJlDrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2LpP-0001Lw-AY; Thu, 13 Feb 2020 21:15:19 +0000
Received: from mailoutvs39.siol.net ([185.57.226.230] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Lov-00018C-JK
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 21:14:50 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 1F87E524C68;
 Thu, 13 Feb 2020 22:14:41 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id LntsWh8NYX0C; Thu, 13 Feb 2020 22:14:40 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id B5382524BFE;
 Thu, 13 Feb 2020 22:14:40 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Zimbra) with ESMTPSA id B522B522D11;
 Thu, 13 Feb 2020 22:14:37 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 1/2] rtc: sun6i: Make external 32k oscillator optional
Date: Thu, 13 Feb 2020 22:14:26 +0100
Message-Id: <20200213211427.33004-2-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213211427.33004-1-jernej.skrabec@siol.net>
References: <20200213211427.33004-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_131449_790722_C6DD2FDB 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.230 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some boards, like OrangePi PC2 (H5), OrangePi Plus 2E (H3) and Tanix TX6
(H6) don't have external 32kHz oscillator. Till H6, it didn't really
matter if external oscillator was enabled because HW detected error and
fall back to internal one. H6 has same functionality but it's the first
SoC which have "auto switch bypass" bit documented and always enabled in
driver. This prevents RTC to work correctly if external crystal is not
present on board. There are other side effects - all peripherals which
depends on this clock also don't work (HDMI CEC for example).

Make clocks property optional. If it is present, select external
oscillator. If not, stay on internal.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/rtc/rtc-sun6i.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/rtc/rtc-sun6i.c b/drivers/rtc/rtc-sun6i.c
index 852f5f3b3592..538cf7e19034 100644
--- a/drivers/rtc/rtc-sun6i.c
+++ b/drivers/rtc/rtc-sun6i.c
@@ -250,19 +250,17 @@ static void __init sun6i_rtc_clk_init(struct device_node *node,
 		writel(reg, rtc->base + SUN6I_LOSC_CTRL);
 	}
 
-	/* Switch to the external, more precise, oscillator */
-	reg |= SUN6I_LOSC_CTRL_EXT_OSC;
-	if (rtc->data->has_losc_en)
-		reg |= SUN6I_LOSC_CTRL_EXT_LOSC_EN;
+	/* Switch to the external, more precise, oscillator, if present */
+	if (of_get_property(node, "clocks", NULL)) {
+		reg |= SUN6I_LOSC_CTRL_EXT_OSC;
+		if (rtc->data->has_losc_en)
+			reg |= SUN6I_LOSC_CTRL_EXT_LOSC_EN;
+	}
 	writel(reg, rtc->base + SUN6I_LOSC_CTRL);
 
 	/* Yes, I know, this is ugly. */
 	sun6i_rtc = rtc;
 
-	/* Deal with old DTs */
-	if (!of_get_property(node, "clocks", NULL))
-		goto err;
-
 	/* Only read IOSC name from device tree if it is exported */
 	if (rtc->data->export_iosc)
 		of_property_read_string_index(node, "clock-output-names", 2,
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
