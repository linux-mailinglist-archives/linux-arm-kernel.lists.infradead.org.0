Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B391DBAD7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 19:12:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DO5JLL7AMOtirHnh47g8UbflelMaRsXY1jLgUwiKa18=; b=ZNOlbTaHQghbp7
	qX/CNqwt1k+SnRZsCmJmBm6F8fy1QJ3DU68fQjE7AGGMl09I9XY1+tgvyDnntKDo/BoTUmEufOwK+
	iopFi2j8A5Qnabvca+01rolfJKS2HH62YSxxjgu4Pj+FqsTYF0ucDBvQr2XhtgjZjyxsLWGikPfTJ
	uJJB0hLDM6wFIUIl7iIz0o5sQ7KXajTsLIGTgJ5k/o4ms19TxNvWPj81ApeggVN4kN47JBYkacTkL
	86iv+PozokwK3xrjfqERCXF/Bj1xKXFcFsgboyPlturrVDlTAVuIf3BkGEPjfTFv/2SlMoCTgNgdJ
	EA/hsY2PsfaMuvNpe1zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSGz-0007nB-4J; Wed, 20 May 2020 17:12:53 +0000
Received: from mailoutvs59.siol.net ([185.57.226.250] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbSGe-0007dd-Qk
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 17:12:35 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 7177252262E;
 Wed, 20 May 2020 19:12:23 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id Zb2kWSo0VfZD; Wed, 20 May 2020 19:12:23 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 0DB3E5227F4;
 Wed, 20 May 2020 19:12:23 +0200 (CEST)
Received: from kista.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Zimbra) with ESMTPSA id 1D040522746;
 Wed, 20 May 2020 19:12:17 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	paul.kocialkowski@bootlin.com
Subject: [PATCH] media: cedrus: Add support for additional output formats
Date: Wed, 20 May 2020 19:14:57 +0200
Message-Id: <20200520171457.11937-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_101233_052141_4C42FD9C 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.250 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, wens@csie.org, hverkuil-cisco@xs4all.nl,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If VPU supports untiled output, it actually supports several different
YUV 4:2:0 layouts, namely NV12, NV21, YUV420 and YVU420.

Add support for all of them.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/staging/media/sunxi/cedrus/cedrus_hw.c | 18 +++++++++++++++++-
 .../staging/media/sunxi/cedrus/cedrus_video.c  | 18 ++++++++++++++++++
 2 files changed, 35 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
index daf5f244f93b..c119fd8c4b92 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
@@ -83,9 +83,25 @@ void cedrus_dst_format_set(struct cedrus_dev *dev,
 
 	switch (fmt->pixelformat) {
 	case V4L2_PIX_FMT_NV12:
+	case V4L2_PIX_FMT_NV21:
+	case V4L2_PIX_FMT_YUV420:
+	case V4L2_PIX_FMT_YVU420:
 		chroma_size = ALIGN(width, 16) * ALIGN(height, 16) / 2;
 
-		reg = VE_PRIMARY_OUT_FMT_NV12;
+		switch (fmt->pixelformat) {
+		case V4L2_PIX_FMT_NV12:
+			reg = VE_PRIMARY_OUT_FMT_NV12;
+			break;
+		case V4L2_PIX_FMT_NV21:
+			reg = VE_PRIMARY_OUT_FMT_NV21;
+			break;
+		case V4L2_PIX_FMT_YUV420:
+			reg = VE_PRIMARY_OUT_FMT_YU12;
+			break;
+		case V4L2_PIX_FMT_YVU420:
+			reg = VE_PRIMARY_OUT_FMT_YV12;
+			break;
+		}
 		cedrus_write(dev, VE_PRIMARY_OUT_FMT, reg);
 
 		reg = chroma_size / 2;
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index 15cf1f10221b..016021d71df2 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -55,6 +55,21 @@ static struct cedrus_format cedrus_formats[] = {
 		.directions	= CEDRUS_DECODE_DST,
 		.capabilities	= CEDRUS_CAPABILITY_UNTILED,
 	},
+	{
+		.pixelformat	= V4L2_PIX_FMT_NV21,
+		.directions	= CEDRUS_DECODE_DST,
+		.capabilities	= CEDRUS_CAPABILITY_UNTILED,
+	},
+	{
+		.pixelformat	= V4L2_PIX_FMT_YUV420,
+		.directions	= CEDRUS_DECODE_DST,
+		.capabilities	= CEDRUS_CAPABILITY_UNTILED,
+	},
+	{
+		.pixelformat	= V4L2_PIX_FMT_YVU420,
+		.directions	= CEDRUS_DECODE_DST,
+		.capabilities	= CEDRUS_CAPABILITY_UNTILED,
+	},
 };
 
 #define CEDRUS_FORMATS_COUNT	ARRAY_SIZE(cedrus_formats)
@@ -130,6 +145,9 @@ void cedrus_prepare_format(struct v4l2_pix_format *pix_fmt)
 		break;
 
 	case V4L2_PIX_FMT_NV12:
+	case V4L2_PIX_FMT_NV21:
+	case V4L2_PIX_FMT_YUV420:
+	case V4L2_PIX_FMT_YVU420:
 		/* 16-aligned stride. */
 		bytesperline = ALIGN(width, 16);
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
