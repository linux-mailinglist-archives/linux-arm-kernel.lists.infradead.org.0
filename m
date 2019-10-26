Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E067AE5903
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 09:29:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YcpEdDUmU3vJL9XlkVn8tYsVf3FJljAdIaIDttucLsQ=; b=LCjcsBZ1VWpTS9
	fMj6075h/Uik1cWUKEaZcqJXYS3YZ5gAY/scwX2W1XR8G0W8xqjiDC6upFPBn/yjtjglztX1FEzm/
	ZzFdE1kaK8LcbmDc2fDui4m0oU44zCBhK+A1KU36XSQyiXTLgXiJYd9kIC+mO3wk7XKBm+9mF1gaR
	aG4tj39wxUEtntdWElwDIybWFMr8XpHTpnZQvX+n5UU2O8PtcBrd/U2wRaEaI/RN9xo2enhLbJL/4
	2BsoWYQMoVUAJMJspxAEK3KClcakhBng7NlNzr0WZ6c1j6Byxk7JdyixEPyB8GvO6qATSK+UTJxV5
	lEyIl5/T64uLYVlGqBaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOGVd-0004dk-Rp; Sat, 26 Oct 2019 07:29:13 +0000
Received: from mailoutvs2.siol.net ([185.57.226.193] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOGVR-0004cL-D0
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 07:29:03 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id A285A523619;
 Sat, 26 Oct 2019 09:28:50 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id mq1P5yCeIwmJ; Sat, 26 Oct 2019 09:28:50 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 5B50952363D;
 Sat, 26 Oct 2019 09:28:50 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 111E6523619;
 Sat, 26 Oct 2019 09:28:49 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	paul.kocialkowski@bootlin.com
Subject: [PATCH v3 0/2] media: cedrus: improvements
Date: Sat, 26 Oct 2019 09:27:50 +0200
Message-Id: <20191026072752.1072711-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_002901_602656_4ADEC65C 
X-CRM114-Status: UNSURE (   5.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.193 listed in list.dnswl.org]
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

This is continuation of https://lkml.org/lkml/2019/5/30/1459 with several
patches removed (2 merged, others needs redesign) and one added.

Patch 1 fixes h264 playback issue which happens in rare cases.

Patch 2 replaces direct accesses to capture queue from m2m contex with
helpers which was designed exactly for that. It's also safer since
helpers do some checks.

Best regards,
Jernej

Changes from v2.
- Removed patch 2, because Paul plans to take different approach
- Rebased patch 1

Jernej Skrabec (2):
  media: cedrus: Fix decoding for some H264 videos
  media: cedrus: Use helpers to access capture queue

 drivers/staging/media/sunxi/cedrus/cedrus.h   |  8 +++-
 .../staging/media/sunxi/cedrus/cedrus_h264.c  | 38 ++++++++++++++++---
 .../staging/media/sunxi/cedrus/cedrus_regs.h  |  3 ++
 3 files changed, 42 insertions(+), 7 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
