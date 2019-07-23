Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED93E72025
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 21:35:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iwocQz1XobmAXCxM7Os0ZzOXXatnF0p3tNq37XgXtng=; b=BYQjuKaRc1p/rE
	Y5wcLjYEcMYpgbeeWzI6TB+9gHy7v9eSATinVpPNCE7EpiloYmqt89b52KI5f5LugAdFni92jVPp/
	3E0oNiXLB62CiDRQ909S7XcE6LyhytUmwZdwyenyWgQNJPD5GH5RAvZof5QhhdHa4TP6pewo8tp0s
	tIyixZw+Pb51lN71urkodCx2VezpdG3IdWhvQg4dzAgzF7f/n5nMZwhHRryP5iufN/gkm7Hukng8w
	KHAIFMWvXPi0V9Q50potMIRZ+w6fZRSy0hDdTtJICxQUIJjneQKvuvAP0doi8RqmYWuCCCvocH7il
	gBlgqQBW1WW2/vdZN6IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq0Yx-0001BF-H9; Tue, 23 Jul 2019 19:35:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq0Yk-0001Ah-6H
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 19:34:51 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hq0Yi-0002xz-Ii; Tue, 23 Jul 2019 21:34:48 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hq0Yd-0005FW-Ab; Tue, 23 Jul 2019 21:34:43 +0200
Date: Tue, 23 Jul 2019 21:34:43 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Oliver Hartkopp <socketcan@hartkopp.net>
Subject: Re: TS-219 RTC issue with Debian Buster
Message-ID: <20190723193443.bqcbrxalng554u76@pengutronix.de>
References: <99a8e2cc-61a2-3b43-0d72-6f001cffe572@hartkopp.net>
 <20190723190636.tuzob2w2fznmtsmb@pengutronix.de>
 <4a5c0768-0383-0a16-8d3f-639dc9530abf@hartkopp.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4a5c0768-0383-0a16-8d3f-639dc9530abf@hartkopp.net>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_123450_233538_1BC9FB0A 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-rtc@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alessandro Zummo <a.zummo@towertech.it>, tbm@cyrius.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Oliver,

On Tue, Jul 23, 2019 at 09:21:06PM +0200, Oliver Hartkopp wrote:
> I think I already solved the problem, see here:
> https://marc.info/?l=3Dlinux-arm-kernel&m=3D156390875629259&w=3D2

IMHO the right fix is teach hwclock to handle your rtc correctly.
Changing the driver from =3Dm to =3Dy is only a workaround.

Maybe also using the time stuff from systemd instead of hwclock will
help^Wwork around your problem (not sure though).

Also I wonder why the ioctl to enable UIE doesn't fail if the driver set
.uie_unsupported (but I didn't look closely).

> Will file a Debian bug for it ...

Not sure this will have success. These were switched from =3Dy to =3Dm
because the kernel images got to big.
(https://salsa.debian.org/kernel-team/linux/commit/c55043a43eaacb9f876dabd7=
1273b084cb024441)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
