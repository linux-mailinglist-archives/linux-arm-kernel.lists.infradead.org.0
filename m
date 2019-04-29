Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F38E64C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 17:25:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pHfKeqt7XLEn0eBy0h011fSo4iKSU9bUzOxaCfQH4S8=; b=VEhTB1rVlhpFcF
	qqK0ZpPx/2CxeKMkjaXM/+bFkHCvv0KSZ6UGM1QHRFGvxrpYvZg0/OaYmxeaXJ1++r/nafODr7V10
	WzPrbDUqTMoDI8UKK9D0PYkDZCsADPT3yAogdpzzz7KZefMlrawxqLl9p1q4zUHkAmeemAOMFi1D6
	szpPfBp7d1uGqkofGh2ENGyzK0kXSY3nohBvy4w4wwRrpw0S8Q1pFDzbLIKT5dnSUh318w/DqtAjv
	fJernfcgPxryQ7f4mJbdQ6QJ8XM6IuwrRTVHqcLdu9hUhpq4aoZQEaai+qM4dq/1LtQazVwNE4X4J
	oFU+gEnP9JnjFARWZvqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL8AF-0006Wt-Tm; Mon, 29 Apr 2019 15:25:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL8A8-0006WQ-R7
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 15:25:50 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hL8A6-0005Ld-Jw; Mon, 29 Apr 2019 17:25:46 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hL8A5-00046a-Sh; Mon, 29 Apr 2019 17:25:45 +0200
Date: Mon, 29 Apr 2019 17:25:45 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Timothy Krantz <tkrantz@stahurabrenner.com>
Subject: Re: espressobin device tree with kernel 5.1 RC
Message-ID: <20190429152545.t6cvpienahezdrpu@pengutronix.de>
References: <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAABB6J1kxOR7T73eMrM92Eq+AQAAAAA=@stahurabrenner.com>
 <20190429095727.48de0b7c@xps13>
 <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAABFrsjXmIg1Q6VJqGysUaK8AQAAAAA=@stahurabrenner.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAABFrsjXmIg1Q6VJqGysUaK8AQAAAAA=@stahurabrenner.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_082549_036546_2D70C626 
X-CRM114-Status: GOOD (  19.68  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-arm-kernel@lists.infradead.org,
 'Miquel Raynal' <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 11:03:33AM -0400, Timothy Krantz wrote:
> Hi Miquel thanks for the response.
> =

> > -----Original Message-----
> > From: Miquel Raynal [mailto:miquel.raynal@bootlin.com]
> > Sent: Monday, April 29, 2019 3:57 AM
> > To: Timothy Krantz <tkrantz@stahurabrenner.com>; linux-arm-
> > kernel@lists.infradead.org
> > Subject: Re: espressobin device tree with kernel 5.1 RC
> > =

> > Hi Timothy,
> > =

> > "Timothy Krantz" <tkrantz@stahurabrenner.com> wrote on Mon, 22 Apr
> > 2019
> > 15:07:12 -0400:
> > =

> > > Hi,
> > > Please excuse my emailing you directly.  I do not know the proper
> > > channels to report my problem.
> > >
> > =

> > For this kind of question I think adding the Linux ARM Kernel Mailing L=
ist
> > (LAKML) is the right thing to do.
> =

> Got it, thanks for the information.
> =

> > =

> > > I build my own kernels for my 3 espressobins.  Up through kernel 5.0
> > > things work fine.
> > >
> > > In the 5.1 RC kernels I have been unable to boot using the 5.1 RC
> > > device tree.  I get :
> > >
> > > ahci-mvebu d00e0000.sata: couldn't get PHY in node sata: -517
> > >
> > > then the boot fails waiting for the rootfs on my sata device.
> > >
> > > If I use a kernel 5.0 device tree with a 5.1 RC kernel it boots fine.
> > >
> > > I am glad to test anything if that would help.
> > =

> > Do you have PHY_MVEBU_A3700_COMPHY enabled?
> =

> I had it compiled as a modules but am not using an initrd, so I compiled =
it into the kernel itself (i.e.  not as a modules)
> But I still fail to boot.  I do not get the trace above but I just hang a=
t "Waiting for root device /dev/sda2...".
> Replacing the 5.1-rc7 device tree with a 5.0 device tree boots fine.

Can you bisect the problem? I'd start testing
1c2950563a260ecdb87ec9645b50b5a6f227568c and
31af04cd60d3162a58213363fd740a2b0cf0a08e.

If you don't understand that, don't hesitate to ask. Maybe come into the
#armlinux or #mvlinux irc channel on freenode.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
