Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 207F375342
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 17:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ihswhpGMwl3LU+TswtAXJzmuf8m8y9qJA1gL22X+iuo=; b=lE7Oc7PmEUbzXu
	H1QEYRdNCVMGRAgI6C4iCGpUe4N0CcPP698OhzQhqR/vtL18COLrVBGOVC/fCf+BFnO7JYV7z2kyr
	pGLhng1YfzhSLVfGGp+TruxgfcLISDXxuO61r4Wo5amlg5M/jFUJZKh0KJO4fmO4eMfQnyYRVZs/s
	a2J+zl7P+00mSfq7ANHF8awMzTlOgEDkK0J0i3UKroYBbjW3E1R/qIkv1gJjGvX45ViRYbcgOE9jS
	G76hxiMDNXTOdf+Ee/MenbSDnnr0rgsXpWjoqpB8z/utrGizbZ3lQoLJFq7/xVpDUKX7We0IB6hQN
	ppGpoZ9Z3mwQMxCvge1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqg4D-0006tM-8u; Thu, 25 Jul 2019 15:54:05 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqg3g-0006sl-JX
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 15:53:33 +0000
Received: by verein.lst.de (Postfix, from userid 2005)
 id 5BBF368B02; Thu, 25 Jul 2019 17:53:28 +0200 (CEST)
Date: Thu, 25 Jul 2019 17:53:28 +0200
From: Torsten Duwe <duwe@lst.de>
To: Enric Balletbo Serra <eballetbo@gmail.com>
Subject: Re: [PATCH v3 5/7] drm/bridge: Add Analogix anx6345 support
Message-ID: <20190725155328.GC4820@lst.de>
References: <20190722151154.8344568BFE@verein.lst.de>
 <CA+E=qVeSjE1i-ngJWv=GTQDM6HL-VEZWjXH_p_BXy+eP7SvWhg@mail.gmail.com>
 <CAFqH_50s0J_NEevV9b5o-wq-bw+xGaUZ3WyhVDRZKyM2Yn-iVg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFqH_50s0J_NEevV9b5o-wq-bw+xGaUZ3WyhVDRZKyM2Yn-iVg@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_085332_796257_6C17360B 
X-CRM114-Status: GOOD (  11.74  )
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
 devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Harald Geyer <harald@ccbib.org>, Sean Paul <seanpaul@chromium.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 05:45:15PM +0200, Enric Balletbo Serra wrote:
> Hi,
> 
> Missatge de Vasily Khoruzhick <anarsoul@gmail.com> del dia dl., 22 de
> jul. 2019 a les 20:50:
> >
> > On Mon, Jul 22, 2019 at 8:11 AM Torsten Duwe <duwe@lst.de> wrote:
> > >
> > > +module_i2c_driver(anx6345_driver);
> > > +
> > > +MODULE_DESCRIPTION("ANX6345 eDP Transmitter driver");
> > > +MODULE_AUTHOR("Enric Balletbo i Serra <enric.balletbo@collabora.com>");
> >
> > I believe Icenowy is the author of this driver. If you think otherwise
> > please add Enric to CC and get his Signed-off-by.
> >
> 
> I think that the only reason my name appears here is because is a
> copy/paste from analogix-anx78xx.c (probably this driver took that

Yes, this is the case.
You wrote / authored 500 lines of it, Icenowy about 300.

> file as a reference?). Indeed I am not the author of this driver, so
> Icenowy should be here, not me.

Very well. Thanks for this clear statement!

	Torsten


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
