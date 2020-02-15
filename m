Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF23A16004A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 20:44:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p05784nLpmbjsgbuZ54mko7IN6d7kTXOSup4Tl7TiRs=; b=pkE0VnuRpz5fhhX7vmAQ/we3sF
	h7U9XEVRZHkm+fLQSMVMRz+luFFjjfLI8m/HOwFN0rOQ/wh/GQcISGqyOs6FiAejn9MMhkcJA8pNP
	xa2cLn/uCy+vm3f6cDvm28Q4B+6adt3uPbCKGqBunc5Hvc0jo5NBqLsijQrn+imvfjIpsJ/VXL4wf
	wbzkxs1Mku0nhosOSdIuUfAs9ngM951UwBQ62H5LLbcUxOJ1c1O3mZZADHWdsruG6n0gKf1YPa7fq
	YoPaEOPeh8xIxoCJFe+aMRJk+afVraXoevmTZhYaw2Kital4jaKSya9WhCfVnvcjDbcIeV+CgUQd4
	/mzmgr6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j33MT-0001U6-MS; Sat, 15 Feb 2020 19:44:21 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j33Kn-000076-Fo
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 19:42:39 +0000
Received: by mail-pl1-x641.google.com with SMTP id p11so5129465plq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Feb 2020 11:42:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=nw6qFQx6S/L6ma/0AlsKxKIDrQ4PZDVJaM1fr3Im7gQ=;
 b=k3GIXKvWft0N1NbpenDUFg5zblDqcbUwzZDit6j5Lnn/XVvhgo5upPEa6pf+6EAMEz
 Xt3hbI7ZN7uQ3ZpDboF8dsqWS8SmiaQmTx7VTEHl/ogj+jq5hURSLNGK4VHhyJZj/Qus
 +bYF9uSPWj7Z8BwAyKR14ry4FKmhnTxJnPRiFZM9Vq4XZLEY9Al273TDUbppvZnGanEN
 XgsTT3BtOW7qp0sc+wDR8OgJhZGQ16Af0TNYgqSPglzYcYGIUZbTkO3OohkZb/hBFwDh
 v72JbltSB5enu0WPMOhZW9Ko/dsfsGdL+Qu6goM7QvrgD4+O2up1IqK+TKGYEk2J8ha6
 rYcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=nw6qFQx6S/L6ma/0AlsKxKIDrQ4PZDVJaM1fr3Im7gQ=;
 b=tBusSIZBM35KoexIq3CTr3BiYHklpSZbjyNdxHNaX6Myb8Nd7pIbO2F/PW96RpcLP8
 3IISMwSiJxZ70qGuNGo+dmZSXqa5/5qwzlgMGyTT4m4OxZCaJWifnoK04PCMteRVIWBE
 Y1mZzjsHoM7SSVdDOh0Wnp9dnng84aCqpFVZpOTBDpvIEztPv6Idx9VPEV2j88CXkfOM
 SsBOCklNhCrv6Nfdr/2Hbeokq5tsUFZ5j4dKVnsLUoNmMII7vVrtDmQxFKq0mZ52Ff37
 lh1cGTOz5V4XwHr6r6fjVBP2BNzHPwpSz0KcUlVSDy5QWxeTqCXh3S6aEdkW24mJ5FnG
 Xr5g==
X-Gm-Message-State: APjAAAXBak/866vig7DRiD1BWajM/qLE3S4yh1QE793PQLuQOvnZGYXj
 BDn5pe7C8ES3ttW3DdJaMzk=
X-Google-Smtp-Source: APXvYqzkUXyKopzlHELwFuMNAOIllbGui1hUS/4slzE0JVfp8tA7A3yD2KKHvzv5nTeYgrIuLTwJ1w==
X-Received: by 2002:a17:902:5ace:: with SMTP id
 g14mr8946961plm.311.1581795756922; 
 Sat, 15 Feb 2020 11:42:36 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id q4sm11802751pfl.175.2020.02.15.11.42.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 15 Feb 2020 11:42:36 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [RESEND PATCH v3 11/17] media: imx: csi: Embed notifier in struct
 csi_priv
Date: Sat, 15 Feb 2020 11:41:30 -0800
Message-Id: <20200215194136.10131-12-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200215194136.10131-1-slongerbeam@gmail.com>
References: <20200215194136.10131-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_114237_604861_C143D25C 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

Embed the notifier in 'struct csi_priv', instead of dynamically allocating
it, to make it possible to retrieve csi_priv in a notifier callback op.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-media-csi.c | 25 +++++++++--------------
 1 file changed, 10 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index dc5fe25fe7b8..3e2afdd59276 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -58,6 +58,8 @@ struct csi_priv {
 	struct ipu_soc *ipu;
 	struct v4l2_subdev sd;
 	struct media_pad pad[CSI_NUM_PADS];
+	struct v4l2_async_notifier notifier;
+
 	/* the video device at IDMAC output pad */
 	struct imx_media_video_dev *vdev;
 	struct imx_media_fim *fim;
@@ -1896,31 +1898,28 @@ static int imx_csi_parse_endpoint(struct device *dev,
 
 static int imx_csi_async_register(struct csi_priv *priv)
 {
-	struct v4l2_async_notifier *notifier;
 	struct fwnode_handle *fwnode;
 	unsigned int port;
 	int ret;
 
-	notifier = kzalloc(sizeof(*notifier), GFP_KERNEL);
-	if (!notifier)
-		return -ENOMEM;
-
-	v4l2_async_notifier_init(notifier);
+	v4l2_async_notifier_init(&priv->notifier);
 
 	fwnode = dev_fwnode(priv->dev);
 
 	/* get this CSI's port id */
 	ret = fwnode_property_read_u32(fwnode, "reg", &port);
 	if (ret < 0)
-		goto out_free;
+		return ret;
 
 	ret = v4l2_async_notifier_parse_fwnode_endpoints_by_port(
-		priv->dev->parent, notifier, sizeof(struct v4l2_async_subdev),
+		priv->dev->parent, &priv->notifier,
+		sizeof(struct v4l2_async_subdev),
 		port, imx_csi_parse_endpoint);
 	if (ret < 0)
 		goto out_cleanup;
 
-	ret = v4l2_async_subdev_notifier_register(&priv->sd, notifier);
+	ret = v4l2_async_subdev_notifier_register(&priv->sd,
+						  &priv->notifier);
 	if (ret < 0)
 		goto out_cleanup;
 
@@ -1928,16 +1927,12 @@ static int imx_csi_async_register(struct csi_priv *priv)
 	if (ret < 0)
 		goto out_unregister;
 
-	priv->sd.subdev_notifier = notifier;
-
 	return 0;
 
 out_unregister:
-	v4l2_async_notifier_unregister(notifier);
+	v4l2_async_notifier_unregister(&priv->notifier);
 out_cleanup:
-	v4l2_async_notifier_cleanup(notifier);
-out_free:
-	kfree(notifier);
+	v4l2_async_notifier_cleanup(&priv->notifier);
 
 	return ret;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
