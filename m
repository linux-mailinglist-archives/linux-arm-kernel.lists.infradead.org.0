Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B696AB0F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 16:55:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oDwfQlsrzBDHhOwgkRRS5nRdN3Fe1PpoIelirBIyK9M=; b=grJtrwD966dxSA
	duQC5c8gTbilfqzFSslnSH8avQPswHy7LXu/SHI+XiBkGhSeaqYA65cQcWmwpg+MMlic4ixX5gT/X
	ekPCaVHdBO5PVaMZrd3LVXC8/n+HUuiP2iStj2tSbiKzUm6IpMndrt/aNjTuTMH292Jw0mJjRLVjN
	N/4ckjqtoUWHcT9M7EE7A0M8/6KhIZFW2DC+tfOmZ7I5Q0DfoQ20VCsPXsZ8XA3RPSrOC9AreKFKv
	Y6TI9AAriB6DkcVGBfPuE4C2wRDjdTr5Ge9kawLwGwzHntl9fTF826uhM2DKDGgRkH/8M7PA3Yd31
	t7IcJmf1+SaXsscGYsog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnOrP-0002d9-1Z; Tue, 16 Jul 2019 14:55:19 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnOr3-0002bt-0h
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 14:54:59 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id AE3A1FB03;
 Tue, 16 Jul 2019 16:54:52 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rc1dG7eD4j4M; Tue, 16 Jul 2019 16:54:51 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 08B5141140; Tue, 16 Jul 2019 16:54:50 +0200 (CEST)
Date: Tue, 16 Jul 2019 16:54:50 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Robert Chiras <robert.chiras@nxp.com>
Subject: Re: [EXT] Re: [PATCH 00/10] Improvements and fixes for mxsfb DRM
 driver
Message-ID: <20190716145450.GA609@bogon.m.sigxcpu.org>
References: <1561555938-21595-1-git-send-email-robert.chiras@nxp.com>
 <20190711150403.GB23195@bogon.m.sigxcpu.org>
 <1562919331.3209.11.camel@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562919331.3209.11.camel@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_075457_218917_79FFE15F 
X-CRM114-Status: GOOD (  25.25  )
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
 "daniel@ffwll.ch" <daniel@ffwll.ch>, "airlied@linux.ie" <airlied@linux.ie>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "stefan@agner.ch" <stefan@agner.ch>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robert,
On Fri, Jul 12, 2019 at 08:15:32AM +0000, Robert Chiras wrote:
> Hi Guido,
> =

> On Jo, 2019-07-11 at 17:04 +0200, Guido G=FCnther wrote:
> > Hi Robert,
> > On Wed, Jun 26, 2019 at 04:32:08PM +0300, Robert Chiras wrote:
> > > =

> > > This patch-set improves the use of eLCDIF block on iMX 8 SoCs (like
> > > 8MQ, 8MM
> > > and 8QXP). Following, are the new features added and fixes from
> > > this
> > > patch-set:
> > > =

> > > 1. Add support for drm_bridge
> > > On 8MQ and 8MM, the LCDIF block is not directly connected to a
> > > parallel
> > > display connector, where an LCD panel can be attached, but instead
> > > it is
> > > connected to DSI controller. Since this DSI stands between the
> > > display
> > > controller (eLCDIF) and the physical connector, the DSI can be
> > > implemented
> > > as a DRM bridge. So, in order to be able to connect the mxsfb
> > > driver to
> > > the DSI driver, the support for a drm_bridge was needed in mxsfb
> > > DRM
> > > driver (the actual driver for the eLCDIF block).
> > So I wanted to test this but with both my somewhat cleaned up nwl
> > driver=B9 and the nwl driver forward ported from the nxp vendor tree
> > I'm
> > looking at a black screen with current mainline - while my dcss
> > forward
> > port gives me nice output on mipi dsi. Do you have a tree that uses
> > mipi
> > dsi on imx8mq where I could look at to check for differences?
> Somewhere on the pixel path (between the display controller and the
> DSI) there is a block that inverts the polarity. I can't remember
> exactly what was the role of this block, but the polarity is inverted
> when eLCDIF is used in combination with the DSI.
> If you take a look at my DSI driver from NXP releases (I guess you have
> them), you will see there is a hack in mode_fixup:
> =

> unsigned int *flags =3D &mode->flags;
> if (dsi->sync_pol {
> 	*flags |=3D DRM_MODE_FLAG_PHSYNC;
> 	*flags |=3D DRM_MODE_FLAG_PVSYNC;
> 	*flags &=3D ~DRM_MODE_FLAG_NHSYNC;
> 	*flags &=3D ~DRM_MODE_FLAG_NVSYNC;
> } else {
> 	*flags &=3D ~DRM_MODE_FLAG_PHSYNC;
> 	*flags &=3D ~DRM_MODE_FLAG_PVSYNC;
> 	*flags |=3D DRM_MODE_FLAG_NHSYNC;
> 	*flags |=3D DRM_MODE_FLAG_NVSYNC;
> }

Thanks for the suggestion! I'll try that.

> =

> I know it's not clean, but it works for now. You can try this in your
> driver and see if it helps.
> These days I will also take your nwl-dsi driver and test it, and also
> add support for bridge and eLCDIF to see if I can make it work.

I have hacky bridge support over here already. Give me some days to
clean it up and it might safe you some work.
Cheers,
 -- Guido

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
