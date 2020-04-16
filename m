Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E7C1AB879
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 08:50:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EwX4iO6mtM9isSucY5p5k+x6zQY7ctjy0Km8KyfoiKE=; b=NNOLCCILoZ6osJ
	FVhFtJCiaJAxZDduT6hzh52By3I6yK56ySP7MOicxOF7leaUU1ESjSQKqcJR4YFXSLpu7g1H6qha5
	mGoZ52P6eYe2aoEWntXnzQCRedWRs/DM4kD6ZiBqDKkJyhTjmxmpC44xE1j9cakzOn8GQH0f8G0o0
	xy7zXbKudY3ctEF9IQTvSRpUu0hDYnwlY0iMZtGkOlPfypfPj//PQ7QWchlxqTscv533uUlgNbfWy
	GGpgGFhkOWAASSOHFrL2medc+kzu2EXKwJI2sbZfys3H5OA+g3sNrz8nLKCtSMGcyI4hmewpUQPhv
	iwAqeguvdmv5t/z3Trkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOyM1-00086k-GI; Thu, 16 Apr 2020 06:50:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOyLs-00086N-7H
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 06:50:22 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1jOyLo-0003uP-OB; Thu, 16 Apr 2020 08:50:16 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1jOyLm-0002Kn-V4; Thu, 16 Apr 2020 08:50:14 +0200
Date: Thu, 16 Apr 2020 08:50:14 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Subject: Re: [PATCH] i2c: drivers: Avoid unnecessary check inefm32_i2c_probe()
Message-ID: <20200416065014.7umocf2aohz6q2nn@pengutronix.de>
References: <20200415140640.19948-1-tangbin@cmss.chinamobile.com>
 <20200415143133.qwbes5whbqx5jf2j@pengutronix.de>
 <20cc01b8-2661-7b3e-3dbc-38f7e282679b@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20cc01b8-2661-7b3e-3dbc-38f7e282679b@cmss.chinamobile.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_235020_260695_430AB563 
X-CRM114-Status: GOOD (  17.03  )
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
Cc: wsa@the-dreams.de, linux-kernel@vger.kernel.org, o.rempel@pengutronix.de,
 linux-i2c@vger.kernel.org, ardb@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 09:30:22AM +0800, Tang Bin wrote:
> Hi Uwe:
> =

> On 2020/4/15 22:31, Uwe Kleine-K=F6nig wrote:
> > Same things apply as in the previous patch. (space after punctuation,
> > Sob of sender should be last)
> I will notice this problem next time, thanks.
> > > ---
> > >   drivers/i2c/busses/i2c-efm32.c | 3 ---
> > >   1 file changed, 3 deletions(-)
> > > =

> > > diff --git a/drivers/i2c/busses/i2c-efm32.c b/drivers/i2c/busses/i2c-=
efm32.c
> > > index 4de31fae7..4786ef6b2 100644
> > > --- a/drivers/i2c/busses/i2c-efm32.c
> > > +++ b/drivers/i2c/busses/i2c-efm32.c
> > > @@ -312,9 +312,6 @@ static int efm32_i2c_probe(struct platform_device=
 *pdev)
> > >   	int ret;
> > >   	u32 clkdiv;
> > > -	if (!np)
> > > -		return -EINVAL;
> > > -
> > I don't care much about this change. While the statement that this
> > driver is only instantiated on dt platforms is probably right,
> > explicitly checking for it might still prevent surprises later, serves
> > as explicit statement for the driver reader that non-dt isn't supposed
> > to work and given that the check is cheap I tend slightly to just keep
> > it.
> > =

> In this driver, the function efm32_i2c_probe() can be triggered only if t=
he
> platform_device and platform_driver matches,=A0 and the matching conditio=
n is
> DTS. It's my opinion.

I admit I didn't recheck, but I think the driver will also be matched on
non-dt platforms that provide an "efm32-i2c" device.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
