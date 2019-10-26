Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67926E5E4C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 19:47:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PmTP5XZkWAExKu7seHd3bEI7GXmZv8UnV9EHQM1OTec=; b=ewR4mu+uFbctQD
	sP3RxHTl4KEqxX2Lc9xdDbHw8bWkSYEmaMnPLxK1pWNCjoJgX5db1H9m27a2uPvj7uNczb0rQHBGJ
	Fuj7z8ESxJUD7qZn/9U8NQ/3J+SEh3FNkY9ES9/1/I2Lzrw0iaZq0MysmWSkX/eFOwWdPq9vM2ivt
	pABH7YwMoMyI+JkIfnuicEULiHo4erWG4wpi7akznCgElFf6qhQ6aiX3DveATZztyS8XbLo3tUmLw
	gmAJzr50mkVusEHyh+qSUbC+Z6ORoaik7VL+21QPy83QNv8QCfhLsB1hUNCq22+F/PRQoXI4PATE5
	gqN//nWKDcbkPjDxUomg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOQA6-0005m8-Ru; Sat, 26 Oct 2019 17:47:38 +0000
Received: from mailoutvs12.siol.net ([185.57.226.203] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOQ9q-0005jt-Bo
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 17:47:24 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 4188952264A;
 Sat, 26 Oct 2019 19:47:14 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id ZeLhTzneJ9c7; Sat, 26 Oct 2019 19:47:14 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id E256A520606;
 Sat, 26 Oct 2019 19:47:13 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id F29C252264A;
 Sat, 26 Oct 2019 19:47:12 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	paul.kocialkowski@bootlin.com
Subject: [PATCH 0/4] media: cedrus: hevc: Add support for scaling matrix and
 multi-slice frames
Date: Sat, 26 Oct 2019 19:46:59 +0200
Message-Id: <20191026174703.1120023-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_104722_563001_61B6A6F9 
X-CRM114-Status: UNSURE (   6.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.203 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 boris.brezillon@collabora.com, p.zabel@pengutronix.de,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently there is no control for HEVC scaling matrix and segment address
field is also missing. This series adds those and implements support for
them in Cedrus driver.

Following videos were using for testing:
- scaling matrix:
http://jernej.libreelec.tv/videos/h265/slist_test.mp4
- multi-slice:
http://jernej.libreelec.tv/videos/h265/Dredd%20%E2%80%93%20DTS%20Sound%20Check%20DTS-HD%20MA%207.1.m2ts

Best regards,
Jernej

Jernej Skrabec (4):
  media: uapi: hevc: Add scaling matrix control
  media: cedrus: hevc: Add support for scaling matrix
  media: uapi: hevc: Add segment address field
  media: cedrus: hevc: Add support for multiple slices

 .../media/uapi/v4l/ext-ctrls-codec.rst        | 46 +++++++++-
 .../media/uapi/v4l/pixfmt-compressed.rst      |  1 +
 drivers/media/v4l2-core/v4l2-ctrls.c          | 10 ++
 drivers/staging/media/sunxi/cedrus/cedrus.c   |  7 ++
 drivers/staging/media/sunxi/cedrus/cedrus.h   |  1 +
 .../staging/media/sunxi/cedrus/cedrus_dec.c   |  2 +
 .../staging/media/sunxi/cedrus/cedrus_h265.c  | 91 ++++++++++++++++++-
 .../staging/media/sunxi/cedrus/cedrus_regs.h  |  2 +
 .../staging/media/sunxi/cedrus/cedrus_video.c |  1 +
 include/media/hevc-ctrls.h                    | 16 +++-
 10 files changed, 170 insertions(+), 7 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
