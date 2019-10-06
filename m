Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E019CD258
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 16:54:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vlc28wR2eDOjLuB0Aqy2M20My0R0gKviKJPi3Xq/t2o=; b=Ih8IS5/pMBHDpf
	uDqnjVQTcISTOBwUJiwhxVmo8ykChWjOODE5b3pDB3u0gbfIfps2ntmgsxqed+eiE702FQeeBcPkz
	krvDdbM1lJ8LTyO+ER5eXn0jR2hw+ROUJwaWHCRYMbJO6u0h8Ef7r8Yvtv3TQzdZs1o+dh2BayVrv
	s1GRWNQp+LNjo1xie8x2Puw4LWwfO5QP4Skh/hlG0oSFrCxQNyOBu69Z/rfFuzzXXmy4PmcL/HWwr
	uYDHQGT2WneTrp9ZmmBW5qaFx/6lmHOd1UkBm8/Ke2kRu9TYKqOVici7ZqrUWNhwyE006WIqT8tjA
	NApHp6KFLXgT3X7+SU3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH7vL-0001ar-Ic; Sun, 06 Oct 2019 14:54:15 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH7vE-0001aD-Cp
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 14:54:10 +0000
Received: from pendragon.ideasonboard.com
 (modemcable151.96-160-184.mc.videotron.ca [184.160.96.151])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0E517DD;
 Sun,  6 Oct 2019 16:53:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1570373636;
 bh=QDEA/8/x+1vTbsqf8DyjUh6f+BfP1E7QR04AKqspjjc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HZTmMLta2NyaurObBzy9hmysL2BaGuBN8DapUYbSEdZA8RRd7t3WhX/ivMtzWNRKs
 v+c38ZqqQwh7zfhsvqx+Lj1wY5aAzUWh/HAFjquKyg4y7T2XTDf7r/tMoLOkNHJ+VW
 cRQ46tPkZDH6CqKBPrrVWUXBNV6y1igkUnm+yGpU=
Date: Sun, 6 Oct 2019 17:53:48 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH] ARM: omap2plus_defconfig: Fix selected panels after
 generic panel changes
Message-ID: <20191006145348.GD4740@pendragon.ideasonboard.com>
References: <20191003165539.50318-1-tony@atomide.com>
 <03ca02c1-2816-17cd-03fd-5b72e5d0ec96@ti.com>
 <39E48EC6-65FE-419B-BBE8-E72CB44B517D@goldelico.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <39E48EC6-65FE-419B-BBE8-E72CB44B517D@goldelico.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_075408_797806_EC926E95 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux-OMAP <linux-omap@vger.kernel.org>, Tony Lindgren <tony@atomide.com>,
 Jyri Sarha <jsarha@ti.com>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nikolaus,

On Sat, Oct 05, 2019 at 12:50:37PM +0200, H. Nikolaus Schaller wrote:
> > Am 04.10.2019 um 10:41 schrieb Tomi Valkeinen <tomi.valkeinen@ti.com>:
> > 
> > On 03/10/2019 19:55, Tony Lindgren wrote:
> >> The old omapdrm panels got removed for v5.4 in favor of generic panels,
> >> and the Kconfig options changed. Let's update omap2plus_defconfig
> >> accordingly so the same panels are still enabled.
> >> Cc: Jyri Sarha <jsarha@ti.com>
> >> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> >> Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
> >> Signed-off-by: Tony Lindgren <tony@atomide.com>
> >> ---
> >>  arch/arm/configs/omap2plus_defconfig | 12 ++++++------
> >>  1 file changed, 6 insertions(+), 6 deletions(-)
> >> diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
> >> --- a/arch/arm/configs/omap2plus_defconfig
> >> +++ b/arch/arm/configs/omap2plus_defconfig
> >> @@ -356,14 +356,14 @@ CONFIG_DRM_OMAP_CONNECTOR_HDMI=m
> >>  CONFIG_DRM_OMAP_CONNECTOR_ANALOG_TV=m
> >>  CONFIG_DRM_OMAP_PANEL_DPI=m
> >>  CONFIG_DRM_OMAP_PANEL_DSI_CM=m
> >> -CONFIG_DRM_OMAP_PANEL_SONY_ACX565AKM=m
> >> -CONFIG_DRM_OMAP_PANEL_LGPHILIPS_LB035Q02=m
> >> -CONFIG_DRM_OMAP_PANEL_SHARP_LS037V7DW01=m
> >> -CONFIG_DRM_OMAP_PANEL_TPO_TD028TTEC1=m
> >> -CONFIG_DRM_OMAP_PANEL_TPO_TD043MTEA1=m
> >> -CONFIG_DRM_OMAP_PANEL_NEC_NL8048HL11=m
> >>  CONFIG_DRM_TILCDC=m
> >>  CONFIG_DRM_PANEL_SIMPLE=m
> >> +CONFIG_DRM_PANEL_LG_LB035Q02=m
> >> +CONFIG_DRM_PANEL_NEC_NL8048HL11=m
> >> +CONFIG_DRM_PANEL_SHARP_LS037V7DW01=m
> >> +CONFIG_DRM_PANEL_SONY_ACX565AKM=m
> >> +CONFIG_DRM_PANEL_TPO_TD028TTEC1=m
> >> +CONFIG_DRM_PANEL_TPO_TD043MTEA1=m
> >>  CONFIG_FB=y
> >>  CONFIG_FIRMWARE_EDID=y
> >>  CONFIG_FB_MODE_HELPERS=y
> > 
> > Sorry, I didn't remember to update these. Some additions:
> > 
> > These can be dropped, they no longer exist:
> > 
> > CONFIG_DRM_OMAP_ENCODER_TFP410=m
> > CONFIG_DRM_OMAP_CONNECTOR_DVI=m
> > CONFIG_DRM_OMAP_PANEL_DPI=m
> 
> After being hit by the __always_inline issue [1] I am now
> back with being able to test v5.4-rc1.
> 
> Now this patch fixes the build problem, but we still have
> one: panel drivers are no longer automatically loaded at
> boot. We now need to manually modprobe them.
> 
> This has been observed with GTA04 (TD028TTEC1) and OpenPandora
> (TD043MTEA1). So moving the drivers seems to have changed/broken
> something with DT based driver matching.

That's really weird, the driver name, the SPI device table and the OF
device table are the same (except for the "omapdss," prefix that we
don't add anymore in omapdss-boot-init.c). Would you be able to
investigate what broke ?

> [1]: https://lkml.org/lkml/2019/10/2/201

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
