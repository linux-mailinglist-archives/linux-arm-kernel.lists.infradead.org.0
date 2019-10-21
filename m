Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B327DF04B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 16:48:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yz6C2nZkzhCDW1VlDv40i4iL4hBA/xgSDMQX43OWicw=; b=UAmfm1b+/+XetJ
	ywY+hp2CBXlaf2N+7vPDO/ZKq8eWBuw4tdmKCy1HbtqWpHZtlOK84O7o48goHdpKOcpZARdLyXVID
	ZQQkYOeKWr8L9ITIwioo8VEtwndBtnnCgT02st/lB/T8WurJzcMeSFz0DY9opTK3HL5dDfI75DNVB
	euZvdf8raRYJVzQ5R6caYrOmTLo7Qz/8905QG0KTRw9zaDVVWGB/BXB2e7FrAUL6tjS1qoj/IsfXZ
	nkfZhSXkeEP8YI4VA53vPr07vLo78tCCzKYNpLcxyRFuNS2n3dL6rVdTUVyWYauMxv0CZuFlq8bka
	sVuDlhnIfiY7gqcMnonA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYyX-000334-QE; Mon, 21 Oct 2019 14:48:01 +0000
Received: from mailoutvs60.siol.net ([185.57.226.251] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYyL-00031d-HF
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 14:47:51 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 9BF3452273D;
 Mon, 21 Oct 2019 16:47:44 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 3LVhTk5es8hh; Mon, 21 Oct 2019 16:47:44 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 334C352273A;
 Mon, 21 Oct 2019 16:47:44 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id C25E052273D;
 Mon, 21 Oct 2019 16:47:43 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v4 5/6] media: sun4i: Add H3 deinterlace driver
Date: Mon, 21 Oct 2019 16:47:43 +0200
Message-ID: <2174547.3yqp6rY4Nl@jernej-laptop>
In-Reply-To: <8137fbb3-036a-95e4-2642-5dd46fb55eb9@xs4all.nl>
References: <20191017183738.68069-1-jernej.skrabec@siol.net>
 <20191017183738.68069-6-jernej.skrabec@siol.net>
 <8137fbb3-036a-95e4-2642-5dd46fb55eb9@xs4all.nl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_074749_891484_15433E09 
X-CRM114-Status: GOOD (  18.57  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.251 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, robh+dt@kernel.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne ponedeljek, 21. oktober 2019 ob 13:13:20 CEST je Hans Verkuil napisal(a=
):
> On 10/17/19 8:37 PM, Jernej Skrabec wrote:
> > Allwinner H3 SoC contains deinterlace unit, which has several modes of
> > operation - bypass, weave, bob and mixed (advanced) mode. I don't know
> > how mixed mode works, but according to Allwinner it gives best results,
> > so they use it exclusively. Currently this mode is also hardcoded here.
> > =

> > For each interleaved frame queued, this driver produces 2 deinterlaced
> > frames. Deinterlaced frames are based on 2 consequtive output buffers,
> > except for the first 2, where same output buffer is given to peripheral
> > as current and previous.
> > =

> > There is no documentation for this core, so register layout and fixed
> > values were taken from BSP driver.
> > =

> > I'm not sure if maximum size of the image unit is capable to process is
> > governed by size of "flag" buffers, frequency or it really is some HW
> > limitation. Currently driver can process full HD image in ~15ms (7.5ms
> > for each capture buffer), which allows to process 1920x1080@60i video
> > smoothly in real time.
> > =

> > Acked-by: Maxime Ripard <mripard@kernel.org>
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > =

> >  MAINTAINERS                                   |    7 +
> >  drivers/media/platform/Kconfig                |   12 +
> >  drivers/media/platform/sunxi/Makefile         |    1 +
> >  .../media/platform/sunxi/sun8i-di/Makefile    |    2 +
> >  .../media/platform/sunxi/sun8i-di/sun8i-di.c  | 1028 +++++++++++++++++
> >  .../media/platform/sunxi/sun8i-di/sun8i-di.h  |  237 ++++
> >  6 files changed, 1287 insertions(+)
> >  create mode 100644 drivers/media/platform/sunxi/sun8i-di/Makefile
> >  create mode 100644 drivers/media/platform/sunxi/sun8i-di/sun8i-di.c
> >  create mode 100644 drivers/media/platform/sunxi/sun8i-di/sun8i-di.h
> > =

> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index c7b48525822a..c375455125fb 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -4646,6 +4646,13 @@ M:	"Maciej W. Rozycki" <macro@linux-mips.org>
> > =

> >  S:	Maintained
> >  F:	drivers/net/fddi/defxx.*
> > =

> > +DEINTERLACE DRIVERS FOR ALLWINNER H3
> > +M:	Jernej Skrabec <jernej.skrabec@siol.net>
> > +L:	linux-media@vger.kernel.org
> > +T:	git git://linuxtv.org/media_tree.git
> > +S:	Maintained
> > +F:	drivers/media/platform/sunxi/sun8i-di/
> =

> This is missing the bindings file added in the previous patch.

Well, I listed Maxime and Chen-Yu as binding maintainers in patch 4, so tha=
t's =

why I didn't include it here. If you think I should be maintainer of that =

binding too, I can change that. I took sun6i-csi as example where binding =

maintainers are Maxime and Chen-Yu and driver maintainer is Yong Deng.

Best regards,
Jernej

> =

> Regards,
> =

> 	Hans
> =

> > +
> > =

> >  DELL SMBIOS DRIVER
> >  M:	Pali Roh=E1r <pali.rohar@gmail.com>
> >  M:	Mario Limonciello <mario.limonciello@dell.com>





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
