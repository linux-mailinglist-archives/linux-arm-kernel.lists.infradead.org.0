Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8461327774
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 09:51:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+7nZykgc+t+q2RoG3R8ghfkQuTNI4Y/nU4tPz3bhr4Y=; b=KRXuLjditKEdxR
	7jfz/lwMUdiHjbDuE1LCgGHAeAXCeA68Wg+dqmB5D+e3AJiXkfXQQ7avOdwzDe5E4Se0hjcXLOER9
	stKpQjskvuC3flJo9RHyP+ZJ5oLwgTzOwuEtpdNHd8HvhV0rcAGoJAJ7eppfaUvf2LwqrhDl5btmr
	arVSy/HMcuzQ9C4VYo6ZmVzWFTO+/IIt4A+YIRgGcIqFBQJ97L76pzG65SmSYTO7I5SLATDX3geUF
	W/isd4VAsDylaR/bxOmxscG6sjluBnlNYbqe9hioZhbxQCBFpzuVMnRrpU7euwVOEyOWdqlU5pUb9
	7szVQNquljUqDnQLPtbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTiVJ-0005LX-CC; Thu, 23 May 2019 07:51:09 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTiVA-0005KO-Hb
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 07:51:03 +0000
Received: from pendragon.ideasonboard.com (85-76-106-214-nat.elisa-mobile.fi
 [85.76.106.214])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 80B99337;
 Thu, 23 May 2019 09:50:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1558597857;
 bh=zsNCBZECQ0yrfz5b/Kf0LR+UbT6mYeay0fy5WNOd/V8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Xy4kUdm69ph8GVhZbB3CiV/q9G0tNbpnq3bRoGsAzYQTqFj9QRoCeEk6+5pPuK8zt
 gk3ivrjSTiQ90/iwbUmZ2kErM4nCl6COVNX1ZPkLEVFqbjaQGiUBIeiPIBxSVAL5ra
 PYkGxHqqP33p+t7/trbNc4aJp7/wa3mZ9K4L9RXg=
Date: Thu, 23 May 2019 10:50:35 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH 3/6] drm/bridge: extract some Analogix I2C DP common code
Message-ID: <20190523075035.GA5971@pendragon.ideasonboard.com>
References: <20190523065013.2719D68B05@newverein.lst.de>
 <20190523065352.8FD7668B05@newverein.lst.de>
 <CAGb2v66+1+goJfnY7nWTGN2fupqMUm5o+gkPdUW6nxcwQEDwog@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v66+1+goJfnY7nWTGN2fupqMUm5o+gkPdUW6nxcwQEDwog@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_005102_390616_19B3EB25 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 David Airlie <airlied@linux.ie>, Thierry Reding <thierry.reding@gmail.com>,
 Torsten Duwe <duwe@lst.de>, dri-devel <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 03:40:25PM +0800, Chen-Yu Tsai wrote:
> On Thu, May 23, 2019 at 2:54 PM Torsten Duwe <duwe@lst.de> wrote:
> >
> > From: Icenowy Zheng <icenowy@aosc.io>
> >
> > Some code can be shared within different DP bridges by Analogix.
> >
> > Extract them to a new module.
> >
> > Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> > Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> > Signed-off-by: Torsten Duwe <duwe@suse.de>
> > ---
> >  drivers/gpu/drm/bridge/analogix/Kconfig            |   4 +
> >  drivers/gpu/drm/bridge/analogix/Makefile           |   2 +
> >  drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c | 146 +-----------------
> >  .../gpu/drm/bridge/analogix/analogix-i2c-dptx.c    | 169 +++++++++++++++++++++
> >  .../gpu/drm/bridge/analogix/analogix-i2c-dptx.h    |   2 +
> >  5 files changed, 178 insertions(+), 145 deletions(-)
> >  create mode 100644 drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c
> >
> 
> ...
> 
> >  static int anx78xx_set_hpd(struct anx78xx *anx78xx)
> > diff --git a/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c b/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c
> > new file mode 100644
> > index 000000000000..9cb30962032e
> > --- /dev/null
> > +++ b/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c
> > @@ -0,0 +1,169 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright(c) 2017 Icenowy Zheng <icenowy@aosc.io>
> > + *
> > + * Based on analogix-anx78xx.c, which is:
> > + *   Copyright(c) 2016, Analogix Semiconductor. All rights reserved.
> 
> If this was simple code movement, then the original copyright still applies.
> A different copyright notice should not be used. I suppose the same applies
> to the module author.

And likely to patch 2/6 too.

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
