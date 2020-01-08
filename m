Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6451133C77
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 08:53:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Ty+vARAzS9KMA5AJMLR/YKcenh316GppE7JoKIVTH0=; b=Km0JczawGrjbxZ
	9UgkGGEr5h5ieeFOTC7jw6IqxO1vZuu3GiAGgG7F8/XsQyNJ2xHjVrR6y2qYtVA0QVbtrGeJvc2c1
	Vc7wJbEoOj8ByyvYwBMVAGGDMZr+8+sB09NCSqd+MTtXD4fCPXGzX0bvOyPpfmZ8BE3u9yXRydKRk
	Yr03lReiPNfiEjxpwW+k5VCGfkRdKb5amamIIcBiLcjvLvoPvd7WNxE/P8dzV5I2TNwJxNzO3+DZl
	dykZDsjkFQS5pMhP3bmyXYMXgOUFtZIFrZN97ryF7CYTJK3dNsMQmUUlipd7fZ93hDiJNvVhj9E+A
	3HkoYtK+M+2SD49Y3f7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip69N-0006JK-OY; Wed, 08 Jan 2020 07:53:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip69F-0006IH-45
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 07:53:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1ip696-0006TA-I9; Wed, 08 Jan 2020 08:52:52 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1ip691-0007Fs-TD; Wed, 08 Jan 2020 08:52:47 +0100
Date: Wed, 8 Jan 2020 08:52:47 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: mvebu: armada-37xx: use use platform api
Message-ID: <20200108075247.y5ex44flp6lvqeoc@pengutronix.de>
References: <1576672860-14420-1-git-send-email-peng.fan@nxp.com>
 <CAOMZO5DeA24EUjr-E=V=tGNaZ7UkOEi+F5-kEBqEB288DSNSoA@mail.gmail.com>
 <AM0PR04MB4481B3EAB2DDC42A137E8AAB88530@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CAOMZO5BK0Pa6Aw6n7Tf+C6+Fg15WNbEUOzKCQTaWqTUu6yoPjA@mail.gmail.com>
 <20191218145955.GE26938@lunn.ch>
 <CAOMZO5BibF5A9sw=fLr3DXLf9LXYdxWy=aK7KCE3L0bt5eX+9Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5BibF5A9sw=fLr3DXLf9LXYdxWy=aK7KCE3L0bt5eX+9Q@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_235301_164977_5CB17B0D 
X-CRM114-Status: GOOD (  12.39  )
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
Cc: Andrew Lunn <andrew@lunn.ch>, Peng Fan <peng.fan@nxp.com>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "wens@csie.org" <wens@csie.org>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Fabio,

On Wed, Dec 18, 2019 at 12:09:42PM -0300, Fabio Estevam wrote:
> On Wed, Dec 18, 2019 at 12:00 PM Andrew Lunn <andrew@lunn.ch> wrote:
> =

> > Hi Fabio
> >
> > Look closer. This is not about returning an error, it is about
> > printing an error.
> >
> > I think the API could better. A %ie formatter would make a lot of
> > sense, so avoiding the ERR_PTR().
> =

> Yes, I think that returning the error like:
> =

> dev_err(dev, "Couldn't determine irq count: %d\n", nr_irq_parent);
> =

> would make the code cleaner.

Are you aware of the semantic difference between

	dev_err(..., "Couldn't determine irq count: %d\n", nr_irq_parent);

and

	dev_err(..., "Couldn't determine irq count: %pe\n", ERR_PTR(nr_irq_parent)=
);

? The first yields:

	Couldn't determine irq count: -5

while the latter yields

	Couldn't determine irq count: -EIO

which is more expressive.

I agree that having a format for printing an integer error code would be
useful. I have this on my todo-list but having some %pe with ERR_PTR
conversion would help me arguing my case.

So I would like the patch to go in with ERR_PTR even though v2 was sent
using %d today.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
