Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7611FE5921
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 09:51:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9iJA70I0tsfBBXfBjt+ElWzCsdWFZPFWSglqX57K330=; b=dlzC5eymmupdfa
	oYhKZgQV7257EDIR889XME4CxAYMHAPKpl8tG/Q1+skTKtBC+aYDHfq/9GnegTIQhLOE8TwMrUZTs
	dp8CjPmZPC+t/xQCC9yJ0t2fEznnIFV11WtLdMahRwd8Razss/6bDcl/gkD0uUU2A60ZG3XYGDFV/
	7rWXHNF/WX/a730N1NYzoocqdiE7oGXeSGEPK9NdoG9qmeGRppS2dOGqw9CoFA3iDQpB0OEyAbYYt
	Q5kHldJ1lcc9o+wFYS3etbwGsvim3zAhL17jna2h6KfBCN419JIjovLqFX5BJKhWLAN1Wzv4Qqn8w
	9oiqTVBVeZdy20vtqSTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOGr2-00054U-7D; Sat, 26 Oct 2019 07:51:20 +0000
Received: from mailoutvs3.siol.net ([185.57.226.194] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOGqA-0004OV-DK
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 07:50:27 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 37E65521C52;
 Sat, 26 Oct 2019 09:50:24 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id I7VrNZFJFTNh; Sat, 26 Oct 2019 09:50:24 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id EF3EE521C51;
 Sat, 26 Oct 2019 09:50:23 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 9CA4F521D9E;
 Sat, 26 Oct 2019 09:50:21 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	paul.kocialkowski@bootlin.com
Subject: [PATCH 3/3] media: cedrus: Increase maximum supported size
Date: Sat, 26 Oct 2019 09:49:59 +0200
Message-Id: <20191026074959.1073512-4-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191026074959.1073512-1-jernej.skrabec@siol.net>
References: <20191026074959.1073512-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_005026_632401_B13CF46C 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.194 listed in list.dnswl.org]
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
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, wens@csie.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are few variations of 4k resolutions. The biggest one is
4096x2304 which is also supported by HW. It has also nice property that
both width and size are divisible by maximum HEVC CTB size, which is 64.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/staging/media/sunxi/cedrus/cedrus_video.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index cc15a5cf107d..15cf1f10221b 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -29,8 +29,8 @@
 
 #define CEDRUS_MIN_WIDTH	16U
 #define CEDRUS_MIN_HEIGHT	16U
-#define CEDRUS_MAX_WIDTH	3840U
-#define CEDRUS_MAX_HEIGHT	2160U
+#define CEDRUS_MAX_WIDTH	4096U
+#define CEDRUS_MAX_HEIGHT	2304U
 
 static struct cedrus_format cedrus_formats[] = {
 	{
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
