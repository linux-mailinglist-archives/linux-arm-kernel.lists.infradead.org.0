Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 849D0135CD
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 00:44:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KUkn+T7iIbvqMVM4+qXbTFhe1XeRUltm3NnTu6dDkCo=; b=niUBYFAAra9LPEba47l8cTtP1I
	GfTc1roEt0kaT7FLwp7tG5Za0Mu5vdV+6Gu7L676dwKZUCcva/Lan9zBc+naPAvdkid/4OJLTeb5x
	g39jOPetbHUDHX98i6Dcgt2EfYKKK8GvOR6XCD6gMFc1v3mH+RFWd0gZawEx/8qkNNyO4jMqllfBY
	COX76KwwsJCcK8XyO1DAtlCN1iReMyJiPmLFnHs1S7WxgmzH+pX4ME6TvfjOZ5ydQG+8kpHdeNeGV
	Q/HH/D/x/IOBRgi2oPBLOsYGVKD6WJuOHwRXXx4Is2KWgyib2SlSs0QQKQ8iWfBk1gnRJjErrydel
	W4eRcrQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMgua-000898-V1; Fri, 03 May 2019 22:44:12 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMgu5-0007h8-Mo
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 22:43:44 +0000
Received: by mail-pl1-x642.google.com with SMTP id a59so3354514pla.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 15:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vh+f8bdLjY+HSfSVBVy8Lc/Hv+xFPxT6P6Duza4D9HA=;
 b=EgBibSzQzNZyaDWGZQdmYgyajg6GvTlPYNK0RmjIxLmeTufTpc1uPVwkzm2p5YP0V2
 /jWdGJ73fc5z11SOLMK+vznXt+9dJGWBSdfNANWWqO8maHNJsKam7eA0QxrYZNxDVYaK
 DZa+Bh1LulDIA7kusAVorwjwi9Q3VksVRk4hcP7xMeVIhPtdRdA9ghY/WvUvSL79Pbx6
 uTxBmlHZWy4SBr+YNcihVBkqMb8vYyS6Nf1Zjx4lbHvZDvws5px1gNK6rwLTZIVrYDrP
 V388QCsfqwWVHB1WmlmqqhkPT8qeZsue4SlCqXidoI2zFPfuIXktZIOlzmXRSlQSKjKn
 eRKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vh+f8bdLjY+HSfSVBVy8Lc/Hv+xFPxT6P6Duza4D9HA=;
 b=btjwlEbVxk6vnnJ1PGN1O+m2vZR0/uVfX/1kyC0K0egtV54VxFbLQgq6KbRgSltUZW
 k6HeYrOGdHYfV/D3gSvORPR79c3U8N8HTZdL0Rm626pocm0m7BgRqXUWRzHBcWBf1Fmh
 aOZpPE5UYZhe6FWK2A1KEH6iIga+tOfwUFVLIjQkNaSwYdUSs73ISWiaTnDHd1uSJvIn
 C+uiPf2tMwcKahH2m3tcQGQlAJyq5hW4FplGHEYNd9vG78qkXma4c5WdQfG9Src4VBWd
 PIAMkYKVlSjdK+r6NrRahBGVgw/rRjqsmbWNGS61dVtrfgjAW3EQUx5wJM+2MnryEzZD
 Fv2w==
X-Gm-Message-State: APjAAAXbjQb/CWhOwksmdIeoxXrTl3RfxPwx2D2P7AQ3MH3RN8a0y8Xl
 EztTauK41NCsL/nbhZhCMyY=
X-Google-Smtp-Source: APXvYqyzxnZaCrW5IkTqOdCpOVpCCe1fMIBgjIx4ZOPIbPO3CFipcahW5MfGa1J8fv99RX48f93yVw==
X-Received: by 2002:a17:902:70ca:: with SMTP id
 l10mr14372938plt.228.1556923418103; 
 Fri, 03 May 2019 15:43:38 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id e62sm4793871pfa.50.2019.05.03.15.43.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 15:43:37 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v4 2/8] media: staging/imx: Pass device to alloc/free_dma_buf
