Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB9D8280A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 01:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ROX30fun0ctB9+xu7/VGW/iLWeBnVy/8WQIU53rpxLM=; b=juxIgOCxn9K95qGdqHUaJL0ZnZ
	RVn0WH4w5+fHB+uwTS+p+tq9ZefdDVYiQZQOCF/J9ylPCOCieOeMDAAnSg0CYchZsYOzRhjQcAwL6
	nIFud/pIPR/5maBsAUeS4cYmPloUsWq36FlL01Jek3znT8mqYiDe7deYJsIM8+TpGdKuOh6Azmppn
	GsKfGwYFpfLey8XPVAG3eHewAmJEqXXe4NM4F7HnAp6KsDrGgRL6A/0hyWMRfv4XxOWy4hvzkLHLv
	fY/VJCt07b171gqHRWY621TcJ5li3yZfnBp1lDLhBqnO/8nksn411Dh23guCCWiV/corYI3FS9y2g
	axu5lkLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1humW8-0004wh-HO; Mon, 05 Aug 2019 23:35:52 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1humVg-0004hi-TB
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 23:35:26 +0000
Received: by mail-pg1-x544.google.com with SMTP id w10so40516578pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 16:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=sLSukBr2Dr/fkgKqS432Drjpjtgmp1YtkMGvOGWg9/A=;
 b=ssmMvt5WCl/uRVDnSNPt4nSuNoE1M3ZRy31D9o4qEeDpQBL314Lb5MhF1Y88I5QXwd
 +76WDYgBLRNqZn+i0gu8M+NaYA6MGYuQmuGzkKDhOrQtN51oZcn9hIVzZacRJRdTVLY6
 3Au6tNwHcx3LkgmIZJCqdTV2lCmGLjNNKfybzQgH7yoHFPKuo3lUhiOSSRgKrN0JngKn
 xVviFCYLs1IopioWs6AX5zvksXZexNZsp1H03p/Wsytz5o6PJmDztvm1FcPBD/0EcUiY
 n+Imbga638jsSiV8ZM4Z+qSDJ2MdYwK64CbIyPbDuBC/+gzfKTziJMwDLGcwc7hYTnKS
 k7bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=sLSukBr2Dr/fkgKqS432Drjpjtgmp1YtkMGvOGWg9/A=;
 b=dFAxUGeLRTnSlCfWB/DByn55GXrPxXTNZ0cKG5pU8muOxcfDCjvW+4zSg/A01iX9lp
 0ViBa2BujARGljU+J7FUi15lVLw9Bgj1uR8/eXi0hSSvv7KUrVjBA5e+4TrXVXK1Zkrg
 bjr29UUlbfBsq2Hr+Ul3rYVnxRQmfLOONVHDX/hQFPWwUJzbVg2muKy5vY1/6SZJITYJ
 VsUFo68NI24/NcR2OpiWPVUpqaf0CxysZ3gM27XtuMmoJN0LrMDZ4GUI3MfFOLxt6V4F
 pw+qTZC0CNpobyU5KSoOA9A/sQyKlVLHMK4kTG7JS2rhudghii80RwR+tz3AKpBmWKkD
 S4zg==
X-Gm-Message-State: APjAAAVGB7Cam4I77IEZz1+uXeMAexz9fs7QupEWVjBs6SKSivIkzZXj
 fr1Qq8TFGTv0oyKp5+UEw64=
X-Google-Smtp-Source: APXvYqxdrgMTw3ampNtYtP76n+DzZeeu18uPjTa9aAYoc3tHW8eoeyXU0JU2dmiZHiOit2WQTYQmlA==
X-Received: by 2002:a63:4404:: with SMTP id r4mr311426pga.245.1565048124005;
 Mon, 05 Aug 2019 16:35:24 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id 30sm31296349pjk.17.2019.08.05.16.35.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 16:35:23 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 09/22] media: sun6i: Fix fwnode media link creation
Date: Mon,  5 Aug 2019 16:34:52 -0700
Message-Id: <20190805233505.21167-10-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190805233505.21167-1-slongerbeam@gmail.com>
References: <20190805233505.21167-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_163524_947963_BD0ECC0F 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 open list <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Yong Deng <yong.deng@magewell.com>, Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

sun6i_csi_link_entity() passes the bound subdev's sd->fwnode to
media_entity_get_fwnode_pad(). This is likely not an endpoint
fwnode as required by media_entity_get_fwnode_pad(), for most
subdevices it is the port parent of endpoint fwnode(s). This has only
worked before because no entities have implemented the .get_fwnode_pad()
op yet, and the default behavior of media_entity_get_fwnode_pad()
was to ignore the passed fwnode and return the first pad that matches
the given direction flags.

Fix this by replacing the calls to media_entity_get_fwnode_pad() and
media_create_pad_link() with a call to media_create_fwnode_pad_links().

Fixes: 5cc7522d89655 ("media: sun6i: Add support for Allwinner CSI V3s")

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 .../platform/sunxi/sun6i-csi/sun6i_csi.c      | 36 +++----------------
 1 file changed, 5 insertions(+), 31 deletions(-)

diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
index 6e0e894154f4..9cf726b5c25a 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
@@ -630,37 +630,11 @@ static int sun6i_csi_link_entity(struct sun6i_csi *csi,
 				 struct media_entity *entity,
 				 struct fwnode_handle *fwnode)
 {
-	struct media_entity *sink;
-	struct media_pad *sink_pad;
-	int src_pad_index;
-	int ret;
-
-	ret = media_entity_get_fwnode_pad(entity, fwnode, MEDIA_PAD_FL_SOURCE);
-	if (ret < 0) {
-		dev_err(csi->dev, "%s: no source pad in external entity %s\n",
-			__func__, entity->name);
-		return -EINVAL;
-	}
-
-	src_pad_index = ret;
-
-	sink = &csi->video.vdev.entity;
-	sink_pad = &csi->video.pad;
-
-	dev_dbg(csi->dev, "creating %s:%u -> %s:%u link\n",
-		entity->name, src_pad_index, sink->name, sink_pad->index);
-	ret = media_create_pad_link(entity, src_pad_index, sink,
-				    sink_pad->index,
-				    MEDIA_LNK_FL_ENABLED |
-				    MEDIA_LNK_FL_IMMUTABLE);
-	if (ret < 0) {
-		dev_err(csi->dev, "failed to create %s:%u -> %s:%u link\n",
-			entity->name, src_pad_index,
-			sink->name, sink_pad->index);
-		return ret;
-	}
-
-	return 0;
+	return media_create_fwnode_pad_links(&csi->video.pad,
+					     dev_fwnode(csi->dev),
+					     entity, fwnode,
+					     MEDIA_LNK_FL_ENABLED |
+					     MEDIA_LNK_FL_IMMUTABLE);
 }
 
 static int sun6i_subdev_notify_complete(struct v4l2_async_notifier *notifier)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
