Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1F332395
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Jun 2019 16:35:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mODXGEZqwoqFak/tlVoBzFxTkgZZg7rj0O7IwrZVLls=; b=EtfujVgsBOk9ZX
	RINjc1BRF7YbXVPcaAY9rOX17hxhVTFBAojU0ZlJpg7U1BB/7wBPsgOaJXmLfRznmM/rbbh1xGKTS
	NPgQc6dXQIBKwivC18hVKj2IQwcyNbAkaXGINvVRtSeSzFWS5wqH1BVGHanKPW72VWGFxMnvRPV1E
	Uu/qZMQPsN7nc0fD2Rc3fktd6l2X97uG5CUrO42YYXX1tNAxu/TF2bc0w9snoJIXjb/KRghZuLmmE
	l6gQRXET2QuzysU5WcKTAy6/xqY3ukrCVuPpF2UhLVRYhuQWvnVpio3Z5lDoY/eekyTLe/aMzWfdi
	8Yij7fe3y8Jkh9Fb3vKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXRa9-0008PF-Ex; Sun, 02 Jun 2019 14:35:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXRZz-0008Oa-Mw
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Jun 2019 14:35:25 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hXRZq-0003S4-Bv; Sun, 02 Jun 2019 16:35:14 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hXRZn-0005ZF-GW; Sun, 02 Jun 2019 16:35:11 +0200
Date: Sun, 2 Jun 2019 16:35:11 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH] pwm: bcm2835: increase precision of pwm
Message-ID: <20190602143511.o777ozvxuh5xey7o@pengutronix.de>
References: <20190602102350.zzwmfvlky3mnlqln@gofer.mess.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190602102350.zzwmfvlky3mnlqln@gofer.mess.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_073523_941362_CE58199F 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, linux-pwm@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Sean Young <sean@mess.org>,
 Scott Branden <sbranden@broadcom.com>,
 Andreas Christ <andreas@christ-faesch.ch>, Ray Jui <rjui@broadcom.com>,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Thierry,

On Sun, Jun 02, 2019 at 11:23:50AM +0100, Sean Young wrote:
> If sending IR with carrier of 455kHz using the pwm-ir-tx driver, the
> carrier ends up being 476kHz.
> =

> A carrier of 455kHz has a period of 2198ns, but the arithmetic truncates
> this to 2.1ns rather than 2.2ns. So, use DIV_ROUND_CLOSEST() to reduce
> rounding errors, and we have a much more accurate carrier of 454.5kHz.

can we please fix the rules how to round such that not every driver
invents its own measurement of what is best?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
