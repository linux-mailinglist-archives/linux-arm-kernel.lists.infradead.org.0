Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC62F160045
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 20:43:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kwfQqzsWMo1wFfkPI4eT9FUmdNZNLMrac8mQoSI7IHg=; b=Nv0OoUpHGu0xTo8/88J8Xroe8R
	2l/9UQXWEOsAVQJqvl1BN9Bs8aHrdmGw2HqMYWfW03kBGWFHj2Ji38HLavF5Np5vi0RNu0a1TLDbR
	lK8AOt0bvPbxaGcWKN7NE+6OlJIxgD/F6m+wqRaJ0kpiv38vUTvGjWvlEbG7QWhc5CnITEzlEOaMr
	lmqM/yVVE0SiHl9VYe7LxNYIdN1KmMfvo9n0xid37lpdsZ0jbncWFJ2WHNf7AU7Y8RyOmXM74LIVf
	yVTQvX51IbZ6jcR02Fxmk6OzhFBZUj1ks5e7Ph9lh2yjFYJ8iCySqPLX0KaaprfAibka8r+LidYSO
	NXkkVRMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j33LQ-0000Qi-Cb; Sat, 15 Feb 2020 19:43:16 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j33KT-0008Cb-OJ
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 19:42:19 +0000
Received: by mail-pg1-x542.google.com with SMTP id g3so6773630pgs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Feb 2020 11:42:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tRajCHkCPnS+6BeYHw+Smokn34AQmfROoq0aYGtX0Dg=;
 b=oARk1DaO3noUsR+qW+pygvrVgG/23PEzrIqLPjadMvcQ9Q5g4UabNbOKwPjarZkhzV
 aqBH5nKan0vW4DQ21C6xvwaS2tB57CuzPbwe1gd+F1wWX1PaLB3mxRVnK8lP7KLdRVGB
 uFsbStRfOSCKi/fLWY5St+NQKNPTVcQ3eGq96LLAdSbLc/BfFpPzagjKRgN1wwsQ846k
 eNW7KmUUIoHQaKw+YzpC4B/JbrHqo55V7jZrWvOndVZuIs0MF0Bi6LqmQjrvhCMwaT+5
 +vMe/QWdX094PXrVOqYz/PZCTOaV1SN93Rubd1YhFC2DVFbsCeb7+VGPrwRTADMogOJx
 y2Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tRajCHkCPnS+6BeYHw+Smokn34AQmfROoq0aYGtX0Dg=;
 b=ZA49+VpVmchvhS1HXECodSG+suF8UcwU+OEuW1xqC9A1aAFio/24UmpIxUDlhyawyp
 8aBV+KkfAw2RQhcjUGi7bcf9VR3cj8GiTHUNIAfNAkYIeKmmF3db3onxYs9WIr4K6dUu
 Nu8CH+hP+sy0axUT9SgDd9wbgDRMXHgqmeY2Dg5RusaKSrCrWBcg/TATSmSsddYxlH8r
 HzOS59mfj4/Vdz8CKpVVk856K+1TxM9fSA0tG1DnUBAemSc/tNRE88Thv2OO4PT48yyg
 M6//JmtJwTsPtFk9i8paQyR9sD5NhPGQh9+EL3aY/kaLHIHgspktNZIk9VtzsqS7oN7R
 ZMNg==
X-Gm-Message-State: APjAAAWmYLdJTFRAhjKBDHpcinhy/96qU6bOnVD7DvbY2Uk+i5q+iO9J
 nzChzNU0HBwXtptWAgAsCAk=
X-Google-Smtp-Source: APXvYqxB+c5KEwcaiWWabRC0Hpows19EuwyJhN0LkZcyzvyObroaOVztlQMSEcc4Sm0hCPvq/m/H5A==
X-Received: by 2002:aa7:8755:: with SMTP id g21mr9501097pfo.36.1581795736519; 
 Sat, 15 Feb 2020 11:42:16 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id q4sm11802751pfl.175.2020.02.15.11.42.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 15 Feb 2020 11:42:16 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [RESEND PATCH v3 06/17] media: imx: Add
 imx_media_create_fwnode_pad_link()
Date: Sat, 15 Feb 2020 11:41:25 -0800
Message-Id: <20200215194136.10131-7-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200215194136.10131-1-slongerbeam@gmail.com>
References: <20200215194136.10131-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_114217_829087_2376D1E6 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [slongerbeam[at]gmail.com]
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
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
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

Add functions to create media links between a source and sink subdevice
based on fwnode endpoint connections between them.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-media-utils.c | 91 +++++++++++++++++++++
 drivers/staging/media/imx/imx-media.h       |  4 +
 2 files changed, 95 insertions(+)

