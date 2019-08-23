Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A96179AF5B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 14:26:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TdNr0TYD2POk9VAg1K1Wr+OCyoYcdvyrcXZwYvbd9ik=; b=GYFU+cs5xs4rNx
	fpMeziUyfgZOigEIXA0juvxo1yTVe9GlGG32xb66t0k+FBH3zkslgfyjIDHXYdPPUQpAqf+/E5sY7
	CoXu7k37Sr4Yw6fPLP57+yVZiNU3iYijU6SkvXBUae1Aj4IbEy2PfD1TpeYvzw4db7I2plEgu0/xu
	Jr8ouwxYchtse3vkfNTyXVBAowLflJ4y77D+uI2ymrj/WjSsI3jq55m7uZaSjW6qdgU1KFESLeaWO
	V9fzotiIKA+jlVIM50syu1z0MnPjsqDTNFUkyFRJEsZqPz+Y4GhQp4DlU8uv6QrUjFy7XsDT+O1pC
	Z6fcjl+sTw+4Bx9BtSKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i18ea-0002Lt-0W; Fri, 23 Aug 2019 12:26:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i18eK-0002G9-LC
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 12:26:38 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B74CC21848;
 Fri, 23 Aug 2019 12:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566563196;
 bh=ypX1o2hsCuFhuHU1jRTYCJPB+2mmYAusUPZwUYutOEU=;
 h=From:To:Cc:Subject:Date:From;
 b=N//QOvIGXpermGaHXdkc+saq9orHM12iIj1Oi8bs3n86Nf4QJ8dt7eGg1zswdtcwO
 yJKIVRyFYIx5j2dT07NE/kDUo88ce4U6lWJn3u/xJfso2b9RFC2KvqQYvw7xAeywis
 KMbW6gT1AHZUxvxtm1kemzr14n0dWuA8iH/uRCFM=
From: Maxime Ripard <mripard@kernel.org>
To: Hans Verkuil <hans.verkuil@cisco.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH] media: sun4i: Make sun4i_csi_formats static
Date: Fri, 23 Aug 2019 14:26:32 +0200
Message-Id: <20190823122632.30610-1-mripard@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_052636_750135_FCC68D64 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 Hans Verkuil <hverkuil@xs4all.nl>, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

The sun4i_csi_formats array is only used in sun4i_v4l2.c, so it doesn't
make any sense to have it !static.

Reported-by: Hans Verkuil <hverkuil@xs4all.nl>
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 drivers/media/platform/sunxi/sun4i-csi/sun4i_v4l2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/sunxi/sun4i-csi/sun4i_v4l2.c b/drivers/media/platform/sunxi/sun4i-csi/sun4i_v4l2.c
index 772b0fc5920f..967bdb99221c 100644
--- a/drivers/media/platform/sunxi/sun4i-csi/sun4i_v4l2.c
+++ b/drivers/media/platform/sunxi/sun4i-csi/sun4i_v4l2.c
@@ -18,7 +18,7 @@
 #define CSI_DEFAULT_WIDTH	640
 #define CSI_DEFAULT_HEIGHT	480
 
-const struct sun4i_csi_format sun4i_csi_formats[] = {
+const static struct sun4i_csi_format sun4i_csi_formats[] = {
 	/* YUV422 inputs */
 	{
 		.mbus		= MEDIA_BUS_FMT_YUYV8_2X8,
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
