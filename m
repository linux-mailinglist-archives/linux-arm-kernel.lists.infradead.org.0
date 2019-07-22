Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E56E86FD55
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 12:00:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k3Pa4gfdArJwolMY2krA8e/whDbHzs8lBqurAaZc+uM=; b=Hz8WyLTFG09kDB
	vwIc1ovqlaQXZHuKNqTD8w6lttl99Pt3sy771Ocz8ryrU9WmT9TuwKgqBbc2wNN6op0V/KrFOsP8i
	J/ugk01e0Tr3YpK11E9of/3P0fDcjFdCL57W7IKFT3FO9EWy+6YUKtpelHtirzwMQgyrG3m2P4Are
	7OnrKbajRtwff9XpW6AySzkrd9sKk1EaVXOUphGr7e7EyqjOkKeGjTjixwnl4tC4jwQa3UT2x++Ws
	SZpERABiCV4TSYiGvUP04z/FbJGsR7r2iZrm7snEIJhJSN3JXg68ubliYtjDwkgjHR1TQuDrig71Y
	APVHrVaUAejYHPgzNCzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpV6x-0004PA-Q2; Mon, 22 Jul 2019 10:00:03 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpV4f-0002nd-3T
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 09:57:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tQ5m2UDprMKRY1x5W1rLDOU7BxPXCW4165TN6Wpecgo=; b=y2wQkrRA2llYBYaZorJdtoIjx
 1CL1Rhi65cP4suUWxgsOYCXi1eYBjtZlzCfgo66KcUD3esWUWDtPpNwuaM2v8iXHDc9aGojY/QW0v
 GvExlpFk/KUCXK0N65J0Ng1+KBfSrOfnBjjEnSJXDPg2aOvFyoRZ0UKEwrmF5dkaEmyJcyUtodaOL
 3GQqlkJs4w7tG+1THttsFJK3gx6mcpvmUBOBqTRsN2TqPatX6nQWcLMkNW3Z8dtDuSHVJ8T9PRpDf
 /zraglUiBSuFDgvxYUbM6BA+oEyE994UuZ9r0g+5oWGJIagcDPg9EsR9x9EqbNeTKo2sos8YxcRhB
 LfZmBQQ8A==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:44302)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hpV4O-0004pn-CG; Mon, 22 Jul 2019 10:57:24 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hpV4L-0002rc-GW; Mon, 22 Jul 2019 10:57:21 +0100
Date: Mon, 22 Jul 2019 10:57:21 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v4 1/3] serial: imx: set_termios(): do not enable autoRTS
 if RTS is unset
Message-ID: <20190722095721.GB1330@shell.armlinux.org.uk>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1563526074-20399-1-git-send-email-sorganov@gmail.com>
 <1563526074-20399-2-git-send-email-sorganov@gmail.com>
 <20190719091143.uhjxeibtolgswq2l@pengutronix.de>
 <87h87idxq2.fsf@osv.gnss.ru>
 <20190719143151.gx43ndn2oy35h247@pengutronix.de>
 <87woge9hvz.fsf@osv.gnss.ru>
 <20190719201949.ldqlcwjhcmt7wwhg@pengutronix.de>
 <87ftmy8qgu.fsf@osv.gnss.ru>
 <20190722075107.cc3tvf6gmxhaeh5m@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722075107.cc3tvf6gmxhaeh5m@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_025741_336044_122B7812 
X-CRM114-Status: GOOD (  24.85  )
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
Cc: linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sergey Organov <sorganov@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 09:51:07AM +0200, Uwe Kleine-K=F6nig wrote:
> On Mon, Jul 22, 2019 at 10:42:57AM +0300, Sergey Organov wrote:
> > Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de> writes:
> > =

> > > On Fri, Jul 19, 2019 at 06:13:52PM +0300, Sergey Organov wrote:
> > >> Hello Uwe,
> > >> =

