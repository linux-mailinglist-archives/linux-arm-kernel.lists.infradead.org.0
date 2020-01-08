Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28159133C7E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 08:55:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ESRYFcIm7h8TqPx4Zq26pS6SzY5fFAQHL7PHgQ+IeS8=; b=fbufp2Dwlt4c3a
	sY/vbdu2yUrpZxlY50XlYQCUh7NmcYRejNeeTxNKBfZFdqA+GaPIACVj3OaPsFoQPCZM/cXEGnf/8
	E3ItqYUNvLC2ZQ0fQN8duI2xpMaqL7MxlOiwpFte7OfCIhnTzr/o+zcv2eHovsu4ubCdeAoISS6Gr
	b3C6t83/hLy71oHZIGg7HS75q7wRVQcg10IK4Eq50dzAfqORHDz8iO08uPK8rJuRG7sKDqDaTCcg+
	PljoBclVq09l/2CEZTMTRWRZUUSFQuqxrld8iOE0HLUG/TE7CEy1kERMHGrR6Xstd24brQYCwzi/k
	4tFiJ2f9gc4L5DJi02Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip6BP-0006xB-J8; Wed, 08 Jan 2020 07:55:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip6B3-0006t2-Si
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 07:55:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1ip6Aw-0006cj-M5; Wed, 08 Jan 2020 08:54:46 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1ip6Av-0007Hn-Rj; Wed, 08 Jan 2020 08:54:45 +0100
Date: Wed, 8 Jan 2020 08:54:45 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V2] pinctrl: mvebu: armada-37xx: use use platform api
Message-ID: <20200108075445.xoilokyywyacwoma@pengutronix.de>
References: <1578467325-4189-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578467325-4189-1-git-send-email-peng.fan@nxp.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_235453_926573_62FD0DE3 
X-CRM114-Status: GOOD (  10.77  )
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "wens@csie.org" <wens@csie.org>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Wed, Jan 08, 2020 at 07:12:46AM +0000, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> =

> platform_irq_count() and platform_get_irq() is the more generic
> way (independent of device trees) to determine the count of available
> interrupts. So use this instead.
> =

> As platform_irq_count() might return an error code (which
> of_irq_count doesn't) some additional handling is necessary.
> =

> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
> =

> V2:
>  replace %pe with %d for err msg.

FTR: I really like having %pe for its better expressiveness and started
arguing in the v1 thread. So please wait a bit before applying this
patch.

Thanks
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
