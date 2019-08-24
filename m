Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BA59B99E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 02:28:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HrkYB7/FsC7rNKqb0QUb9CX5fpybpHSHe1MB8U5iteg=; b=RXt4axjZgdgzuJANvwttHLnVhf
	UU85b82XQEnk+P6EaOZGkstpYipW94OHlCYXk5nqX2mLhgHeyENXSdOnyLi3k300fUG0tuDu17yyL
	BZZOPkTPoDn8Mn1bUqfYmoCr5YAFXVMNIk5HcJqt46biALjfBbJHpny+8pzccHyptrXEiz2orDK7T
	d0X7m7uWwwQylrULdHO3gMSJTPTN72BBynnhR3VkhhbLGgUmbgWPg2jG3N9GtzU9rbGSoh5PBmnay
	t2omLnq1dp8yZElhHDnQAjoj9UaXe4v7B/y9V3Pw/ku+TquhreliPWZGD1AqTh8xYZz3zCmi89F4u
	bpBpxdpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Jul-00017I-SO; Sat, 24 Aug 2019 00:28:20 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1JuR-0000yc-Ag
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 00:28:01 +0000
Received: by mail-pf1-x444.google.com with SMTP id d85so7596260pfd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 17:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9P29BImsxbIGtO7TEAe3tccPsN9iEcFuYCLBJBhx1Hs=;
 b=vCTYYFfzcIV2nLrt6Q7ls+gVNEdWx1mXTVl8aPEwPo78kW+3k31dxHHtIbcdB9DHRG
 NPL3jyjdn8+Lwtlb+y70v69xM5tfN2EAboh4iDS14AswONFZnB319bpInC3p4zmZMv9i
 3snrcg3dQ9V6MIohr/y8WAIlHEg31e9+WnMWXhsRLpIYftQ8y3btuJ3s1j9gAriU4hsE
 5YqMyJHMbl6l3fd18Y7EFUF3OP1DPIfPz7krK1WKXJmd4VFTcK9mJ14g0AFyevECChLV
 MM+hk/2ZL+gNHnVvdTn/xiYbFKatl3vRL40HMWRspnUWJIUQQuX7hSBDMTW5K6Pl/Y2G
 jm2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9P29BImsxbIGtO7TEAe3tccPsN9iEcFuYCLBJBhx1Hs=;
 b=JDaU9DPt0tmEdFdwAjCafqSinF9+A8sGgLX612xWLXtOtxtff/Mq9yRzKfyciF4ENf
 jjmHFXTjFaJud4vTfo6QKhmQz6NNcZTqdBML9DqYK9usQWVio2DcBrhN1N3MdmsL7kW+
 V0DmFX4t0+O/N3Wk2ZSwN3JSKP8GDmkcuhUyKIVMQeS9fnkube1xvKH/O1LxpkmxLTdS
 cmO8Fj414stmACU/peS7KVNtEPtzzqhdNJkgb0pI4Y2DsBix6Lt6PxGxbnMkle0nF1Is
 YCRS2XRmjhYsgcCHHYu37hg82f5slCFQG0QyEKQVbM5xwC15AnK0e55DmUNCp24zSnQD
 vN3A==
X-Gm-Message-State: APjAAAWw5nNbSUNI93FhoTRPX32pesecPT/iG6HMQ+ORwbmiySNVsVwY
 Y+svx9rjoxoRKolMM5LGwRtVOTLk
X-Google-Smtp-Source: APXvYqxSRF+eXHrQZha0TeU4wEjJVBW5pXYxdvoo19OQyuNLhiG3Hai4ryqiDw8/9L72VPQ1/LW2kg==
X-Received: by 2002:a63:c008:: with SMTP id h8mr6360376pgg.427.1566606477971; 
 Fri, 23 Aug 2019 17:27:57 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id n70sm3703018pjc.3.2019.08.23.17.27.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 17:27:57 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 1/2] media: imx: Move capture device init to registered
Date: Fri, 23 Aug 2019 17:27:49 -0700
Message-Id: <20190824002750.5860-2-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190824002750.5860-1-slongerbeam@gmail.com>
References: <20190824002750.5860-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_172759_412001_8E8F90CC 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slongerbeam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, Rui Miguel Silva <rmfrfs@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If the CSI is unregistered and then registered again without the
driver being removed and re-probed (which will happen when the media
device is removed and re-probed without also removing/re-probing the
CSI), the result is the kobject error and backtrace "tried to init an
initialized object". This is because the video device is left in an
initialized state after being unregistered, thus the video device's
underlying kobject is also left in an initialized state when the device
is registered again.

