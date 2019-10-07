Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 893FECEA67
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 19:16:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=52rj7Kyj8puLG3ctvBReK7mJ6NbgUqC3gv9RPPCB9WQ=; b=nJa5wUEj2QCS1A
	O5STH4/+kPE8dz9vwoQCthT8cWT8npj5qNQAi1o2ZTFgKgTXlg23uUjcOsD3QKcSi/jA3bjw+ILNL
	2rMa0PbUNzwdv0w6SoZE/fOeuNjhe3bGdukHz2LjWQZ3wT+Kp7XHs5oLJyPb6V17qq6QzG52HYd45
	m4Vq/yQ7DJe/OTRzfdXC5YvA1T5EbyjpJYyrApgxsVn8/ZWQS3SiUJP2VMzmagoWi0+oyBnOMKfPp
	bOguEIB1FJrNNWVoIDDvPCYf+gK6dF2PfNJCtJGCK1UJ5JoWUCra/yM+0gm8ZLs8dE7rySuggLEo0
	wyk1DM5vGx73Nq83v2cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHWcq-0000iW-4R; Mon, 07 Oct 2019 17:16:48 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHWcj-0000i9-9r
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 17:16:42 +0000
Received: from pendragon.ideasonboard.com
 (modemcable118.64-20-96.mc.videotron.ca [96.20.64.118])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 67FCFB2D;
 Mon,  7 Oct 2019 19:16:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1570468598;
 bh=yeGcY0TtxD7c9pfFdsT6/oUxOBZyIhvn1OM7dinxI3E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aHiUTT9rltB1HpUJW0LhlBgqYRX5nzr2vv+HTQd5V9+DeM97FL65SdgZ19n0ORsxO
 zrkNz2OJQkoiyFYrKPvB9FsRlemo6YEDDZUhoYYDt3Rx6XbQrtEOZYO+CN9/fOVG8U
 fC9KF0SRLvYp/zjxxgXvKmVSK+jXEhAFH64+JP1U=
Date: Mon, 7 Oct 2019 20:16:35 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Andreas Kemnade <andreas@kemnade.info>
Subject: Re: [PATCH] drm: panels: fix spi aliases of former omap panels
Message-ID: <20191007171635.GC11781@pendragon.ideasonboard.com>
References: <20191007164130.31534-1-andreas@kemnade.info>
 <20191007170446.yotb24s6jhe6nx3r@earth.universe>
 <20191007191428.016ddcd4@aktux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191007191428.016ddcd4@aktux>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_101641_485373_07315D3E 
X-CRM114-Status: GOOD (  15.44  )
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
Cc: Linux-OMAP <linux-omap@vger.kernel.org>, airlied@linux.ie,
 omi Valkeinen <tomi.valkeinen@ti.com>, Sebastian Reichel <sre@kernel.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Tony Lindgren <tony@atomide.com>, thierry.reding@gmail.com,
 Jyri Sarha <jsarha@ti.com>, daniel@ffwll.ch,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 sam@ravnborg.org, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andreas,

On Mon, Oct 07, 2019 at 07:14:28PM +0200, Andreas Kemnade wrote:
> On Mon, 7 Oct 2019 19:04:46 +0200 Sebastian Reichel wrote:
> > On Mon, Oct 07, 2019 at 06:41:30PM +0200, Andreas Kemnade wrote:
> > > When the panels were moved from omap/displays/ to panel/
> > > omapdss prefix was stripped, which cause spi modalias
> > > to not contain the vendor-prefix anymore.
> > > 
> > > so we had e.g. in former times:
> > > compatible=omapdss,tpo,td028ttec1 -> modalias=spi:tpo,td028ttec1
> > > now:
> > > compatible=tpo,td028ttec1 -> modalias=spi:td028ttec1
> > > 
> > > This is consistent with other drivers. Tested the td028ttec.c
> > > only, but the pattern looks the same for the other ones.
> > > 
> > > Fixes: 45f16c82db7e8 ("drm/omap: displays: Remove unused panel drivers")
> > > Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> > > ---  
> > 
> > Patch looks good to me, but you have one false positive.
> > 
> > > [...]
> > >
> > > diff --git a/drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c b/drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c
> > > index 46cd9a2501298..838d39a263f53 100644
> > > --- a/drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c
> > > +++ b/drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c
> > > @@ -204,7 +204,7 @@ static int ls037v7dw01_remove(struct platform_device *pdev)
> > >  }
> > >  
> > >  static const struct of_device_id ls037v7dw01_of_match[] = {
> > > -	{ .compatible = "sharp,ls037v7dw01", },
> > > +	{ .compatible = "ls037v7dw01", },
> > >  	{ /* sentinel */ },
> > >  };
> > 
> > The DT compatible should have a vendor prefix.
> 
> oops, sorry, but I it seems that Laurent already has submitted a fix.

Seems we've been racing each other :-S Feel free to submit a v2 of this
patch if you think it's better than my series. As long as the problem
gets fixed, I'll be happy :-)

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
