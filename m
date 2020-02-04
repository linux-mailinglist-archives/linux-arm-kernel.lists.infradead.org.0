Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8C215239A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 00:52:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qkk0dfmLAfkly0kZOyylwC5yu6h1IZvQ2YZYrpCe43g=; b=R/tdddFl2JSSfBdnz6EuNqUzDu
	Q7rY9fPjOKeDmmNdsobPI7s0vmn1ylM1z2y30l8Kml8QBI02VwXdb3ndIwqoE6GFGdlHlBgZ6XIry
	mvqwLYNixcEHVlOQQtw882+EJPfUbLm6hqUha5mjkqCYEPsxZ8a76EG/yKrDrNkNho6R/N7hRahiU
	ORT9GUU03Ct+xGIN4TX63wuZoPXYIu+61uJH5yBNR2OcfoW/K6Iu++Hf76IaPvNm4C9K/0q1JOYm5
	1iZyyaenr0AXlduwcfCfk8rh8NgH106jJUz43tOXO9ao7lfF1Mt/9o7GSteYbBmFFtGQOaP66RnPF
	51vOIqfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz7zV-0008Fc-Hg; Tue, 04 Feb 2020 23:52:25 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz7x7-0004dk-PL
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 23:49:59 +0000
Received: by mail-pg1-x541.google.com with SMTP id g3so4768634pgs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 15:49:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WaBGbAVLvbw1Oa8PBijA4rVNFNBvvrFDnIgEYRds3L8=;
 b=mNmZy7R7sQunr/esl0X7WuD/YOJo3oXWxaM/3fWtqDaXMU3tA9oX7QpNB7L4WidlZN
 +0FhiBowT1jvElbnHRqgGrwPJslvNHKFlOxLIYgVKADNM/DLj9EVLyJKAxRSkrN2eoVX
 +VHxwPTpyQ3sxjsa7GNJp69XguyefpuqpxO9o1JVFfdKdevURPuboIluRlx+LVz6tOvw
 1gJrULMLL3f0l435h35yYSu9MMc0rDFcWgCx1W+bs8Vn2JXjhCVn3Kyt4guYO1WDMl07
 t6NUmqBpb1HOS8/HzuYODmWSMGIX0dReYtzHzhC8qOSWtTAemf0mNu2uistyoFL6widC
 RXOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WaBGbAVLvbw1Oa8PBijA4rVNFNBvvrFDnIgEYRds3L8=;
 b=hLxPP1XbApFAtOyUD855y0lV6QNo0oL/dp+LaN0zw6xxUWjpZgrTkputEXwR9ssd5Q
 mbnC3QsDEvlbqZcFBwKszDYZ/dIZGMRKdjsHQGsiKR5ZLXpKeSN7AENh1Q7W6X/dW4Zw
 5TIKCfBJqNbAuCghm8TkHfcGtFRASD64Uts6fs+f4EFalXn7B3Vim1Ycw2k5aiGcMw1f
 meUyYOBpMewK1vVfKGzZNxHCof7834fYHydW8dgt5gb9DYfNIRtws52fIPf7z96oJf/Q
 g1iR96YYC0OkVn8xwXybyy5yU9d863A23Mg516ENhtqQ2qiujIAcxPZdUTvWPCSjUfZV
 qdgQ==
X-Gm-Message-State: APjAAAUV5miqC/6f59VUJlaGc7UIRJUDtrSt59l8SfPEnsDIk/RZm+fU
 +uZSwdvyg9V4NzVDL/NURy4=
X-Google-Smtp-Source: APXvYqygTNtxMuKauV7T3oKQAYlxYOiFZwSb0Z9tzIiXotDDLSjz0Ow+4RbPSU47FigltJmiEujr5Q==
X-Received: by 2002:a62:878a:: with SMTP id i132mr23451540pfe.8.1580860193128; 
 Tue, 04 Feb 2020 15:49:53 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id u2sm24607929pgj.7.2020.02.04.15.49.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 15:49:52 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org, Rui Miguel Silva <rmfrfs@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 12/17] media: imx: csi: Add missing notifier
 unregister/cleanup
Date: Tue,  4 Feb 2020 15:49:13 -0800
Message-Id: <20200204234918.20425-13-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200204234918.20425-1-slongerbeam@gmail.com>
References: <20200204234918.20425-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_154957_833228_07162FD7 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the missing calls to unregister and cleanup the subdev notifier in
imx_csi_remove().

Fixes: c893500a16baf ("media: imx: csi: Register a subdev notifier")
Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-media-csi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index 3e2afdd59276..bea6a70cc353 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -2030,6 +2030,8 @@ static int imx_csi_remove(struct platform_device *pdev)
 
 	v4l2_ctrl_handler_free(&priv->ctrl_hdlr);
 	mutex_destroy(&priv->lock);
+	v4l2_async_notifier_unregister(&priv->notifier);
+	v4l2_async_notifier_cleanup(&priv->notifier);
 	v4l2_async_unregister_subdev(sd);
 	media_entity_cleanup(&sd->entity);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
