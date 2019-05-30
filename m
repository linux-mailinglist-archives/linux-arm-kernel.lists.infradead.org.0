Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E71730400
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 23:16:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VbaHslbTf74GoWC+5hFnv0EHnmWsX+FLAbUowHQr2FA=; b=dRQSApX9p4z4Ql
	TOmhuufqkp1J7MSi1eUjbjkxKAA5ABtIX419OanxP+mRs9y1ld9pDLci3jcE3gKzcKDQWrZugKMNw
	JW5SsPPkEhZExnbIE/ZHsMMSpPMWQ8Yt+uwOj0rk7znVgqtjP1rfIEiHnOAqOnT2VgyzibmdjP0/v
	FlW0nCu+ItbcHkf4xiabzP+LD4dWpnlamPcL3NxCdP7SANNPpc0fb8tfesMV7hz5xA2o8O9Oyt+8s
	FANU5yXyHkxobKy7xKfhAKneUgmsxIN2szF29cnbrszSRltT1nxydJ0NY04/lkMmXo3SsvFkCrM3i
	zdcjJcUVwvLroMvZaNxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWSP1-0000H5-LN; Thu, 30 May 2019 21:15:59 +0000
Received: from mailoutvs7.siol.net ([185.57.226.198] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWSOh-0008Us-Hf
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 21:15:41 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 77B93522867;
 Thu, 30 May 2019 23:15:30 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id Q4d6PDinGsox; Thu, 30 May 2019 23:15:30 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 23ACA522869;
 Thu, 30 May 2019 23:15:30 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-52-202.static.triera.net
 [86.58.52.202]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 41B70522867;
 Thu, 30 May 2019 23:15:28 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: paul.kocialkowski@bootlin.com,
	maxime.ripard@bootlin.com
Subject: [PATCH 0/7] media: cedrus: Improvements/cleanup
Date: Thu, 30 May 2019 23:15:09 +0200
Message-Id: <20190530211516.1891-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_141539_752940_779E3193 
X-CRM114-Status: UNSURE (   6.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-kernel@vger.kernel.org, wens@csie.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Here is first batch of random Cedrus improvements/cleanups. Only patch 2
has a change which raises a question about H264 controls.

Changes were tested on H3 SoC using modified ffmpeg and Kodi.

Please take a look.

Best regards,
Jernej

Jernej Skrabec (7):
  media: cedrus: Disable engine after each slice decoding
  media: cedrus: Fix H264 default reference index count
  media: cedrus: Fix decoding for some H264 videos
  media: cedrus: Remove dst_bufs from context
  media: cedrus: Don't set chroma size for scale & rotation
  media: cedrus: Add infra for extra buffers connected to capture
    buffers
  media: cedrus: Improve H264 memory efficiency

 drivers/staging/media/sunxi/cedrus/cedrus.h   |  12 +-
 .../staging/media/sunxi/cedrus/cedrus_h264.c  | 115 ++++++++----------
 .../staging/media/sunxi/cedrus/cedrus_hw.c    |   4 +-
 .../staging/media/sunxi/cedrus/cedrus_video.c |  25 ++--
 4 files changed, 68 insertions(+), 88 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
