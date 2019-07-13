Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F7967A13
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jul 2019 14:04:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JcWA7ykkOZ2SaGuCImjKOJqXfpWmsJEI5lUZU2Av+ic=; b=Nx/s1VW7/lsXE4
	/WmPE5Jqnq+BaEhmAmAQTKKIG/BBAHA9Le88QVR5oiwBK2IFCVHKz2Wri716btyEj7VBajtirxFfN
	NIIqIAlu86Ed2OK8xbz+gmHuHEc7gwiFrqKVru/nZsUXxMpPdghkZBjjaqQ3FdbiSnx1KxsEXskSN
	m6K/pXSY1kSCOqovf2YzKS34eiRkEWenyAGGZHfxERjmDzqAVXgvBNriiGh8Jp7SvV9hZS1ctW8fD
	Z79jagWiW/JGsJDp8l2tXAWsCTi8NTKjqQXOE21mKR6bRe6Kg+PxQqeJIeHuchgXcxXx8VeatPIvh
	1+pRXBFd1qLKCf3usEjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmGlc-0008Br-Uh; Sat, 13 Jul 2019 12:04:40 +0000
Received: from mailoutvs30.siol.net ([185.57.226.221] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmGl5-0007fR-3T
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jul 2019 12:04:10 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 03A5D520796;
 Sat, 13 Jul 2019 14:03:57 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id GZJ1_W8SsO1t; Sat, 13 Jul 2019 14:03:56 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id A7A2452059A;
 Sat, 13 Jul 2019 14:03:56 +0200 (CEST)
Received: from localhost.localdomain (cpe-194-152-11-237.cable.triera.net
 [194.152.11.237]) (Authenticated sender: 031275009)
 by mail.siol.net (Zimbra) with ESMTPSA id AB370520796;
 Sat, 13 Jul 2019 14:03:52 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: maxime.ripard@bootlin.com,
	wens@csie.org
Subject: [PATCH 0/3] drm/sun4i: Add support for color encoding and range
Date: Sat, 13 Jul 2019 14:03:43 +0200
Message-Id: <20190713120346.30349-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_050407_300361_22ABF616 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.221 listed in list.dnswl.org]
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
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@googlegroups.com, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to correctly convert image between YUV and RGB, you have to
know color encoding and color range. This patch set adds appropriate
properties and considers them when choosing CSC conversion matrix for
DE2 and DE3.

Note that this is only the half of needed changes when using HDMI output.
DW HDMI bridge driver has to be extended to have a property to select
limited (TVs) or full (PC monitors) range. But that will be done at a
later time.

Please take a look.

Best regards,
Jernej

Jernej Skrabec (3):
  drm/sun4i: Introduce color encoding and range properties
  drm/sun4i: sun8i_csc: Simplify register writes
  drm/sun4i: sun8i-csc: Add support for color encoding and range

 drivers/gpu/drm/sun4i/sun8i_csc.c      | 155 +++++++++++++++++++------
 drivers/gpu/drm/sun4i/sun8i_csc.h      |   6 +-
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c |  21 +++-
 3 files changed, 146 insertions(+), 36 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
