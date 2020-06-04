Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3AA1EEAAF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 20:55:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zt2vOts3Sw4giLa6AXIS+VsipniBRui+52Rfd8h0mfE=; b=owEWuUoJvDpezZ
	/GRV2BsLDXO053jhIwzPM10vFFj3iWoNGAhCveDv99Yl22CxCOCcXa01gV+9VB+f1nJcbxJK6iEot
	1NTIufy1vuiyhZrJQ741DHsca4+sVMI31EvGerODCl58ZO4/gJ2/88OfPhOPSd5hGMA/XYiZeRHLU
	RU9WDdEAi8Iev8ErJ3TAF6tMLA1gKrm6T2NJs8saFpVafUdmxp4wS8IJCF3RASAA+DtRW8eeI4Iyu
	GOMM+YicmZYiVacJyzIUH6lyYEy1h1YNQRetBc+Pxc+1YTemhFTCfXanlOlIi3N/DKV0hzvAjT0J9
	mpzPFsvjiR7tEeDlUjHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgv1X-0007Pi-4w; Thu, 04 Jun 2020 18:55:31 +0000
Received: from mailoutvs58.siol.net ([185.57.226.249] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgv1O-0007NT-DV
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 18:55:24 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 74C5F5204BB;
 Thu,  4 Jun 2020 20:55:13 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 69uBF3PPSFrh; Thu,  4 Jun 2020 20:55:13 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 0DE0952112F;
 Thu,  4 Jun 2020 20:55:13 +0200 (CEST)
Received: from kista.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 5224F5204BB;
 Thu,  4 Jun 2020 20:55:08 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: paul.kocialkowski@bootlin.com,
	mripard@kernel.org
Subject: [PATCH 0/3] media: uapi: cedrus: Fix decoding interlaced H264 content
Date: Thu,  4 Jun 2020 20:57:42 +0200
Message-Id: <20200604185745.23568-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_115522_613890_BBF47505 
X-CRM114-Status: UNSURE (   6.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.249 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, nicolas@ndufresne.ca, wens@csie.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently H264 interlaced content it's not properly decoded on Cedrus.
There are two reasons for this:
1. slice parameters control doesn't provide enough information
2. bug in frame list construction in Cedrus driver

As described in commit message in patch 1, references stored in
reference lists should tell if reference targets top or bottom field.
However, this information is currently not provided. Patch 1 adds
it in form of flags which are set for each reference. Patch 2 then
uses those flags in Cedrus driver.

Frame list construction is fixed in patch 3.

This solution was extensively tested using Kodi on LibreELEC with A64,
H3, H5 and H6 SoCs in slightly different form (flags were transmitted
in MSB bits in index).

Note: I'm not 100% sure if flags for both, top and bottom fields are
needed. Any input here would be welcome.

Please take a look.

Best regards,
Jernej

Jernej Skrabec (3):
  media: uapi: h264: update reference lists
  media: cedrus: h264: Properly configure reference field
  media: cedrus: h264: Fix frame list construction

 .../media/v4l/ext-ctrls-codec.rst             | 40 ++++++++++++++++++-
 .../staging/media/sunxi/cedrus/cedrus_h264.c  | 27 +++++++------
 include/media/h264-ctrls.h                    | 12 +++++-
 3 files changed, 62 insertions(+), 17 deletions(-)

-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
