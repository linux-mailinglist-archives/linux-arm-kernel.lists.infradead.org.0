Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E1E6FAB9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 09:51:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xz2ObuwLSWifwgRG8Cd0UAh7g0opENp4+UPNscrt5MM=; b=hrdqUNKAuXLhmw
	SMY+qgGVvcZrcbpCkdmOfLudY0nyrcQ936R2E2a5AU/JKqtgyOi3dd3E37exsAGuEghDmbfq6KT5m
	Tr2yRdHFKpG7UyuBjK/vJgFTXTVWlG7ipv9sowHlNiCAdpGgDwtC1wbQ67RX6rEBDGs5OH5OFseYE
	UZ/Cmy79l9benflest1OzKWPEwqYHCaM1+eifHwmuJsEgUxG7Pgzk5RM+fGZvs/W2H2fldBLj2YKR
	lzGhG/DvoBwfGusY5zau/i5SlhJ2nbQGTg0mudJuzBhb8xW2HLbc3DYqhaX31Kwwql46VXPNVW74m
	aDDWoAag9UiTlRlVMiMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpT6Z-0002zP-AP; Mon, 22 Jul 2019 07:51:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpT6I-0002yb-Bb
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 07:51:16 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hpT6D-00054d-1g; Mon, 22 Jul 2019 09:51:09 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hpT6B-0006dO-Em; Mon, 22 Jul 2019 09:51:07 +0200
Date: Mon, 22 Jul 2019 09:51:07 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Sergey Organov <sorganov@gmail.com>
Subject: Re: [PATCH v4 1/3] serial: imx: set_termios(): do not enable autoRTS
 if RTS is unset
Message-ID: <20190722075107.cc3tvf6gmxhaeh5m@pengutronix.de>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1563526074-20399-1-git-send-email-sorganov@gmail.com>
 <1563526074-20399-2-git-send-email-sorganov@gmail.com>
 <20190719091143.uhjxeibtolgswq2l@pengutronix.de>
 <87h87idxq2.fsf@osv.gnss.ru>
 <20190719143151.gx43ndn2oy35h247@pengutronix.de>
 <87woge9hvz.fsf@osv.gnss.ru>
 <20190719201949.ldqlcwjhcmt7wwhg@pengutronix.de>
 <87ftmy8qgu.fsf@osv.gnss.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87ftmy8qgu.fsf@osv.gnss.ru>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_005114_390558_1B842B3E 
X-CRM114-Status: GOOD (  22.70  )
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
Cc: linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 10:42:57AM +0300, Sergey Organov wrote:
> Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de> writes:
> =

> > On Fri, Jul 19, 2019 at 06:13:52PM +0300, Sergey Organov wrote:
> >> Hello Uwe,
> >> =

> >> Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de> writes:
> >> > Hello Sergey,
> >> >
> >> > On Fri, Jul 19, 2019 at 03:18:13PM +0300, Sergey Organov wrote:
> >> >> Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de> writes:
> >> >> > On Fri, Jul 19, 2019 at 11:47:52AM +0300, Sergey Organov wrote:
> >> >> >> diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
> >> >> >> index 57d6e6b..95d7984 100644
> >> >> >> --- a/drivers/tty/serial/imx.c
> >> >> >> +++ b/drivers/tty/serial/imx.c
> >> >> >> @@ -405,7 +405,8 @@ static void imx_uart_rts_inactive(struct imx=
_port *sport, u32 *ucr2)
> >> >> >>  /* called with port.lock taken and irqs caller dependent */
> >> >> >>  static void imx_uart_rts_auto(struct imx_port *sport, u32 *ucr2)
> >> >> >>  {
> >> >> >> -	*ucr2 |=3D UCR2_CTSC;
> >> >> >> +	if (*ucr2 & UCR2_CTS)
> >> >> >> +		*ucr2 |=3D UCR2_CTSC;
> >> >> >
> >> >> > I think this patch is wrong or the commit log is insufficient.
> >> >> > imx_uart_rts_auto() has only a single caller and there ucr2 & UCR=
2_CTS is
> >> >> > never true. And CTSC isn't restored anywhere, is it?
> >> >> =

> >> >> This is rebase to 'tty-next' branch, and you need to look at it in =
that
> >> >> context. There, ucr2 & UCR2_CTS does already make sense, due to pre=
vious
> >> >> fix that is already there.
> >> >
> >> > I looked at 57d6e6b which is the file you patched. And there
> >> > imx_uart_rts_auto is only ever called with *ucr2 not having UCR2_CTS.
> >> >
> >> > If you still think I'm wrong, please improve the commit log
> >> > accordingly.
> >> =

> >> I still think you are wrong, but I don't know how to improve commit lo=
g.
> >> =

> >> To check it once again, I just did:
> >> =

> >> $ git show 57d6e6b > imx.c
> >> =

> >> There, in imx_uart_set_termios(), I see:
> >> =

> >> 1569:	old_ucr2 =3D imx_uart_readl(sport, UCR2);
> >> 1570:	ucr2 =3D old_ucr2 & (UCR2_TXEN | UCR2_RXEN | UCR2_ATEN | UCR2_CT=
S);
> >> =

> >> Here, current UCR2 value is read into 'old_ucr2' and then its /current/
> >> UCR2_CTS bit is copied into 'ucr2' (along with 3 other bits).
> >> =

> >> Then, later in the same function:
> >> =

> >> 1591:		imx_uart_rts_auto(sport, &ucr2);
> >> =

> >> is called that can check /current/ state of UCR2_CTS bit in '*ucr2'.
> >> =

> >> That's what the patch does, checks this bit.
> >> =

> >> Sorry, I fail to see how you came to conclusion that "*ucr2 not having
> >> UCR2_CTS". Do we maybe still read different versions of the file?
> >
> > No, it's just that I failed to see that UCR2_CTS is in the set of bits
> > that are retained even when looking twice :-|
> =

> Ah, that one... How familiar :-)

I thought again a bit over the weekend about this. I wonder if it's
correct to keep RTS active while going through .set_termios. Shouldn't
it maybe always be inactive to prevent the other side sending data while
we are changing the baud rate?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
