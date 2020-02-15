Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B8F160049
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 20:44:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2+CxuIdp69Svnr3RHL2NPt9Dffa8op3FQWCuwPK0CXY=; b=lW8uCO4rmPZ62PA58NfYeOhebV
	i60sqy8SNbEOkLxTECxECp21KqXHv3PFy4YA+1UMMi+NJa2aI2u034mSUGYCiO9WtjlfjL4LSaK/C
	bCANuUPfJuSh32UVjUXt3W65rK6L+GJrFa/t9+o0HtZM+TKHJRoV/DdvmV4hG9WQxTUq70E4nXfzC
	cUP9ywem1JnLn1m0hLKBEEgA9uutTjdEtz9GhDGh0AGv2lrti/VVW40bgwB8zqyzyJgle1e4VnnrQ
	be6lz+ZqAwZi8fgBnJx4YYJAxKOQfEtPPwObmnvwfoeRsbX4Cq0B51tzPo2OlA1cy6KHRz3s6pQxf
	rsnxVCeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j33MC-0001Fj-J6; Sat, 15 Feb 2020 19:44:04 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j33Kl-0008Vl-5U
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 19:42:37 +0000
Received: by mail-pg1-x544.google.com with SMTP id w21so6901492pgl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Feb 2020 11:42:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ha1G3XO6Vb76DqwKYHrBrsy5rfHEKdgMuf1qeb5yKus=;
 b=Q4REyd3idXsfin5Vl+BX00/YFMs4hCR+L1l4RXoiLz5ZgfQjqJAQ9H/WYlB4kFFuUn
 2BeQ8QY0Xbo/AXVK6omCd2e8q2qM3Cf7RyjeCPn8Kp15Om5Loq757kfcG0ONVfrFKoYn
 X500fw4Ax9F2m4vpO2tnkg/tEeFSBPbInrWJL0siTj/b+oU6a69nJSvRG7wywi5TBf1K
 pa/1SBon8bHvTHbSxPS0PPHjECAALbiprnh983paW7opRn6p0DBqoDR8kBxgrbVNHI/r
 jF5I2qiraTuDyDa1lRgQiWVPPJR46f5SuX76CXRRP1tX1TtNNO2RZzCyDMlPpIr8ZX77
 4NYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ha1G3XO6Vb76DqwKYHrBrsy5rfHEKdgMuf1qeb5yKus=;
 b=T2XAvBgkBGETpaRSTkF7AhgNhHNZX6sLakFzkC8I0A7VDqEzRYfM373IMcvnCfZ7Tg
 6LtLUsPb+z+ct7Kf/REWsHMkT8xcsd4TP3FzOcDpfBO+QwxeW2pG/uX0pSqJKhvMq+3X
 n27zqKVknqIh75qLzMqW2w9TkfAvVB4905mJZfV6Q+H3amQm6crcuBnvOS18j648lQVQ
 DejM1yzb19Z4t6L2I+9++vOS4PWIVgxlo6sDmFxWg/5ek0r3mldnepeyBEfe2Bj9+DRX
 r95pCDrrCu7gwqZasIxR5GriCrwblA33TxJelbxW3JdVN0Y3y1E5L6s6zrJv4ED2AsGQ
 0Vqg==
X-Gm-Message-State: APjAAAXhsrjxWcTQFmrlBZoVIvif4PXKEmaa2CB82ijB/9WVBwINWkc5
 awS4O0Mr+ZVLnMAVZDpLs98=
X-Google-Smtp-Source: APXvYqyqh6I7hOUhflWBDDniEbao7BhGpMR39ofFTVzbTV6SmesNF6l10KxundtimLZ6vZIQ42CIyA==
X-Received: by 2002:a63:6383:: with SMTP id x125mr7728780pgb.409.1581795754064; 
 Sat, 15 Feb 2020 11:42:34 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id q4sm11802751pfl.175.2020.02.15.11.42.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 15 Feb 2020 11:42:33 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [RESEND PATCH v3 10/17] media: imx7-media-csi: Create media links in
 bound notifier
Date: Sat, 15 Feb 2020 11:41:29 -0800
Message-Id: <20200215194136.10131-11-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200215194136.10131-1-slongerbeam@gmail.com>
References: <20200215194136.10131-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_114235_215931_16C5EE9C 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
 open list <linux-kernel@vger.kernel.org>, Rui Miguel Silva <rmfrfs@gmail.com>,
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

Implement a notifier bound op to register media links from the remote
sub-device's source pad(s) to the CSI sink pad.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
Reviewed-by: Rui Miguel Silva <rmfrfs@gmail.com>
---
Changes in v3:
- call a local imx-media utility imx_media_create_fwnode_pad_link().
Changes in v2:
- Rename notifier_to_dev() to imx7_csi_notifier_to_dev() and remove
  unnecessary inline. Suggested by Rui Silva.
---
 drivers/staging/media/imx/imx7-media-csi.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index dc6d1a28fde7..cf9f675c53a3 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -196,6 +196,12 @@ struct imx7_csi {
 	struct completion last_eof_completion;
 };
 
+static struct imx7_csi *
+imx7_csi_notifier_to_dev(struct v4l2_async_notifier *n)
+{
+	return container_of(n, struct imx7_csi, notifier);
+}
+
 static u32 imx7_csi_reg_read(struct imx7_csi *csi, unsigned int offset)
 {
 	return readl(csi->regbase + offset);
@@ -1187,6 +1193,20 @@ static int imx7_csi_parse_endpoint(struct device *dev,
 	return fwnode_device_is_available(asd->match.fwnode) ? 0 : -EINVAL;
 }
 
+static int imx7_csi_notify_bound(struct v4l2_async_notifier *notifier,
+				 struct v4l2_subdev *sd,
+				 struct v4l2_async_subdev *asd)
+{
+	struct imx7_csi *csi = imx7_csi_notifier_to_dev(notifier);
+	struct media_pad *sink = &csi->sd.entity.pads[IMX7_CSI_PAD_SINK];
+
+	return imx_media_create_fwnode_pad_link(sd, sink);
+}
+
+static const struct v4l2_async_notifier_operations imx7_csi_notify_ops = {
+	.bound = imx7_csi_notify_bound,
+};
+
 static int imx7_csi_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -1269,6 +1289,8 @@ static int imx7_csi_probe(struct platform_device *pdev)
 
 	v4l2_async_notifier_init(&csi->notifier);
 
+	csi->notifier.ops = &imx7_csi_notify_ops;
+
 	ret = v4l2_async_register_fwnode_subdev(&csi->sd, &csi->notifier,
 						sizeof(struct v4l2_async_subdev),
 						NULL, 0,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