diff --git a/drivers/staging/media/imx/imx-media-utils.c b/drivers/staging/media/imx/imx-media-utils.c
index 0788a1874557..87152bd9af22 100644
--- a/drivers/staging/media/imx/imx-media-utils.c
+++ b/drivers/staging/media/imx/imx-media-utils.c
@@ -729,6 +729,97 @@ void imx_media_grp_id_to_sd_name(char *sd_name, int sz, u32 grp_id, int ipu_id)
 }
 EXPORT_SYMBOL_GPL(imx_media_grp_id_to_sd_name);
 
+/*
+ * Look for and create a single fwnode link that connects a source
+ * subdevice to a sink pad.
+ */
+int imx_media_create_fwnode_pad_link(struct v4l2_subdev *src_sd,
+				     struct media_pad *sink)
+{
+	struct fwnode_handle *endpoint;
+
+	/* loop thru the source's fwnode endpoints */
+	fwnode_graph_for_each_endpoint(dev_fwnode(src_sd->dev), endpoint) {
+		struct fwnode_handle *remote_ep;
+		int src_idx, sink_idx, ret;
+		struct media_pad *src;
+
+		remote_ep = fwnode_graph_get_remote_endpoint(endpoint);
+		if (!remote_ep)
+			continue;
+
+		/*
+		 * ask the sink entity to verify that this fwnode link
+		 * actually does connect with the entity, and if so that
+		 * it connects to its requested sink pad.
+		 */
+		sink_idx = media_entity_get_fwnode_pad(sink->entity,
+						       remote_ep,
+						       MEDIA_PAD_FL_SINK);
+		fwnode_handle_put(remote_ep);
+
+		if (sink_idx < 0 || sink_idx != sink->index)
+			continue;
+
+		src_idx = media_entity_get_fwnode_pad(&src_sd->entity,
+						      endpoint,
+						      MEDIA_PAD_FL_SOURCE);
+		if (src_idx < 0)
+			continue;
+
+		/*
+		 * found the fwnode link that works, create the media
+		 * link for it.
+		 */
+
+		fwnode_handle_put(endpoint);
+
+		src = &src_sd->entity.pads[src_idx];
+
+		/* success if it already exists */
+		if (media_entity_find_link(src, sink))
+			return 0;
+
+		dev_dbg(src_sd->dev, "%s:%d -> %s:%d\n",
+			src_sd->entity.name, src_idx,
+			sink->entity->name, sink_idx);
+
+		ret = media_create_pad_link(&src_sd->entity, src_idx,
+					    sink->entity, sink_idx, 0);
+		if (ret)
+			dev_err(src_sd->dev,
+				"%s:%d -> %s:%d failed with %d\n",
+				src_sd->entity.name, src_idx,
+				sink->entity->name, sink_idx, ret);
+
+		return ret;
+	}
+
+	return -ENXIO;
+}
+EXPORT_SYMBOL_GPL(imx_media_create_fwnode_pad_link);
+
+int imx_media_create_fwnode_pad_links(struct v4l2_subdev *src_sd,
+				      struct v4l2_subdev *sink_sd)
+{
+	int i;
+
+	for (i = 0; i < sink_sd->entity.num_pads; i++) {
+		struct media_pad *pad = &sink_sd->entity.pads[i];
+		int ret;
+
+		if (!(pad->flags & MEDIA_PAD_FL_SINK))
+			continue;
+
+		ret = imx_media_create_fwnode_pad_link(src_sd, pad);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(imx_media_create_fwnode_pad_links);
+
 struct v4l2_subdev *
 imx_media_find_subdev_by_fwnode(struct imx_media_dev *imxmd,
 				struct fwnode_handle *fwnode)
diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
index 11861191324a..f90a65ba4ced 100644
--- a/drivers/staging/media/imx/imx-media.h
+++ b/drivers/staging/media/imx/imx-media.h
@@ -183,6 +183,10 @@ int imx_media_ipu_image_to_mbus_fmt(struct v4l2_mbus_framefmt *mbus,
 				    struct ipu_image *image);
 void imx_media_grp_id_to_sd_name(char *sd_name, int sz,
 				 u32 grp_id, int ipu_id);
+int imx_media_create_fwnode_pad_link(struct v4l2_subdev *src_sd,
+				     struct media_pad *sink);
+int imx_media_create_fwnode_pad_links(struct v4l2_subdev *src_sd,
+				      struct v4l2_subdev *sink_sd);
 struct v4l2_subdev *
 imx_media_find_subdev_by_fwnode(struct imx_media_dev *imxmd,
 				struct fwnode_handle *fwnode);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
