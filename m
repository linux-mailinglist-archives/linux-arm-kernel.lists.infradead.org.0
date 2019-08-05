Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C891D82812
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 01:36:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=J3z9azaHu4cMIIilRgc88CiuJoqy/uBhxhXGd9BWsus=; b=kphfgNeUj0L35xLpzeZs/0UM5p
	5J1juB3o6uNTAXCI8pENvYUqTw5x6212+qGNz4mEY5fNA9IBo1fVeuYgApf3+LE0fVNk5KFoMfBTK
	Dhjb08Uv3SfhuMjBVFJ1fpgTymqcYJMKWBvL5xU9E5PqewhQLI0E+4H23jtTkro5Fsahw1HOLS9pU
	lTJ+6af9Jtc84YpNqeBLKvGazqi5ijQa4FR7W2ENcKXuSkIQKApv6zg6funzBkaWCYHJZPk/kvhxf
	Rx0q7eKXnSwouuTuQOxLLNR8XasAvdJmGj4+KrpTY101F59laoWY8Pac8Iir7e0ecNvKpnGgAyoQT
	LcJqf23g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1humWL-0005Ie-1T; Mon, 05 Aug 2019 23:36:05 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1humVk-0004mk-Mr
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 23:35:30 +0000
Received: by mail-pf1-x442.google.com with SMTP id m30so40432206pff.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 16:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=UgoIagqsWr60jnSWexngudSw/GwE5rD1jIoLj49qMwY=;
 b=R2Q3ujMPxawa8Ih7aXqp3Qg1h8/R/awfKhqLCTfyfpIm5oT6+RVS4em3Jx8/I4Cku9
 pwQECqGipkn48+tT5RSkwHjVxKeRBUftfOuNTsO4cy0o49HItAynGTsARGDY1Vq3jDu8
 fse/w6WUMHDLhuLJsJSQvew7Z/PElcZ4VHDxGQ3/3JJjH/mNfQdL3lcUZAhUv8DSuhMh
 lrKbji7udkd5AZuLqkW6QWapCMe0mIDBur5YVAk6bWxQuAAoYUAKRSGQUA8Oru6kOWMV
 uKPJ33SyiOWgdmODdyzKJ8e03JSz7RKmF7lISuIzf7Ji7+Gq0HJ9DtWNBjIUeMSZpozN
 Q+GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=UgoIagqsWr60jnSWexngudSw/GwE5rD1jIoLj49qMwY=;
 b=AhxWjO415Zr025tT52Ke998Ay5EoyPCbBdl8lgvIn99apiIdn87raQcE+rKYWEiru3
 MquQWK5h9KHpT7psmNH7eYvorEe1hxCaVb5Aa8v87aJpPiBkmNXFQnhwaGcmjfo4OxtD
 OYZQ0U39ZLtt6CfVFLwazg7eGLr1azteEkIkD9naGit6T2pjTk+cPLgHtyHq2VXksXTi
 bOR/DHey2fJobkeZS9suRianWvzDsVtXW7G4ZJRf/+MTniLj/OSx4IlWzubebXhI+YjL
 JId3y61zi/c+TZhZNIhEzafzSNoCtigf6ufEydTC/FOLMZnnB4JW8HVEX9cCclUfH9Qx
 olGQ==
X-Gm-Message-State: APjAAAX4D4eMbHq7KhhmOW4RgXFBg5JnTezKHllj5aspvIP4IuaP12l8
 OXfym93NkYRt21TLHmcd7nY=
X-Google-Smtp-Source: APXvYqy9NbfueskhgMm+yPwYldKJ5nVyez32oNS70n9npXFHhG92pCWMjWrdWUkzDDfL2FSIvahpDQ==
X-Received: by 2002:a62:e910:: with SMTP id j16mr525719pfh.123.1565048127806; 
 Mon, 05 Aug 2019 16:35:27 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id 30sm31296349pjk.17.2019.08.05.16.35.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 16:35:27 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 11/22] media: v4l2-fwnode: Pass notifier to
 v4l2_async_register_fwnode_subdev()
