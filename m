Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 266997A66E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 13:04:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3dkDhQTotyV2cpnRcp5hMlvRkSAGXMEVtYayFPAXeK8=; b=menV4vILcYOHu+
	9mnjUddFR3QBAeNqsBD6Zep3l3+RM6mYhiKXrmLo/SdBIKvJCBJH7kbXCjLcJTSiOZVSfrPYMKhyB
	F1/IOkcinJ/tZ37yLumkX6SjcTeC27hzF2JG/KQ1C9bDbEljlTfpqZgNGnKpR68gGQhrvT/iZpEpR
	h/yBRMSLTZAMTSwyNUJqHo6jGHq/iZBym4/HjCP5WFFLrwt/eQFIQ0NqdhzX7SzgtXGgdOgtM8gTK
	EWi7LPmaBFgLAQFb0E3iv+CzeMqUBLRzGQPKa+HBeLqdzyExJtnYZjoseFV5j75c12McJB/6HPzSU
	nzjyZSfY2MplvqVrEQjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsPvD-0004te-GJ; Tue, 30 Jul 2019 11:03:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsPv5-0004sq-9u; Tue, 30 Jul 2019 11:03:53 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0C5A4206E0;
 Tue, 30 Jul 2019 11:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564484629;
 bh=m7dX//3pP3+FR/k30u2LZ08eMNQLWPNMDC/X3b/BoIk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KMur5BSVhiHRRxRO7wuNTmwbmOspluKLLcMqQiSBI6R7I/hFrZiXflMDNkswhbTtv
 EtfxkIXJJq6sth6CVf9ItRiCuP0D4xoZNWRDgBMa+C9ci6Q/RzCOpg0pkrmiDgRQ+R
 3Gg+K/+v70+FPzWyiJ5B9GhEpGfyM7rsXoIoSgX0=
Date: Tue, 30 Jul 2019 13:03:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 2/7] drivers: Introduce device lookup variants by
 of_node
Message-ID: <20190730110315.GA31631@kroah.com>
References: <20190723221838.12024-1-suzuki.poulose@arm.com>
 <20190723221838.12024-3-suzuki.poulose@arm.com>
 <20190725135402.GL23883@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190725135402.GL23883@dell>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_040351_938369_BB449018 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -4.3 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: axentia.se]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: axentia.se]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Andrew Lunn <andrew@lunn.ch>, Thor Thayer <thor.thayer@linux.intel.com>,
 Heiko Stuebner <heiko@sntech.de>, rafael@kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-fpga@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Liam Girdwood <lgirdwood@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 linux-i2c@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-rockchip@lists.infradead.org,
 Wolfram Sang <wsa@the-dreams.de>, David Airlie <airlied@linux.ie>,
 Jiri Slaby <jslaby@suse.com>, devicetree@vger.kernel.org,
 Alan Tull <atull@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>, Moritz Fischer <mdf@kernel.org>,
 Takashi Iwai <tiwai@suse.com>, linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Peter Rosin <peda@axentia.se>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 02:54:02PM +0100, Lee Jones wrote:
> On Tue, 23 Jul 2019, Suzuki K Poulose wrote:
> 
> > Introduce wrappers for {bus/driver/class}_find_device() to
> > locate devices by its of_node.
> > 
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> > Cc: dri-devel@lists.freedesktop.org
> > Cc: David Airlie <airlied@linux.ie>
> > Cc: Daniel Vetter <daniel@ffwll.ch>
> > Cc: devicetree@vger.kernel.org
> > Cc: Florian Fainelli <f.fainelli@gmail.com>
> > Cc: Frank Rowand <frowand.list@gmail.com>
> > Cc: Heiko Stuebner <heiko@sntech.de>
> > Cc: Liam Girdwood <lgirdwood@gmail.com>
> > Cc: linux-i2c@vger.kernel.org
> > Cc: linux-rockchip@lists.infradead.org
> > Cc: linux-spi@vger.kernel.org
> > Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> > Cc: Takashi Iwai <tiwai@suse.com>
> > Cc: Wolfram Sang <wsa@the-dreams.de>
> > Cc: Alan Tull <atull@kernel.org>
> > Cc: Moritz Fischer <mdf@kernel.org>
> > Cc: linux-fpga@vger.kernel.org
> > Cc: Peter Rosin <peda@axentia.se>
> > Cc: Mark Brown <broonie@kernel.org>
> > Cc: Florian Fainelli <f.fainelli@gmail.com>
> > Cc: Heiner Kallweit <hkallweit1@gmail.com>
> > Cc: "David S. Miller" <davem@davemloft.net>
> > Cc: Andrew Lunn <andrew@lunn.ch>
> > Cc: Liam Girdwood <lgirdwood@gmail.com>
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> > Cc: Lee Jones <lee.jones@linaro.org>
> > Cc: Thor Thayer <thor.thayer@linux.intel.com>
> > Cc: Jiri Slaby <jslaby@suse.com>
> > Cc: Mark Brown <broonie@kernel.org>
> > Cc: Andrew Lunn <andrew@lunn.ch>
> > Cc: Peter Rosin <peda@axentia.se>
> > Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > ---
> >  - Dropped the reviewed-by tags from Thor, Mark, Andrew and Peter as the
> >    patches are mereged, though there are no functional changes.
> > ---
> >  drivers/amba/tegra-ahb.c              | 11 +-------
> >  drivers/fpga/fpga-bridge.c            |  8 +-----
> >  drivers/fpga/fpga-mgr.c               |  8 +-----
> >  drivers/gpu/drm/drm_mipi_dsi.c        |  7 +----
> >  drivers/i2c/i2c-core-of.c             |  7 +----
> >  drivers/mfd/altera-sysmgr.c           | 14 ++--------
> 
> For my own reference:
>   Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
> 
> What's the merge plan for this patch?
> 
> Is anyone prepared to create an immutable branch for us to pull from?
> I'm happy to do it if no one else steps up.

I'll take it, and create a branch for everyone to pull from.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
