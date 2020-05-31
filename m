Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29EC21E9A2D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 21:41:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vNXyS8I+4z7BuPws/nvrQaOOEBAkEey18IeBFYVMzs4=; b=G2DwCbv3+6Mp23
	+D432RczzFPr03qFiVSPsC/8FyLo9cyUj4+G3x5gMsea7afyTsHd/q3W6NcFkB8zVMbWv/gtL8Mjh
	TskgbAimeoGLV/JuukfboRM8/NFLOdvMrsVwCE4GYPBNsxsGVhpbJdnDw+DEIe+YyVGfSvh/e2E5D
	57K3N/OlByxi8jn6W3X6ECdKHjmNhiaM8pBs77jzUGkZzxKk9GJ5vM2axQJOv3BblkD61tEaeZz1f
	UaeG3tlG5oQ/Dc/B6bnD91h+DniIClg/cIAKDAoPf/2hDTD4MK6U+Ags02BHVRHcS/E14+hSdk05l
	YlFaZ7jNqtEdtDRJ30XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfTpM-0003Vd-50; Sun, 31 May 2020 19:41:00 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfToa-0002zo-P5
 for linux-arm-kernel@lists.infradead.org; Sun, 31 May 2020 19:40:14 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 0AAE2813D;
 Sun, 31 May 2020 19:41:01 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 2/5] bus: ti-sysc: Use optional clocks on for enable and wait
 for softreset bit
Date: Sun, 31 May 2020 12:39:38 -0700
Message-Id: <20200531193941.13179-3-tony@atomide.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200531193941.13179-1-tony@atomide.com>
References: <20200531193941.13179-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_124012_854226_784728E7 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Keerthy <j-keerthy@ti.com>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 "Andrew F . Davis" <afd@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Faiz Abbas <faiz_abbas@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some modules reset automatically when idled, and when re-enabled, we must
wait for the automatic OCP softreset to complete. And if optional clocks
are configured, we need to keep the clocks on while waiting for the reset
to complete.

Let's fix the issue by moving the OCP softreset code to a separate
function sysc_wait_softreset(), and call it also from sysc_enable_module()
with the optional clocks enabled.

This is based on what we're already doing for legacy platform data booting
in _enable_sysc().

Fixes: 7324a7a0d5e2 ("bus: ti-sysc: Implement display subsystem reset quirk")
Reported-by: Faiz Abbas <faiz_abbas@ti.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/bus/ti-sysc.c | 81 ++++++++++++++++++++++++++++++++-----------
 1 file changed, 61 insertions(+), 20 deletions(-)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -221,6 +221,36 @@ static u32 sysc_read_sysstatus(struct sysc *ddata)
 	return sysc_read(ddata, offset);
 }
 
+/* Poll on reset status */
+static int sysc_wait_softreset(struct sysc *ddata)
+{
+	u32 sysc_mask, syss_done, rstval;
+	int sysc_offset, syss_offset, error = 0;
+
+	sysc_offset = ddata->offsets[SYSC_SYSCONFIG];
+	syss_offset = ddata->offsets[SYSC_SYSSTATUS];
+	sysc_mask = BIT(ddata->cap->regbits->srst_shift);
+
+	if (ddata->cfg.quirks & SYSS_QUIRK_RESETDONE_INVERTED)
+		syss_done = 0;
+	else
+		syss_done = ddata->cfg.syss_mask;
+
+	if (syss_offset >= 0) {
+		error = readx_poll_timeout(sysc_read_sysstatus, ddata, rstval,
+					   (rstval & ddata->cfg.syss_mask) ==
+					   syss_done,
+					   100, MAX_MODULE_SOFTRESET_WAIT);
+
+	} else if (ddata->cfg.quirks & SYSC_QUIRK_RESET_STATUS) {
+		error = readx_poll_timeout(sysc_read_sysconfig, ddata, rstval,
+					   !(rstval & sysc_mask),
+					   100, MAX_MODULE_SOFTRESET_WAIT);
+	}
+
+	return error;
+}
+
 static int sysc_add_named_clock_from_child(struct sysc *ddata,
 					   const char *name,
 					   const char *optfck_name)
