Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B81816004F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 20:45:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kpun6+KyjxkCiqPhnCO4vygwcKNBxQt14SmNXBT47e0=; b=AN3P7ZF7dmvvkGLkFccrZdY8tw
	ipje7x7EDlSNNNFBSgTSAbx03XXtTbNLF47ISpO7L2BqtxAvUdjEWKzS+U/LebCWQWY6IgIqWGvu+
	FN0/NnpqYWv4/UTYoq+Ffa1f5BKBDj+YlWeDlea+g3XhvRsQG66NHm225gmVIbIiRgiJB7lbze3r7
	6mGVBtAg3K1CLp0gPxLz8FniVdV+WIgeZr5vzNkVJTdrxuoxhNjqWAd0kbPBJ6y2QQet5UnxrjEMv
	I8G2At4dO8+Om4Dzt7iz1NCIN/RXWE3KfrdBAkagaW7kRFAxcuCcSgZDdF14Hs7LP5cXPTKYukqAg
	PBrb4ObA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j33Nr-0003si-LE; Sat, 15 Feb 2020 19:45:47 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j33LJ-0000Y6-3Q
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 19:43:10 +0000
Received: by mail-pl1-x644.google.com with SMTP id e8so5135578plt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Feb 2020 11:43:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xWXrdZ90Rqh6QAAhxL2MMK6jyJVUDs2rWHZG2jR0834=;
 b=kkZaNiMCto9qboPG3KkfEyftLRjsCxbl8VSUXkTJe9GEcR1BQGxAyCQUN6xEN28bxj
 eAmsr9FJEhMlSJNyo1C6i1PTpvt61cE7ChxwwOjF3947YQZiTLOJ+1wwb9aiPJzEBxTU
 pFvupsyWt271rQ8iAW8UNOfUwaPumWatdBAlFagootQZ/anSpW/tTAaF5HpG24ndm5eR
 IxxgrUxOC6iMI5wVTVycFocSUEyYwlOWQ3ompnUuNLYx0Su30UfbKoJRox1ot0VS/iYw
 Z/nmhfIEhgIJX99NkoWppTkbQwjYVLs0uDRApAGBR184SuqxZk0hiY/eL2K3bIBogWiO
 EufQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xWXrdZ90Rqh6QAAhxL2MMK6jyJVUDs2rWHZG2jR0834=;
 b=hT94ZYiVFMA7yBFPhAJD7EW0LrEe6T/tSCkWWiqP68PtZAj9qRj8CasEDhogWt3Xbb
 mxijxQlqqC42TJqPas9CA0w+yppIJZZSSBYgLcRQcBGWpW2d8ZaISKkbPCBDO3OY7tw4
 7fzF9arM96ZC0JEE8G1y7lHbjZ9bvzdaxXlFAK6NmKdh3nZZ3HMh8hXoIyzCzlGA0u2c
 922HnY1A/ZV8lQwYVzBCM0t7h7szOY5gPaAXtM7BFLIKOIwmGGoqQnn0SCEbwBq32UNq
 24QIr07nHfsY8BcIOgrj7PdvrXrsuCQljIU2an9I/E1Oho6tSKcxGQfpOsBi3fTW728X
 l/ag==
X-Gm-Message-State: APjAAAVji8L4umtfWo6sLj7qM9x3t/lmL0UHBjp2uskif+wgD9a1/Mzx
 k/dPXjKthC/KeN/+piQ/CgY=
X-Google-Smtp-Source: APXvYqwzjKJzHTQI7d9t9TLy5kd0/CNhq95OAzyw4PDTakvup3633irweQWCqYwCy5uD7iB0l1GPVw==
X-Received: by 2002:a17:90a:608:: with SMTP id
 j8mr11070072pjj.85.1581795788407; 
 Sat, 15 Feb 2020 11:43:08 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id q4sm11802751pfl.175.2020.02.15.11.43.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 15 Feb 2020 11:43:07 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [RESEND PATCH v3 16/17] media: imx: silence a couple debug messages
Date: Sat, 15 Feb 2020 11:41:35 -0800
Message-Id: <20200215194136.10131-17-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200215194136.10131-1-slongerbeam@gmail.com>
References: <20200215194136.10131-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_114309_185555_227F987F 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

Convert to dev_dbg the "subdev bound" and IPU-internal media-link
creation messages.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-media-dev-common.c  | 4 +++-
 drivers/staging/media/imx/imx-media-dev.c         | 2 +-
 drivers/staging/media/imx/imx-media-internal-sd.c | 6 +++---
 3 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-dev-common.c b/drivers/staging/media/imx/imx-media-dev-common.c
index f7ad3cbbeec2..b23bbfab388a 100644
--- a/drivers/staging/media/imx/imx-media-dev-common.c
+++ b/drivers/staging/media/imx/imx-media-dev-common.c
@@ -24,7 +24,9 @@ static int imx_media_subdev_bound(struct v4l2_async_notifier *notifier,
 				  struct v4l2_subdev *sd,
 				  struct v4l2_async_subdev *asd)
 {
-	v4l2_info(sd->v4l2_dev, "subdev %s bound\n", sd->name);
+	struct imx_media_dev *imxmd = notifier2dev(notifier);
+
+	dev_dbg(imxmd->md.dev, "subdev %s bound\n", sd->name);
 
 	return 0;
 }
diff --git a/drivers/staging/media/imx/imx-media-dev.c b/drivers/staging/media/imx/imx-media-dev.c
index 2c3c2adca683..6d2205461e56 100644
--- a/drivers/staging/media/imx/imx-media-dev.c
+++ b/drivers/staging/media/imx/imx-media-dev.c
@@ -32,7 +32,7 @@ static int imx_media_subdev_bound(struct v4l2_async_notifier *notifier,
 			return ret;
 	}
 
-	v4l2_info(&imxmd->v4l2_dev, "subdev %s bound\n", sd->name);
+	dev_dbg(imxmd->md.dev, "subdev %s bound\n", sd->name);
 
 	return 0;
 }
diff --git a/drivers/staging/media/imx/imx-media-internal-sd.c b/drivers/staging/media/imx/imx-media-internal-sd.c
index d4237e1a4241..da4109b2fd13 100644
--- a/drivers/staging/media/imx/imx-media-internal-sd.c
+++ b/drivers/staging/media/imx/imx-media-internal-sd.c
@@ -142,9 +142,9 @@ static int create_internal_link(struct imx_media_dev *imxmd,
 				   &sink->entity.pads[link->remote_pad]))
 		return 0;
 
-	v4l2_info(&imxmd->v4l2_dev, "%s:%d -> %s:%d\n",
-		  src->name, link->local_pad,
-		  sink->name, link->remote_pad);
+	dev_dbg(imxmd->md.dev, "%s:%d -> %s:%d\n",
+		src->name, link->local_pad,
+		sink->name, link->remote_pad);
 
 	ret = media_create_pad_link(&src->entity, link->local_pad,
 				    &sink->entity, link->remote_pad, 0);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
