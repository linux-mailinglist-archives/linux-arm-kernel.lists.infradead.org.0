Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DAA1DF907
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 19:22:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JvcxUsX3VDD6cxi7cvfFNwTPAqytKhCalWIoqkRjg9s=; b=urUzf9QVqUhQX2
	zED6hc7T9VhtSKIHBLd3K+BRzJ4W4cVb9JD9lnlIQ98EmGc7RB+weDI1GXDg44jKZhd5ZBZO/Oo/J
	J2YT7heeJ43HM3NadDG+FIoQX0HXmBeSA4fniPOtsuZmKHUAhzIXpxAnbsS3T04vh9RjxRSU0g3R+
	qLCJ4Ugzr0YdmwPihNwkrbemRT+MfsN8vOttRF9Gk/I6bX4aWnLokxz7w+Z54H93K2mbLTpqwcxPu
	E0mhWTY+FqmV9yh38wwvqgZkQkbRQIICGZM8ZSphCFVh5cjKEkfPze7ijoFHXDUJY1O09w2EJbhAO
	b8RpiL7NH4uCvZCjFV/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcXqU-0003Rs-JY; Sat, 23 May 2020 17:22:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcXph-0002ui-D0
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 17:21:18 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1jcXpU-0001Uh-E9; Sat, 23 May 2020 19:21:00 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1jcXpT-00056j-NQ; Sat, 23 May 2020 19:20:59 +0200
Date: Sat, 23 May 2020 19:20:59 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 12/32] pwm: bcm-kona: convert to
 devm_platform_ioremap_resource
Message-ID: <20200523172059.5szevzoiqavj26kv@pengutronix.de>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
 <20191229080610.7597-12-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191229080610.7597-12-tiny.windzz@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_102113_450043_8B600822 
X-CRM114-Status: UNSURE (   6.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: alexandre.belloni@bootlin.com, heiko@sntech.de,
 linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org,
 thierry.reding@gmail.com, linux-riscv@lists.infradead.org, festevam@gmail.com,
 f.fainelli@gmail.com, shc_work@mail.ru, khilman@baylibre.com, wens@csie.org,
 jonathanh@nvidia.com, linux-rockchip@lists.infradead.org,
 ludovic.desroches@microchip.com, bcm-kernel-feedback-list@broadcom.com,
 linux-imx@nxp.com, slemieux.tyco@gmail.com, linux-pwm@vger.kernel.org,
 rjui@broadcom.com, s.hauer@pengutronix.de, mripard@kernel.org, vz@mleia.com,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 paul.walmsley@sifive.com, matthias.bgg@gmail.com,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 sbranden@broadcom.com, linux@prisktech.co.nz, palmer@dabbelt.com,
 kernel@pengutronix.de, shawnguo@kernel.org, claudiu.beznea@microchip.com,
 nsaenzjulienne@suse.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Sun, Dec 29, 2019 at 08:05:50AM +0000, Yangtao Li wrote:
> Use devm_platform_ioremap_resource() to simplify code.
> =

> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>

Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Thanks
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
