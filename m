Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A1482D0E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 09:46:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OvqWF9TSnX8dMYb4seCO96AT9/yrYURTku3Qotjoofg=; b=ZAOLGqBK3ZYbuE
	fuHmiC/7eZk2ITxMjgbMl8+Ty3zulgJs6zhXFg1OrrMIIQMRgdYqmGYwxzJy9NccKJ7b3iCakvePn
	sy4euJIsIRF4aMWKgHNoga4Ye0hUf5ORSf6ycaSC4si/YX2gROW4Wpe/FwRVThqwd1jUXyUGta5uk
	+KzXOpFyQHyJyOHszGKm+ROfHsT3zstF0rLPjLyS0cqGLxqgr6fOleuk24DHxEOiANxdpaAEZrvHB
	CTS5vM4TmvC6Tqez1RIAlrzFBOZKPqsPTELdK/vnRQC9OXFVVM1rdudxsLA5MDdirAa5rBJEoTWUs
	Q5EvHN4OfuWCEDEtR7mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huuAO-0004UV-Vd; Tue, 06 Aug 2019 07:45:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huuAB-0004Tr-CO
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 07:45:44 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1huuA4-000499-7m; Tue, 06 Aug 2019 09:45:36 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1huuA2-00079K-Tu; Tue, 06 Aug 2019 09:45:34 +0200
Date: Tue, 6 Aug 2019 09:45:34 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: Re: [PATCH v3 2/4] serial: mctrl_gpio: Add a NULL check to
 mctrl_gpio_to_gpiod()
Message-ID: <20190806074534.5w773nltywxyiljz@pengutronix.de>
References: <20190802100349.8659-1-frieder.schrempf@kontron.de>
 <20190802100349.8659-2-frieder.schrempf@kontron.de>
 <20190802121231.wk6yg5mkyivs3rni@pengutronix.de>
 <f866213b-fd3b-8602-6c11-56cb65a1ea05@kontron.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f866213b-fd3b-8602-6c11-56cb65a1ea05@kontron.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_004543_419865_87B30BA1 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Jiri Slaby <jslaby@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Frieder,

On Mon, Aug 05, 2019 at 09:01:39AM +0000, Schrempf Frieder wrote:
> On 02.08.19 14:12, Uwe Kleine-K=F6nig wrote:
> > On Fri, Aug 02, 2019 at 10:04:10AM +0000, Schrempf Frieder wrote:
> >> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> >>
> >> As it is allowed to use the mctrl_gpio_* functions before
> >> initialization (as the 8250 driver does according to 434be0ae7aa7),
> > =

> > Actually I was surprised some time ago that 8250 used serial_mctrl
> > without first initializing it and expecting it to work. I didn't look in
> > detail, but I wouldn't go so far to call this "allowed". The commit
> > itself calls it "workaround" which seems a better match.
> =

> Ok, but if this is considered to be a workaround and as the 8250 driver =

> does not use mctrl_gpio_to_gpiod(), we should maybe just drop this patch =

> instead of encouraging others to use mctrl_gpio before initialization.
> =

> I'm really not sure what's best, so depending on what you will propose, =

> I'll send a new version of this patch with adjusted commit message or not.

I wouldn't encourage usage of mctrl-gpio before it's initialized. So I
suggest to drop this patch.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
