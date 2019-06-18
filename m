Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 647A3498D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 08:20:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OJytxYr58sTU8Owbi8F4glFRVVtz0my1ULYSuZQULdY=; b=kUZhVYWv2qEOiL
	yc2THxigrkAgYVj6msvcSimg80ErM1PVpP3Wmp6IE1T2shz2gCxdo4dOyNdIo2otEZ64wC6WTzVjU
	jQ0WrJQ49gv+1/13YRFDZ4Yqx0fJnSztu+L57lnqWk8jw061VXcGi/YGUKdA/POQNV4RL6AJwXoyM
	UAX75D2KRaqkWN7CArUwL2lv5JbtlwKXg9TdUqDeHVv5YbnDHEj1D2MqQG32uYW2obcPECIUZlH0q
	YL30+dZQ7wt28bDiEu0ubWV4yFNBJOiADflehF+rJXUJ100H4wP4dD2Dc8Xh5uESRfTXcXT7hZxwR
	7qNuIewESCwhINOc5+8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd7Th-0002bs-Ig; Tue, 18 Jun 2019 06:20:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd7T9-0002Xs-Bb
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 06:19:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mol@pengutronix.de>)
 id 1hd7T7-0006Xo-Mp; Tue, 18 Jun 2019 08:19:45 +0200
Received: from mol by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mol@pengutronix.de>)
 id 1hd7T7-0007Z2-DK; Tue, 18 Jun 2019 08:19:45 +0200
Date: Tue, 18 Jun 2019 08:19:45 +0200
From: "m.olbrich@pengutronix.de" <m.olbrich@pengutronix.de>
To: kernel@pengutronix.de,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v1] dmaengine: imx-sdma: remove BD_INTR for channel0
Message-ID: <20190618061945.26xi2gxkohzac65g@pengutronix.de>
Mail-Followup-To: kernel@pengutronix.de,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20190614083959.37944-1-yibin.gong@nxp.com>
 <CAOMZO5Do+BsZEX43w283yWed8fQVtTC+zAvoktPLTj4c_f798w@mail.gmail.com>
 <CAGngYiUWy5FM-zsT55-yY=kahLObZGYw=zU0F9Tzp9T2S3G6LA@mail.gmail.com>
 <20190614180913.d66bbjrnw3gxt663@pengutronix.de>
 <1560766686.30149.36.camel@nxp.com>
 <20190617101508.47jk72yrtplxpgzs@pengutronix.de>
 <1560867140.26847.12.camel@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560867140.26847.12.camel@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:14:35 up 31 days, 12:32, 77 users,  load average: 0.08, 0.11, 0.09
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mol@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_231947_413512_602CDFDD 
X-CRM114-Status: GOOD (  29.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 06:08:50AM +0000, Robin Gong wrote:
> On 2019-06-17 at 12:15 +0200, m.olbrich@pengutronix.de wrote:
> > On Mon, Jun 17, 2019 at 02:14:34AM +0000, Robin Gong wrote:
> > > On 2019-06-14 at 18:09 +0000, Michael Olbrich wrote:
> > > > On Fri, Jun 14, 2019 at 09:25:51AM -0400, Sven Van Asbroeck
> > > > wrote:
> > > > > On Fri, Jun 14, 2019 at 6:49 AM Fabio Estevam <festevam@gmail.c
> > > > > om>
> > > > > wrote:
> > > > > > According to the original report from Sven the issue started
> > > > > > to
> > > > > > happen
> > > > > > on 5.0, so it would be good to add a Fixes tag and Cc stable
> > > > > > so
> > > > > > that
> > > > > > this fix could be backported to 5.0/5.1 stable trees.
> > > > > Good catch !
> > > > > =

> > > > > However, the issue is highly timing-dependent. It will come and
> > > > > go
> > > > > depending
> > > > > on the kernel version, devicetree and defconfig. If it works
> > > > > for me
> > > > > on
> > > > > 4.19, that
> > > > > doesn't mean the bug is gone on 4.19.
> > > > > =

> > > > > Looking at the commit history, I think the commit below
> > > > > possibly
> > > > > introduced the
> > > > > issue. Until this commit, sdma_run_channel() would wait on the
> > > > > interrupt
> > > > > before proceeding. It has been there since 4.8:
> > > > > =

> > > > > Fixes: 1d069bfa3c78 ("dmaengine: imx-sdma: ack channel 0 IRQ in
> > > > > the
> > > > > interrupt handler")
> > > > I think this is correct. Starting with this commit, the interrupt
> > > > status fr
> > > > channel 0 is no longer cleared in sdma_run_channel0() and
> > > > sdma_int_handler() is always called for channel 0.
> > > > During firmware loading the interrupts are enabled again just
> > > > before
> > > > the
> > > > clocks are disabled. The interrupt is pending at this moment so
> > > > on a
> > > > single
> > > > core system I think this will always work as expected. If the
> > > > firmware
> > > > loading and the interrupt handler run on different cores then
> > > > this is
> > > > racy.
> > > > Maybe something else changed to make this more likely?
> > > > =

> > > > With this new change sdma_int_handler() is no longer called for
> > > > channel 0
> > > > right, so you should also remove the special handling there.
> > > What's 'special handling' should be removed here? Do you mean put
> > > below
> > > pieces of your patch back?
> > > =A0static int sdma_load_script(struct sdma_engine *sdma, void *buf,
> > > int
> > > size,
> > > @@ -727,9 +720,9 @@ static irqreturn_t sdma_int_handler(int irq,
> > > void
> > > *dev_id)
> > > =A0=A0=A0=A0=A0=A0=A0=A0unsigned long stat;
> > > =A0
> > > =A0=A0=A0=A0=A0=A0=A0=A0stat =3D readl_relaxed(sdma->regs + SDMA_H_IN=
TR);
> > > -=A0=A0=A0=A0=A0=A0=A0/* not interested in channel 0 interrupts */
> > > -=A0=A0=A0=A0=A0=A0=A0stat &=3D ~1;
> > > =A0=A0=A0=A0=A0=A0=A0=A0writel_relaxed(stat, sdma->regs + SDMA_H_INTR=
);
> > > +=A0=A0=A0=A0=A0=A0=A0/* channel 0 is special and not handled here, s=
ee
> > > run_channel0() */
> > > +=A0=A0=A0=A0=A0=A0=A0stat &=3D ~1;
> > I think the "stat &=3D ~1;" can be removed completely. This bit should
> > never
> > be set, now that the interrupt for channel 0 is disabled.
> Okay, but that's harmless, moreover, I like your comment '/* channel 0
> is special and not handled here, see run_channel0() */' which said
> clearly channel0 interrupt is a special one and NOT handled in
> sdma_int_handler. So I'd like to keep it... =A0

That's fine with me. I don't have a strong opinion here. It just felt wrong
to me to silently clear an interrupt that shouldn't occur in the first
place.

Michael

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