Fix this by moving imx_media_capture_device_init() and _remove()
into csi_registered() and csi_unregistered(). This will create a new
un-initialized video device when the CSI is re-registered. Do this for
all the subdevices that register a capture device.

Reported-by: Russell King <linux@armlinux.org.uk>
Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-ic-prpencvf.c | 24 ++++++++++++---------
 drivers/staging/media/imx/imx-media-csi.c   | 20 ++++++++++-------
 drivers/staging/media/imx/imx7-media-csi.c  | 22 +++++++++----------
 3 files changed, 37 insertions(+), 29 deletions(-)

diff --git a/drivers/staging/media/imx/imx-ic-prpencvf.c b/drivers/staging/media/imx/imx-ic-prpencvf.c
index 67ffa46a8e96..301f5fce53c0 100644
--- a/drivers/staging/media/imx/imx-ic-prpencvf.c
+++ b/drivers/staging/media/imx/imx-ic-prpencvf.c
@@ -1271,17 +1271,26 @@ static int prp_registered(struct v4l2_subdev *sd)
 	if (ret)
 		return ret;
 
+	priv->vdev = imx_media_capture_device_init(ic_priv->ipu_dev,
+						   &ic_priv->sd,
+						   PRPENCVF_SRC_PAD);
+	if (IS_ERR(priv->vdev))
+		return PTR_ERR(priv->vdev);
+
 	ret = imx_media_capture_device_register(priv->vdev);
 	if (ret)
-		return ret;
+		goto remove_vdev;
 
 	ret = prp_init_controls(priv);
 	if (ret)
-		goto unreg;
+		goto unreg_vdev;
 
 	return 0;
-unreg:
+
+unreg_vdev:
 	imx_media_capture_device_unregister(priv->vdev);
+remove_vdev:
+	imx_media_capture_device_remove(priv->vdev);
 	return ret;
 }
 
@@ -1290,6 +1299,8 @@ static void prp_unregistered(struct v4l2_subdev *sd)
 	struct prp_priv *priv = sd_to_priv(sd);
 
 	imx_media_capture_device_unregister(priv->vdev);
+	imx_media_capture_device_remove(priv->vdev);
+
 	v4l2_ctrl_handler_free(&priv->ctrl_hdlr);
 }
 
@@ -1336,12 +1347,6 @@ static int prp_init(struct imx_ic_priv *ic_priv)
 	spin_lock_init(&priv->irqlock);
 	timer_setup(&priv->eof_timeout_timer, prp_eof_timeout, 0);
 
-	priv->vdev = imx_media_capture_device_init(ic_priv->ipu_dev,
-						   &ic_priv->sd,
-						   PRPENCVF_SRC_PAD);
-	if (IS_ERR(priv->vdev))
-		return PTR_ERR(priv->vdev);
-
 	mutex_init(&priv->lock);
 
 	return 0;
@@ -1352,7 +1357,6 @@ static void prp_remove(struct imx_ic_priv *ic_priv)
 	struct prp_priv *priv = ic_priv->task_priv;
 
 	mutex_destroy(&priv->lock);
