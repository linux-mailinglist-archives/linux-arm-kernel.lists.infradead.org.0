Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F29C15239C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 00:53:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kpun6+KyjxkCiqPhnCO4vygwcKNBxQt14SmNXBT47e0=; b=FcY7AdEHZN1FpGPd128zOAAxdF
	x+BuS6sn2T8lH5RHZUP+3+EIClbHAisYl6JsA3db3n2dXMdGKWUJL2h2CA2YuiHBQLd9sTH04Qh4l
	OGppstritN0PC4yBC0Um4PTHYYFwQteySv6ZSBVkQ4Gjw8mZLFqzI2jj1RNZrwz9b5UfaHnkcrljl
	x5sROtKe3Y9x6CqqxTNcnZNeSgLrwKQoBLlLwNpQa8CLtqHV13JHr6BaRkHN0F/wGTPhPjGAlx74L
	x9XA4Xs2B3kQaBLRvn+mtOkBNfsjZtzRndUZk9E6WgMAkL1kUjqsXBvCQrBXVhKOu+gnfQF0CQY9P
	tGXE4yKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz7zt-0000Fi-8Y; Tue, 04 Feb 2020 23:52:49 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz7xA-0004mD-Hd
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 23:50:05 +0000
Received: by mail-pg1-x542.google.com with SMTP id l3so6375309pgi.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 15:50:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xWXrdZ90Rqh6QAAhxL2MMK6jyJVUDs2rWHZG2jR0834=;
 b=aZ2fMSmBb8INC9ZjdjDJSoO0C6r2ipOGxG5/w6s1OfQxNQPj7y67obTSS3ojlGbFJr
 vewaFBh4+H8ns/He7PiAh/VUsUH23ucS08bWjKCtyC/nQygZuJWuEWCGqtPjCK4GYN86
 /Zv06iqJ4kngXnXIJCWHndx/cG6wn9Q1Wchyl9eTi7Wgc6ssAe6DGjw8zIYWTjygd/qs
 Q2Tfn9qFmRraWZd1PPhYq0elE7Q6/dO1J9H1nYVTuukq4STOvn6zinW/HYJfDy88Q3R/
 t+MP6SXodxP+/ont99CoBkSDnGlCOwrZfXZVg/ys0UJ53j/I2n7Ji/73zWJn5tPeOKkn
 lsug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xWXrdZ90Rqh6QAAhxL2MMK6jyJVUDs2rWHZG2jR0834=;
 b=Xy5YJf/ahbpnJidswD+pW271Ol7+jwg5Opk8i1oqiYudTxd9qHQR+DDzge5zp+pxk1
 +cEUgmtZIkjtpdhtk0E4M6P2MoY9I0yBA0hfn83ytHgAXuxkuguV+AZ7l99lHlVMPCHA
 1YhFowaWcyhm+IcrPALhdDCybO582CwN6qga33uQKgcRoiZgEFPVfq8UDaOmE+12Py2F
 jDP+owb0rVX+3LzF1vuTRqNPogpyYW41TmQHvdo0KuUOK2932PUMZ8wdxwqF6QySUCwq
 w8bhkCToW5SaIpdGkGFgJNbK2d9wAyHE9DT08s8OM0A9rrc2Y7Bli3zBMBIZzRdQZl4Z
 UqrA==
X-Gm-Message-State: APjAAAXjCUsW1he7n5ZKFDaWpJOGycgJ+GdmVSJ7N/gOXhh1dIePL3Fy
 egy9yPNsN27VVojL5Yxiir2lZgJB
X-Google-Smtp-Source: APXvYqw62ecVGd2VbnxIC4lzwBiEjvK/Wszd7w+Tuao9OgwOH+0hFr0GKvGsJghM30KoDwQa55wUSA==
X-Received: by 2002:a63:7c17:: with SMTP id x23mr14489000pgc.436.1580860198853; 
 Tue, 04 Feb 2020 15:49:58 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id u2sm24607929pgj.7.2020.02.04.15.49.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 15:49:58 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org, Rui Miguel Silva <rmfrfs@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 16/17] media: imx: silence a couple debug messages
Date: Tue,  4 Feb 2020 15:49:17 -0800
Message-Id: <20200204234918.20425-17-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200204234918.20425-1-slongerbeam@gmail.com>
References: <20200204234918.20425-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_155000_620138_CF77A30A 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [slongerbeam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
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
