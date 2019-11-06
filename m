Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE19AF2059
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 22:06:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PFpxFytalLJuh9qnad13AHqUr4UwyISCvhNAvFVfDJ4=; b=fah7fmwsaxZ+UD
	YDC/Lfs/YfMXJUZhjT69UDseoQHFXyXMXOLNvkbMib76dqHQiqPpBH18/S7W2t7sXfQfZgJgddkoR
	pWrH/E2WI2JGZXr4EVLiurdKoF15O85n+yUEn59oOjBgYgblKPRSXAwCibefJCCYzUmTVBBV7P9GE
	dIyopklXG+AmdHMLFVVL4001n/gXuNvfjCSzF9FgKh+XtZzvfJ9kffiqdXm2ZSLhJt7KEbP9BsxYj
	PERjg37xg3dxCOlRV6NdJhCZgV68obOp5VJaDWOvkRvOGDNE8CfYL02AfaGbSzUqIHMU1SxGwESTi
	D7w19PPzA6SQbj6xAxjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSSVL-0004Ph-W0; Wed, 06 Nov 2019 21:06:16 +0000
Received: from mailoutvs9.siol.net ([185.57.226.200] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSSVC-0004Nx-Ra
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 21:06:09 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 0611F524D2C;
 Wed,  6 Nov 2019 22:06:01 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 9kppblxXd2EZ; Wed,  6 Nov 2019 22:06:01 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 8B6D0524D2D;
 Wed,  6 Nov 2019 22:06:01 +0100 (CET)
Received: from localhost.localdomain (cpe-86-58-102-7.static.triera.net
 [86.58.102.7]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id CEDF0524D2C;
 Wed,  6 Nov 2019 22:06:00 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org, paul.kocialkowski@bootlin.com, hverkuil-cisco@xs4all.nl
Subject: [PATCH v2 0/3] media: cedrus: Add support for 4k videos
Date: Wed,  6 Nov 2019 22:05:35 +0100
Message-Id: <20191106210538.3474-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_130607_053921_9420F5D1 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.200 listed in list.dnswl.org]
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
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While cedrus driver accepts videos up to 3840x2160, they are not decoded
correctly. Driver doesn't correctly set mode register for widths greater
than 2048 (patch 1). H264 engine also needs additional buffers which are
not provided currently (patch 2). Finally, there are several different
resolutions which can be considered 4k. Biggest is 4096x2304 which is
also supported by HW. Set that new maximum size (patch 3).

HEVC engine was also tested with 4k video.

Following video was used for H264 video testing:
http://jernej.libreelec.tv/videos/h264/PUPPIES%20BATH%20IN%204K%20(ULTRA%20HD)(Original_H.264-AAC)%20(4ksamples.com).mp4

Note that at this point memory allocation is suboptimal and H264 engine
allocates far more memory that it is really needed. For above video to
work, I had to set CMA size to 512 MiB and add "vmalloc=512M" to kernel
arguments. Memory optimizations will be done later.

Best regards,
Jernej

Changes from v1:
- added Paul's acked-by
- added define for minimum pic info buf size
- added comments that formulas come from CedarX source

Jernej Skrabec (3):
  media: cedrus: Properly signal size in mode register
  media: cedrus: Fix H264 4k support
  media: cedrus: Increase maximum supported size

 drivers/staging/media/sunxi/cedrus/cedrus.h   |  7 ++
 .../staging/media/sunxi/cedrus/cedrus_h264.c  | 93 +++++++++++++++++--
 .../staging/media/sunxi/cedrus/cedrus_h265.c  |  2 +-
 .../staging/media/sunxi/cedrus/cedrus_hw.c    |  9 +-
 .../staging/media/sunxi/cedrus/cedrus_hw.h    |  2 +-
 .../staging/media/sunxi/cedrus/cedrus_mpeg2.c |  2 +-
 .../staging/media/sunxi/cedrus/cedrus_regs.h  | 13 +++
 .../staging/media/sunxi/cedrus/cedrus_video.c |  4 +-
 8 files changed, 116 insertions(+), 16 deletions(-)

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
