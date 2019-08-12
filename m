Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C9689E02
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 14:21:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4CKPWT+QhoNP6O4H5apv3HIj3I/el3owXE0k6xpys3Y=; b=Dlgb1vT8U8RVtc
	4CMEu5YKR3KTyw6dqUhjLwisZzq/99kXJ7u44GlZnkjIVbgXzmRDZOvyAB1OjEVtYgUOgHyb8AtTq
	lANanbO4Vn/nswtyt3TzXf8hZhqgraJFZTCoER3OwTj47nQfi366CMC7JXBasd+M/4RVN2bKfhQyw
	thKtHQT5FYYGDbIW/MXCluAmHTzet3aPtUZVeYvL28BRsD6unUbnXs/zZx/bRh3tWybBA0d7haqUC
	jua4Np7386DqZ9SX9bFfRPiDIJAtKERt+PovGqoG2U5muT7lucV+KvVENtpYrxotyzij+4hz1fXBe
	sfc7E+sQWYlmkV6MP72Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx9KR-0007Hc-Sy; Mon, 12 Aug 2019 12:21:36 +0000
Received: from mailoutvs25.siol.net ([185.57.226.216] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx9KB-0007Gu-Hp
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 12:21:21 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 791135206FB;
 Mon, 12 Aug 2019 14:21:13 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id gEiOe5RdhaUL; Mon, 12 Aug 2019 14:21:13 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 1E9B452379C;
 Mon, 12 Aug 2019 14:21:13 +0200 (CEST)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 7FD855206FB;
 Mon, 12 Aug 2019 14:21:12 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH 0/7] media: cedrus: Improvements/cleanup
Date: Mon, 12 Aug 2019 14:21:11 +0200
Message-ID: <4636127.h7jaTrrqaR@jernej-laptop>
In-Reply-To: <274221f1-b2d2-83aa-d84b-e1c572a1b832@xs4all.nl>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <274221f1-b2d2-83aa-d84b-e1c572a1b832@xs4all.nl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_052119_747285_0BB7284E 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.216 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: devel@driverdev.osuosl.org, maxime.ripard@bootlin.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne ponedeljek, 12. avgust 2019 ob 14:12:21 CEST je Hans Verkuil napisal(a):
> On 5/30/19 11:15 PM, Jernej Skrabec wrote:
> > Here is first batch of random Cedrus improvements/cleanups. Only patch 2
> > has a change which raises a question about H264 controls.
> > 
> > Changes were tested on H3 SoC using modified ffmpeg and Kodi.
> > 
> > Please take a look.
> 
> This has been sitting in patchwork for quite some time. I've updated the
> status of the various patches and most needed extra work.
> 
> It seems that patches 4/7 and 5/7 are OK. Maxime, can you please confirm
> that these two are still valid? They apply cleanly on the latest master
> at least, but since they are a bit old I prefer to have confirmation that
> it's OK to merge them.

I'm not sure about patch 4, IIRC Boris Brezillon also wants to improve that 
area in separate series, but patch 5 should be safe to merge.

Anyway, I didn't post new version because I'm waiting on close-to-be-merged 
H264 and HEVC patch series to be actually merged.

Best regards,
Jernej

> 
> Regards,
> 
> 	Hans
> 
> > Best regards,
> > Jernej
> > 
> > Jernej Skrabec (7):
> >   media: cedrus: Disable engine after each slice decoding
> >   media: cedrus: Fix H264 default reference index count
> >   media: cedrus: Fix decoding for some H264 videos
> >   media: cedrus: Remove dst_bufs from context
> >   media: cedrus: Don't set chroma size for scale & rotation
> >   media: cedrus: Add infra for extra buffers connected to capture
> >   
> >     buffers
> >   
> >   media: cedrus: Improve H264 memory efficiency
> >  
> >  drivers/staging/media/sunxi/cedrus/cedrus.h   |  12 +-
> >  .../staging/media/sunxi/cedrus/cedrus_h264.c  | 115 ++++++++----------
> >  .../staging/media/sunxi/cedrus/cedrus_hw.c    |   4 +-
> >  .../staging/media/sunxi/cedrus/cedrus_video.c |  25 ++--
> >  4 files changed, 68 insertions(+), 88 deletions(-)





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
