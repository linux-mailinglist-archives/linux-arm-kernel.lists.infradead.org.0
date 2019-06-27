Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC8057C5B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:44:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iH/gMAOFdvQRPZ/3N/M9VpvRRazq4KxvruZ0xXtAuxQ=; b=I+nmLj7JlTOpb8
	TwCXHK01VZNnAodPlNDmfxIjq+UFcC2OQPUIijTS/No2t/qWjj3U4miMjeJ7Tg9qD5NC/5SJ7GXjh
	IDTkAIN7dbPJ0kUcPX1ItvT+rLoOM6xVxuN0SORCKiIcgt171hYbJq0qzw8IkXZ2q2437LHOZIPKF
	yqpB3RoMa0wo1FLCE1MY0c3PWQNhYBmcjZVfcMKaARJo7g/QDDh/a/g/Vu7J7UCNbrSXqOIMZhy3J
	RTdC9sLAiHa2Gby5BeZqNzAISZaUAhOSFuoQRNxUCfLP0JbB2dm2QIfT3p+jDSIXtJgSvKL0N8/pe
	6lod75qsod81aW1o9kNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgO8w-0006od-0U; Thu, 27 Jun 2019 06:44:26 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO81-0006KM-KM
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 06:43:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4FJdKoTxmOpL/zTSiL8IjxGokJhI+bwHwydNc6lnxms=; b=Qo9q/srtWasiHp1XkzflZqMG6h
 LD9ilBjjl6VU/HtJ8U+IT0i6J5mmf8hidwfrY23elri6q4g0H9TutwiEvfsFnBtfrdfjO1QVILlTP
 HHNdyqkO34+ZWkZV5cUUZaY+8tENhEOIloCn1iBXVoYPZ0uq1/lbKeJO4XAcgnr6TVyJB1YiCXZAx
 B9TXMBFRx41PHzxwo50dW8fZO1V725DU8lY5b6qRYW0b708bVXsuKRvNl4qFknm60Cp3SNtBBOZZY
 0XvRG0cfdXTc19WONJxXPjBAjeIo7EAGn913ckci4+awhbcf6qzOLIvMHm6f0s3UBYV9D40PNU/n7
 RkKUeT0g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMbL-0006hp-BN
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 05:05:40 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hgMbC-0001R6-34; Thu, 27 Jun 2019 07:05:30 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hgMb2-0001T8-Hb; Thu, 27 Jun 2019 07:05:20 +0200
Date: Thu, 27 Jun 2019 07:05:20 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Sergey Organov <sorganov@gmail.com>
Subject: Re: [PATCH v2 1/7] serial: imx: fix locking in set_termios()
Message-ID: <20190627050520.n7grqfspfypmff4e@pengutronix.de>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1561558293-7683-1-git-send-email-sorganov@gmail.com>
 <1561558293-7683-2-git-send-email-sorganov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561558293-7683-2-git-send-email-sorganov@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
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
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Wed, Jun 26, 2019 at 05:11:27PM +0300, Sergey Organov wrote:
> imx_uart_set_termios() called imx_uart_rts_active(), or
> imx_uart_rts_inactive() before taking port->port.lock.
> =

> As a consequence, sport->port.mctrl that these functions modify
> could have been changed without holding port->port.lock.
> =

> Moved locking of port->port.lock above the calls to fix the issue.
> =

> Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
> Tested-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Sergey Organov <sorganov@gmail.com>

Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
