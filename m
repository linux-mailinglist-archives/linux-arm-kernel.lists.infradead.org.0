Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5C9311CC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 17:57:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+8rw3Jx7YmYC2oLQV8sIp249udB6q7zPZZ3lxmkn1lQ=; b=SuiF6nI+nOVWh7
	9xafpp/eACtlLs9S21Q03KaJMOpy7+T5Z9csguDpgkyay0iYiEM2bJBCsng8GHUEotcw099JT/Onf
	aO0wUTbZ/fCR1sO7EvOD9ZL9hjc1Lz4oPZaBdozhRmWlbUJ+awJTBH3h+Xu79VqEyoULlrZWTT3Bc
	ZZzcnpnkMP5XDetcMq9qWDxDg2wernwE7Ou5Vj2uXVSar2CH5E6MJf4hAR1GcS3tsJ66j9Ka2pZQd
	cLxnQHMFRexH7/l8sTQ4F8oVr19iIj7mLS5yhx7V9IsCSugU+23NdtCoM/tudecs9BmoP/4gBJfvu
	tQl6MnhEpD61HDkpN+CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWju9-0006Jf-Qk; Fri, 31 May 2019 15:57:17 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWju2-0006Iy-82
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 15:57:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1qsXgMdZdZCVb0zGvBJg48inoUnxWB9wnqlIe6TKCKQ=; b=lMzx7007xbCUygcV/Kwz6yH5h
 pJYhIa7kqEoC8Rw1iqQw3xkJOSwAesHfalzwzBCi8y7A/9zGdvLks6XMBdMoCxpcIZ/MkHZhMWgAB
 JX5K+LbyeV5/uhWl3BShi2oZ/cnTfbzsHols4Q+n0888jF51iq9bCqOif3FboCBteN6zZnZ9ahfzN
 uV84PRibXhMiD7FLhG5VoedR1rTjvueaPF8MSngs1qWniJ+iogk5hfAvaq5Ng7EOXJmoC73nfBq4Z
 HDznL08UeMSuZLvIw1Oj+mgg+Mm1okBQzjokAa89kNYtAMeUYBvob8jPJd+Yo+XGrgNX5fQmdTz4Z
 qydNMxa1A==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:52758)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hWjtx-0001gZ-3z; Fri, 31 May 2019 16:57:05 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hWjts-0006T6-L2; Fri, 31 May 2019 16:57:00 +0100
Date: Fri, 31 May 2019 16:57:00 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH] serial: sa1100: add note about modem control signals
Message-ID: <20190531155700.crrawgf3iot2sm2t@shell.armlinux.org.uk>
References: <20190531151032.tfrl7yqph6wsg5pl@pengutronix.de>
 <E1hWjO0-00087g-7y@rmk-PC.armlinux.org.uk>
 <20190531153135.sboekptwx4jxlpeg@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531153135.sboekptwx4jxlpeg@pengutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_085710_286468_5D46F4D4 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 05:31:35PM +0200, Uwe Kleine-K=F6nig wrote:
> Hello Russell,
> =

> On Fri, May 31, 2019 at 04:24:04PM +0100, Russell King wrote:
> > As suggested by Uwe, add a note indicating that the modem control
> > signals do not support interrupts, which precludes the driver from
> > using mctrl_gpio_init().
> > =

> > Suggested-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> > ---
> > =

> > Uwe, something like this?
> > =

> >  drivers/tty/serial/sa1100.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > =

> > diff --git a/drivers/tty/serial/sa1100.c b/drivers/tty/serial/sa1100.c
> > index a6b4309b62fc..d7dbf0576be8 100644
> > --- a/drivers/tty/serial/sa1100.c
> > +++ b/drivers/tty/serial/sa1100.c
> > @@ -949,6 +949,9 @@ static int sa1100_serial_resume(struct platform_dev=
ice *dev)
> >  static int sa1100_serial_add_one_port(struct sa1100_port *sport, struc=
t platform_device *dev)
> >  {
> >  	sport->port.dev =3D &dev->dev;
> > +
> > +	// GPIO driver does not support interrupts for these modem
> > +	// control signals, so the serial driver polls them.
> >  	sport->gpios =3D mctrl_gpio_init_noauto(sport->port.dev, 0);
> >  	if (IS_ERR(sport->gpios)) {
> >  		int err =3D PTR_ERR(sport->gpios);
> =

> I would mention that because of this mctrl_gpio_init cannot be used.

Ok.

> (And I would have expected C-like comments).

It seems that Linus has changed his opinion on C99 commenting style,
from "it's not real C" to "I prefer it":

https://lore.kernel.org/patchwork/patch/852060/

Yes, this is mostly about the SPDX commenting style, but Linus seems to
be expressing a general preference towards "//" style comments over
"/* */" comments, especially for new comments.

Specifically see replies #14 and #18, especially #18 where the
discussion moves towards trailing-line comments for structure members.

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
