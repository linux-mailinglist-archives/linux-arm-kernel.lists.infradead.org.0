Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE50782C7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 02:19:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=baGzalJtkLE7vfSEZGvDn3HnQztmY48gNBYg3XBHrFQ=; b=ijiRT18UkOWfb7
	Afybmf9la0jqi8i1F37ZRLmVoS1B9PryQCSnaJWpNkXYHDa6ewaPwNajS+/Cn3XZUyF6ipAX0RyHZ
	wbHcI4PKPdS3pw1mvo17w1rInoTHupcfOq1hkGpnbrRqncbD/9VWS6MLuy+K91VwfvYQSvNEbA9Au
	MLsQh/oOTg4zIiF0qBG3reK00yY+XL4YuE2i/IeA/MFMLM3fgzD4JE2jDW2xwNKQ9pg6Sx1sU8BIu
	ArDLEfimpzaeP9pnSgT1I/4EkL0bqUxDIwwAyw1ypvdAKX6QN9Ob7XX+iqwlUBdbW/VgGKET4fyTb
	FWEGj9kIydcIqILsj4TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrtO7-0006iq-3R; Mon, 29 Jul 2019 00:19:39 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrtNm-0006hz-BZ
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 00:19:20 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 36537275C;
 Sun, 28 Jul 2019 20:19:15 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Sun, 28 Jul 2019 20:19:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=ZaBV2C4kcU2j90Xx9xhANj1+D6R+dqi
 /cMwH32iQiLk=; b=AN2Jn6aj3Ndb7FDQKdqY+7+0Kov53aEYqBfngMb+BEPdGxZ
 5IaURHicr7mJry4jUn/1K6WmhFsNgmMG1W8VqD3hQmkwRUb29ZOHU/8ICHyUMtOY
 5Z64SKwwuUnb/R3jopwHiCwr5mTO2sdDckb0NGGOZj2iQ7wRCMMpF7NRBMIi9qQd
 DMFHerb4KZMWpg8f8sThl7dvwTuuggBL5Q5orbsvmtbTgDPM7/3M1kn5+I2p9W2d
 oye1BHk8pSGlBlXCrOrPwFroREeDbj/b0ahJkCKmtG084Rip8w6Jhu71bIASBkJu
 mdBqH6b4cM2pmiVIJiehmGaoCxsSk/6lIYKq6Zg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=ZaBV2C
 4kcU2j90Xx9xhANj1+D6R+dqi/cMwH32iQiLk=; b=RvL5HyBh0DUD0RIRe1PzDp
 pWPYq/kpMQNA5WHRHfD6UJeJuWqQigmNndntwRLEZKWFeNO3m5r9Q6/pcRpC/4Vx
 5nrkx8psO3rGIgMtosIjBm03FHtP1lUkm5833FzrGSKZd9DwAwIum6BFgapcihtw
 wKCACSHxUSjzmcd/7f4YQzhDb/S63injf7j17YsCLm9ppknDA9K/RLitKElsJwah
 OdT8Z0liDVwcUB38KiqFE5YARTaVv5kYngmOf5V6rtJj29Ke+LZe9Ni61UupgXLe
 1xgrN7aeKadMhDfoiZIr/XVqOM4F0xfNw6mUbIBuj5uFTWyt3kd5r2ngah15JxcQ
 ==
X-ME-Sender: <xms:gDs-XRTA3sOVdKQ_PvnYsBzcW-JEsEPYEp8wPASR1Ckvwzq0a8GfsQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrledtgdefvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucffohhmrg
 hinhepghhithhhuhgsrdgtohhmnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgv
 fiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:gDs-XYrGrmm6FT4UYtSWbpr9FAZ_oVdHrBC3ZZfJRtAIMewJc8kcSQ>
 <xmx:gDs-Xf7412SKBdRpBdv-oWG9Yb1U-HaI7l_XXdTj2lkkq5k1xKdELg>
 <xmx:gDs-XaSV42JjLyUGDTW780FSW72zPKrWPfN-r0y6e7cu-hNHqoYIYA>
 <xmx:gzs-Xc23kcZgumQfrQXfszx1Wy7cOzCTOZ4SmZOvMLj8td_z_NQwgA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id ABD1DE00A5; Sun, 28 Jul 2019 20:19:12 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-736-gdfb8e44-fmstable-20190718v2
