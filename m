Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFA1B66A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 21:10:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Cna4X9m+GHPRLmJ30GG4osYNQOi2BrDtnEuWAm8y494=; b=MQ8Xe4g9qeiiKVGfGOdXd5vC4u
	oPp14gHNVeC8M6NHqH1ynL5vLZ43pw3HmZRyIPCTWLeMpyhmLEoGG47Ynq9Ok48/J1RTpOhkAoA0q
	/dVcSAp8tzEXbbfsiPcaJYvbyA8iGeDExyy2ENV/08d+F2piLMNKNRytrAg8UgTtSGZ2SrpgQZxC5
	RSsoD1UahFnJVCF/gc5NdGUq3yxkzKgFSnP5lrGRdy2kSnN+wecklZrLs4GmR4GVU4nCLY/7K6r3O
	lcLCzgxl9oGWy7tmBkrptD0YBFMyH2AUa+a2B2ZXpAzBD5ppQIQPpUAQMSrNecomjnVNW+KphPYRn
	qD7NPMGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKpCG-0002ox-FF; Sun, 28 Apr 2019 19:10:44 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKpBC-0000ZE-0G
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 19:09:44 +0000
Received: by mail-pg1-x544.google.com with SMTP id t22so1094352pgi.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 12:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Kny2ltVLSmqx5YaA3qCUxlLvoIMPScW6tvNkNNRIyQ4=;
 b=ptLtJiPHn0+pwgKgsVEeg8YRgCUoV/7O/kB4kcQzjzecB3re2S7x5ahOIl/Q+g8Suq
 rUUj05NvlIZM1V6hsw6EUeMbn3YOCd7y2djJM11TzBNFgom54aTz6aiLIDEj0MFcpJSk
 10ZRP+62q7JvP2Od1RlpumtQjTqi3sQ1shIsIIWpSTEkoi2t+H56TngdTP7LJUy1UY7R
 uYe9EKIx3lwlPuCT1B6EZPWCarvU751qivjQ2HW33+kPd1WdNfuB10P82wLNGeXXLuR4
 NOVWW8IUVvqF1D0VmhVY25KM6aUEFJwx8MO8QuootThOrAYZQKMm4rAi2TlARvLM1CXW
 FhOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Kny2ltVLSmqx5YaA3qCUxlLvoIMPScW6tvNkNNRIyQ4=;
 b=EJAqkIYc4AqCuL5ukqCzxHpiQepAUmXukcbfjEPjKDx5gC5H+RJm/r0DphG+6S4zYC
 dkIlpqjxqj3J2jGgd6jP4bYLmuMiGtsyF7VSdSK6woSnvyhOEEvt8ornemyhc5D5pmwP
 /W8zdRcgp/ViPM5ZyjTt3katBhyyHh4wk1Qm5y05ToW8jUFXHtvf+tkSd2KOdoH+ilFs
 93UkP/wrZRMNENKnfRdr7IW0Uy0GLU0AqNCjDwIVe8qCh78WwWPDSzDP7S2hla2Dwbjk
 FH9Dw8pSYlD3420uFeTeRJPp9az1ZAVSeP9KIRywytaJnwG8PZzj/i7Vt4AdXNvNxG/K
 Hfgg==
X-Gm-Message-State: APjAAAV1eNkr6o3Q0FHzNGnS8pWTHT7iunH3Vck6RTPDbcSgjzlOV5up
 h8frAiMM6BIiAnHouQ41+3Q=
X-Google-Smtp-Source: APXvYqyfUGqPEM5tN5WCOmg1sRWKWbeTVpsmIQ7ROD7DKn0LMfCBbCTkgEJ3DSRJX5Un1QbEmXsN1g==
X-Received: by 2002:a65:6205:: with SMTP id d5mr9187916pgv.61.1556478577041;
 Sun, 28 Apr 2019 12:09:37 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id o14sm34204712pgn.4.2019.04.28.12.09.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 12:09:36 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 6/8] media: staging/imx: Re-organize modules