-	imx_media_capture_device_remove(priv->vdev);
 }
 
 struct imx_ic_ops imx_ic_prpencvf_ops = {
diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index 367e39f5b382..b3f1cf08a102 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -1797,12 +1797,22 @@ static int csi_registered(struct v4l2_subdev *sd)
 	if (ret)
 		goto free_fim;
 
+	priv->vdev = imx_media_capture_device_init(priv->sd.dev,
+						   &priv->sd,
+						   CSI_SRC_PAD_IDMAC);
+	if (IS_ERR(priv->vdev)) {
+		ret = PTR_ERR(priv->vdev);
+		goto free_fim;
+	}
+
 	ret = imx_media_capture_device_register(priv->vdev);
 	if (ret)
-		goto free_fim;
+		goto remove_vdev;
 
 	return 0;
 
+remove_vdev:
+	imx_media_capture_device_remove(priv->vdev);
 free_fim:
 	if (priv->fim)
 		imx_media_fim_free(priv->fim);
@@ -1816,6 +1826,7 @@ static void csi_unregistered(struct v4l2_subdev *sd)
 	struct csi_priv *priv = v4l2_get_subdevdata(sd);
 
 	imx_media_capture_device_unregister(priv->vdev);
+	imx_media_capture_device_remove(priv->vdev);
 
 	if (priv->fim)
 		imx_media_fim_free(priv->fim);
@@ -1963,11 +1974,6 @@ static int imx_csi_probe(struct platform_device *pdev)
 	imx_media_grp_id_to_sd_name(priv->sd.name, sizeof(priv->sd.name),
 				    priv->sd.grp_id, ipu_get_num(priv->ipu));
 
-	priv->vdev = imx_media_capture_device_init(priv->sd.dev, &priv->sd,
-						   CSI_SRC_PAD_IDMAC);
-	if (IS_ERR(priv->vdev))
-		return PTR_ERR(priv->vdev);
-
 	mutex_init(&priv->lock);
 
 	v4l2_ctrl_handler_init(&priv->ctrl_hdlr, 0);
@@ -1997,7 +2003,6 @@ static int imx_csi_probe(struct platform_device *pdev)
 free:
 	v4l2_ctrl_handler_free(&priv->ctrl_hdlr);
 	mutex_destroy(&priv->lock);
-	imx_media_capture_device_remove(priv->vdev);
 	return ret;
 }
 
@@ -2008,7 +2013,6 @@ static int imx_csi_remove(struct platform_device *pdev)
 
 	v4l2_ctrl_handler_free(&priv->ctrl_hdlr);
 	mutex_destroy(&priv->lock);
-	imx_media_capture_device_remove(priv->vdev);
 	v4l2_async_unregister_subdev(sd);
 	media_entity_cleanup(&sd->entity);
 
diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index 4ca79ff4c9b3..b61ab16a337a 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -1119,7 +1119,16 @@ static int imx7_csi_registered(struct v4l2_subdev *sd)
 	if (ret < 0)
 		return ret;
 
-	return imx_media_capture_device_register(csi->vdev);
+	csi->vdev = imx_media_capture_device_init(csi->sd.dev, &csi->sd,
+						  IMX7_CSI_PAD_SRC);
+	if (IS_ERR(csi->vdev))
+		return PTR_ERR(csi->vdev);
+
+	ret = imx_media_capture_device_register(csi->vdev);
+	if (ret)
+		imx_media_capture_device_remove(csi->vdev);
+
+	return ret;
 }
 
 static void imx7_csi_unregistered(struct v4l2_subdev *sd)
@@ -1127,6 +1136,7 @@ static void imx7_csi_unregistered(struct v4l2_subdev *sd)
 	struct imx7_csi *csi = v4l2_get_subdevdata(sd);
 
 	imx_media_capture_device_unregister(csi->vdev);
+	imx_media_capture_device_remove(csi->vdev);
 }
 
 static int imx7_csi_init_cfg(struct v4l2_subdev *sd,
@@ -1253,11 +1263,6 @@ static int imx7_csi_probe(struct platform_device *pdev)
 	csi->sd.grp_id = IMX_MEDIA_GRP_ID_CSI;
 	snprintf(csi->sd.name, sizeof(csi->sd.name), "csi");
 
-	csi->vdev = imx_media_capture_device_init(csi->sd.dev, &csi->sd,
-						  IMX7_CSI_PAD_SRC);
-	if (IS_ERR(csi->vdev))
-		return PTR_ERR(csi->vdev);
-
 	v4l2_ctrl_handler_init(&csi->ctrl_hdlr, 0);
 	csi->sd.ctrl_handler = &csi->ctrl_hdlr;
 
@@ -1271,8 +1276,6 @@ static int imx7_csi_probe(struct platform_device *pdev)
 	return 0;
 
 free:
-	imx_media_capture_device_unregister(csi->vdev);
-	imx_media_capture_device_remove(csi->vdev);
 	v4l2_ctrl_handler_free(&csi->ctrl_hdlr);
 
 cleanup:
@@ -1300,9 +1303,6 @@ static int imx7_csi_remove(struct platform_device *pdev)
 	v4l2_device_unregister(&imxmd->v4l2_dev);
 	media_device_cleanup(&imxmd->md);
 
-	imx_media_capture_device_unregister(csi->vdev);
-	imx_media_capture_device_remove(csi->vdev);
-
 	v4l2_async_unregister_subdev(sd);
 	v4l2_ctrl_handler_free(&csi->ctrl_hdlr);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
