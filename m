Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 641B482836
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 01:38:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=i2FQZsLX9j07xOQA8i0BvbC/dtzSEbM/4VH7unARZD0=; b=OAhSm6l7eCCbp1+gOgLSYddws9
	pD7+dhWgSKOyDRu+cYjVOblhAi0TqWJZUU7kol00gj9YgKh3zCAU+ZavaJLSvxWCZVD0egxwUel2a
	I/5XwNDDJbrPUeNM3t4JwJqlX/LogIwqjnJXoKfbK/Sp+3bfobJJa4Am/51/J7lMsGwuNs7ektNxi
	q9PVCJtd1gbDdRnFqWfIcBJipuxzSSb6qat9LJWp6Xv5PGNDRldyU2RGQYkX8lbdBj9u8foX1u8ti
	e11J0uGYDW6b2Dsov6z9Lc62S5GEz61d+d83wUUFUCD0bGeritgbWGbalRLhxPwZV9Y2yo9l4MAQc
	pD4fAKAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1humYP-0007lB-Au; Mon, 05 Aug 2019 23:38:13 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1humVy-00057C-Rz
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 23:35:46 +0000
Received: by mail-pl1-x644.google.com with SMTP id t14so37029975plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 16:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2TmLGvTN3FaWVeRsZPV3e4KNsmV2AReP7cWUVSqpqFQ=;
 b=YW2JbBhT1KOAfZKebBO9NM/G5Db95SUaRLnTey3pDLof4EeuR2oudZUxy8zi3ksHrp
 n/rM4Ga7htyDE97Ns+wPj+3Z8PhgQ/mkooxrj+Oj+RLx4/nnq0bUD+aDUnVf1LBrq9xF
 dY0j2ZVZAyPgtxwlAKR9qwP4wj/h48HGi4ffXdnH8gu8bIzxJ8uHY2W+u7NH0GnqxTD8
 dRHgc922vuRBkdb5WRupFzWcgYSpGtu+hSoihVTRk9nHn6Zo5xvrqkBk6f2tAOvr6c0G
 mFXWCA9xq+KMxQdYSaIZjMOJSVwdiGQuFvo1KeBfdkD79sC1CTS7ef5vvvfOPlyvigqS
 IVNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2TmLGvTN3FaWVeRsZPV3e4KNsmV2AReP7cWUVSqpqFQ=;
 b=h7XUuadO2412l3mhu34X/coDDgLPvM/s4uczMkSphu+ghMMIwNK9s2l/n4gra5L+Bx
 BFt1pkNIA324Z1frI2oM7IsGfV1lU/ffokPP1kros3ocxhw/1NMQG/xwRJYJyU/7F0dC
 6HEnOpXdAMLy+5/k25+sPamnBlXXxa6Xyc05RUaXDWYmbYtEIkrC6ZOplP8t5RAiyDNu
 Mz3JA3cKrl7sCqVUN8gX2krWKkCzoE1y1FnWjVsjT7rZjCmUGHViuI9sJLUNS+vkZNQP
 /fu8V4XZN6jdGLyZGl/vLvS/x+Ckkk7vPTVtrX3b1OYCKoknggswsrm1RH1JNWFJaRKG
 8Bdw==
X-Gm-Message-State: APjAAAXSezsBWsisSAWU/uW83XHxjQ0VN6v/d3P58IEUooo/a4NimncK
 E+3Xu67v4wCpwwX8N+fUHwQ=
X-Google-Smtp-Source: APXvYqzJbrsuJ3HwTZ98E/Apw4jZA8VmFc9SY7qiYBjg/8j77ZDblKl2/AqIbDwaFPx6pAGuizw+Iw==
X-Received: by 2002:a17:902:6a87:: with SMTP id
 n7mr251709plk.336.1565048141256; 
 Mon, 05 Aug 2019 16:35:41 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id 30sm31296349pjk.17.2019.08.05.16.35.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 16:35:40 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 22/22] media: imx: TODO: Remove issues regarding media link
 creation
Date: Mon,  5 Aug 2019 16:35:05 -0700
Message-Id: <20190805233505.21167-23-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190805233505.21167-1-slongerbeam@gmail.com>
References: <20190805233505.21167-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_163542_952974_3C84456C 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
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

Remove the TODO items regarding media link creation, these issues are
resolved after exporting media link creation to individual entity bound
callbacks and the use of media_create_fwnode_links(),
media_create_fwnode_pad_links(), and media_entity_get_fwnode_pad().

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/TODO | 29 -----------------------------
 1 file changed, 29 deletions(-)

diff --git a/drivers/staging/media/imx/TODO b/drivers/staging/media/imx/TODO
index 6f29b5ca5324..a371cdedcdb0 100644
--- a/drivers/staging/media/imx/TODO
+++ b/drivers/staging/media/imx/TODO
@@ -17,35 +17,6 @@
   decided whether this feature is useful enough to make it generally
   available by exporting to v4l2-core.
 
-- After all async subdevices have been bound, v4l2_fwnode_parse_link()
-  is used to form the media links between the devices discovered in
-  the OF graph.
-
-  While this approach allows support for arbitrary OF graphs, there
-  are some assumptions for this to work:
-
-  1. If a port owned by a device in the graph has endpoint nodes, the
-     port is treated as a media pad.
-
-     This presents problems for devices that don't make this port = pad
-     assumption. Examples are SMIAPP compatible cameras which define only
-     a single output port node, but which define multiple pads owned
-     by multiple subdevices (pixel-array, binner, scaler). Or video
-     decoders (entity function MEDIA_ENT_F_ATV_DECODER), which also define
-     only a single output port node, but define multiple pads for video,
-     VBI, and audio out.
-
-     A workaround at present is to set the port reg properties to
-     correspond to the media pad index that the port represents. A
-     possible long-term solution is to implement a subdev API that
-     maps a port id to a media pad index.
-
-  2. Every endpoint of a port owned by a device in the graph is treated
-     as a media link.
-
-     Which means a port must not contain mixed-use endpoints, they
-     must all refer to media links between V4L2 subdevices.
-
 - i.MX7: all of the above, since it uses the imx media core
 
 - i.MX7: use Frame Interval Monitor
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
