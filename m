Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0D56E760
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 16:32:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jTZUUhmuMgpCHymOJeH2Ay+1/HDXelD5QpGmDPdzpjU=; b=jIOTRfpjXKJunL
	1etYRcPcPBdPDVr+zSg+vOK4wm3PYPwx35eX8yaZSzTlM+yig//sqRDeuIBQGHJ4d+1rOUoqu/tJ/
	RmaWwUHTP3eR85Vn3z7xwjQTtPuVydQQ4g3Cf+JP7tJlxsqI/yq4UtCRPo1jjC4sl5IjgzuJIgLKW
	H0e4oalFrQJcD8jp8BjPBwEx5QE1q2raaESZ3hoce60tJr99rxSeWlkoPAd6qiun4TnvGrjY5mVNx
	dTkouc7hRYD3D5qDcxOthutMA/eJrzJUOlIK748b5jesB7d1TenIth9uXSDNB2zbOyUgI/rKzEU/g
	9p4+3TJvOxABGX4LdMKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoTvg-0007z5-Gu; Fri, 19 Jul 2019 14:32:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoTvR-0007yf-QW
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 14:31:59 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hoTvM-0001wE-Sb; Fri, 19 Jul 2019 16:31:52 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hoTvL-0002o2-C4; Fri, 19 Jul 2019 16:31:51 +0200
Date: Fri, 19 Jul 2019 16:31:51 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Sergey Organov <sorganov@gmail.com>
Subject: Re: [PATCH v4 1/3] serial: imx: set_termios(): do not enable autoRTS
 if RTS is unset
Message-ID: <20190719143151.gx43ndn2oy35h247@pengutronix.de>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1563526074-20399-1-git-send-email-sorganov@gmail.com>
 <1563526074-20399-2-git-send-email-sorganov@gmail.com>
 <20190719091143.uhjxeibtolgswq2l@pengutronix.de>
 <87h87idxq2.fsf@osv.gnss.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87h87idxq2.fsf@osv.gnss.ru>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_073157_874303_6B898BBA 
X-CRM114-Status: GOOD (  14.23  )
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

Hello Sergey,

On Fri, Jul 19, 2019 at 03:18:13PM +0300, Sergey Organov wrote:
> Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de> writes:
> > On Fri, Jul 19, 2019 at 11:47:52AM +0300, Sergey Organov wrote:
> >> diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
> >> index 57d6e6b..95d7984 100644
> >> --- a/drivers/tty/serial/imx.c
> >> +++ b/drivers/tty/serial/imx.c
> >> @@ -405,7 +405,8 @@ static void imx_uart_rts_inactive(struct imx_port =
*sport, u32 *ucr2)
> >>  /* called with port.lock taken and irqs caller dependent */
> >>  static void imx_uart_rts_auto(struct imx_port *sport, u32 *ucr2)
> >>  {
> >> -	*ucr2 |=3D UCR2_CTSC;
> >> +	if (*ucr2 & UCR2_CTS)
> >> +		*ucr2 |=3D UCR2_CTSC;
> >
> > I think this patch is wrong or the commit log is insufficient.
> > imx_uart_rts_auto() has only a single caller and there ucr2 & UCR2_CTS =
is
> > never true. And CTSC isn't restored anywhere, is it?
> =

> This is rebase to 'tty-next' branch, and you need to look at it in that
> context. There, ucr2 & UCR2_CTS does already make sense, due to previous
> fix that is already there.

I looked at 57d6e6b which is the file you patched. And there
imx_uart_rts_auto is only ever called with *ucr2 not having UCR2_CTS.

If you still think I'm wrong, please improve the commit log accordingly.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
