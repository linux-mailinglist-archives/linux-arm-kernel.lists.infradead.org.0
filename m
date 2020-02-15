Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A9A160050
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 20:46:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=d7EQSo7WT1SXoAb2T7R6LLfWWJ9VbnRPap287TwHrbw=; b=d3n4ywNGLS94tWtkzTSyucFRGn
	ysARq4HQwqG0WAitfF9RwmuN9KKq2PDjECPj83deqJJFMHsjCA7f7R9e+FLcFpH2AD1sltmdiUZHR
	jLOOeCXI9lKWa9ATd0GGmgZGmn7aeMQrlqb6SA5+AzFgabhW5RXQDvUGNNNxViu8TT85CUu2NEgRI
	x4lrxe5hzgP32GXvg0F9zc2XQADqcGIR5LgJIObfR9oFgaVJI2liFh+MDbOboHKq7Cr1lRY2n9SU2
	KwJupib09HqGj2+Q/ggaPWDy5agQyCOk2onaBHd3gEiMBnCQs2LuTrlTiKyw0GUUb39JeR9SX5aI6
	E9pCWGfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j33O3-0004C2-Ow; Sat, 15 Feb 2020 19:45:59 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j33LM-0000ao-A4
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 19:43:13 +0000
Received: by mail-pf1-x442.google.com with SMTP id q8so6745754pfh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Feb 2020 11:43:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AS+AHCuMQWIyLmWzD2RHQ/sZnkJFO9p0vLnea6pI0u8=;
 b=S78uU5ELv/QGHroNn0uGOcuYzw18JAgX+7W/Y+sH2djZV6Vh7nNYxxoxFE3sHWuBoX
 6BBzuJNdmRimqXlI/HqIyTIJ2GfkC7+O8766q44qqEidVEthYlMIYEPl07bL9Wgep32f
 vjePn3AZeAPDj3Bg+7s/mo4uNYimgtk3dTWYIQMWILZoa0Eee8MqzHDueQapO93VX0Pg
 7/DrRSQMZnLMCIWQN5xjQ68AD0KaEoZ8s5xm2BddTE48VERtoFMniIMhANWsX0kwvEuZ
 J9qtsO35u1pFAxGnFyn6mAmZv0ZRm8/otvzSQIklu4h3EPPvKIrXzya2Xdpnkk3k7xE3
 URtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AS+AHCuMQWIyLmWzD2RHQ/sZnkJFO9p0vLnea6pI0u8=;
 b=iAMSbh16TvB6O2XoeIM1gWhSTpnkR9iLHoXjs3iadAmRz3zAjvZILoJjM+iXT9foTU
 rYElnocCGrEbotMmAtdjsngFVxSJkdgipwP4Hgb3zWTuztooc3Zo4k9hRMh03o7NLzUx
 ZsJpVFnGKXW8Qor3awardFzYi9A/h4TMEJS3I9ndnQkJ0wMtPOEVKHRbWYNJyFhKS73M
 5xg1/C4xsLTpmZGJ1LAeNRMttMZO+RSoY4p5EcxNb/nZtANmBWwoECgExdpuTfBdoXJE
 3xsBVx+mhLVHTIq/ViLiLkpzAHDYMHwmc1Zbe5y8YUr5x3m7DJAHDxBr0/WYVQDRTSIR
 ac1g==
X-Gm-Message-State: APjAAAUiAjTTh8XDydDso+3lemaRLSeK5v6HUCpykEQF1q5BGUymsGCT
 D8q2nEKjt0Bbl0rIzXkAutY=
X-Google-Smtp-Source: APXvYqwczQn4UX/8KSaTLZ7YHrgD3Ijj7sbqrRkHMXnOMUogEhVvwFylvxV8ataNMmBYV8zmnCZ8yg==
X-Received: by 2002:a63:d207:: with SMTP id a7mr10044400pgg.225.1581795791183; 
 Sat, 15 Feb 2020 11:43:11 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id q4sm11802751pfl.175.2020.02.15.11.43.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 15 Feb 2020 11:43:10 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [RESEND PATCH v3 17/17] media: imx: TODO: Remove media link creation
 todos
Date: Sat, 15 Feb 2020 11:41:36 -0800
Message-Id: <20200215194136.10131-18-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200215194136.10131-1-slongerbeam@gmail.com>
References: <20200215194136.10131-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_114312_350272_3412871B 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
 open list <linux-kernel@vger.kernel.org>,
 Rui Miguel Silva <rui.silva@linaro.org>, NXP Linux Team <linux-imx@nxp.com>,
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
resolved by moving media link creation to individual entity bound
callbacks and the implementation of the get_fwnode_pad operation.

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
