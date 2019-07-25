Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 676CE7528E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 17:27:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LffHBgmHZ/lBi9red+PnozWrEo9x4BD/Ta6e1nxGxLg=; b=bh4mZkL82kYRS/
	22TV8nuJLgpRCIzoe2Ny1B474CoRjy3O9xLnGj0kwjHvOTi7X7PyiaPcWPqayGiRfmh52jnSzERkX
	Xx7y0dJe7Q7uNAX4oVPgQ9xxF9+MdF6/+ZxDbhRcU20t+cXNDkBXqej1by4RrBPoaY7ZTZvGbyE26
	QfSP0gmcGPW6V1vkmG7rK3AqkCp6hNcV9WzlCJ5jGdoM3SZwt9wwj85/2B9j9UmK+fT/52QSi1aoN
	dkGEZfkrsM1gezY3LGNgHmz7gtkeRUQ+LuNwEcql+yPM/KVbJa6pxtYmFhjHCBwS623QpntrxFB73
	dNY8Qq1It8ufNcg4iSAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqfeC-0000Dk-Px; Thu, 25 Jul 2019 15:27:12 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqfdv-0000D8-8B
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 15:26:56 +0000
Received: by verein.lst.de (Postfix, from userid 2005)
 id D9BD968B02; Thu, 25 Jul 2019 17:26:49 +0200 (CEST)
Date: Thu, 25 Jul 2019 17:26:49 +0200
From: Torsten Duwe <duwe@lst.de>
To: Vasily Khoruzhick <anarsoul@gmail.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH v3 5/7] drm/bridge: Add Analogix anx6345 support
Message-ID: <20190725152649.GB4820@lst.de>
References: <20190722151154.8344568BFE@verein.lst.de>
 <CA+E=qVeSjE1i-ngJWv=GTQDM6HL-VEZWjXH_p_BXy+eP7SvWhg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+E=qVeSjE1i-ngJWv=GTQDM6HL-VEZWjXH_p_BXy+eP7SvWhg@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_082655_441965_024D6CD7 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 11:49:48AM -0700, Vasily Khoruzhick wrote:
> On Mon, Jul 22, 2019 at 8:11 AM Torsten Duwe <duwe@lst.de> wrote:
> >
> > +module_i2c_driver(anx6345_driver);
> > +
> > +MODULE_DESCRIPTION("ANX6345 eDP Transmitter driver");
> > +MODULE_AUTHOR("Enric Balletbo i Serra <enric.balletbo@collabora.com>");
> 
> I believe Icenowy is the author of this driver. If you think otherwise
> please add Enric to CC and get his Signed-off-by.

This has already been questioned, and consequently I had a closer look.
Icenowy did the work of finding and splitting the common parts, and copied
and modified those that needed adaption.

Please read the change log(s) in the cover letter(s).

I guess Enric already did sign off his code, which only got moved, copied
and modified.

	Torsten


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