Date: Fri,  3 May 2019 15:43:20 -0700
Message-Id: <20190503224326.21039-3-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190503224326.21039-1-slongerbeam@gmail.com>
References: <20190503224326.21039-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_154341_744052_BF4AFCEC 
X-CRM114-Status: GOOD (  16.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slongerbeam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Allocate and free a DMA coherent buffer in imx_media_alloc/free_dma_buf()
from the given device. This allows DMA alloc and free using a device
that is backed by real hardware, which for the imx5/6/7 CSI is the CSI
unit, and for the internal IPU sub-devices, is the parent IPU.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-ic-prpencvf.c | 18 +++++++++---------
 drivers/staging/media/imx/imx-media-csi.c   |  6 +++---
 drivers/staging/media/imx/imx-media-utils.c | 13 ++++++-------
 drivers/staging/media/imx/imx-media.h       |  4 ++--
 drivers/staging/media/imx/imx7-media-csi.c  |  4 ++--
 5 files changed, 22 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/media/imx/imx-ic-prpencvf.c b/drivers/staging/media/imx/imx-ic-prpencvf.c
index 069cce512280..ddcd87a17c71 100644
--- a/drivers/staging/media/imx/imx-ic-prpencvf.c
+++ b/drivers/staging/media/imx/imx-ic-prpencvf.c
@@ -464,13 +464,13 @@ static int prp_setup_rotation(struct prp_priv *priv)
 	incc = priv->cc[PRPENCVF_SINK_PAD];
 	outcc = vdev->cc;
 
-	ret = imx_media_alloc_dma_buf(ic_priv->md, &priv->rot_buf[0],
+	ret = imx_media_alloc_dma_buf(ic_priv->ipu_dev, &priv->rot_buf[0],
 				      outfmt->sizeimage);
 	if (ret) {
 		v4l2_err(&ic_priv->sd, "failed to alloc rot_buf[0], %d\n", ret);
 		return ret;
 	}
-	ret = imx_media_alloc_dma_buf(ic_priv->md, &priv->rot_buf[1],
+	ret = imx_media_alloc_dma_buf(ic_priv->ipu_dev, &priv->rot_buf[1],
 				      outfmt->sizeimage);
 	if (ret) {
 		v4l2_err(&ic_priv->sd, "failed to alloc rot_buf[1], %d\n", ret);
@@ -543,9 +543,9 @@ static int prp_setup_rotation(struct prp_priv *priv)
 unsetup_vb2:
 	prp_unsetup_vb2_buf(priv, VB2_BUF_STATE_QUEUED);
 free_rot1:
-	imx_media_free_dma_buf(ic_priv->md, &priv->rot_buf[1]);
+	imx_media_free_dma_buf(ic_priv->ipu_dev, &priv->rot_buf[1]);
 free_rot0:
-	imx_media_free_dma_buf(ic_priv->md, &priv->rot_buf[0]);
+	imx_media_free_dma_buf(ic_priv->ipu_dev, &priv->rot_buf[0]);
 	return ret;
 }
 
@@ -563,8 +563,8 @@ static void prp_unsetup_rotation(struct prp_priv *priv)
 
 	ipu_ic_disable(priv->ic);
 
-	imx_media_free_dma_buf(ic_priv->md, &priv->rot_buf[0]);
-	imx_media_free_dma_buf(ic_priv->md, &priv->rot_buf[1]);
+	imx_media_free_dma_buf(ic_priv->ipu_dev, &priv->rot_buf[0]);
+	imx_media_free_dma_buf(ic_priv->ipu_dev, &priv->rot_buf[1]);
 }
 
 static int prp_setup_norotation(struct prp_priv *priv)
@@ -656,7 +656,7 @@ static int prp_start(struct prp_priv *priv)
 
 	outfmt = &vdev->fmt.fmt.pix;
 
-	ret = imx_media_alloc_dma_buf(ic_priv->md, &priv->underrun_buf,
+	ret = imx_media_alloc_dma_buf(ic_priv->ipu_dev, &priv->underrun_buf,
 				      outfmt->sizeimage);
 	if (ret)
 		goto out_put_ipu;
@@ -726,7 +726,7 @@ static int prp_start(struct prp_priv *priv)
 out_unsetup:
 	prp_unsetup(priv, VB2_BUF_STATE_QUEUED);
 out_free_underrun:
-	imx_media_free_dma_buf(ic_priv->md, &priv->underrun_buf);
+	imx_media_free_dma_buf(ic_priv->ipu_dev, &priv->underrun_buf);
 out_put_ipu:
 	prp_put_ipu_resources(priv);
 	return ret;
@@ -763,7 +763,7 @@ static void prp_stop(struct prp_priv *priv)
 
 	prp_unsetup(priv, VB2_BUF_STATE_ERROR);
 
-	imx_media_free_dma_buf(ic_priv->md, &priv->underrun_buf);
+	imx_media_free_dma_buf(ic_priv->ipu_dev, &priv->underrun_buf);
 
 	/* cancel the EOF timeout timer */
 	del_timer_sync(&priv->eof_timeout_timer);
diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index 93b107eab5f5..ea3d13103c91 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -612,7 +612,7 @@ static int csi_idmac_start(struct csi_priv *priv)
 
 	outfmt = &vdev->fmt.fmt.pix;
 
-	ret = imx_media_alloc_dma_buf(priv->md, &priv->underrun_buf,
+	ret = imx_media_alloc_dma_buf(priv->dev, &priv->underrun_buf,
 				      outfmt->sizeimage);
 	if (ret)
 		goto out_put_ipu;
@@ -666,7 +666,7 @@ static int csi_idmac_start(struct csi_priv *priv)
 out_unsetup:
 	csi_idmac_unsetup(priv, VB2_BUF_STATE_QUEUED);
 out_free_dma_buf:
-	imx_media_free_dma_buf(priv->md, &priv->underrun_buf);
+	imx_media_free_dma_buf(priv->dev, &priv->underrun_buf);
 out_put_ipu:
 	csi_idmac_put_ipu_resources(priv);
 	return ret;
@@ -698,7 +698,7 @@ static void csi_idmac_stop(struct csi_priv *priv)
 
 	csi_idmac_unsetup(priv, VB2_BUF_STATE_ERROR);
 
-	imx_media_free_dma_buf(priv->md, &priv->underrun_buf);
+	imx_media_free_dma_buf(priv->dev, &priv->underrun_buf);
 
 	/* cancel the EOF timeout timer */
 	del_timer_sync(&priv->eof_timeout_timer);
diff --git a/drivers/staging/media/imx/imx-media-utils.c b/drivers/staging/media/imx/imx-media-utils.c
index 1c63a2765a81..c52aa59acd05 100644
--- a/drivers/staging/media/imx/imx-media-utils.c
+++ b/drivers/staging/media/imx/imx-media-utils.c
@@ -679,29 +679,28 @@ int imx_media_ipu_image_to_mbus_fmt(struct v4l2_mbus_framefmt *mbus,
 }
 EXPORT_SYMBOL_GPL(imx_media_ipu_image_to_mbus_fmt);
 
-void imx_media_free_dma_buf(struct imx_media_dev *imxmd,
+void imx_media_free_dma_buf(struct device *dev,
 			    struct imx_media_dma_buf *buf)
 {
 	if (buf->virt)
-		dma_free_coherent(imxmd->md.dev, buf->len,
-				  buf->virt, buf->phys);
+		dma_free_coherent(dev, buf->len, buf->virt, buf->phys);
 
 	buf->virt = NULL;
 	buf->phys = 0;
 }
 EXPORT_SYMBOL_GPL(imx_media_free_dma_buf);
 
-int imx_media_alloc_dma_buf(struct imx_media_dev *imxmd,
+int imx_media_alloc_dma_buf(struct device *dev,
 			    struct imx_media_dma_buf *buf,
 			    int size)
 {
-	imx_media_free_dma_buf(imxmd, buf);
+	imx_media_free_dma_buf(dev, buf);
 
 	buf->len = PAGE_ALIGN(size);
-	buf->virt = dma_alloc_coherent(imxmd->md.dev, buf->len, &buf->phys,
+	buf->virt = dma_alloc_coherent(dev, buf->len, &buf->phys,
 				       GFP_DMA | GFP_KERNEL);
 	if (!buf->virt) {
-		dev_err(imxmd->md.dev, "failed to alloc dma buffer\n");
+		dev_err(dev, "%s: failed\n", __func__);
 		return -ENOMEM;
 	}
 
diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
index fadde3435cb7..ba2d75bcc4c9 100644
--- a/drivers/staging/media/imx/imx-media.h
+++ b/drivers/staging/media/imx/imx-media.h
@@ -208,9 +208,9 @@ struct imx_media_dma_buf {
 	unsigned long  len;
 };
 
-void imx_media_free_dma_buf(struct imx_media_dev *imxmd,
+void imx_media_free_dma_buf(struct device *dev,
 			    struct imx_media_dma_buf *buf);
-int imx_media_alloc_dma_buf(struct imx_media_dev *imxmd,
+int imx_media_alloc_dma_buf(struct device *dev,
 			    struct imx_media_dma_buf *buf,
 			    int size);
 
diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index 95f3808762b4..96d01d8af874 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -714,7 +714,7 @@ static int imx7_csi_dma_start(struct imx7_csi *csi)
 	struct v4l2_pix_format *out_pix = &vdev->fmt.fmt.pix;
 	int ret;
 
-	ret = imx_media_alloc_dma_buf(csi->imxmd, &csi->underrun_buf,
+	ret = imx_media_alloc_dma_buf(csi->dev, &csi->underrun_buf,
 				      out_pix->sizeimage);
 	if (ret < 0) {
 		v4l2_warn(&csi->sd, "consider increasing the CMA area\n");
@@ -754,7 +754,7 @@ static void imx7_csi_dma_stop(struct imx7_csi *csi)
 
 	imx7_csi_dma_unsetup_vb2_buf(csi, VB2_BUF_STATE_ERROR);
 
-	imx_media_free_dma_buf(csi->imxmd, &csi->underrun_buf);
+	imx_media_free_dma_buf(csi->dev, &csi->underrun_buf);
 }
 
 static int imx7_csi_configure(struct imx7_csi *csi)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
