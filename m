Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E5B82822
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 01:36:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qZDOWDqT0g6AcrZKX2kYQjCrVAOXi1clX/fmethhzuY=; b=Yw2aasygr+RIfbYCU5EoGgYeIt
	DPXL7odVPJnYgNf96Yq0EOtTHdWP60+rjhlq9svHIjHwMrBAOkWQj+tJMjl1MA3XrLoBILGGftrmQ
	y9Gatcm2hYfoTXdBk+G4Az0q5gr62hfmIOhWFOOj7oAmKrun0YVoSFPOiuX07pvD8XStk8m3lDcky
	xPnIVdxR+ARG3OOgg8u4fbAWU8E1NzuONekDIvnfs/Lwd8QTCyCMQTFjxe7OVb4hFqvbtS1VbDAEy
	TNyhbubWOIlJr0KT1/8XVZZye8m9LNde4MD09XW8HWdMGIV2t/wLDahOJp4s2Mkvun3p8mRxZbB9q
	eWWbgf7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1humWk-0005me-Io; Mon, 05 Aug 2019 23:36:30 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1humVo-0004sH-21
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 23:35:33 +0000
Received: by mail-pg1-x542.google.com with SMTP id x15so30169757pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 16:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Fbs1mFAvJTATM6fIvB9UCHmR0ykE58CEjMWw0CNcKVw=;
 b=J3zvZBPbrHmjS6LZta22eIsImAqYXiEzcBjlGvfa482lW8RjJx4Akc0Ae3QmAzH2GO
 h0LOzT6sPTs/PEl8B7wYP3VutzzoymShyzc7QKqD/z/fAxou3Ejno26qhQWzTw9ZbvoX
 s7CM7TZYWM4m8Mm10u8JGrDRrw1V21hEUkPPSbplPewwOJ2nAcvDkID94cqB8PC87Pb8
 vfxjBV11vQ5JhzuWPxQ/5hvbjhBvvhnci3txlljSsa0yTGdtVQksNsnCcfLM8pAgpluZ
 TwfQZi+2cQTMR9/zLZB2EAsHJaW1U7vUPTntLgrdSicwrUJKpr7z6mcPQ1RurdeOh4Wn
 2Ndg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Fbs1mFAvJTATM6fIvB9UCHmR0ykE58CEjMWw0CNcKVw=;
 b=M9mOMwYv/jKJ4k8kQWi4DWJAd04NYoc28gL/1PY2+TaaqTHr+pP4ky9EGKc44PiI1m
 Xpjzm1CmQfnSC4V1U1+Z/ILMEP7Go23nyn9/RYY4tULQgja413xjqaSLqyA3U+5+zC97
 F2NaD6Q/qUuE/9RA5MJqk8UNvkkWfA8mwRAaPjy+nFQv04i8xkiXTrSzL1TuKIBZvjqm
 dXKASOSJE1gN31Pc4z0IQNkJ27mwjBD6E+slmffElGL3xdr/daD3C33L8AGat5nDyT2K
 JMLcMnBoF9K236jlOlOagkkWeGm35pLw0CIr7iRPBfpNjOYeBsOHYGs9yS0pm9f/9VcW
 pGBg==
X-Gm-Message-State: APjAAAWIpf0ciWJrzt9nW2u3Jsg2+PNnA54V7UkVE1xFw4KugvNBJ717
 8O4Acn+ECXdLTAsWRdt7XeU=
X-Google-Smtp-Source: APXvYqxMcB13LsIEJrOTuGY/j/XtK9RITES5UnefU9LWRAVWxAW33EUR/o2Ph3AMnZGny6/J1lcIww==
X-Received: by 2002:a62:ce07:: with SMTP id y7mr548956pfg.12.1565048131431;
 Mon, 05 Aug 2019 16:35:31 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id 30sm31296349pjk.17.2019.08.05.16.35.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 16:35:30 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 14/22] media: imx7-mipi-csis: Create media links in bound
 notifier
Date: Mon,  5 Aug 2019 16:34:57 -0700
Message-Id: <20190805233505.21167-15-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190805233505.21167-1-slongerbeam@gmail.com>
References: <20190805233505.21167-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_163532_124985_F31DD25D 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

Implement a notifier bound op to register media links from the remote
sub-device's source pad(s) to the mipi csi-2 receiver sink pad.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx7-mipi-csis.c | 25 ++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index f71d9183cad2..e03b2317a1ac 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -259,6 +259,12 @@ struct csi_state {
 	bool sink_linked;
 };
 
+static inline struct csi_state *
+notifier_to_csis_state(struct v4l2_async_notifier *n)
+{
+	return container_of(n, struct csi_state, notifier);
+}
+
 struct csis_pix_format {
 	unsigned int pix_width_alignment;
 	u32 code;
@@ -863,6 +869,23 @@ static int mipi_csis_parse_endpoint(struct device *dev,
 	return 0;
 }
 
+static int mipi_csis_notify_bound(struct v4l2_async_notifier *notifier,
+				  struct v4l2_subdev *sd,
+				  struct v4l2_async_subdev *asd)
+{
+	struct csi_state *state = notifier_to_csis_state(notifier);
+	struct media_pad *sink = &state->mipi_sd.entity.pads[CSIS_PAD_SINK];
+
+	return media_create_fwnode_pad_links(sink,
+					     dev_fwnode(state->mipi_sd.dev),
+					     &sd->entity,
+					     dev_fwnode(sd->dev), 0);
+}
+
+static const struct v4l2_async_notifier_operations mipi_csis_notify_ops = {
+	.bound = mipi_csis_notify_bound,
+};
+
 static int mipi_csis_subdev_init(struct v4l2_subdev *mipi_sd,
 				 struct platform_device *pdev,
 				 const struct v4l2_subdev_ops *ops)
@@ -895,6 +918,8 @@ static int mipi_csis_subdev_init(struct v4l2_subdev *mipi_sd,
 
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
