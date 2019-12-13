Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE2E11E7D9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 17:15:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wWT1It9UwlCl7x4a1T2KkhsiEGeumkQsJfUWhquJGhQ=; b=RpscpnTcU1I7JK
	eYMB5p7B3f7GKSbPCsAqPE5X7JTxxsjWnWL2D7xHOjJksODnMsbgJvrG3EKZnDFC77gGKrbFw43Oo
	Xfnd8i9eoDyacnb9LRpmYzzibK12bIB8D74frzyVJv4vuK7zMEihqhuuBt4ZuXDkGKpQzTKMjjpv0
	umUAqKERACW/paa6nqRfSLGFtx1uz3oYSr2C4G+AIF/7x72iLhHbkQV9H6/jyWQEvX+KFmoNyvFvp
	GDz3Gk0XamsU2MIGdNhalDqYTKKw5IaGDbZKC6ZbR+nv8qRvnZabJ3SsBKU73Xv/vqJA0byiVAcbX
	EZztduKRzM09YYqZwEiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifnbN-00020u-11; Fri, 13 Dec 2019 16:15:37 +0000
Received: from mailoutvs18.siol.net ([185.57.226.209] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifnbB-000204-IX
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 16:15:27 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id CDC705245A4;
 Fri, 13 Dec 2019 17:15:22 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id FVEEviERtmZv; Fri, 13 Dec 2019 17:15:22 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 7DFA75245AA;
 Fri, 13 Dec 2019 17:15:22 +0100 (CET)
Received: from localhost.localdomain (cpe-86-58-102-7.static.triera.net
 [86.58.102.7]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 19BF9524592;
 Fri, 13 Dec 2019 17:15:22 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mchehab@kernel.org, mripard@kernel.org, paul.kocialkowski@bootlin.com,
 hverkuil@xs4all.nl
Subject: [PATCH 0/2] media: cedrus: hevc: Minor fixes
Date: Fri, 13 Dec 2019 17:15:14 +0100
Message-Id: <20191213161516.54688-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_081525_769656_A9AB27E5 
X-CRM114-Status: UNSURE (   6.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.209 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I noticed that some HEVC videos are not decoded correctly. It turns out
that same workaround which works for H264 also works for HEVC. Crash is
in HEVC more noticable. Any HEVC video decoding afterwards produces only
green screen.

Second patch just adds missing luma bit depth which was probably
overlooked in initial HEVC driver.

This was developed on top of:
https://patchwork.linuxtv.org/cover/60729/

Best regards,
Jernej

Jernej Skrabec (2):
  media: cedrus: Fix decoding for some HEVC videos
  media: cedrus: hevc: Add luma bit depth

 .../staging/media/sunxi/cedrus/cedrus_h265.c  | 26 ++++++++++++++++---
 .../staging/media/sunxi/cedrus/cedrus_regs.h  |  1 +
 2 files changed, 24 insertions(+), 3 deletions(-)

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