> > >> Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de> writes:
> > >> > Hello Sergey,
> > >> >
> > >> > On Fri, Jul 19, 2019 at 03:18:13PM +0300, Sergey Organov wrote:
> > >> >> Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de> writes:
> > >> >> > On Fri, Jul 19, 2019 at 11:47:52AM +0300, Sergey Organov wrote:
> > >> >> >> diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx=
.c
> > >> >> >> index 57d6e6b..95d7984 100644
> > >> >> >> --- a/drivers/tty/serial/imx.c
> > >> >> >> +++ b/drivers/tty/serial/imx.c
> > >> >> >> @@ -405,7 +405,8 @@ static void imx_uart_rts_inactive(struct i=
mx_port *sport, u32 *ucr2)
> > >> >> >>  /* called with port.lock taken and irqs caller dependent */
> > >> >> >>  static void imx_uart_rts_auto(struct imx_port *sport, u32 *uc=
r2)
> > >> >> >>  {
> > >> >> >> -	*ucr2 |=3D UCR2_CTSC;
> > >> >> >> +	if (*ucr2 & UCR2_CTS)
> > >> >> >> +		*ucr2 |=3D UCR2_CTSC;
> > >> >> >
> > >> >> > I think this patch is wrong or the commit log is insufficient.
> > >> >> > imx_uart_rts_auto() has only a single caller and there ucr2 & U=
CR2_CTS is
> > >> >> > never true. And CTSC isn't restored anywhere, is it?
> > >> >> =

> > >> >> This is rebase to 'tty-next' branch, and you need to look at it i=
n that
> > >> >> context. There, ucr2 & UCR2_CTS does already make sense, due to p=
revious
> > >> >> fix that is already there.
> > >> >
> > >> > I looked at 57d6e6b which is the file you patched. And there
> > >> > imx_uart_rts_auto is only ever called with *ucr2 not having UCR2_C=
TS.
> > >> >
> > >> > If you still think I'm wrong, please improve the commit log
> > >> > accordingly.
> > >> =

> > >> I still think you are wrong, but I don't know how to improve commit =
log.
> > >> =

> > >> To check it once again, I just did:
> > >> =

> > >> $ git show 57d6e6b > imx.c
> > >> =

> > >> There, in imx_uart_set_termios(), I see:
> > >> =

> > >> 1569:	old_ucr2 =3D imx_uart_readl(sport, UCR2);
> > >> 1570:	ucr2 =3D old_ucr2 & (UCR2_TXEN | UCR2_RXEN | UCR2_ATEN | UCR2_=
CTS);
> > >> =

> > >> Here, current UCR2 value is read into 'old_ucr2' and then its /curre=
nt/
> > >> UCR2_CTS bit is copied into 'ucr2' (along with 3 other bits).
> > >> =

> > >> Then, later in the same function:
> > >> =

> > >> 1591:		imx_uart_rts_auto(sport, &ucr2);
> > >> =

> > >> is called that can check /current/ state of UCR2_CTS bit in '*ucr2'.
> > >> =

> > >> That's what the patch does, checks this bit.
> > >> =

> > >> Sorry, I fail to see how you came to conclusion that "*ucr2 not havi=
ng
> > >> UCR2_CTS". Do we maybe still read different versions of the file?
> > >
> > > No, it's just that I failed to see that UCR2_CTS is in the set of bits
> > > that are retained even when looking twice :-|
> > =

> > Ah, that one... How familiar :-)
> =

> I thought again a bit over the weekend about this. I wonder if it's
> correct to keep RTS active while going through .set_termios. Shouldn't
> it maybe always be inactive to prevent the other side sending data while
> we are changing the baud rate?

Only if CRTSCTS is enabled, and then there are a lot of serial drivers
to fix.

However, RTS is not guaranteed to stop the remote end sending characters
as soon as it is deasserted - 16550 relies on software noticing that
CTS has changed, and even then it may have a FIFO full of characters
already queued to be sent that will still be sent.

So, disabling RTS just before changing the baud doesn't give any
guarantees that a character won't be in the process of being received
while we're changing the baud rate, which means disabling it doesn't
actually gain us anything.

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
