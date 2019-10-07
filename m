Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04881CEA30
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 19:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yI3aLyGEfoI0OmwHgNLZRKHq31voXbYGeUVAkETkG0c=; b=AuyaDDmi5T2KfE
	qCyuQQ/BePNGZpjaUXNViSccmE6q9PpQtGtQf9rsX1Qk/nW8cdp+iVifxKK7tzSztOTlcERGshJSC
	iDv3y7yuO9ysTONeQlPXYt8S3q0MxteMjDjSNLEQhDQ1Dp4cZ6xgStlORtibsmCOl8rWJJOvq96HO
	dR4nU5KGXQCgNfL4tFBpHVjhAuydwk1qHIn8uNZDs7k1hPX0oy4z3sc28S5hgpD8s8hHjAY4KIQRv
	JAJBRmtb25fjaSuaA9LYbgmTzTmxyEWgYNpOQZLx2Ue0iZolz4WGydJTQno5XakUW7CFeVe5oRNEn
	NNAtLDOW/wDqgoKdohNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHWUu-00052f-5i; Mon, 07 Oct 2019 17:08:36 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHWUh-00052A-8u
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 17:08:27 +0000
Received: from pendragon.ideasonboard.com
 (modemcable118.64-20-96.mc.videotron.ca [96.20.64.118])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 522A9B8C;
 Mon,  7 Oct 2019 19:08:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1570468094;
 bh=N7ISq7NdXSNBI5n1IAaAmaCNu3Aqe5oOlMG9ryV4jx0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vJihZlHHKearzFDPIQbRJMBmk4dQa77vOgzD9+B3PLSv3J08wgfnUb5n2v6+8+U4f
 HH2JipujkTzPu1u44nzcb/XxuhwZDF95a4+nWXhf5DLUD9+8KagFqFcAgFi63gOewM
 z2bF7PxZ1EnXqYbZnrohu9DXDhJy5YlfEKsqkkPM=
Date: Mon, 7 Oct 2019 20:08:11 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Andreas Kemnade <andreas@kemnade.info>
Subject: Re: [Letux-kernel] [PATCH] ARM: omap2plus_defconfig: Fix selected
 panels after generic panel changes
Message-ID: <20191007170811.GA11781@pendragon.ideasonboard.com>
References: <20191003165539.50318-1-tony@atomide.com>
 <03ca02c1-2816-17cd-03fd-5b72e5d0ec96@ti.com>
 <39E48EC6-65FE-419B-BBE8-E72CB44B517D@goldelico.com>
 <20191006145348.GD4740@pendragon.ideasonboard.com>
 <20191006223958.67725fdf@aktux> <20191007064035.72016c78@aktux>
 <654d00a7-d802-d116-84c4-7c614d0fe272@ti.com>
 <20191007180957.69cf7b55@aktux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191007180957.69cf7b55@aktux>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_100825_758032_E9715100 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Mon, Oct 07, 2019 at 06:09:57PM +0200, Andreas Kemnade wrote:
> On Mon, 7 Oct 2019 17:29:20 +0300 Tomi Valkeinen wrote:
> > On 07/10/2019 07:40, Andreas Kemnade wrote:
> > 
> >>>> That's really weird, the driver name, the SPI device table and the OF
> >>>> device table are the same (except for the "omapdss," prefix that we
> >>>> don't add anymore in omapdss-boot-init.c). Would you be able to
> >>>> investigate what broke ?
> >>>>      
> >>> in earlier times:
> >>>
> >>> root@gta04:/sys/bus/spi/devices/spi4.0# cat modalias
> >>> spi:tpo,td028ttec1
> >>>
> >>> now in 5.4-rc1:
> >>> root@gta04:/sys/bus/spi/devices/spi4.0# cat modalias
> >>> spi:td028ttec1
> >>>
> >>> root@gta04:~# modinfo /lib/modules/5.4.0-rc1-letux+/kernel/drivers/gpu/drm/panel/panel-tpo-td028ttec1.ko
> >>> filename:       /lib/modules/5.4.0-rc1-letux+/kernel/drivers/gpu/drm/panel/panel-tpo-td028ttec1.ko
> >>> license:        GPL
> >>> description:    Toppoly TD028TTEC1 panel driver
> >>> author:         H. Nikolaus Schaller <hns@goldelico.com>
> >>> srcversion:     6B3E224BCD3D76253CF361C
> >>> alias:          of:N*T*Ctoppoly,td028ttec1C*
> >>> alias:          of:N*T*Ctoppoly,td028ttec1
> >>> alias:          of:N*T*Ctpo,td028ttec1C*
> >>> alias:          of:N*T*Ctpo,td028ttec1
> >>> alias:          spi:toppoly,td028ttec1
> >>> alias:          spi:tpo,td028ttec1
> >>> depends:        drm
> >>> intree:         Y
> >>> name:           panel_tpo_td028ttec1
> >>> vermagic:       5.4.0-rc1-letux+ SMP preempt mod_unload ARMv7 p2v8
> >>>
> >>> That alias is not in the list.
> >>>  
> >> some more research:
> >> in former times
> >> of_modalias_node() has stripped the omapdss prefix, result: modalias=spi:tpo,td028ttec1
> >> now it strips the tpo prefix because there is no omapdss prefix anymore.  
> > 
> > I haven't studied this more yet, but yes, I can see of_modalias_node 
> > stripping the vendor prefix on purpose. I do wonder how this is supposed 
> > to work, it would make more sense to me to keep the vendor prefix.
> > 
> > Is the spi_device_id supposed to be without vendor prefix? With a quick 
> > grep, this seems to be the case.
>
> as it is done in drivers/spi/spi.c we have no influence from drm side.
> So we must live with it. Also checked several drivers, no vendor-prefix
> there.

I *think* SPI drivers are not supposed to include any prefix. The fix
would then simply be to strip the prefix from the SPI table (leaving it
there for the OF table of course). I've submitted a patch series to do
so.

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
