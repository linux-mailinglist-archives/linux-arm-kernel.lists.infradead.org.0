Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3D21BF032
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 08:22:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s0r9w9CRG+T/AIsdZnqIoP3fmyfS6FSlBjNuK4w1vXk=; b=mLMQuV5P9sYwON
	JP1UszLucbC6OwGdg8infJ9ul71h++uWUitJXQUQHYYecfjuXxLz+O6EvMaMn30cQPgQV4JwwBJpS
	IWuCC/htLRG3s+/bQB0AiskQirTcnTz8eHRUqQFNe7aSPcv3movy71UW3ppAYvx/eiHh8NobR6kXT
	TeBsaXO9/4PF8MwKOdJ0FRBEdNjaoAdlJcUEu/kzTCeLGG/nirKZDtLDMBEqE8pWgHVhxGpuh5jH2
	ge+KKyhFnE/OitVB/i4JK9l/qvM+ShWVZKVHpQT1/rjUc2jOUhgzNn4E5gUtwRRXdqq3nZmYwDeBq
	RKT69z+JLMvmQnv1Jetw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU2Zy-0003pW-FD; Thu, 30 Apr 2020 06:21:50 +0000
Received: from plaes.org ([188.166.43.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU2Zp-0003o0-T8
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 06:21:43 +0000
Received: from plaes.org (localhost [127.0.0.1])
 by plaes.org (Postfix) with ESMTPSA id C8C4640275;
 Thu, 30 Apr 2020 06:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=plaes.org; s=mail;
 t=1588227698; bh=5IaA8hDKqgMnJSHF6ro9Jo9eG0qGD7sBE3O2dZ7w10w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PU41HCwMPoxYMSyP8fhrzD6juPZxEfBmdlc/PKMFtE1ZPwP2er0AY9lHYRfd5IOs3
 ww3lPC5lv8vjJLPdcnVfIoJu7rNEJRr0Lv1Buhc0bYyLzlWARFRNANnl0nlVCDQEH+
 Y7F12KOpQ9BlyxXFUabLCBAlIDMhR06t3f5crcpIZKeMscVaFpJAmB0Hd1Xtk36JV5
 Ug7TbNUf/+Ji5WbqHB4maeCLgNeA2fMie78EH0EFtcL2SQsL4EH5GY3/X/pg8QHISy
 SYRK3bC5DsGaqSbiZ5AmCmw+VLptLlpjL2rl/5gMOfj5zxvd8mZ2G8rPYanR9TdXIg
 NlKmvcIWocIiA==
Date: Thu, 30 Apr 2020 06:21:37 +0000
From: Priit Laes <plaes@plaes.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 1/4] clk: sunxi-ng: a10/a20: rewrite init code to a
 platform driver
Message-ID: <20200430062137.GA32281@plaes.org>
References: <20200417221730.555954-1-plaes@plaes.org>
 <20200417221730.555954-2-plaes@plaes.org>
 <20200420124935.asfbgv7envb2af55@gilmour.lan>
 <20200420203228.GA4734@plaes.org>
 <20200429143510.ksi27lok2udtmfas@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429143510.ksi27lok2udtmfas@gilmour.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_232142_156739_71C12A57 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 04:35:10PM +0200, Maxime Ripard wrote:
> Hi,
> 
> On Mon, Apr 20, 2020 at 08:32:28PM +0000, Priit Laes wrote:
> > On Mon, Apr 20, 2020 at 02:49:35PM +0200, Maxime Ripard wrote:
> > > On Sat, Apr 18, 2020 at 01:17:27AM +0300, Priit Laes wrote:
> > > > In order to register regmap for sun7i CCU, there needs to be
> > > > a device structure already bound to the CCU device node.
> > > > 
> > > > Convert the sun4i/sun7i CCU setup to platform driver to use
> > > > it later as platform device.
> > > > 
> > > > Signed-off-by: Priit Laes <plaes@plaes.org>
> > > 
> > > You can't relly do that though. We have timers that need those clocks before the
> > > device model is initialized.
> > 
> > Ok, I'm somewhat lost now... are these the affected timers on sun7i following:
> > - allwinner,sun4i-a10-timer (timer@1c20c00)
> > - allwinner,sun7i-a20-hstimer (hstimer@1c60000)
> 
> Yep
> 
> > Any ideas on what approach I could actually use?
> 
> I guess you could keep the CLK_OF_DECLARE registration, and then have a
> platform_driver probe and register the regmap?
> 

Thanks this did the trick.

> > Also, similar timer dependency would affect then sun6i-a31 and sun9i-a80
> > platforms too...

I didn't check this before, but sun9i-a80 CCU is initialized currently via
platform device. Should it be converted first to clock driver (CLK_OF_DECLARE)?

I have sent out the v2 which contains sun7i/sun6i changes.

> 
> Indeed.
> 
> Maxime



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
