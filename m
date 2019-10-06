Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94922CD931
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 22:40:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZW9aHXDAzBJ/jGv7NHhmq6/gVbj5RC7rATcpQIHVFgA=; b=ao+sgui6WaHlnR
	u7uOuoUo1kRnWg8btPsUl8HMTWbt4DBcsJqc2HFoOCk9H+JwVKAck0VQ64FpOe/f1zWmCLBUp0Fir
	kH0QLAsXYY9sRyXXHY3nm5zHv389BU6s0vP2JJvpRFchrNu3WD4wCAHgp/ir/VqY988cA2gNG0xm8
	gRgO6mFmpkO31zQLuSDoVu8s80IO5E9OPkT3PRs/plFuavZTeKqd30IUZJzX1lFuxrZVWEe/6oDkU
	6Swpk689B35585JXd0XUuwey0O5YY+Bqo9/lfl2otnMsrYFgtD6IkvKvKAwqQqAi8p/jA3i+y+ARt
	7suE847l070cqs6mzE2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHDKH-00018e-Lq; Sun, 06 Oct 2019 20:40:21 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHDK8-0000pX-N1
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 20:40:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Kmqc1gyCOEXWax+OJQe95Wf8OIFkVcvFuA5NIENmB9w=; b=C2tfPJjco/lCDXtVDnJqv5CNPp
 y3ofFkc6hWwUiM71+f2x15QeBAlGPR+kCjIh+lD1Z/qiyf9v0ZKbA7xhbyqP6aCkzlzIBcjnwrA5q
 3z0KpLnuxDPYFyQ9OYopTEMkG9JkVjGOqw9y4sjoLW1NaO8Fxe+upi5ghrrMR4SJjZSE=;
Received: from p200300ccff4b78001a3da2fffebfd33a.dip0.t-ipconnect.de
 ([2003:cc:ff4b:7800:1a3d:a2ff:febf:d33a] helo=aktux)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1iHDJw-0002Xm-3t; Sun, 06 Oct 2019 22:40:00 +0200
Date: Sun, 6 Oct 2019 22:39:58 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [Letux-kernel] [PATCH] ARM: omap2plus_defconfig: Fix selected
 panels after generic panel changes
Message-ID: <20191006223958.67725fdf@aktux>
In-Reply-To: <20191006145348.GD4740@pendragon.ideasonboard.com>
References: <20191003165539.50318-1-tony@atomide.com>
 <03ca02c1-2816-17cd-03fd-5b72e5d0ec96@ti.com>
 <39E48EC6-65FE-419B-BBE8-E72CB44B517D@goldelico.com>
 <20191006145348.GD4740@pendragon.ideasonboard.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_134013_309244_FA6E2FA4 
