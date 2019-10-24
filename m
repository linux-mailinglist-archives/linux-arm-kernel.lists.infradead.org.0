Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04850E2B20
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 09:30:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fnXe/bLndWBc6lARnvcF2fzynbg9dcMIcmp5cakRR7Q=; b=cFr8okWC2ZCZYE
	xHBcFWD+QAaRL8ZlY4Z0pHMK8DNCebC5v1uky6NaMtJX7B1UTdaz/y9RGu9mLD8P9EgWNiwgJrJ03
	uXqTkzHcs7pnYUpjAH75sqEcYv0TgB4sazUG/TAxyS3RKE9avtjTA/kCRpXnkRsvwi/dhs3c2g/qu
	Egmsx11QAmiSfoor3K+sMYlfhL6y7Vc8skdeCSAYHY/zAXzX4/xGOBd4g9k8UztgOtvMDNSdf+cGw
	BMh72dcOLV5JswEbJmfvyf5xyFcAH3qyKDL38qmzFpoyGzutHE5q0Cu9kZhCoXtQCqGG2cTcC2W4y
	ycJLaySI8GHey4w5CfBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNXZm-0001W2-SA; Thu, 24 Oct 2019 07:30:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNXZd-0001VO-26
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 07:30:22 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iNXZQ-0003WA-Vh; Thu, 24 Oct 2019 09:30:08 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iNXZP-0006Wo-Vp; Thu, 24 Oct 2019 09:30:07 +0200
Date: Thu, 24 Oct 2019 09:30:07 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH v2 0/6] Updates for the atmel PWM driver
Message-ID: <20191024073007.n7tlxhoxk3yvdtly@pengutronix.de>
References: <20190824001041.11007-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190824001041.11007-1-uwe@kleine-koenig.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_003021_102796_FCF11BBD 
X-CRM114-Status: GOOD (  10.88  )
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
Cc: linux-pwm@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Thierry,

On Sat, Aug 24, 2019 at 02:10:35AM +0200, Uwe Kleine-K=F6nig wrote:
> this is v2 of my series to update the atmel PWM driver. (Implicit) v1
> was sent on Aug 15, starting with Message-Id:
> 20190815214133.11134-1-uwe@kleine-koenig.org.
> =

> I updated the patches from the feedback I got in v1, see the individual
> patches for the details.

This patch series is marked "Superseeded" in patchwork[1] but AFAIC this
is the most recent version of this series.

Can you please reconsider applying this series?

Best regards
Uwe

[1] https://patchwork.ozlabs.org/project/linux-pwm/list/?series=3D127096&st=
ate=3D*

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
