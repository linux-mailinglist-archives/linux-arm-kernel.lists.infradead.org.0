Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBF4310ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 17:10:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2JlLDLTNfsEWSCrzfblx0MOV0Ut/nzKM6bdZ/doBxbs=; b=eJvHiSYY1bTj1C
	zczvHMl0xfW3Yjw2LV/2H5b1S8D61r79qVX/lmY2azNPfOXlPxgZg0D43fzyMp3fwc0c+oSuM49sj
	WzyHeAYMYQlQXcJ8S5P1tcLK0HVh9QuNRURbeQQgX0Qn2pLjokVDimv4oKLYb1UzIBDJ8v5FA8Qt7
	5cAOyuL48+WOTSZoU5BOprPc/8lSTq5i80JI0H59WwuSRw1KgHticviEidlcP2SWxOnklyjcWy+qH
	IlAx04d2FNKqBBrtWRIepBTVlx8GMJn0fav1Gfsb/4mau7kQ9OEV6GWHUoOVUtaCAmgOOyDXgbHwq
	aqqwje/0CXLptp3qCJug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWjB6-0006k1-6e; Fri, 31 May 2019 15:10:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWjAy-0006jZ-Ug
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 15:10:38 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hWjAv-0007Ee-J5; Fri, 31 May 2019 17:10:33 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hWjAu-0003Zv-98; Fri, 31 May 2019 17:10:32 +0200
Date: Fri, 31 May 2019 17:10:32 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 1/6] serial: sa1100: add support for mctrl gpios
Message-ID: <20190531151032.tfrl7yqph6wsg5pl@pengutronix.de>
References: <20190531111257.27hor6xgb3nsdghg@shell.armlinux.org.uk>
 <E1hWfTn-0003fP-Rl@rmk-PC.armlinux.org.uk>
 <20190531125013.3gkexhmbqjpdvrtf@pengutronix.de>
 <20190531132340.bco6xpyl3aatbryl@shell.armlinux.org.uk>
 <20190531135658.jo4kas3ozj7gpmmc@pengutronix.de>
 <20190531140127.yp2o7effrsxencyb@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531140127.yp2o7effrsxencyb@shell.armlinux.org.uk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_081037_151058_D0D24498 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 03:01:28PM +0100, Russell King - ARM Linux admin wr=
ote:
> On Fri, May 31, 2019 at 03:56:58PM +0200, Uwe Kleine-K=F6nig wrote:
> > Unless I miss something (which is quite possible given that it's quite
> > some time ago I looked into mctrl_gpio) with mctrl_gpio_init_noauto()
> > having a CTS-gpio is just ignored unless the modem ctrl lines are
> > explicitely requestet while with mctrl_gpio_init() it results in an
> > error. Isn't the error the better alternative?
> =

> Unless the serial driver polls the modem control line status, which
> the SA1100 driver continues to do in exactly the same way after this
> conversion.
> =

> Do you suggest that we just regress the driver by ripping out this
> support that no one has had any problems with, and that is known to
> work sufficiently in its day, just because we now don't like it?

No, of course not. A nice improvement would be to teach gpio_mctrl (or
serial core?) about polling. But this is of course out of scope for this
patch, so I suggest to stay with mctrl_gpio_init_noauto and document the
lack of irq-capability somewhere prominently such that someone who picks
up converting mctrl_gpio_init_noauto to mctrl_gpio_init notices this
problem before actually hitting it.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
