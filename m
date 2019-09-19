Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC11FB78D0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 14:01:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PhkO0nu4I3zD9rjVz2Mej1sIeRRf1uMeH+hwTKTT7xA=; b=hh5EkkhQNfErGz
	Be4w+Zd/vrGyQHKdPO90tKmuNzfoLVviAG/K1fFuI0nTe0YBYJ4JUX2P7FpFlovwXRJz6rTG4DXcc
	9X0d95xg26fYYah2E3PDFtfSKvwxZfNu2F8R6zONnsh1TSRIyz8+KmC7DzS5F5ZKFsRKwjBQb8QD4
	n3cT3r5++oqFDymveHps47apEvQpE4UN9D1z5j6oQ0CFXhSz/hwcWw36PSWkXAgFaDiZLiIb/IbRT
	vJ3ScETW5dGu1AlYiYFPjxnEAJqq5lkxn4iPeiUtzaQu301ZrPq20cnHQ4C7TGyYG0Zujk0o9NOmU
	+y3JedjeWh4Upd0JZzrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAv7Q-0007rD-13; Thu, 19 Sep 2019 12:01:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAv73-0007mE-5V
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 12:00:43 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iAv6u-000652-IR; Thu, 19 Sep 2019 14:00:32 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iAv6s-00046r-NC; Thu, 19 Sep 2019 14:00:30 +0200
Date: Thu, 19 Sep 2019 14:00:30 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Philipp Puschmann <philipp.puschmann@emlix.com>
Subject: Re: [PATCH v2] serial: imx: adapt rx buffer and dma periods
Message-ID: <20190919120030.oie2id4womd4lcp5@pengutronix.de>
References: <20190919102628.23621-1-philipp.puschmann@emlix.com>
 <20190919112216.qjkx5wvqhsadjxg5@pengutronix.de>
 <9923d405-a62d-0c6a-6039-f4a7bc3bf2e8@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9923d405-a62d-0c6a-6039-f4a7bc3bf2e8@emlix.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_050041_528031_20CDA5C8 
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
Cc: fugang.duan@nxp.com, kernel@pengutronix.de, gregkh@linuxfoundation.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 linux-serial@vger.kernel.org, jslaby@suse.com, shawnguo@kernel.org,
 yibin.gong@nxp.com, festevam@gmail.com, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 19, 2019 at 01:40:03PM +0200, Philipp Puschmann wrote:
> Hi Uwe
> =

> Am 19.09.19 um 13:22 schrieb Uwe Kleine-K=F6nig:
> > On Thu, Sep 19, 2019 at 12:26:28PM +0200, Philipp Puschmann wrote:
> >> Using only 4 DMA periods for UART RX is very few if we have a high
> >> frequency of small transfers - like in our case using Bluetooth with
> >> many small packets via UART - causing many dma transfers but in each
> >> only filling a fraction of a single buffer. Such a case may lead to
> >> the situation that DMA RX transfer is triggered but no free buffer is
> >> available. While we have addressed the dma handling already with
> >> "dmaengine: imx-sdma: fix dma freezes" we still want to avoid
> > =

> > Is this statement still true now that you split this patch out of your
> > bigger series?
> Yes. The dma patches care about stopping DMA channel. This patch tries to
> avoid that the channel runs out of usable buffers (aka dma periods).
> =

> > =

> >> UART RX FIFO overrun. So we decrease the size of the buffers and
> >> increase their number and the total buffer size.
> > =

> > What happens when such an RX FIFO overrun happens? Are characters lost?
> > Or only time?
> Good question. In explanation i have missed an important point:
> When using HW flowcontrol via RTS/CTS and the buffer is full CTS is used =
to
> tell the remote device - here the Bluetooth chip - to stop sending data.
> For a while this prevents losing of characters. But then the remote device
> comes into trouble as its internal TX buffers runs over. Depends on the
> device how it handles this case and if it recovers if data flow is enabled
> again.
> =

> In case without HW flow control characters would be lost. Depends on the =
upper
> layer what happens then.
> =

> > Does your change have an influence if I do fewer but
> > bigger transfers?
> Don't think so. The dma periods are raw data buffers. If one is full the =
next one
> is being used. For the performance i don't see a significant difference b=
etween
> using 1 kB buffers or 4 kB buffers.

Would be great to add these infos to the commit log.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