Date: Sun, 28 Apr 2019 12:09:14 -0700
Message-Id: <20190428190916.26567-7-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190428190916.26567-1-slongerbeam@gmail.com>
References: <20190428190916.26567-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_120938_331220_A72E4C74 
X-CRM114-Status: GOOD (  24.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slongerbeam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Re-organize modules, and which objects are linked into those modules, so
that:

- imx6-media (renamed from imx-media) is the media driver module for
  imx5/6 only, and has no symbol exports. The IPU internal subdevice
  objects now link directly with imx6-media.

- imx6-media-csi (renamed from imx-media-csi) is the subdev driver
  module for imx5/6 CSI. It is now linked direcly with imx-media-fim,
  since only the imx5/6 CSI makes use of the frame interval monitor.

- imx-media-common now only contains common code between imx5/6 and imx7
  media drivers. It contains imx-media-utils, imx-media-of,
  imx-media-dev-common, and imx-media-capture. In order to acheive that,
  some functions common to imx5/6 and imx7 have been moved out of
  imx-media-dev.c and into imx-media-dev-common.c.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/Makefile            |  18 +-
 .../staging/media/imx/imx-media-dev-common.c  | 345 +++++++++++++++++-
 drivers/staging/media/imx/imx-media-dev.c     | 340 +----------------
 drivers/staging/media/imx/imx-media-fim.c     |   5 -
 drivers/staging/media/imx/imx-media-of.c      |   3 +
 drivers/staging/media/imx/imx-media.h         |  16 +-
 drivers/staging/media/imx/imx7-media-csi.c    |   4 +-
 7 files changed, 370 insertions(+), 361 deletions(-)

diff --git a/drivers/staging/media/imx/Makefile b/drivers/staging/media/imx/Makefile
index d2d909a36239..aa6c4b4ad37e 100644
--- a/drivers/staging/media/imx/Makefile
+++ b/drivers/staging/media/imx/Makefile
@@ -1,16 +1,16 @@
 # SPDX-License-Identifier: GPL-2.0
-imx-media-objs := imx-media-dev.o imx-media-internal-sd.o imx-media-of.o
-imx-media-objs += imx-media-dev-common.o
-imx-media-common-objs := imx-media-utils.o imx-media-fim.o
-imx-media-ic-objs := imx-ic-common.o imx-ic-prp.o imx-ic-prpencvf.o
+imx6-media-objs := imx-media-dev.o imx-media-internal-sd.o \
+	imx-ic-common.o imx-ic-prp.o imx-ic-prpencvf.o imx-media-vdic.o
 
-obj-$(CONFIG_VIDEO_IMX_MEDIA) += imx-media.o
+imx-media-common-objs := imx-media-capture.o imx-media-dev-common.o \
+	imx-media-of.o imx-media-utils.o
+
+imx6-media-csi-objs := imx-media-csi.o imx-media-fim.o
+
+obj-$(CONFIG_VIDEO_IMX_MEDIA) += imx6-media.o
 obj-$(CONFIG_VIDEO_IMX_MEDIA) += imx-media-common.o
-obj-$(CONFIG_VIDEO_IMX_MEDIA) += imx-media-capture.o
-obj-$(CONFIG_VIDEO_IMX_MEDIA) += imx-media-vdic.o
-obj-$(CONFIG_VIDEO_IMX_MEDIA) += imx-media-ic.o
 
-obj-$(CONFIG_VIDEO_IMX_CSI) += imx-media-csi.o
+obj-$(CONFIG_VIDEO_IMX_CSI) += imx6-media-csi.o
 obj-$(CONFIG_VIDEO_IMX_CSI) += imx6-mipi-csi2.o
 
 obj-$(CONFIG_VIDEO_IMX7_CSI) += imx7-media-csi.o
diff --git a/drivers/staging/media/imx/imx-media-dev-common.c b/drivers/staging/media/imx/imx-media-dev-common.c
index 6cd93419b81d..89dc4ec8dadb 100644
--- a/drivers/staging/media/imx/imx-media-dev-common.c
+++ b/drivers/staging/media/imx/imx-media-dev-common.c
@@ -8,9 +8,342 @@
 
 #include <linux/of_graph.h>
 #include <linux/of_platform.h>
+#include <media/v4l2-ctrls.h>
+#include <media/v4l2-event.h>
+#include <media/v4l2-ioctl.h>
+#include <media/v4l2-mc.h>
 #include "imx-media.h"
 
-static const struct v4l2_async_notifier_operations imx_media_subdev_ops = {
+static inline struct imx_media_dev *notifier2dev(struct v4l2_async_notifier *n)
+{
+	return container_of(n, struct imx_media_dev, notifier);
+}
+
+/* async subdev bound notifier */
+static int imx_media_subdev_bound(struct v4l2_async_notifier *notifier,
+				  struct v4l2_subdev *sd,
+				  struct v4l2_async_subdev *asd)
+{
+	v4l2_info(sd->v4l2_dev, "subdev %s bound\n", sd->name);
+
+	return 0;
+}
+
+/*
+ * Create the media links for all subdevs that registered.
+ * Called after all async subdevs have bound.
+ */
+static int imx_media_create_links(struct v4l2_async_notifier *notifier)
+{
+	struct imx_media_dev *imxmd = notifier2dev(notifier);
+	struct v4l2_subdev *sd;
+
+	list_for_each_entry(sd, &imxmd->v4l2_dev.subdevs, list) {
+		switch (sd->grp_id) {
+		case IMX_MEDIA_GRP_ID_IPU_VDIC:
+		case IMX_MEDIA_GRP_ID_IPU_IC_PRP:
+		case IMX_MEDIA_GRP_ID_IPU_IC_PRPENC:
+		case IMX_MEDIA_GRP_ID_IPU_IC_PRPVF:
+			/*
+			 * links have already been created for the
+			 * sync-registered subdevs.
+			 */
+			break;
+		case IMX_MEDIA_GRP_ID_IPU_CSI0:
+		case IMX_MEDIA_GRP_ID_IPU_CSI1:
+		case IMX_MEDIA_GRP_ID_CSI:
+			imx_media_create_csi_of_links(imxmd, sd);
+			break;
+		default:
+			/*
+			 * if this subdev has fwnode links, create media
+			 * links for them.
+			 */
+			imx_media_create_of_links(imxmd, sd);
+			break;
+		}
+	}
+
+	return 0;
+}
+
+/*
+ * adds given video device to given imx-media source pad vdev list.
+ * Continues upstream from the pad entity's sink pads.
+ */
+static int imx_media_add_vdev_to_pad(struct imx_media_dev *imxmd,
+				     struct imx_media_video_dev *vdev,
+				     struct media_pad *srcpad)
+{
+	struct media_entity *entity = srcpad->entity;
+	struct imx_media_pad_vdev *pad_vdev;
+	struct list_head *pad_vdev_list;
+	struct media_link *link;
+	struct v4l2_subdev *sd;
+	int i, ret;
+
+	/* skip this entity if not a v4l2_subdev */
+	if (!is_media_entity_v4l2_subdev(entity))
+		return 0;
+
+	sd = media_entity_to_v4l2_subdev(entity);
+
+	pad_vdev_list = to_pad_vdev_list(sd, srcpad->index);
+	if (!pad_vdev_list) {
+		v4l2_warn(&imxmd->v4l2_dev, "%s:%u has no vdev list!\n",
+			  entity->name, srcpad->index);
+		/*
+		 * shouldn't happen, but no reason to fail driver load,
+		 * just skip this entity.
+		 */
+		return 0;
+	}
+
+	/* just return if we've been here before */
+	list_for_each_entry(pad_vdev, pad_vdev_list, list) {
+		if (pad_vdev->vdev == vdev)
+			return 0;
+	}
+
+	dev_dbg(imxmd->md.dev, "adding %s to pad %s:%u\n",
+		vdev->vfd->entity.name, entity->name, srcpad->index);
+
+	pad_vdev = devm_kzalloc(imxmd->md.dev, sizeof(*pad_vdev), GFP_KERNEL);
+	if (!pad_vdev)
+		return -ENOMEM;
+
+	/* attach this vdev to this pad */
+	pad_vdev->vdev = vdev;
+	list_add_tail(&pad_vdev->list, pad_vdev_list);
+
+	/* move upstream from this entity's sink pads */
+	for (i = 0; i < entity->num_pads; i++) {
+		struct media_pad *pad = &entity->pads[i];
+
+		if (!(pad->flags & MEDIA_PAD_FL_SINK))
+			continue;
+
+		list_for_each_entry(link, &entity->links, list) {
+			if (link->sink != pad)
+				continue;
+			ret = imx_media_add_vdev_to_pad(imxmd, vdev,
+							link->source);
+			if (ret)
+				return ret;
+		}
+	}
+
+	return 0;
+}
+
+/*
+ * For every subdevice, allocate an array of list_head's, one list_head
+ * for each pad, to hold the list of video devices reachable from that
+ * pad.
+ */
+static int imx_media_alloc_pad_vdev_lists(struct imx_media_dev *imxmd)
+{
+	struct list_head *vdev_lists;
+	struct media_entity *entity;
+	struct v4l2_subdev *sd;
+	int i;
+
+	list_for_each_entry(sd, &imxmd->v4l2_dev.subdevs, list) {
+		entity = &sd->entity;
+		vdev_lists = devm_kcalloc(imxmd->md.dev,
+					  entity->num_pads, sizeof(*vdev_lists),
+					  GFP_KERNEL);
+		if (!vdev_lists)
+			return -ENOMEM;
+
+		/* attach to the subdev's host private pointer */
+		sd->host_priv = vdev_lists;
+
+		for (i = 0; i < entity->num_pads; i++)
+			INIT_LIST_HEAD(to_pad_vdev_list(sd, i));
+	}
+
+	return 0;
+}
+
+/* form the vdev lists in all imx-media source pads */
+static int imx_media_create_pad_vdev_lists(struct imx_media_dev *imxmd)
+{
+	struct imx_media_video_dev *vdev;
+	struct media_link *link;
+	int ret;
+
+	ret = imx_media_alloc_pad_vdev_lists(imxmd);
+	if (ret)
+		return ret;
+
+	list_for_each_entry(vdev, &imxmd->vdev_list, list) {
+		link = list_first_entry(&vdev->vfd->entity.links,
+					struct media_link, list);
+		ret = imx_media_add_vdev_to_pad(imxmd, vdev, link->source);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+/* async subdev complete notifier */
+int imx_media_probe_complete(struct v4l2_async_notifier *notifier)
+{
+	struct imx_media_dev *imxmd = notifier2dev(notifier);
+	int ret;
+
+	mutex_lock(&imxmd->mutex);
+
+	ret = imx_media_create_links(notifier);
+	if (ret)
+		goto unlock;
+
+	ret = imx_media_create_pad_vdev_lists(imxmd);
+	if (ret)
+		goto unlock;
+
+	ret = v4l2_device_register_subdev_nodes(&imxmd->v4l2_dev);
+unlock:
+	mutex_unlock(&imxmd->mutex);
+	if (ret)
+		return ret;
+
+	return media_device_register(&imxmd->md);
+}
+EXPORT_SYMBOL_GPL(imx_media_probe_complete);
+
+/*
+ * adds controls to a video device from an entity subdevice.
+ * Continues upstream from the entity's sink pads.
+ */
+static int imx_media_inherit_controls(struct imx_media_dev *imxmd,
+				      struct video_device *vfd,
+				      struct media_entity *entity)
+{
+	int i, ret = 0;
+
+	if (is_media_entity_v4l2_subdev(entity)) {
+		struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(entity);
+
+		dev_dbg(imxmd->md.dev,
+			"adding controls to %s from %s\n",
+			vfd->entity.name, sd->entity.name);
+
+		ret = v4l2_ctrl_add_handler(vfd->ctrl_handler,
+					    sd->ctrl_handler,
+					    NULL, true);
+		if (ret)
+			return ret;
+	}
+
+	/* move upstream */
+	for (i = 0; i < entity->num_pads; i++) {
+		struct media_pad *pad, *spad = &entity->pads[i];
+
+		if (!(spad->flags & MEDIA_PAD_FL_SINK))
+			continue;
+
+		pad = media_entity_remote_pad(spad);
+		if (!pad || !is_media_entity_v4l2_subdev(pad->entity))
+			continue;
+
+		ret = imx_media_inherit_controls(imxmd, vfd, pad->entity);
+		if (ret)
+			break;
+	}
+
+	return ret;
+}
+
+static int imx_media_link_notify(struct media_link *link, u32 flags,
+				 unsigned int notification)
+{
+	struct media_entity *source = link->source->entity;
+	struct imx_media_pad_vdev *pad_vdev;
+	struct list_head *pad_vdev_list;
+	struct imx_media_dev *imxmd;
+	struct video_device *vfd;
+	struct v4l2_subdev *sd;
+	int pad_idx, ret;
+
+	ret = v4l2_pipeline_link_notify(link, flags, notification);
+	if (ret)
+		return ret;
+
+	/* don't bother if source is not a subdev */
+	if (!is_media_entity_v4l2_subdev(source))
+		return 0;
+
+	sd = media_entity_to_v4l2_subdev(source);
+	pad_idx = link->source->index;
+
+	imxmd = dev_get_drvdata(sd->v4l2_dev->dev);
+
+	pad_vdev_list = to_pad_vdev_list(sd, pad_idx);
+	if (!pad_vdev_list) {
+		/* nothing to do if source sd has no pad vdev list */
+		return 0;
+	}
+
+	/*
+	 * Before disabling a link, reset controls for all video
+	 * devices reachable from this link.
+	 *
+	 * After enabling a link, refresh controls for all video
+	 * devices reachable from this link.
+	 */
+	if (notification == MEDIA_DEV_NOTIFY_PRE_LINK_CH &&
+	    !(flags & MEDIA_LNK_FL_ENABLED)) {
+		list_for_each_entry(pad_vdev, pad_vdev_list, list) {
+			vfd = pad_vdev->vdev->vfd;
+			dev_dbg(imxmd->md.dev,
+				"reset controls for %s\n",
+				vfd->entity.name);
+			v4l2_ctrl_handler_free(vfd->ctrl_handler);
+			v4l2_ctrl_handler_init(vfd->ctrl_handler, 0);
+		}
+	} else if (notification == MEDIA_DEV_NOTIFY_POST_LINK_CH &&
+		   (link->flags & MEDIA_LNK_FL_ENABLED)) {
+		list_for_each_entry(pad_vdev, pad_vdev_list, list) {
+			vfd = pad_vdev->vdev->vfd;
+			dev_dbg(imxmd->md.dev,
+				"refresh controls for %s\n",
+				vfd->entity.name);
+			ret = imx_media_inherit_controls(imxmd, vfd,
+							 &vfd->entity);
+			if (ret)
+				break;
+		}
+	}
+
+	return ret;
+}
+
+static void imx_media_notify(struct v4l2_subdev *sd, unsigned int notification,
+			     void *arg)
+{
+	struct media_entity *entity = &sd->entity;
+	int i;
+
+	if (notification != V4L2_DEVICE_NOTIFY_EVENT)
+		return;
+
+	for (i = 0; i < entity->num_pads; i++) {
+		struct media_pad *pad = &entity->pads[i];
+		struct imx_media_pad_vdev *pad_vdev;
+		struct list_head *pad_vdev_list;
+
+		pad_vdev_list = to_pad_vdev_list(sd, pad->index);
+		if (!pad_vdev_list)
+			continue;
+		list_for_each_entry(pad_vdev, pad_vdev_list, list)
+			v4l2_event_queue(pad_vdev->vdev->vfd, arg);
+	}
+}
+
+static const struct v4l2_async_notifier_operations imx_media_notifier_ops = {
 	.bound = imx_media_subdev_bound,
 	.complete = imx_media_probe_complete,
 };
@@ -19,7 +352,8 @@ static const struct media_device_ops imx_media_md_ops = {
 	.link_notify = imx_media_link_notify,
 };
 
-struct imx_media_dev *imx_media_dev_init(struct device *dev)
+struct imx_media_dev *imx_media_dev_init(struct device *dev,
+					 const struct media_device_ops *ops)
 {
 	struct imx_media_dev *imxmd;
 	int ret;
@@ -31,7 +365,7 @@ struct imx_media_dev *imx_media_dev_init(struct device *dev)
 	dev_set_drvdata(dev, imxmd);
 
 	strscpy(imxmd->md.model, "imx-media", sizeof(imxmd->md.model));
-	imxmd->md.ops = &imx_media_md_ops;
+	imxmd->md.ops = ops ? ops : &imx_media_md_ops;
 	imxmd->md.dev = dev;
 
 	mutex_init(&imxmd->mutex);
@@ -65,7 +399,8 @@ struct imx_media_dev *imx_media_dev_init(struct device *dev)
 }
 EXPORT_SYMBOL_GPL(imx_media_dev_init);
 
-int imx_media_dev_notifier_register(struct imx_media_dev *imxmd)
+int imx_media_dev_notifier_register(struct imx_media_dev *imxmd,
+			    const struct v4l2_async_notifier_operations *ops)
 {
 	int ret;
 
@@ -76,7 +411,7 @@ int imx_media_dev_notifier_register(struct imx_media_dev *imxmd)
 	}
 
 	/* prepare the async subdev notifier and register it */
-	imxmd->notifier.ops = &imx_media_subdev_ops;
+	imxmd->notifier.ops = ops ? ops : &imx_media_notifier_ops;
 	ret = v4l2_async_notifier_register(&imxmd->v4l2_dev,
 					   &imxmd->notifier);
 	if (ret) {
diff --git a/drivers/staging/media/imx/imx-media-dev.c b/drivers/staging/media/imx/imx-media-dev.c
index 55181756a940..422afb31f4ca 100644
--- a/drivers/staging/media/imx/imx-media-dev.c
+++ b/drivers/staging/media/imx/imx-media-dev.c
@@ -1,29 +1,18 @@
 /*
  * V4L2 Media Controller Driver for Freescale i.MX5/6 SOC
  *
- * Copyright (c) 2016 Mentor Graphics Inc.
+ * Copyright (c) 2016-2019 Mentor Graphics Inc.
  *
  * This program is free software; you can redistribute it and/or modify
  * it under the terms of the GNU General Public License as published by
  * the Free Software Foundation; either version 2 of the License, or
  * (at your option) any later version.
  */
-#include <linux/delay.h>
 #include <linux/fs.h>
 #include <linux/module.h>
-#include <linux/of_graph.h>
-#include <linux/of_platform.h>
-#include <linux/pinctrl/consumer.h>
 #include <linux/platform_device.h>
-#include <linux/sched.h>
-#include <linux/slab.h>
-#include <linux/spinlock.h>
-#include <linux/timer.h>
-#include <media/v4l2-ctrls.h>
+#include <media/v4l2-async.h>
 #include <media/v4l2-event.h>
-#include <media/v4l2-ioctl.h>
-#include <media/v4l2-mc.h>
-#include <video/imx-ipu-v3.h>
 #include <media/imx.h>
 #include "imx-media.h"
 
@@ -33,9 +22,9 @@ static inline struct imx_media_dev *notifier2dev(struct v4l2_async_notifier *n)
 }
 
 /* async subdev bound notifier */
-int imx_media_subdev_bound(struct v4l2_async_notifier *notifier,
-			   struct v4l2_subdev *sd,
-			   struct v4l2_async_subdev *asd)
+static int imx_media_subdev_bound(struct v4l2_async_notifier *notifier,
+				  struct v4l2_subdev *sd,
+				  struct v4l2_async_subdev *asd)
 {
 	struct imx_media_dev *imxmd = notifier2dev(notifier);
 	int ret;
@@ -52,318 +41,11 @@ int imx_media_subdev_bound(struct v4l2_async_notifier *notifier,
 	return 0;
 }
 
-/*
- * Create the media links for all subdevs that registered.
- * Called after all async subdevs have bound.
- */
-static int imx_media_create_links(struct v4l2_async_notifier *notifier)
-{
-	struct imx_media_dev *imxmd = notifier2dev(notifier);
-	struct v4l2_subdev *sd;
-
-	list_for_each_entry(sd, &imxmd->v4l2_dev.subdevs, list) {
-		switch (sd->grp_id) {
-		case IMX_MEDIA_GRP_ID_IPU_VDIC:
-		case IMX_MEDIA_GRP_ID_IPU_IC_PRP:
-		case IMX_MEDIA_GRP_ID_IPU_IC_PRPENC:
-		case IMX_MEDIA_GRP_ID_IPU_IC_PRPVF:
-			/*
-			 * links have already been created for the
-			 * sync-registered subdevs.
-			 */
-			break;
-		case IMX_MEDIA_GRP_ID_IPU_CSI0:
-		case IMX_MEDIA_GRP_ID_IPU_CSI1:
-		case IMX_MEDIA_GRP_ID_CSI:
-			imx_media_create_csi_of_links(imxmd, sd);
-			break;
-		default:
-			/*
-			 * if this subdev has fwnode links, create media
-			 * links for them.
-			 */
-			imx_media_create_of_links(imxmd, sd);
-			break;
-		}
-	}
-
-	return 0;
-}
-
-/*
- * adds given video device to given imx-media source pad vdev list.
- * Continues upstream from the pad entity's sink pads.
- */
-static int imx_media_add_vdev_to_pad(struct imx_media_dev *imxmd,
-				     struct imx_media_video_dev *vdev,
-				     struct media_pad *srcpad)
-{
-	struct media_entity *entity = srcpad->entity;
-	struct imx_media_pad_vdev *pad_vdev;
-	struct list_head *pad_vdev_list;
-	struct media_link *link;
-	struct v4l2_subdev *sd;
-	int i, ret;
-
-	/* skip this entity if not a v4l2_subdev */
-	if (!is_media_entity_v4l2_subdev(entity))
-		return 0;
-
-	sd = media_entity_to_v4l2_subdev(entity);
-
-	pad_vdev_list = to_pad_vdev_list(sd, srcpad->index);
-	if (!pad_vdev_list) {
-		v4l2_warn(&imxmd->v4l2_dev, "%s:%u has no vdev list!\n",
-			  entity->name, srcpad->index);
-		/*
-		 * shouldn't happen, but no reason to fail driver load,
-		 * just skip this entity.
-		 */
-		return 0;
-	}
-
-	/* just return if we've been here before */
-	list_for_each_entry(pad_vdev, pad_vdev_list, list) {
-		if (pad_vdev->vdev == vdev)
-			return 0;
-	}
-
-	dev_dbg(imxmd->md.dev, "adding %s to pad %s:%u\n",
-		vdev->vfd->entity.name, entity->name, srcpad->index);
-
-	pad_vdev = devm_kzalloc(imxmd->md.dev, sizeof(*pad_vdev), GFP_KERNEL);
-	if (!pad_vdev)
-		return -ENOMEM;
-
-	/* attach this vdev to this pad */
-	pad_vdev->vdev = vdev;
-	list_add_tail(&pad_vdev->list, pad_vdev_list);
-
-	/* move upstream from this entity's sink pads */
-	for (i = 0; i < entity->num_pads; i++) {
-		struct media_pad *pad = &entity->pads[i];
-
-		if (!(pad->flags & MEDIA_PAD_FL_SINK))
-			continue;
-
-		list_for_each_entry(link, &entity->links, list) {
-			if (link->sink != pad)
-				continue;
-			ret = imx_media_add_vdev_to_pad(imxmd, vdev,
-							link->source);
-			if (ret)
-				return ret;
-		}
-	}
-
-	return 0;
-}
-
-/*
- * For every subdevice, allocate an array of list_head's, one list_head
- * for each pad, to hold the list of video devices reachable from that
- * pad.
- */
-static int imx_media_alloc_pad_vdev_lists(struct imx_media_dev *imxmd)
-{
-	struct list_head *vdev_lists;
-	struct media_entity *entity;
-	struct v4l2_subdev *sd;
-	int i;
-
-	list_for_each_entry(sd, &imxmd->v4l2_dev.subdevs, list) {
-		entity = &sd->entity;
-		vdev_lists = devm_kcalloc(imxmd->md.dev,
-					  entity->num_pads, sizeof(*vdev_lists),
-					  GFP_KERNEL);
-		if (!vdev_lists)
-			return -ENOMEM;
-
-		/* attach to the subdev's host private pointer */
-		sd->host_priv = vdev_lists;
-
-		for (i = 0; i < entity->num_pads; i++)
-			INIT_LIST_HEAD(to_pad_vdev_list(sd, i));
-	}
-
-	return 0;
-}
-
-/* form the vdev lists in all imx-media source pads */
-static int imx_media_create_pad_vdev_lists(struct imx_media_dev *imxmd)
-{
-	struct imx_media_video_dev *vdev;
-	struct media_link *link;
-	int ret;
-
-	ret = imx_media_alloc_pad_vdev_lists(imxmd);
-	if (ret)
-		return ret;
-
-	list_for_each_entry(vdev, &imxmd->vdev_list, list) {
-		link = list_first_entry(&vdev->vfd->entity.links,
-					struct media_link, list);
-		ret = imx_media_add_vdev_to_pad(imxmd, vdev, link->source);
-		if (ret)
-			return ret;
-	}
-
-	return 0;
-}
-
 /* async subdev complete notifier */
-int imx_media_probe_complete(struct v4l2_async_notifier *notifier)
-{
-	struct imx_media_dev *imxmd = notifier2dev(notifier);
-	int ret;
-
-	mutex_lock(&imxmd->mutex);
-
-	ret = imx_media_create_links(notifier);
-	if (ret)
-		goto unlock;
-
-	ret = imx_media_create_pad_vdev_lists(imxmd);
-	if (ret)
-		goto unlock;
-
-	ret = v4l2_device_register_subdev_nodes(&imxmd->v4l2_dev);
-unlock:
-	mutex_unlock(&imxmd->mutex);
-	if (ret)
-		return ret;
-
-	return media_device_register(&imxmd->md);
-}
-
-/*
- * adds controls to a video device from an entity subdevice.
- * Continues upstream from the entity's sink pads.
- */
-static int imx_media_inherit_controls(struct imx_media_dev *imxmd,
-				      struct video_device *vfd,
-				      struct media_entity *entity)
-{
-	int i, ret = 0;
-
-	if (is_media_entity_v4l2_subdev(entity)) {
-		struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(entity);
-
-		dev_dbg(imxmd->md.dev,
-			"adding controls to %s from %s\n",
-			vfd->entity.name, sd->entity.name);
-
-		ret = v4l2_ctrl_add_handler(vfd->ctrl_handler,
-					    sd->ctrl_handler,
-					    NULL, true);
-		if (ret)
-			return ret;
-	}
-
-	/* move upstream */
-	for (i = 0; i < entity->num_pads; i++) {
-		struct media_pad *pad, *spad = &entity->pads[i];
-
-		if (!(spad->flags & MEDIA_PAD_FL_SINK))
-			continue;
-
-		pad = media_entity_remote_pad(spad);
-		if (!pad || !is_media_entity_v4l2_subdev(pad->entity))
-			continue;
-
-		ret = imx_media_inherit_controls(imxmd, vfd, pad->entity);
-		if (ret)
-			break;
-	}
-
-	return ret;
-}
-
-int imx_media_link_notify(struct media_link *link, u32 flags,
-			  unsigned int notification)
-{
-	struct media_entity *source = link->source->entity;
-	struct imx_media_pad_vdev *pad_vdev;
-	struct list_head *pad_vdev_list;
-	struct imx_media_dev *imxmd;
-	struct video_device *vfd;
-	struct v4l2_subdev *sd;
-	int pad_idx, ret;
-
-	ret = v4l2_pipeline_link_notify(link, flags, notification);
-	if (ret)
-		return ret;
-
-	/* don't bother if source is not a subdev */
-	if (!is_media_entity_v4l2_subdev(source))
-		return 0;
-
-	sd = media_entity_to_v4l2_subdev(source);
-	pad_idx = link->source->index;
-
-	imxmd = dev_get_drvdata(sd->v4l2_dev->dev);
-
-	pad_vdev_list = to_pad_vdev_list(sd, pad_idx);
-	if (!pad_vdev_list) {
-		/* shouldn't happen, but no reason to fail link setup */
-		return 0;
-	}
-
-	/*
-	 * Before disabling a link, reset controls for all video
-	 * devices reachable from this link.
-	 *
-	 * After enabling a link, refresh controls for all video
-	 * devices reachable from this link.
-	 */
-	if (notification == MEDIA_DEV_NOTIFY_PRE_LINK_CH &&
-	    !(flags & MEDIA_LNK_FL_ENABLED)) {
-		list_for_each_entry(pad_vdev, pad_vdev_list, list) {
-			vfd = pad_vdev->vdev->vfd;
-			dev_dbg(imxmd->md.dev,
-				"reset controls for %s\n",
-				vfd->entity.name);
-			v4l2_ctrl_handler_free(vfd->ctrl_handler);
-			v4l2_ctrl_handler_init(vfd->ctrl_handler, 0);
-		}
-	} else if (notification == MEDIA_DEV_NOTIFY_POST_LINK_CH &&
-		   (link->flags & MEDIA_LNK_FL_ENABLED)) {
-		list_for_each_entry(pad_vdev, pad_vdev_list, list) {
-			vfd = pad_vdev->vdev->vfd;
-			dev_dbg(imxmd->md.dev,
-				"refresh controls for %s\n",
-				vfd->entity.name);
-			ret = imx_media_inherit_controls(imxmd, vfd,
-							 &vfd->entity);
-			if (ret)
-				break;
-		}
-	}
-
-	return ret;
-}
-
-void imx_media_notify(struct v4l2_subdev *sd, unsigned int notification,
-		      void *arg)
-{
-	struct media_entity *entity = &sd->entity;
-	int i;
-
-	if (notification != V4L2_DEVICE_NOTIFY_EVENT)
-		return;
-
-	for (i = 0; i < entity->num_pads; i++) {
-		struct media_pad *pad = &entity->pads[i];
-		struct imx_media_pad_vdev *pad_vdev;
-		struct list_head *pad_vdev_list;
-
-		pad_vdev_list = to_pad_vdev_list(sd, pad->index);
-		if (!pad_vdev_list)
-			continue;
-		list_for_each_entry(pad_vdev, pad_vdev_list, list)
-			v4l2_event_queue(pad_vdev->vdev->vfd, arg);
-	}
-}
+static const struct v4l2_async_notifier_operations imx_media_notifier_ops = {
+	.bound = imx_media_subdev_bound,
+	.complete = imx_media_probe_complete,
+};
 
 static int imx_media_probe(struct platform_device *pdev)
 {
@@ -372,7 +54,7 @@ static int imx_media_probe(struct platform_device *pdev)
 	struct imx_media_dev *imxmd;
 	int ret;
 
-	imxmd = imx_media_dev_init(dev);
+	imxmd = imx_media_dev_init(dev, NULL);
 	if (IS_ERR(imxmd))
 		return PTR_ERR(imxmd);
 
@@ -383,7 +65,7 @@ static int imx_media_probe(struct platform_device *pdev)
 		goto cleanup;
 	}
 
-	ret = imx_media_dev_notifier_register(imxmd);
+	ret = imx_media_dev_notifier_register(imxmd, &imx_media_notifier_ops);
 	if (ret)
 		goto cleanup;
 
diff --git a/drivers/staging/media/imx/imx-media-fim.c b/drivers/staging/media/imx/imx-media-fim.c
index 8cf773eef9da..6d283f4ea4d1 100644
--- a/drivers/staging/media/imx/imx-media-fim.c
+++ b/drivers/staging/media/imx/imx-media-fim.c
@@ -420,7 +420,6 @@ void imx_media_fim_eof_monitor(struct imx_media_fim *fim, ktime_t timestamp)
 
 	spin_unlock_irqrestore(&fim->lock, flags);
 }
-EXPORT_SYMBOL_GPL(imx_media_fim_eof_monitor);
 
 /* Called by the subdev in its s_stream callback */
 int imx_media_fim_set_stream(struct imx_media_fim *fim,
@@ -457,7 +456,6 @@ int imx_media_fim_set_stream(struct imx_media_fim *fim,
 	v4l2_ctrl_unlock(fim->ctrl[FIM_CL_ENABLE]);
 	return ret;
 }
-EXPORT_SYMBOL_GPL(imx_media_fim_set_stream);
 
 int imx_media_fim_add_controls(struct imx_media_fim *fim)
 {
@@ -465,7 +463,6 @@ int imx_media_fim_add_controls(struct imx_media_fim *fim)
 	return v4l2_ctrl_add_handler(fim->sd->ctrl_handler,
 				     &fim->ctrl_handler, NULL, false);
 }
-EXPORT_SYMBOL_GPL(imx_media_fim_add_controls);
 
 /* Called by the subdev in its subdev registered callback */
 struct imx_media_fim *imx_media_fim_init(struct v4l2_subdev *sd)
@@ -489,10 +486,8 @@ struct imx_media_fim *imx_media_fim_init(struct v4l2_subdev *sd)
 
 	return fim;
 }
-EXPORT_SYMBOL_GPL(imx_media_fim_init);
 
 void imx_media_fim_free(struct imx_media_fim *fim)
 {
 	v4l2_ctrl_handler_free(&fim->ctrl_handler);
 }
-EXPORT_SYMBOL_GPL(imx_media_fim_free);
diff --git a/drivers/staging/media/imx/imx-media-of.c b/drivers/staging/media/imx/imx-media-of.c
index b7034699391d..1b4b5a5aff38 100644
--- a/drivers/staging/media/imx/imx-media-of.c
+++ b/drivers/staging/media/imx/imx-media-of.c
@@ -77,6 +77,7 @@ int imx_media_add_of_subdevs(struct imx_media_dev *imxmd,
 	of_node_put(csi_np);
 	return ret;
 }
+EXPORT_SYMBOL_GPL(imx_media_add_of_subdevs);
 
 /*
  * Create a single media link to/from sd using a fwnode link.
@@ -146,6 +147,7 @@ int imx_media_create_of_links(struct imx_media_dev *imxmd,
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(imx_media_create_of_links);
 
 /*
  * Create media links to the given CSI subdevice's sink pads,
@@ -189,3 +191,4 @@ int imx_media_create_csi_of_links(struct imx_media_dev *imxmd,
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(imx_media_create_csi_of_links);
diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
index f928697b0491..c0e58d4f2dfb 100644
--- a/drivers/staging/media/imx/imx-media.h
+++ b/drivers/staging/media/imx/imx-media.h
@@ -217,18 +217,12 @@ int imx_media_pipeline_set_stream(struct imx_media_dev *imxmd,
 				  struct media_entity *entity,
 				  bool on);
 
-/* imx-media-dev.c */
-int imx_media_subdev_bound(struct v4l2_async_notifier *notifier,
-			   struct v4l2_subdev *sd,
-			   struct v4l2_async_subdev *asd);
-int imx_media_link_notify(struct media_link *link, u32 flags,
-			  unsigned int notification);
-void imx_media_notify(struct v4l2_subdev *sd, unsigned int notification,
-		      void *arg);
+/* imx-media-dev-common.c */
 int imx_media_probe_complete(struct v4l2_async_notifier *notifier);
-
-struct imx_media_dev *imx_media_dev_init(struct device *dev);
-int imx_media_dev_notifier_register(struct imx_media_dev *imxmd);
+struct imx_media_dev *imx_media_dev_init(struct device *dev,
+					 const struct media_device_ops *ops);
+int imx_media_dev_notifier_register(struct imx_media_dev *imxmd,
+			    const struct v4l2_async_notifier_operations *ops);
 
 /* imx-media-fim.c */
 struct imx_media_fim;
diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index 0ec4c57259f9..75514618d021 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -1241,7 +1241,7 @@ static int imx7_csi_probe(struct platform_device *pdev)
 	}
 
 	/* add media device */
-	imxmd = imx_media_dev_init(dev);
+	imxmd = imx_media_dev_init(dev, NULL);
 	if (IS_ERR(imxmd)) {
 		ret = PTR_ERR(imxmd);
 		goto destroy_mutex;
@@ -1252,7 +1252,7 @@ static int imx7_csi_probe(struct platform_device *pdev)
 	if (ret < 0 && ret != -ENODEV && ret != -EEXIST)
 		goto cleanup;
 
-	ret = imx_media_dev_notifier_register(imxmd);
+	ret = imx_media_dev_notifier_register(imxmd, NULL);
 	if (ret < 0)
 		goto cleanup;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
