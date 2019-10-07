Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C27E8CE8BC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 18:10:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xLuo9PYNjbfGY9Ay9+cscipla7eW2ujKi10cyFbr21Q=; b=QEA+H3ZVbH3pxr
	XyZPZR57dYuhAZjTwNwaBcs1xaHekj7DmJ5nOsf/LZzLMVFq7SpImWIaV8wY6Lgl6Vi/EvMfIPhdb
	jMh1y6UYkGM2TBkqdpT9VJxfUw2EhbYj8hgh7H3CZ3U9ZY68htKH0lXrx1npWjbbzOzHbD2ouPSsB
	YEuW6mNzhTywoBrcIVqSelzebkNut76+QRkM82Hbjud9cHk26ltsFmAD9G2Gagwhmm0nZpbTs41Y0
	/G+ia+yejddBP2c6SWnzbO0QMSUVKMqIhdlZatpW/JF3V/sJsj3Q1OYMQ4Oy1hoME35KWeqHDQjx+
	hwgIv4T1HQ5Q5qbx/EVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHVaf-0006pW-Mh; Mon, 07 Oct 2019 16:10:29 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHVaM-0006Bz-NT
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 16:10:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i+GXtAfr3NT3UKe6c7/u/5BLJlOdChLnvUuNpkuv6bw=; b=JhMyFEVEhJ/XLzBh0FKFsnS31J
 hrnMM3KookEC6NnkjhswkBvc7g/iWE5SnfIg4OB00XxqSw40WdC9gX7kjTYf+dvlQqFzC0cjQirx1
 Er7u+RQ6ohu09IpukZQVG3aK3Ja8K4KmUIgy2AcfDPlqBm5WrNH8Kb003Xff4BO0+vKs=;
Received: from p200300ccff0a88001a3da2fffebfd33a.dip0.t-ipconnect.de
 ([2003:cc:ff0a:8800:1a3d:a2ff:febf:d33a] helo=aktux)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1iHVaA-0008Fu-U1; Mon, 07 Oct 2019 18:09:59 +0200
Date: Mon, 7 Oct 2019 18:09:57 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: Tomi Valkeinen <tomi.valkeinen@ti.com>
Subject: Re: [Letux-kernel] [PATCH] ARM: omap2plus_defconfig: Fix selected
 panels after generic panel changes
Message-ID: <20191007180957.69cf7b55@aktux>
In-Reply-To: <654d00a7-d802-d116-84c4-7c614d0fe272@ti.com>
References: <20191003165539.50318-1-tony@atomide.com>
 <03ca02c1-2816-17cd-03fd-5b72e5d0ec96@ti.com>
 <39E48EC6-65FE-419B-BBE8-E72CB44B517D@goldelico.com>
 <20191006145348.GD4740@pendragon.ideasonboard.com>
 <20191006223958.67725fdf@aktux> <20191007064035.72016c78@aktux>
 <654d00a7-d802-d116-84c4-7c614d0fe272@ti.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_091011_338138_2924C6B2 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Tony Lindgren <tony@atomide.com>, Jyri Sarha <jsarha@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 7 Oct 2019 17:29:20 +0300
Tomi Valkeinen <tomi.valkeinen@ti.com> wrote:

> On 07/10/2019 07:40, Andreas Kemnade wrote:
> 
> >>> That's really weird, the driver name, the SPI device table and the OF
> >>> device table are the same (except for the "omapdss," prefix that we
> >>> don't add anymore in omapdss-boot-init.c). Would you be able to
> >>> investigate what broke ?
> >>>      
> >> in earlier times:
> >>
> >> root@gta04:/sys/bus/spi/devices/spi4.0# cat modalias
> >> spi:tpo,td028ttec1
> >>
> >> now in 5.4-rc1:
> >> root@gta04:/sys/bus/spi/devices/spi4.0# cat modalias
> >> spi:td028ttec1
> >>
> >> root@gta04:~# modinfo /lib/modules/5.4.0-rc1-letux+/kernel/drivers/gpu/drm/panel/panel-tpo-td028ttec1.ko
> >> filename:       /lib/modules/5.4.0-rc1-letux+/kernel/drivers/gpu/drm/panel/panel-tpo-td028ttec1.ko
> >> license:        GPL
> >> description:    Toppoly TD028TTEC1 panel driver
> >> author:         H. Nikolaus Schaller <hns@goldelico.com>
> >> srcversion:     6B3E224BCD3D76253CF361C
> >> alias:          of:N*T*Ctoppoly,td028ttec1C*
> >> alias:          of:N*T*Ctoppoly,td028ttec1
> >> alias:          of:N*T*Ctpo,td028ttec1C*
> >> alias:          of:N*T*Ctpo,td028ttec1
> >> alias:          spi:toppoly,td028ttec1
> >> alias:          spi:tpo,td028ttec1
> >> depends:        drm
> >> intree:         Y
> >> name:           panel_tpo_td028ttec1
> >> vermagic:       5.4.0-rc1-letux+ SMP preempt mod_unload ARMv7 p2v8
> >>
> >> That alias is not in the list.
> >>  
> > some more research:
> > in former times
> > of_modalias_node() has stripped the omapdss prefix, result: modalias=spi:tpo,td028ttec1
> > now it strips the tpo prefix because there is no omapdss prefix anymore.  
> 
> I haven't studied this more yet, but yes, I can see of_modalias_node 
> stripping the vendor prefix on purpose. I do wonder how this is supposed 
> to work, it would make more sense to me to keep the vendor prefix.
> 
> Is the spi_device_id supposed to be without vendor prefix? With a quick 
> grep, this seems to be the case.
> 
as it is done in drivers/spi/spi.c we have no influence from drm side.
So we must live with it. Also checked several drivers, no vendor-prefix
there.

Regards,
Andreas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
