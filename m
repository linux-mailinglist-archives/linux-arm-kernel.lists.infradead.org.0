Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 569E5160048
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 20:43:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lhfV2+rRn5LPYHccLTguHyLWtxu8uz1AgoxeGT+zX6Y=; b=coZU1essDU+WEc5eLj/xrImfdP
	HwEkV4IRnXz+iFkhWvtXUOx+1L9NswrmFrP1TfeNl4ezm+fIB9jWhRGbIxjBmyptawA+8L+L13TnZ
	EAMpXOen6yGrrlDlQSIobMkcGY1JA9EdSiyHsjSENckkvCOXrhf3iosvPBVUssZx4pPNNQWhmSufg
	18bAaZn6cx0hAIkw28rU2QbRpKtDBn7jBA9Og4CGfmUblHIrld4qfGJkhPAmNj9uvky886dFDWMBm
	A7crEUxF3qxji642nm2VFdjkpymzoo9qDjox1rom3wk6Kuj/xHN3gOoWGrTjqOdqeGkbSsxsVJIJE
	orwiMAsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j33Lu-0000uM-SN; Sat, 15 Feb 2020 19:43:46 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j33Kf-0008QK-BI
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 19:42:32 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ep11so5449996pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Feb 2020 11:42:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=h5BHRotCYsy0a67S2KVH1ySLbRo1QXYTOC5G0a45OSw=;
 b=cDI2dL7L941I9EiBEqWio76ng5wQHc1eCoS2tIQD5FdSipYFf19P+kO/DdGqvns1JD
 HE1md4Eken3gfmAMPbyb9ZfOsj2CG/iAiseAnugqloC6Dfe0t8i3bw28yitlOy1hHTy1
 PiXZEHvHndVAmC/FCCmGIFKuYZPexA5d9CSEpNKT1otpeFJIt+iu3AwkF+ew0wa9OwB6
 mk/FWb45B9on2z1xlKgZu2RBKsugZiDyXRrTm9xCOTWtgi4CR3iLvKLWs2Xd7jQxHFBf
 jsG3ApuD/ufXBMqYddYE2K76cm+CfroMPQsIjn/w+/6uU5m7W/tzKu7rxAmfN8z596P3
 hqHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=h5BHRotCYsy0a67S2KVH1ySLbRo1QXYTOC5G0a45OSw=;
 b=ikXVgKX+GuUIcgYXz1vqh9ySDWIXC9cRJwTCDEUUcuk9NBXlmqQc75kHcoLpa3BU9P
 MND/2XuF+tqK4xhWD35+KfKkJSMxlc8Pi+WgVzFZBHAYzrtCIk7HVlfEteneoESx3hUP
 lVQdNTkZHcgK8SR4rVrA6cuu73l/2dtgaS70p+kYmHbioq8/GgkQYe2l+42txqB4aUTu
 fsL6xrpUf+fRGYbNrRKezDsrxfDy5VY+2clb5chubyHyhy+hL9JX99fz2g2VSrIU7HW1
 TTgcbbFPqeEZq9cq3td5Z5YeAnqGUzos5pXzz0PBW+KvpTnjMQ4+qhSPeu5efy3eo7J+
 RJGg==
X-Gm-Message-State: APjAAAXFW3wbdbNTqXSB7ICBbzsxym+Mub2oY0S0E+NiCnazZOu29Eip
 dE1wGoPqBdXDdLbefFS+JX8=
X-Google-Smtp-Source: APXvYqy5FL814cSRx0y6uCQP7K0Wqd4IttStBHjm/I6g0MD5BOw9JE2lyKE1OervxSBUBNXty2JpVw==
X-Received: by 2002:a17:90a:1e63:: with SMTP id
 w90mr10933872pjw.36.1581795747794; 
 Sat, 15 Feb 2020 11:42:27 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id q4sm11802751pfl.175.2020.02.15.11.42.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 15 Feb 2020 11:42:27 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [RESEND PATCH v3 09/17] media: imx7-mipi-csis: Create media links in
 bound notifier
Date: Sat, 15 Feb 2020 11:41:28 -0800
Message-Id: <20200215194136.10131-10-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200215194136.10131-1-slongerbeam@gmail.com>
References: <20200215194136.10131-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_114229_398936_EBD7C7AB 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 open list <linux-kernel@vger.kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 Rui Miguel Silva <rmfrfs@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Implement a notifier bound op to register media links from the remote
sub-device's source pad(s) to the mipi csi-2 receiver sink pad.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
Changes in v3:
- call a local imx-media utility imx_media_create_fwnode_pad_link().
Changes in v2:
- Move notifier_to_csis_state() next to mipi_sd_to_csis_state(), remove
  unnecessary inline, and rename to mipi_notifier_to_csis_state().
  Suggested by Rui Silva.
---
 drivers/staging/media/imx/imx7-mipi-csis.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index 4c54456318ea..d3a83577efed 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -317,6 +317,12 @@ static int mipi_csis_dump_regs(struct csi_state *state)
 	return 0;
 }
 
+static struct csi_state *
+mipi_notifier_to_csis_state(struct v4l2_async_notifier *n)
+{
+	return container_of(n, struct csi_state, notifier);
+}
+
 static struct csi_state *mipi_sd_to_csis_state(struct v4l2_subdev *sdev)
 {
 	return container_of(sdev, struct csi_state, mipi_sd);
@@ -848,6 +854,20 @@ static int mipi_csis_parse_endpoint(struct device *dev,
 	return 0;
 }
 
+static int mipi_csis_notify_bound(struct v4l2_async_notifier *notifier,
+				  struct v4l2_subdev *sd,
+				  struct v4l2_async_subdev *asd)
+{
+	struct csi_state *state = mipi_notifier_to_csis_state(notifier);
+	struct media_pad *sink = &state->mipi_sd.entity.pads[CSIS_PAD_SINK];
+
+	return imx_media_create_fwnode_pad_link(sd, sink);
+}
+
+static const struct v4l2_async_notifier_operations mipi_csis_notify_ops = {
+	.bound = mipi_csis_notify_bound,
+};
+
 static int mipi_csis_subdev_init(struct v4l2_subdev *mipi_sd,
 				 struct platform_device *pdev,
 				 const struct v4l2_subdev_ops *ops)
@@ -886,6 +906,8 @@ static int mipi_csis_subdev_init(struct v4l2_subdev *mipi_sd,
 
 	v4l2_async_notifier_init(&state->notifier);
 
+	state->notifier.ops = &mipi_csis_notify_ops;
+
 	ret = v4l2_async_register_fwnode_subdev(mipi_sd, &state->notifier,
 						sizeof(struct v4l2_async_subdev),
 						&sink_port, 1,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
