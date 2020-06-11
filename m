Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2621F6C70
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 18:53:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kgznwWIkIBBuFW3EkQ9TAd+cu8NwP5aZLTPWg9VB6iA=; b=NWVg6WR1bxhiLY
	tj/bsv0T9VPw//KbhRSVOxHCZRN4UXR7r88rJJsqfdBT1Mk1+oNQJf0Sx7nGuHSQw3S8DeOMbrqNY
	m5o3SssO0YYmPuAYtXtljDrYpaTp+6rE7TkDKZmcJnCvyxE4wJwNf8dHt7Q3NabqEDZLgyJtXteqc
	FyEQLz721TwogbexEcPKd5jTGvp+usLOVRbcmCkgdxbykdg25z/1YWxfvniwM550DH4/nUciECSRU
	TLkvmDIspJW4mi/AdbOqSzVAbt0k0bHRSpWAANLWwAQniyTYh3Ga5kGb6UYKZj6a+BUrm2RGG/LZd
	pbUhZDzAXifxYjiVKZ5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjQRl-00012i-1d; Thu, 11 Jun 2020 16:52:57 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjQRd-00011k-Bq; Thu, 11 Jun 2020 16:52:51 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 039A258020E;
 Thu, 11 Jun 2020 12:52:44 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 12:52:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-transfer-encoding:in-reply-to; s=fm3; bh=g
 F0btmld4U26k5IsFwX2l44MfY0Gg3/saFgkLyH4blE=; b=LDLIbuQxI36aNk5ga
 ggJ7wdX9TM3II8gptiBPX+McLxBtUVosZzwYVq8kPs0Hi/trZJFyMRbHEVChTNiR
 daUcnRePipy7Q4ESJhkDNtAiz0wMUeWo2pHPuaSthP26W3tt/eaFjdvt3ZWY8FBl
 Ugh4Ko2+Azl7gV2x9a8LRjYysMeSikKFpJGESQp1yVSfNjef/9PDq+XMSGX8mz/l
 xNl63aMV1gevwytHYVTRUmEeRf8GOV8cAZZd/W6fJc9PVZJpUj6+Jr5ve/CJbZtR
 hpu0fAie5o6HXGXyUNS6WaPQByhpSgaXGyZ7MaJcLg27S2R81r6jlmESFh/CCXCN
 n320A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; bh=gF0btmld4U26k5IsFwX2l44MfY0Gg3/saFgkLyH4b
 lE=; b=u293WYbh5c64oJUtk1LeO+ED1Pe7Xl/BQoVYeuU+7y2yGw+R4goF3Xrqo
 HtACc02exwfB4ydHwPiDTmFQBZho7CFe37VZYGtZPpqhRsD0ZL7uwR+6AXAl0max
 tvgxaIRYazyf0Pad5aH0NxqOWHAxdmv0v58Fy70l38NCQNKbhVAZUu0CRTAi9Pt7
 0lABEHfykR5p/jrCZfKfb+P6yo0s8muMwokSft+QL4TmAdGFYqBpENPOUzxS6qE6
 PCuRMVxFTY3r8jXWPS0Pey5qLN4vY15OqJzLC1MPfv4UJWCvHRDd+k5rLzDsheWV
 IwO2YcHH3IAI2Iao2odyjTAArHuEg==
X-ME-Sender: <xms:VGHiXnovudi9KX_Z41tX43XfOTSiyZ6dysIo16MD-SO50Y6AtONFcQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehledgkeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtugfgjgesthhqredttddtvdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpefgjeettdejgffgffdvteeutdehtdehgeehueetkeefgefhtdetjeekledu
 gedvudenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:VGHiXhrv7n_qPG6Dg1JvMoP7SJb1mZefOlGqbCFM72uJiyER836R5w>
 <xmx:VGHiXkOC5RJ2JJjnPXteLYQpqlJLckZltIQH7nGDuHwcHMt2tg29Vw>
 <xmx:VGHiXq4UaLPK5R8-UjFbo1GZiVHVg3fPSkUw9HraS2P6CP8778LOWw>
 <xmx:W2HiXug5u6IraGY0iHPbmC28CpzjCiorQafylCKk933PPBd7cDdzPw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id C30193280060;
 Thu, 11 Jun 2020 12:52:35 -0400 (EDT)
Date: Thu, 11 Jun 2020 18:52:33 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Stefan Wahren <stefan.wahren@i2se.com>
Subject: Re: [PATCH v4 2/3] clk: bcm: Add BCM2711 DVP driver
Message-ID: <20200611165233.dmwxuz5lhxxbh7fb@gilmour.lan>
References: <cover.4c4625a8e076f3163b800b3d8986b282ee98d908.1591867332.git-series.maxime@cerno.tech>
 <bb60d97fc76b61c2eabef5a02ebd664c0f57ede0.1591867332.git-series.maxime@cerno.tech>
 <e9e83c60-ef4c-8806-bcdb-a09702bf7559@i2se.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e9e83c60-ef4c-8806-bcdb-a09702bf7559@i2se.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_095249_767563_4DB0B722 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [66.111.4.224 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, Phil Elwell <phil@raspberrypi.com>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-clk@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stefan,

On Thu, Jun 11, 2020 at 05:50:30PM +0200, Stefan Wahren wrote:
> > diff --git a/drivers/clk/bcm/clk-bcm2711-dvp.c b/drivers/clk/bcm/clk-bcm2711-dvp.c
> > new file mode 100644
> > index 000000000000..84dbc886e303
> > --- /dev/null
> > +++ b/drivers/clk/bcm/clk-bcm2711-dvp.c
> > @@ -0,0 +1,120 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +// Copyright 2020 Cerno
> > +
> > +#include <linux/clk-provider.h>
> > +#include <linux/module.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/reset-controller.h>
> > +#include <linux/reset/reset-simple.h>
> > +
> > +#define DVP_HT_RPI_SW_INIT	0x04
> > +#define DVP_HT_RPI_MISC_CONFIG	0x08
> 
> sorry for not noticing this before. Are these defines specific to the
> Raspberry Pi, because of RPI?

I'm not entirely sure to be honest. It's the names that the register
have, but it's not clear to me if it's something specific to the RPi
itself, or it just means something else entirely.

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