X-CRM114-Status: GOOD (  17.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Tony Lindgren <tony@atomide.com>, "H.
 Nikolaus Schaller" <hns@goldelico.com>, Jyri Sarha <jsarha@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 6 Oct 2019 17:53:48 +0300
Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:

> Hi Nikolaus,
> 
> On Sat, Oct 05, 2019 at 12:50:37PM +0200, H. Nikolaus Schaller wrote:
> > > Am 04.10.2019 um 10:41 schrieb Tomi Valkeinen <tomi.valkeinen@ti.com>:
> > > 
> > > On 03/10/2019 19:55, Tony Lindgren wrote:  
> > >> The old omapdrm panels got removed for v5.4 in favor of generic panels,
> > >> and the Kconfig options changed. Let's update omap2plus_defconfig
> > >> accordingly so the same panels are still enabled.
> > >> Cc: Jyri Sarha <jsarha@ti.com>
> > >> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > >> Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
> > >> Signed-off-by: Tony Lindgren <tony@atomide.com>
> > >> ---
> > >>  arch/arm/configs/omap2plus_defconfig | 12 ++++++------
> > >>  1 file changed, 6 insertions(+), 6 deletions(-)
> > >> diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
> > >> --- a/arch/arm/configs/omap2plus_defconfig
> > >> +++ b/arch/arm/configs/omap2plus_defconfig
> > >> @@ -356,14 +356,14 @@ CONFIG_DRM_OMAP_CONNECTOR_HDMI=m
> > >>  CONFIG_DRM_OMAP_CONNECTOR_ANALOG_TV=m
> > >>  CONFIG_DRM_OMAP_PANEL_DPI=m
> > >>  CONFIG_DRM_OMAP_PANEL_DSI_CM=m
> > >> -CONFIG_DRM_OMAP_PANEL_SONY_ACX565AKM=m
> > >> -CONFIG_DRM_OMAP_PANEL_LGPHILIPS_LB035Q02=m
> > >> -CONFIG_DRM_OMAP_PANEL_SHARP_LS037V7DW01=m
> > >> -CONFIG_DRM_OMAP_PANEL_TPO_TD028TTEC1=m
> > >> -CONFIG_DRM_OMAP_PANEL_TPO_TD043MTEA1=m
> > >> -CONFIG_DRM_OMAP_PANEL_NEC_NL8048HL11=m
> > >>  CONFIG_DRM_TILCDC=m
> > >>  CONFIG_DRM_PANEL_SIMPLE=m
> > >> +CONFIG_DRM_PANEL_LG_LB035Q02=m
> > >> +CONFIG_DRM_PANEL_NEC_NL8048HL11=m
> > >> +CONFIG_DRM_PANEL_SHARP_LS037V7DW01=m
> > >> +CONFIG_DRM_PANEL_SONY_ACX565AKM=m
> > >> +CONFIG_DRM_PANEL_TPO_TD028TTEC1=m
> > >> +CONFIG_DRM_PANEL_TPO_TD043MTEA1=m
> > >>  CONFIG_FB=y
> > >>  CONFIG_FIRMWARE_EDID=y
> > >>  CONFIG_FB_MODE_HELPERS=y  
> > > 
> > > Sorry, I didn't remember to update these. Some additions:
> > > 
> > > These can be dropped, they no longer exist:
> > > 
> > > CONFIG_DRM_OMAP_ENCODER_TFP410=m
> > > CONFIG_DRM_OMAP_CONNECTOR_DVI=m
> > > CONFIG_DRM_OMAP_PANEL_DPI=m  
> > 
> > After being hit by the __always_inline issue [1] I am now
> > back with being able to test v5.4-rc1.
> > 
> > Now this patch fixes the build problem, but we still have
> > one: panel drivers are no longer automatically loaded at
> > boot. We now need to manually modprobe them.
> > 
> > This has been observed with GTA04 (TD028TTEC1) and OpenPandora
> > (TD043MTEA1). So moving the drivers seems to have changed/broken
> > something with DT based driver matching.  
> 
> That's really weird, the driver name, the SPI device table and the OF
> device table are the same (except for the "omapdss," prefix that we
> don't add anymore in omapdss-boot-init.c). Would you be able to
> investigate what broke ?
> 
in earlier times:

root@gta04:/sys/bus/spi/devices/spi4.0# cat modalias 
spi:tpo,td028ttec1

now in 5.4-rc1:
root@gta04:/sys/bus/spi/devices/spi4.0# cat modalias 
spi:td028ttec1

root@gta04:~# modinfo /lib/modules/5.4.0-rc1-letux+/kernel/drivers/gpu/drm/panel/panel-tpo-td028ttec1.ko 
filename:       /lib/modules/5.4.0-rc1-letux+/kernel/drivers/gpu/drm/panel/panel-tpo-td028ttec1.ko
license:        GPL
description:    Toppoly TD028TTEC1 panel driver
author:         H. Nikolaus Schaller <hns@goldelico.com>
srcversion:     6B3E224BCD3D76253CF361C
alias:          of:N*T*Ctoppoly,td028ttec1C*
alias:          of:N*T*Ctoppoly,td028ttec1
alias:          of:N*T*Ctpo,td028ttec1C*
alias:          of:N*T*Ctpo,td028ttec1
alias:          spi:toppoly,td028ttec1
alias:          spi:tpo,td028ttec1
depends:        drm
intree:         Y
name:           panel_tpo_td028ttec1
vermagic:       5.4.0-rc1-letux+ SMP preempt mod_unload ARMv7 p2v8 

That alias is not in the list.

Regards,
Andreas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
