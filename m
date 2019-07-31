Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C26297D007
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 23:27:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6hxWXLCtiBaSW5W46BZuoBeE1o8P8GKJ8Ea048RnEJ0=; b=CDo2Vuo0MS0g9A
	1reOlW/nOexZZ02tUG9jd/fZC5R04/RxVIg7j5uZ2LEEiudSuuNI8nnxr3ClxPOGoht0c6fuNCqex
	Di07Xhylgj5+DMOMnJy0gg0qHcTnanQHVRUrI8g+LdRfQkXr7FKaVDTVB9J8v/81yLXEUYXzsJF56
	ueVSX/l+bLvlSmvv6TVv3roUdbcDG/aQ72fGTuaLh0ejx+KlBdB12hTNSmngtN1CPaATRwHRXQ28U
	YlDRkTqGZc/uRtVf9jOvI/bAPCQOF5/IIDbOsLq77WvFHFC29L6bFfFrOC/Oy2Cli+aV/e7tZr8df
	QrsaMeGmC2EaK8ifaWyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsw8T-0001TW-Az; Wed, 31 Jul 2019 21:27:49 +0000
Received: from [191.33.152.89] (helo=coco.lan)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hsw8I-0001T3-HP; Wed, 31 Jul 2019 21:27:38 +0000
Date: Wed, 31 Jul 2019 18:27:29 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 0/6] ReST conversion patches not applied yet
Message-ID: <20190731182729.01c98cd3@coco.lan>
In-Reply-To: <20190731203712.GJ4369@sirena.org.uk>
References: <cover.1564603513.git.mchehab+samsung@kernel.org>
 <20190731141734.1fa9ce64@lwn.net>
 <20190731202007.GI4369@sirena.org.uk>
 <20190731172613.32d65ad8@coco.lan>
 <20190731203712.GJ4369@sirena.org.uk>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dave Kleikamp <shaggy@kernel.org>,
 alsa-devel@alsa-project.org,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Evgeniy Polyakov <zbr@ioremap.net>,
 linux-cifs@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>,
 Jonathan Corbet <corbet@lwn.net>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
 Evgeniy Dushistov <dushistov@mail.ru>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>, samba-technical@lists.samba.org,
 Liam Girdwood <lgirdwood@gmail.com>, linux-iio@vger.kernel.org,
 linux-spi@vger.kernel.org, Steve French <sfrench@samba.org>,
 Hartmut Knaack <knaack.h@gmx.de>, Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Wed, 31 Jul 2019 21:37:12 +0100
Mark Brown <broonie@kernel.org> escreveu:

> On Wed, Jul 31, 2019 at 05:26:13PM -0300, Mauro Carvalho Chehab wrote:
> > Mark Brown <broonie@kernel.org> escreveu:  
> 
> > > There were outstanding questions about where it was going to get moved
> > > to but if I read the diff correctly it looks like it didn't actually get
> > > moved in the end?  
> 
> > Yeah, it doesn't have the move. My understanding from our discussions
> > is that we didn't reach a conclusion.  
> 
> Yes, that was my understanding too which was why I was surprised to see
> this going in.  This is OK then, I'd have acked it.
> 
> > In any case, I can send a separate patch with the move part once
> > we reach an agreement about what's the best way to proceed (or you
> > can do it directly, if you prefer so).  
> 
> I'm not likely to do anything without someone sending patches, I'm not
> clear on the utility of the move with the current division of the
> manuals.

Same here: I do see value on having docs focused on their audience.

Yet, I'm not so sure how worth is to break some subsystem documentation 
into books, as, on some cases, this would mean huge efforts.

I'd prefer to see the big picture first, finishing the conversion and
then looking at the resulting docs.

Meanwhile, if someone needs something that it is at the wrong book, he
can just use some search tool to seek what he needs, no matter on
what book the relevant information is stored.

> I don't know if it makes sense to have an embedded developer's
> manual as well?

Yeah, that's a good question. 

Jon is planning todo a documentation track at LPC. One of the things
that should be discussed, IMO, is how we'll organize the books.

I suspect that, once we finish the conversion of the remaining ~300
files to ReST, the next logical step is to check what are the gaps
and have a list of pending tasks.

Thanks,
Mauro

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