Mime-Version: 1.0
Message-Id: <f2875111-9ba9-43b7-b2a4-d00c8725f5a0@www.fastmail.com>
In-Reply-To: <CACRpkdZxsF9gQj0VicVLsPKXg6rKA1mLwbywmazOf0w8PLnOfA@mail.gmail.com>
References: <1563564291-9692-1-git-send-email-hongweiz@ami.com>
 <1563564291-9692-2-git-send-email-hongweiz@ami.com>
 <CACRpkdYhVoP75ZDfASW+DH5yf-a5diitiXsh7eLsJx5hsTC9sQ@mail.gmail.com>
 <ef9d9c17-6e2d-4a4e-ac44-f8da4bb3b8eb@www.fastmail.com>
 <CACRpkdZxsF9gQj0VicVLsPKXg6rKA1mLwbywmazOf0w8PLnOfA@mail.gmail.com>
Date: Mon, 29 Jul 2019 09:49:31 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Linus Walleij" <linus.walleij@linaro.org>
Subject: Re: [v5 1/2] dt-bindings: gpio: aspeed: Add SGPIO support
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_171918_539722_DC70F223 
X-CRM114-Status: GOOD (  16.99  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-aspeed@lists.ozlabs.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Hongwei Zhang <hongweiz@ami.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Mon, 29 Jul 2019, at 09:04, Linus Walleij wrote:
> On Mon, Jul 22, 2019 at 3:42 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> 
> > If the clock driver owns the control register, it also needs to know how
> > many GPIOs we want to emit on the bus. This seems like an awkward
> > configuration parameter for a clock driver.
> >
> > To avoid the weird parameter we could protect the control register
> > with a lock shared between the clock driver and the SGPIO driver. This
> > way the SGPIO driver could have the ngpios parameter, and request
> > the clock after its written the ngpios value to the control register. A
> > regmap would be useful here to avoid the resource clash and it also
> > provides the required lock.
> 
> Nah. Too complicated.
> 
> What about using the clock API locally (in the singleton driver,
> much as it is today) though, to give the right abstraction?
> 
> See
> drivers/gpu/drm/pl111/pl111_display.c
> pl111_init_clock_divider() for an example of a local
> clock.

Thanks, I'll take a look at that.

> 
> > However, that aside, we can't simply enable the bus in the clock
> > enable callback if enable is called per-bank, as it is called once on
> > the first request with further requests simply refcounted as you
> > mentioned. This is exactly the behaviour we can't tolerate with the
> > bus: it must only be enabled after the last GPIO bank is registered,
> > when we know the total number of GPIOs to emit.
> 
> So the bus needs to know the total number of GPIOs or
> everything breaks, and that is the blocker for this
> divide-and-conquer approach.
> 
> Why does the bus need to know the total number of GPIOs?
> 
> (Maybe the answer is elsewhere in the thread...)

I didn't answer it explicitly, my apologies.

The behaviour is to periodically emit the state of all enabled GPIOs
(i.e. the ngpios value), one per bus clock cycle. There's no explicit
addressing scheme, the protocol encodes the value for a given GPIO
by its position in the data stream relative to a pulse on the "load data"
(LD) line, whose envelope covers the clock cycle for the last GPIO in
the sequence. Similar to SPI the bus has both out and in lines, which
cater to output/input GPIOs.

A rough timing diagram for a 16-GPIO configuration looks like what
I've pasted here:

https://gist.github.com/amboar/c9543af1957854474b8c05ab357f0675

Hope that helps.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
