Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 367066F0BF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 23:10:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pre4MvLuB4SStAZ4KsWznKknMpknDLF7eE2osZZzR0s=; b=NIsD5zYfeB48nb
	q5IqI29qROqxqr6oODOLBw3xHXrTS8DJT0ovGkJxR1diTxDIGs0vusf+YN6wypDeSiD8/O7VIrV7q
	Fsb9IF6njbzQzr7DTjgGUrDLHNGfzi1wX2VQy0pnbaQx65/fAwT9hztb5YBxDOyslboOJdH35XDOG
	fCFDea6LeLioQ7Gu0iP6tYDG/QVyp56lPvv9sg/8WPI57FLotd80i9vzofEk//A65d0HYXI1uie/u
	zaGBxXWQhlRNcqjEi1BkNOpKLLBrArvy2uNkntliYdnrJZRdcWje7gU7YpBPCzWxbfK+RvDKjbLyw
	+FRw2XYG3vxY4JmPfQlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1howcX-0003yq-VT; Sat, 20 Jul 2019 21:10:22 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1howbu-0003x4-8m
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 21:09:44 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 6A16EFB03;
 Sat, 20 Jul 2019 23:09:24 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lt3q_07BvhWh; Sat, 20 Jul 2019 23:09:23 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id ABB364017E; Sat, 20 Jul 2019 23:09:22 +0200 (CEST)
Date: Sat, 20 Jul 2019 23:09:22 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Robert Chiras <robert.chiras@nxp.com>
Subject: Re: [EXT] Re: [PATCH 00/10] Improvements and fixes for mxsfb DRM
 driver
Message-ID: <20190720210922.GA464@bogon.m.sigxcpu.org>
References: <1561555938-21595-1-git-send-email-robert.chiras@nxp.com>
 <20190711150403.GB23195@bogon.m.sigxcpu.org>
 <1562919331.3209.11.camel@nxp.com>
 <20190716145450.GA609@bogon.m.sigxcpu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716145450.GA609@bogon.m.sigxcpu.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_140942_486871_F51A66BD 
X-CRM114-Status: GOOD (  29.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "marex@denx.de" <marex@denx.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "airlied@linux.ie" <airlied@linux.ie>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "stefan@agner.ch" <stefan@agner.ch>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robert,
On Tue, Jul 16, 2019 at 04:54:50PM +0200, Guido G=FCnther wrote:
> Hi Robert,
> On Fri, Jul 12, 2019 at 08:15:32AM +0000, Robert Chiras wrote:
> > Hi Guido,
> > =

> > On Jo, 2019-07-11 at 17:04 +0200, Guido G=FCnther wrote:
> > > Hi Robert,
> > > On Wed, Jun 26, 2019 at 04:32:08PM +0300, Robert Chiras wrote:
> > > > =

> > > > This patch-set improves the use of eLCDIF block on iMX 8 SoCs (like
> > > > 8MQ, 8MM
> > > > and 8QXP). Following, are the new features added and fixes from
> > > > this
> > > > patch-set:
> > > > =

> > > > 1. Add support for drm_bridge
> > > > On 8MQ and 8MM, the LCDIF block is not directly connected to a
> > > > parallel
> > > > display connector, where an LCD panel can be attached, but instead
> > > > it is
> > > > connected to DSI controller. Since this DSI stands between the
> > > > display
> > > > controller (eLCDIF) and the physical connector, the DSI can be
> > > > implemented
> > > > as a DRM bridge. So, in order to be able to connect the mxsfb
> > > > driver to
> > > > the DSI driver, the support for a drm_bridge was needed in mxsfb
> > > > DRM
> > > > driver (the actual driver for the eLCDIF block).
> > > So I wanted to test this but with both my somewhat cleaned up nwl
> > > driver=B9 and the nwl driver forward ported from the nxp vendor tree
> > > I'm
> > > looking at a black screen with current mainline - while my dcss
> > > forward
> > > port gives me nice output on mipi dsi. Do you have a tree that uses
> > > mipi
> > > dsi on imx8mq where I could look at to check for differences?
> > Somewhere on the pixel path (between the display controller and the
> > DSI) there is a block that inverts the polarity. I can't remember
> > exactly what was the role of this block, but the polarity is inverted
> > when eLCDIF is used in combination with the DSI.
> > If you take a look at my DSI driver from NXP releases (I guess you have
> > them), you will see there is a hack in mode_fixup:
> > =

> > unsigned int *flags =3D &mode->flags;
> > if (dsi->sync_pol {
> > 	*flags |=3D DRM_MODE_FLAG_PHSYNC;
> > 	*flags |=3D DRM_MODE_FLAG_PVSYNC;
> > 	*flags &=3D ~DRM_MODE_FLAG_NHSYNC;
> > 	*flags &=3D ~DRM_MODE_FLAG_NVSYNC;
> > } else {
> > 	*flags &=3D ~DRM_MODE_FLAG_PHSYNC;
> > 	*flags &=3D ~DRM_MODE_FLAG_PVSYNC;
> > 	*flags |=3D DRM_MODE_FLAG_NHSYNC;
> > 	*flags |=3D DRM_MODE_FLAG_NVSYNC;
> > }
> =

> Thanks for the suggestion! I'll try that.
>
> > =

> > I know it's not clean, but it works for now. You can try this in your
> > driver and see if it helps.
> > These days I will also take your nwl-dsi driver and test it, and also
> > add support for bridge and eLCDIF to see if I can make it work.
> =

> I have hacky bridge support over here already. Give me some days to
> clean it up and it might safe you some work.

Your suggestion above (plus some other fixes) worked and
mxsfb+nwl+mixel-dphy works over here. I'll try to send a v1 of the nwl
driver out during the week.
Cheers,
 -- Guido

> Cheers,
>  -- Guido
> =

> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
