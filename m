Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F1A88CF8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 21:32:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8Iv/XXzdWPW5xObGhXAxeZaBs6xGL2SMlzKmuIMaTsI=; b=l+D
	tY704xaHhFinKUAQCsUjMVzzdAEJVTB/avBykZuMpwS7cDMR4xTvk3TebvI3Bvc/C3Hkog1VjahbL
	SWZVOyHf2oSMiHv2j24C2YQfhhFEHt8F5ObnrpTEmGyhv/xYl/xk18efMyb1EtfhZvSPfRoltRA5s
	rRl/QrxqMZ5ncbt/flJuBfh9SJxgxv/czIlrH22r496hOKpsZDb2ZmivvadKZoogjDFGUHW+YcY3o
	ZAnKk/wF9pqmm7dNrbWN9sgb2Y457oswapTHw7CSVbjyVbxsppITCeo/zWxSo4727FSs6aibcJUxX
	knaQ6DS5wCsGqez8ivrP/HkQFg9ukxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwX6J-0002cp-TW; Sat, 10 Aug 2019 19:32:28 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwX65-0002cU-Bv
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 19:32:14 +0000
Received: by mail-pl1-x633.google.com with SMTP id t14so46274687plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 10 Aug 2019 12:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=KVpggb07NcQVN8x+snzsUWt3OQHYfjx5+ahbazYc12I=;
 b=sJCJ6EkiH8aOP51sC8wSpJg0Asmed2klBTXhnnvdAj54b1sXTj4Z6P6S96DOZM1Uhx
 TO53sIBrvAoRVqWPnP5DaBGnI1lwyv/UtGNUN4S0oMw3lErLVywi2mz8UUP5iL42tuGb
 5r45oW5xdQV8RXoR/96gkElXQTCd/W7tMXSjpB1BSHJb2wgCNC4Ej5rCHQtkJ25c+g6Z
 ULxFUpWaVmct1iJ4RlZpKzLNSiqpGz9KqUuWb5K/83WboV++BvLSNGuHIf2KBJIBHv86
 tz5w1r0alo3fm1D8amdIsKscLgpO5+yR6WUfvhfSyKV0eeByjVH0L+MjyAo9fEffyRHr
 ohUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=KVpggb07NcQVN8x+snzsUWt3OQHYfjx5+ahbazYc12I=;
 b=WvNNy34PW/rEncu2IXN8QdAt5egAQSZpPygAio5GWj8Vl5GnOA5y/ehx9f/nq1vHrv
 9GCE1l8Y3OZ7BQmXRVUAnw/9WNiy/G8jgePeoLZxcRkDcvoGwB/TdCfhcnyfcyis2sgF
 EoFUQSxaW/kPF7Fl0UWs1hqb/UwoCBJUNn/O0cFYoXxKGfYvHQzxNTtpRy12vd0H+AVX
 BTEgLrerIrXIg0NDm7gErBPZX1UW7lHvDwN3TwJx1LPK0yYiBGffWrthLxxEdk31jlH4
 zvo7YvxX5bPF3KktaKaMO/Fw5JxLIrz0BJT92qhc6DP/KYNCfFENE7lW8u8T47VAVdOo
 DOLw==
X-Gm-Message-State: APjAAAUBOOG928Pn8YeFeQfo3celd/jCuDt3ZqdfrqV7ar950LSSPV7l
 ZRj+xAC4TwrGbLCWCD601Mc=
X-Google-Smtp-Source: APXvYqzkd5b+90LgBNpauykDy3L1MkKOV/hzPTu69N32A9nw7bXrhy2ca1krfQsJlf+WwR3rGRyTmA==
X-Received: by 2002:a17:902:ff05:: with SMTP id
 f5mr24637591plj.116.1565465531964; 
 Sat, 10 Aug 2019 12:32:11 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77]) by smtp.googlemail.com with ESMTPSA id
 z4sm156578574pfg.166.2019.08.10.12.32.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 10 Aug 2019 12:32:11 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH] media: imx: mipi csi-2: Release DPHY reset in s_power
