Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F051DC211
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 00:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xmCCdRwNAHJ8NL9OVOgKGlLa7GID1CEtZoARONroDpY=; b=Xo0E/dQZEcxHd4
	fDrgWGHhhgWlfh9XjiQw6qioAQGvoQFCkOfsWLeDYAoqMiWFFq6lX81IH3JutyhhYWpUDXKMKKZGV
	dYQPMEKeSb4BpBLRRv5+aQ0ZRJzw5PzZt7jYPkYoHo5QvrVK0iIE/EMGI9fHaaTowuUqrppttedpl
	y8zdIA9sdUb23MTbexwYp8poT1fICt4tpycRU4E2DRkYsLlETAJDQJyezSmpYjkPwKms7PXde/brJ
	fUHxjW6MEjM/GBLnLtz5SzSFC2Fewl7C4MCt1DxevnpkkDVyyfVvw2lkksSEcEucrRqZ+h3XghGq+
	x89zJTjniAHC4eMXpxgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbXFA-00052x-PJ; Wed, 20 May 2020 22:31:20 +0000
Received: from mailoutvs62.siol.net ([185.57.226.253] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbXF0-000528-Lp
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 22:31:12 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 5F0AD521CA5;
 Thu, 21 May 2020 00:30:58 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id WVPCA-mzMnE8; Thu, 21 May 2020 00:30:58 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id E1B7A521CA2;
 Thu, 21 May 2020 00:30:57 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 6D5FC521C9C;
 Thu, 21 May 2020 00:30:57 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: mripard@kernel.org, paul.kocialkowski@bootlin.com,
 Nicolas Dufresne <nicolas@ndufresne.ca>
Subject: Re: [PATCH] media: cedrus: Add support for VP8 decoding
Date: Thu, 21 May 2020 00:30:56 +0200
Message-ID: <2875977.BS6FNRR2HQ@jernej-laptop>
In-Reply-To: <ee0aa12fdf1655c4e563b8fc9753a5ab5e52f4cf.camel@ndufresne.ca>
References: <20200520210129.132816-1-jernej.skrabec@siol.net>
 <ee0aa12fdf1655c4e563b8fc9753a5ab5e52f4cf.camel@ndufresne.ca>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_153110_868478_7F9E8CCC 
X-CRM114-Status: GOOD (  16.45  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.253 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, wens@csie.org, hverkuil-cisco@xs4all.nl,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne sreda, 20. maj 2020 ob 23:43:40 CEST je Nicolas Dufresne napisal(a):
> Le mercredi 20 mai 2020 =E0 23:01 +0200, Jernej Skrabec a =E9crit :
> > VP8 in Cedrus shares same engine as H264.
> > =

> > Note that it seems necessary to call bitstream parsing functions,
> > to parse frame header, otherwise decoded image is garbage. This is
> > contrary to what is driver supposed to do. However, values are not
> > really used, so this might be acceptable. It's possible that bitstream
> =

> Have you verified that all values passed through controls are not used
> ? To remain a stateless driver, there is no requirement for parsed data
> to be used, the only requirement is that the reference are used.
> Otherwise doing parallel decoding of two stream of different stream
> would be broken. Have you verified that parallel decoding is working as
> expected ?

I'm not sure if you understand what I meant. Although userspace app parses =

frame header and fills all data in VP8 control, driver parses frame header =

again, using HW bitstream parsing functionality in cedrus_read_header(). =

Without that second header parsing in HW, decoded image is garbage. Note th=
at =

cedrus_read_header() discards all parsed values and relies on those provide=
d =

in controls.

This parsing doesn't cause any problems with parallel decoding or anything. =

It's done during frame decoding job, so it doesn't affect any state. It's j=
ust =

that we shouldn't need to parse header in driver because all data is alread=
y =

provided in controls. It seems that Cedrus core was never tested without th=
at =

HW frame header parsing. I found out that HEVC and H264 frames can sometime=
s =

also be wrongly decoded if no bitstream parsing function is triggered in HW =

before final decoding.

I spend a lot of time trying to avoid that header parsing, but I couldn't f=
ind =

any way around it.

In another words, Cedrus VPU provides two functionalities - HW bitstream =

parsing (to speed up header parsing) and video decoding. One would thought =

that video decoding can be used independently, if all data from header is =

already known, but it can't be.

Best regards,
Jernej

> =

> > parsing functions set some internal VPU state, which is later necessary
> > for proper decoding. Biggest suspect is "VP8 probs update" trigger.
> > =

> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > =

> >  drivers/staging/media/sunxi/cedrus/Makefile   |   3 +-
> >  drivers/staging/media/sunxi/cedrus/cedrus.c   |   8 +
> >  drivers/staging/media/sunxi/cedrus/cedrus.h   |  15 +
> >  .../staging/media/sunxi/cedrus/cedrus_dec.c   |   5 +
> >  .../staging/media/sunxi/cedrus/cedrus_hw.c    |   1 +
> >  .../staging/media/sunxi/cedrus/cedrus_regs.h  |  80 ++
> >  .../staging/media/sunxi/cedrus/cedrus_video.c |   9 +
> >  .../staging/media/sunxi/cedrus/cedrus_vp8.c   | 699 ++++++++++++++++++
> >  8 files changed, 819 insertions(+), 1 deletion(-)
> >  create mode 100644 drivers/staging/media/sunxi/cedrus/cedrus_vp8.c




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