Date: Mon,  5 Aug 2019 16:34:54 -0700
Message-Id: <20190805233505.21167-12-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190805233505.21167-1-slongerbeam@gmail.com>
References: <20190805233505.21167-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_163528_761814_89B8849B 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slongerbeam[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 open list <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Rui Miguel Silva <rmfrfs@gmail.com>, Jacopo Mondi <jacopo+renesas@jmondi.org>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Instead of allocating a notifier in v4l2_async_register_fwnode_subdev(),
have the caller provide one. This allows the caller to implement
notifier ops (bind, unbind).

The caller is now responsible for first initializing its notifier with a
call to v4l2_async_notifier_init().

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/media/platform/video-mux.c         |  6 +++++-
 drivers/media/v4l2-core/v4l2-fwnode.c      | 11 +----------
 drivers/staging/media/imx/imx6-mipi-csi2.c |  5 ++++-
 drivers/staging/media/imx/imx7-media-csi.c |  5 ++++-
 drivers/staging/media/imx/imx7-mipi-csis.c |  5 ++++-
 include/media/v4l2-fwnode.h                | 12 ++++++++----
 6 files changed, 26 insertions(+), 18 deletions(-)

diff --git a/drivers/media/platform/video-mux.c b/drivers/media/platform/video-mux.c
index ddd0e338f9e4..ca1cef783646 100644
--- a/drivers/media/platform/video-mux.c
+++ b/drivers/media/platform/video-mux.c
@@ -21,6 +21,7 @@
 
 struct video_mux {
 	struct v4l2_subdev subdev;
+	struct v4l2_async_notifier notifier;
 	struct media_pad *pads;
 	struct v4l2_mbus_framefmt *format_mbus;
 	struct mux_control *mux;
@@ -354,8 +355,11 @@ static int video_mux_async_register(struct video_mux *vmux,
 	for (i = 0; i < num_input_pads; i++)
 		ports[i] = i;
 
+	v4l2_async_notifier_init(&vmux->notifier);
+
 	ret = v4l2_async_register_fwnode_subdev(
-		&vmux->subdev, sizeof(struct v4l2_async_subdev),
+		&vmux->subdev, &vmux->notifier,
+		sizeof(struct v4l2_async_subdev),
 		ports, num_input_pads, video_mux_parse_endpoint);
 
 	kfree(ports);
diff --git a/drivers/media/v4l2-core/v4l2-fwnode.c b/drivers/media/v4l2-core/v4l2-fwnode.c
index 5d4ce4aa3fdc..8f5b3fdea061 100644
--- a/drivers/media/v4l2-core/v4l2-fwnode.c
+++ b/drivers/media/v4l2-core/v4l2-fwnode.c
@@ -1124,12 +1124,12 @@ int v4l2_async_register_subdev_sensor_common(struct v4l2_subdev *sd)
 EXPORT_SYMBOL_GPL(v4l2_async_register_subdev_sensor_common);
 
 int v4l2_async_register_fwnode_subdev(struct v4l2_subdev *sd,
+				      struct v4l2_async_notifier *notifier,
 				      size_t asd_struct_size,
 				      unsigned int *ports,
 				      unsigned int num_ports,
 				      parse_endpoint_func parse_endpoint)
 {
-	struct v4l2_async_notifier *notifier;
 	struct device *dev = sd->dev;
 	struct fwnode_handle *fwnode;
 	int ret;
@@ -1141,12 +1141,6 @@ int v4l2_async_register_fwnode_subdev(struct v4l2_subdev *sd,
 	if (!fwnode_device_is_available(fwnode))
 		return -ENODEV;
 
-	notifier = kzalloc(sizeof(*notifier), GFP_KERNEL);
-	if (!notifier)
-		return -ENOMEM;
-
-	v4l2_async_notifier_init(notifier);
-
 	if (!ports) {
 		ret = v4l2_async_notifier_parse_fwnode_endpoints(dev, notifier,
 								 asd_struct_size,
@@ -1171,15 +1165,12 @@ int v4l2_async_register_fwnode_subdev(struct v4l2_subdev *sd,
 	if (ret < 0)
 		goto out_unregister;
 
-	sd->subdev_notifier = notifier;
-
 	return 0;
 
 out_unregister:
 	v4l2_async_notifier_unregister(notifier);
 out_cleanup:
 	v4l2_async_notifier_cleanup(notifier);
-	kfree(notifier);
 
 	return ret;
 }
diff --git a/drivers/staging/media/imx/imx6-mipi-csi2.c b/drivers/staging/media/imx/imx6-mipi-csi2.c
index f29e28df36ed..408ee2765e77 100644
--- a/drivers/staging/media/imx/imx6-mipi-csi2.c
+++ b/drivers/staging/media/imx/imx6-mipi-csi2.c
@@ -35,6 +35,7 @@
 struct csi2_dev {
 	struct device          *dev;
 	struct v4l2_subdev      sd;
+	struct v4l2_async_notifier notifier;
 	struct media_pad       pad[CSI2_NUM_PADS];
 	struct clk             *dphy_clk;
 	struct clk             *pllref_clk;
@@ -643,8 +644,10 @@ static int csi2_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, &csi2->sd);
 
+	v4l2_async_notifier_init(&csi2->notifier);
+
 	ret = v4l2_async_register_fwnode_subdev(
-		&csi2->sd, sizeof(struct v4l2_async_subdev),
+		&csi2->sd, &csi2->notifier, sizeof(struct v4l2_async_subdev),
 		&sink_port, 1, csi2_parse_endpoint);
 	if (ret)
 		goto dphy_off;
diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index 500b4c08d967..a1c96c52a606 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -155,6 +155,7 @@
 struct imx7_csi {
 	struct device *dev;
 	struct v4l2_subdev sd;
+	struct v4l2_async_notifier notifier;
 	struct imx_media_video_dev *vdev;
 	struct imx_media_dev *imxmd;
 	struct media_pad pad[IMX7_CSI_PADS_NUM];
@@ -1250,7 +1251,9 @@ static int imx7_csi_probe(struct platform_device *pdev)
 	v4l2_ctrl_handler_init(&csi->ctrl_hdlr, 0);
 	csi->sd.ctrl_handler = &csi->ctrl_hdlr;
 
-	ret = v4l2_async_register_fwnode_subdev(&csi->sd,
+	v4l2_async_notifier_init(&csi->notifier);
+
+	ret = v4l2_async_register_fwnode_subdev(&csi->sd, &csi->notifier,
 						sizeof(struct v4l2_async_subdev),
 						NULL, 0,
 						imx7_csi_parse_endpoint);
diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index d1cdf011c8f1..f71d9183cad2 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -223,6 +223,7 @@ struct csi_state {
 	struct device *dev;
 	struct media_pad pads[CSIS_PADS_NUM];
 	struct v4l2_subdev mipi_sd;
+	struct v4l2_async_notifier notifier;
 	struct v4l2_subdev *src_sd;
 
 	u8 index;
@@ -892,7 +893,9 @@ static int mipi_csis_subdev_init(struct v4l2_subdev *mipi_sd,
 
 	v4l2_set_subdevdata(mipi_sd, &pdev->dev);
 
-	ret = v4l2_async_register_fwnode_subdev(mipi_sd,
+	v4l2_async_notifier_init(&state->notifier);
+
+	ret = v4l2_async_register_fwnode_subdev(mipi_sd, &state->notifier,
 						sizeof(struct v4l2_async_subdev),
 						&sink_port, 1,
 						mipi_csis_parse_endpoint);
diff --git a/include/media/v4l2-fwnode.h b/include/media/v4l2-fwnode.h
index f81f8bf34526..27a7b78149c2 100644
--- a/include/media/v4l2-fwnode.h
+++ b/include/media/v4l2-fwnode.h
@@ -331,6 +331,7 @@ int v4l2_async_notifier_parse_fwnode_sensor_common(struct device *dev,
  *					and parses fwnode endpoints
  *
  * @sd: pointer to struct &v4l2_subdev
+ * @notifier: the sub-device's notifier.
  * @asd_struct_size: size of the driver's async sub-device struct, including
  *		     sizeof(struct v4l2_async_subdev). The &struct
  *		     v4l2_async_subdev shall be the first member of
@@ -343,13 +344,15 @@ int v4l2_async_notifier_parse_fwnode_sensor_common(struct device *dev,
  *		    endpoint. Optional.
  *
  * This function is just like v4l2_async_register_subdev() with the
- * exception that calling it will also allocate a notifier for the
- * sub-device, parse the sub-device's firmware node endpoints using
- * v4l2_async_notifier_parse_fwnode_endpoints() or
+ * exception that calling it will also parse the sub-device's firmware
+ * node endpoints using v4l2_async_notifier_parse_fwnode_endpoints() or
  * v4l2_async_notifier_parse_fwnode_endpoints_by_port(), and
- * registers the sub-device notifier. The sub-device is similarly
+ * registers the sub-device's notifier. The sub-device is similarly
  * unregistered by calling v4l2_async_unregister_subdev().
  *
+ * The caller must first initialize the notifier with a call to
+ * v4l2_async_notifier_init().
+ *
  * While registered, the subdev module is marked as in-use.
  *
  * An error is returned if the module is no longer loaded on any attempts
@@ -357,6 +360,7 @@ int v4l2_async_notifier_parse_fwnode_sensor_common(struct device *dev,
  */
 int
 v4l2_async_register_fwnode_subdev(struct v4l2_subdev *sd,
+				  struct v4l2_async_notifier *notifier,
 				  size_t asd_struct_size,
 				  unsigned int *ports,
 				  unsigned int num_ports,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