Date: Sat, 10 Aug 2019 12:32:04 -0700
Message-Id: <20190810193204.25278-1-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_123213_409608_655E559B 
X-CRM114-Status: GOOD (  20.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slongerbeam[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:633 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, Sakari Ailus <sakari.ailus@iki.fi>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some CSI-2 transmitters may only set their data lanes to LP-11 state for
a very short time after being powered on, after which they transition
the lanes to high speed mode.

If that occurs, the lanes will likely be in HS mode long before the imx6
DPHY receiver is initialized and brought out of reset at stream on.
According to the imx6 reference manual, the lanes need to be in LP-11
state at least for some period after the DPHY reset is released. This
might mean that the state machine in the DPHY core (a Synopsys DesignWare
core) needs to detect a LP-11 to HS transition on the lanes before it can
proceed to detect a clock on the clock lane and begin to accept packets.

In an attempt to accommodate such sensors, carry out steps 1-5 in the
s_power op (moved out of s_stream op). This moves steps 1-5 closer in
time to after the sensor is powered ON by v4l2_pipeline_pm_use(), and
provides a better chance that the receiver DPHY will catch an early
LP-11 to HS transition.

This works because the graph walk stack used by v4l2_pipeline_pm_use()
is setup such that the transmitter s_power op is called immediately
before the receiver's s_power op.

For sensors that can persist LP-11 state until stream on, then this
should still work fine. The receiver will detect the HS transition
at step 6, when streaming is enabled at the transmitter.

Tested on imx6q SabreSD with OV5640.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx6-mipi-csi2.c | 93 +++++++++++++++++-----
 1 file changed, 73 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/media/imx/imx6-mipi-csi2.c b/drivers/staging/media/imx/imx6-mipi-csi2.c
index f29e28df36ed..06345de9f060 100644
--- a/drivers/staging/media/imx/imx6-mipi-csi2.c
+++ b/drivers/staging/media/imx/imx6-mipi-csi2.c
@@ -47,6 +47,7 @@ struct csi2_dev {
 
 	struct v4l2_mbus_framefmt format_mbus;
 
+	int                     power_count;
 	int                     stream_count;
 	struct v4l2_subdev      *src_sd;
 	bool                    sink_linked[CSI2_NUM_SRC_PADS];
@@ -113,9 +114,10 @@ static inline struct csi2_dev *sd_to_dev(struct v4l2_subdev *sdev)
  * 7. CSI2 Controller programming - Read the PHY status register (PHY_STATE)
  *    to confirm that the D-PHY is receiving a clock on the D-PHY clock lane.
  *
- * All steps 3 through 7 are carried out by csi2_s_stream(ON) here. Step
- * 6 is accomplished by calling the source subdev's s_stream(ON) between
- * steps 5 and 7.
+ * Steps 3 through 5 are carried out by csi2_s_power(ON) here.
+ *
+ * Steps 6 and 7 are carried out by stream(ON) here. Step 6 is accomplished
+ * by calling the source subdev's s_stream(ON).
  */
 
 static void csi2_enable(struct csi2_dev *csi2, bool enable)
@@ -295,7 +297,7 @@ static void csi2ipu_gasket_init(struct csi2_dev *csi2)
 	writel(reg, csi2->base + CSI2IPU_GASKET);
 }
 
-static int csi2_start(struct csi2_dev *csi2)
+static int csi2_power_on(struct csi2_dev *csi2)
 {
 	int ret;
 
@@ -320,41 +322,87 @@ static int csi2_start(struct csi2_dev *csi2)
 	if (ret)
 		goto err_assert_reset;
 
+	return 0;
+
+err_assert_reset:
+	csi2_enable(csi2, false);
+err_disable_clk:
+	clk_disable_unprepare(csi2->pix_clk);
+	return ret;
+}
+
+static void csi2_power_off(struct csi2_dev *csi2)
+{
+	csi2_enable(csi2, false);
+	clk_disable_unprepare(csi2->pix_clk);
+}
+
+static int csi2_stream_on(struct csi2_dev *csi2)
+{
+	int ret;
+
 	/* Step 6 */
 	ret = v4l2_subdev_call(csi2->src_sd, video, s_stream, 1);
 	ret = (ret && ret != -ENOIOCTLCMD) ? ret : 0;
 	if (ret)
-		goto err_assert_reset;
+		return ret;
 
 	/* Step 7 */
 	ret = csi2_dphy_wait_clock_lane(csi2);
 	if (ret)
-		goto err_stop_upstream;
-
-	return 0;
+		v4l2_subdev_call(csi2->src_sd, video, s_stream, 0);
 
-err_stop_upstream:
-	v4l2_subdev_call(csi2->src_sd, video, s_stream, 0);
-err_assert_reset:
-	csi2_enable(csi2, false);
-err_disable_clk:
-	clk_disable_unprepare(csi2->pix_clk);
 	return ret;
 }
 
-static void csi2_stop(struct csi2_dev *csi2)
+static void csi2_stream_off(struct csi2_dev *csi2)
 {
 	/* stop upstream */
 	v4l2_subdev_call(csi2->src_sd, video, s_stream, 0);
-
-	csi2_enable(csi2, false);
-	clk_disable_unprepare(csi2->pix_clk);
 }
 
 /*
  * V4L2 subdev operations.
  */
 
+static int csi2_s_power(struct v4l2_subdev *sd, int on)
+{
+	struct csi2_dev *csi2 = sd_to_dev(sd);
+	int ret = 0;
+
+	mutex_lock(&csi2->lock);
+
+	if (!csi2->src_sd) {
+		ret = -EPIPE;
+		goto out;
+	}
+
+	/*
+	 * power on/off only if power_count is going from
+	 * 0 to 1 / 1 to 0.
+	 */
+	if (csi2->power_count != !on)
+		goto update_count;
+
+	dev_dbg(csi2->dev, "power %s\n", on ? "ON" : "OFF");
+
+	if (on)
+		ret = csi2_power_on(csi2);
+	else
+		csi2_power_off(csi2);
+	if (ret)
+		goto out;
+
+	/* Update the power count. */
+update_count:
+	csi2->power_count += on ? 1 : -1;
+	if (csi2->power_count < 0)
+		csi2->power_count = 0;
+out:
+	mutex_unlock(&csi2->lock);
+	return ret;
+}
+
 static int csi2_s_stream(struct v4l2_subdev *sd, int enable)
 {
 	struct csi2_dev *csi2 = sd_to_dev(sd);
@@ -385,9 +433,9 @@ static int csi2_s_stream(struct v4l2_subdev *sd, int enable)
 
 	dev_dbg(csi2->dev, "stream %s\n", enable ? "ON" : "OFF");
 	if (enable)
-		ret = csi2_start(csi2);
+		ret = csi2_stream_on(csi2);
 	else
-		csi2_stop(csi2);
+		csi2_stream_off(csi2);
 	if (ret)
 		goto out;
 
@@ -528,6 +576,10 @@ static const struct media_entity_operations csi2_entity_ops = {
 	.link_validate = v4l2_subdev_link_validate,
 };
 
+static const struct v4l2_subdev_core_ops csi2_core_ops = {
+	.s_power = csi2_s_power,
+};
+
 static const struct v4l2_subdev_video_ops csi2_video_ops = {
 	.s_stream = csi2_s_stream,
 };
@@ -539,6 +591,7 @@ static const struct v4l2_subdev_pad_ops csi2_pad_ops = {
 };
 
 static const struct v4l2_subdev_ops csi2_subdev_ops = {
+	.core = &csi2_core_ops,
 	.video = &csi2_video_ops,
 	.pad = &csi2_pad_ops,
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