@@ -925,8 +955,34 @@ static int sysc_enable_module(struct device *dev)
 	struct sysc *ddata;
 	const struct sysc_regbits *regbits;
 	u32 reg, idlemodes, best_mode;
+	int error;
 
 	ddata = dev_get_drvdata(dev);
+
+	/*
+	 * Some modules like DSS reset automatically on idle. Enable optional
+	 * reset clocks and wait for OCP softreset to complete.
+	 */
+	if (ddata->cfg.quirks & SYSC_QUIRK_OPT_CLKS_IN_RESET) {
+		error = sysc_enable_opt_clocks(ddata);
+		if (error) {
+			dev_err(ddata->dev,
+				"Optional clocks failed for enable: %i\n",
+				error);
+			return error;
+		}
+	}
+	error = sysc_wait_softreset(ddata);
+	if (error)
+		dev_warn(ddata->dev, "OCP softreset timed out\n");
+	if (ddata->cfg.quirks & SYSC_QUIRK_OPT_CLKS_IN_RESET)
+		sysc_disable_opt_clocks(ddata);
+
+	/*
+	 * Some subsystem private interconnects, like DSS top level module,
+	 * need only the automatic OCP softreset handling with no sysconfig
+	 * register bits to configure.
+	 */
 	if (ddata->offsets[SYSC_SYSCONFIG] == -ENODEV)
 		return 0;
 
@@ -1828,11 +1884,10 @@ static int sysc_legacy_init(struct sysc *ddata)
  */
 static int sysc_reset(struct sysc *ddata)
 {
-	int sysc_offset, syss_offset, sysc_val, rstval, error = 0;
-	u32 sysc_mask, syss_done;
+	int sysc_offset, sysc_val, error;
+	u32 sysc_mask;
 
 	sysc_offset = ddata->offsets[SYSC_SYSCONFIG];
-	syss_offset = ddata->offsets[SYSC_SYSSTATUS];
 
 	if (ddata->legacy_mode ||
 	    ddata->cap->regbits->srst_shift < 0 ||
@@ -1841,11 +1896,6 @@ static int sysc_reset(struct sysc *ddata)
 
 	sysc_mask = BIT(ddata->cap->regbits->srst_shift);
 
-	if (ddata->cfg.quirks & SYSS_QUIRK_RESETDONE_INVERTED)
-		syss_done = 0;
-	else
-		syss_done = ddata->cfg.syss_mask;
-
 	if (ddata->pre_reset_quirk)
 		ddata->pre_reset_quirk(ddata);
 
@@ -1862,18 +1912,9 @@ static int sysc_reset(struct sysc *ddata)
 	if (ddata->post_reset_quirk)
 		ddata->post_reset_quirk(ddata);
 
-	/* Poll on reset status */
-	if (syss_offset >= 0) {
-		error = readx_poll_timeout(sysc_read_sysstatus, ddata, rstval,
-					   (rstval & ddata->cfg.syss_mask) ==
-					   syss_done,
-					   100, MAX_MODULE_SOFTRESET_WAIT);
-
-	} else if (ddata->cfg.quirks & SYSC_QUIRK_RESET_STATUS) {
-		error = readx_poll_timeout(sysc_read_sysconfig, ddata, rstval,
-					   !(rstval & sysc_mask),
-					   100, MAX_MODULE_SOFTRESET_WAIT);
-	}
+	error = sysc_wait_softreset(ddata);
+	if (error)
+		dev_warn(ddata->dev, "OCP softreset timed out\n");
 
 	if (ddata->reset_done_quirk)
 		ddata->reset_done_quirk(ddata);
-- 
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
