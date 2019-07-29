Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C26A678867
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 11:29:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VdBov4YXZuj3NG3jBvOkHA8jWgvBBier8my+EDgx+Mc=; b=S73F1AJFDjfc2E
	UpPJWdErfUdt9FCcDNASlr0uLTjuD77pip5SUGihcGrYQfUI4pCqe0Q2sdi33b/xT7EopVg0FSURS
	5+0TnJYcLXDq6lVE32ns2Lhi9kxXacW/Y0k4W9Jskn1k8eCaJ2k6QXO2N9JssfeKL7mMu1YIXayBj
	Fv4OtfMLJL5swtNUt6Ozu8/8CGnxqfbYUwxxCg8QAphYYIF4SubI4TE75izZVxOl5LM6vyo4s/rbU
	TceP53o4R95YCfMhOnOMUc65K8F5nfO8961wRhpBusrqMYGNjZ5E/mZXW14bgBKqOQqccIA50xRlg
	cH1CS2QX9IDLCPKK9UsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs1yW-0003ws-5W; Mon, 29 Jul 2019 09:29:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs1yL-0003wX-Bd
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 09:29:38 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hs1yI-0000BO-N4; Mon, 29 Jul 2019 11:29:34 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hs1yI-0000UK-3J; Mon, 29 Jul 2019 11:29:34 +0200
Date: Mon, 29 Jul 2019 11:29:34 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Sergey Organov <sorganov@gmail.com>
Subject: Re: [PATCH v7 3/3] serial: imx: get rid of imx_uart_rts_auto()
Message-ID: <20190729092934.4gjeqtj3q4wkgt6j@pengutronix.de>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1564167161-3972-1-git-send-email-sorganov@gmail.com>
 <1564167161-3972-4-git-send-email-sorganov@gmail.com>
 <20190726192940.jy4frulgbetf5d2v@pengutronix.de>
 <87wog1xlf8.fsf@osv.gnss.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87wog1xlf8.fsf@osv.gnss.ru>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_022937_399795_C4F4FE3F 
X-CRM114-Status: GOOD (  18.58  )
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
Cc: linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 12:03:07PM +0300, Sergey Organov wrote:
> Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de> writes:
> =

> > On Fri, Jul 26, 2019 at 09:52:41PM +0300, Sergey Organov wrote:
> >> Called in only one place, for RS232, it only obscures things, as it
> >> doesn't go well with 2 similar named functions,
> >> imx_uart_rts_inactive() and imx_uart_rts_active(), that both are
> >> RS485-specific.
> >
> > I don't share the critic. IMHO the name is fine. imx_uart_rts_inactive
> > sets rts to its inactive level,
> > imx_uart_rts_active() to its active level
> =

> Not exactly, in fact both do more than that, in a similar manner.

They both handle mctrl-gpio, the autorts stuff isn't available for that,
so we could fix that by letting rts-auto set the RTS gpio to active.

> > imx_uart_rts_auto() lets the output drive automatically by the
> > receiver.
> =

> And this one was different and it was rather confusing when I've tried
> to grok the logic of the driver.
> =

> > The name started to be a bit wrong in patch 1 of the series however.
> =

> The function was different from first two even before the patch, as it
> does not do any of those additional things the first two do.
> =

> > And I still object removing this function because with the semantic
> > this function got in patch 1 it is suiteable to be used in
> > imx_uart_set_mctrl().
> =

> It is not, as it does require change to be used there, as we've already
> seen, and then it becomes very different function from what it was at
> the beginning.
> =

> Even then, the end result I've shown you when attempting to somehow prese=
rve
> some re-incarnation of this function still seems more cumbersome to me
> than the end result of these patches.
> =

> That said, this a matter of taste and style, not correctness, and could
> be changed as a follow-up, not to risk breaking already tested patch
> series.

*shrug* I stop caring here.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
