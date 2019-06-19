Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D894B2F8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 09:23:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d05IIgFodh6/Wp+tO6PCb5Y5wG37zQ7uulW9sXq9Wns=; b=TE+lOH6lou5bsq
	olWwC4eX1UKz8YxRiwzmUg7+SWHnehHx7zMZzqjk02xxL2ib7oKLotEchYVwRZwQTXNzv/y9thpAT
	iLVNNINaYZXNX5QO1JZCZgPrR/R7P1uvQeshHMth4a+cqEbpDzmYywwkCZ0HvgguE6F+eG0rF2aZS
	3k7rm6DLQY4wUZj/2dXiSrHjYVy8Ij7awncHQ1ft2zhRppU3bMuhHKSQJXHuh9yQGrMGh6wJ3THys
	PibI5vrHxS7n38UooiavZ4cOCRM6nCcQVP9iQ3CA+q7LuBoz26JQ2pPzVKSDZBFNEg84FGK7zsDwR
	yj/i5e9W4z46uGvnAbHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdUw4-0001uV-0k; Wed, 19 Jun 2019 07:23:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdUvt-0001tp-RD
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 07:23:03 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hdUvl-0005rp-Bq; Wed, 19 Jun 2019 09:22:53 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hdUvj-00069o-GI; Wed, 19 Jun 2019 09:22:51 +0200
Date: Wed, 19 Jun 2019 09:22:51 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH v2] pwm: bcm2835: improve precision of pwm
Message-ID: <20190619072251.vhncrs2cnmtudrsj@pengutronix.de>
References: <20190603090058.qd3tbiffmdgqm34d@gofer.mess.org>
 <1c7dc4ba-eb6e-b6da-3bfd-4b872f9c6498@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1c7dc4ba-eb6e-b6da-3bfd-4b872f9c6498@gmx.net>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_002301_883647_80D23856 
X-CRM114-Status: GOOD (  13.11  )
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
Cc: linux-pwm@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Sean Young <sean@mess.org>, Scott Branden <sbranden@broadcom.com>,
 Andreas Christ <andreas@christ-faesch.ch>, Ray Jui <rjui@broadcom.com>,
 Eric Anholt <eric@anholt.net>, Thierry Reding <thierry.reding@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hallo Stefan,

On Wed, Jun 19, 2019 at 07:21:43AM +0200, Stefan Wahren wrote:
> Am 03.06.19 um 11:00 schrieb Sean Young:
> > If sending IR with carrier of 455kHz using the pwm-ir-tx driver, the
> > carrier ends up being 476kHz. The clock is set to bcm2835-pwm with a
> > rate of 10MHz.
> >
> > A carrier of 455kHz has a period of 2198ns, but the arithmetic truncates
> > this to 2100ns rather than 2200ns. So, use DIV_ROUND_CLOSEST() to reduce
> > rounding errors, and we have a much more accurate carrier of 454.5kHz.
> >
> > Reported-by: Andreas Christ <andreas@christ-faesch.ch>
> > Signed-off-by: Sean Young <sean@mess.org>
> Acked-by: Stefan Wahren <wahrenst@gmx.de>

you already acked that with a slightly different mail address a week
ago. Was this intended?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
