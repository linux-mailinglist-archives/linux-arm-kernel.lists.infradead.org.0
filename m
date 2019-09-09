Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 582F6ADA9A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 15:59:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YeOCA9y/1YgFYhJYKFBr/5n+zZ3NWC7BT3yHOrVaNxk=; b=unWpCFRoyLAHnj
	86qJcAAxH93q4t8jdypN27R7ctVYRLGSvPq7BcfnQjula1IqBx1oPIvtaIFptqguBVcFEYSmMTqSI
	cm/QMLHXEUOIuZ6PZJ7KAVv9XGpr+hzTU1VFh7FzdGZ5iWlxDBxhewzYu4QfGwGRuj9W5XVHobXvs
	zISYchi1rxD/6au2EwLBv8bqFhlJh4wUoKFGO3zIUwtfYCTKSQWlvUDSlWIPzukVTYjZwml0Wtzrv
	pejhr0AzZJ+VeVKNzXPWNkjD/xKbjUrXoKZxfXtdjfC/fCSG4GsMPgkBh56meJ4ORwJT2OtkO49tR
	UngERTDDNGmN2tObg3PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7KCV-0001KF-4R; Mon, 09 Sep 2019 13:59:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7KCJ-0001JV-Ur
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 13:59:17 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7759E2086D;
 Mon,  9 Sep 2019 13:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568037554;
 bh=1LOeIrNaojbFutO/35pibYdicy6zk1C9NEftmHLgaYE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UieH1zXYFmI9ZQoBmDFp/Caccsfb8zgAwWbjMjeDAAsY7nOdDGw25MsSl3XEWM/eK
 aCMGsGuAWbMv29jYF4cNJLtde8dflId6l4spy1NhpVNiZk1DIBghKpAI9y5BFNAJ5s
 Vr1SD9rR+VQpQwiMsnxecPLCM1nyBKQ6YwApwNbI=
Date: Mon, 9 Sep 2019 15:59:10 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH 2/9] crypto: Add Allwinner sun8i-ce Crypto Engine
Message-ID: <20190909135908.vkvcuykrplhxxwtd@flea>
References: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
 <20190906184551.17858-3-clabbe.montjoie@gmail.com>
 <20190907081951.v2huvhm44jfprfop@flea> <20190907190408.GE2628@Red>
 <20190909113837.vrnqdfgzhsiymfpm@flea> <20190909131906.GA12882@Red>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190909131906.GA12882@Red>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_065916_040799_BBA16104 
X-CRM114-Status: GOOD (  25.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 09, 2019 at 03:19:06PM +0200, Corentin Labbe wrote:
> On Mon, Sep 09, 2019 at 01:38:37PM +0200, Maxime Ripard wrote:
> > On Sat, Sep 07, 2019 at 09:04:08PM +0200, Corentin Labbe wrote:
> > > > Also, I'm not sure what is the point of having the clocks names be
> > > > parameters there as well. It's constant across all the compatibles,
> > > > the only thing that isn't is the number of clocks and the module clock
> > > > rate. It's what you should have in there.
> > >
> > > Since the datasheet give some max frequency, I think I will add a
> > > max_freq and add a check to verify if the clock is in the right
> > > range
> >
> > It's a bit pointless. What are you going to do if it's not correct?
> > What are you trying to fix / report with this?
>
> I thinked to print a warning.  If someone want to play with
> overclocking for example, the driver should said that probably some
> result could be invalid.

If someone wants to play with overclocking, the crypto engine is going
to be the least of their concern.

> > > > > +int sun8i_ce_get_engine_number(struct sun8i_ce_dev *ce)
> > > > > +{
> > > > > +	return atomic_inc_return(&ce->flow) % ce->variant->maxflow;
> > > > > +}
> > > >
> > > > I'm not sure what this is supposed to be doing, but that mod there
> > > > seems pretty dangerous.
> > > >
> > > > ...
> > >
> > > This mod do a round robin on each channel.
> > > I dont see why it is dangerous.
> >
> > Well, you're using the atomic API here which is most commonly used for
> > refcounting, while you're using a mod.
> >
> > Plus, while the increment is atomic, the modulo isn't, so you can end
> > up in a case where you would be preempted between the
> > atomic_inc_return and the mod, which is dangerous.
> >
> > Again, I'm not sure what this function is doing (which is also a
> > problem in itself). I guess you should just make it clearer what it
> > does, and then we can discuss it properly.
>
> Each request need to be assigned to a channel.
> Each channel are identified by a number from 1 to 4.
>
> So this function return the channel to use, 1 then 2 then 3 then 4 then 1...
>
> Note that this is uncritical. If, due to anything, two request are
> assigned to the same channel, nothing will break.

I'm not sure why you're using the atomic API then?

Also, I guess a bitfield and find_first_bit (and a different function
name) would be more obvious to the reader.

Thanks!
Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
