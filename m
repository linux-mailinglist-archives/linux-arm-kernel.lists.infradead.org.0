Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9B9CC451
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 22:40:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sRp7eOFV4P1gdGBhlQ/+xk+tQJwBj35Ai2X2mlJ/qmM=; b=CpC0Bkk12VgRrq
	PFidkU/Qz7+9w1zGl0z0X9JEzsSYkYgKJEk865/UEye17CNLxie8yo8sjX8mUnLCGRJgwDFLAX4+B
	5qQT9xLhPgfWq952VBMgebWY4wyjJootoS0UnStnNmwkZCeZPMlR8qiqso8oW5z1YMPfFU1qZxuMI
	ZN2zSBND8a4i3CwdowpYKl+JX3XBjMR/CoxydIZ+ZhnX0jbW7TctctYfbb6SsLSN5Du4XzdvvI9At
	j4m8zZ5tfCT4mKCRCfNkRfHX0+1qwo+z5OfSjyWYAUJO3dzwquBionXgen6zefF8UUmdpLuezGZzc
	zu7jWbP06Wy9We7t+cJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGUN3-0004vA-5e; Fri, 04 Oct 2019 20:40:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGUMa-0004ld-4O
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 20:39:45 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iGUMQ-00047D-Kn; Fri, 04 Oct 2019 22:39:34 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iGUMP-0000YC-L0; Fri, 04 Oct 2019 22:39:33 +0200
Date: Fri, 4 Oct 2019 22:39:33 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Claudiu.Beznea@microchip.com
Subject: Re: [PATCH 2/4] i2c: at91: implement i2c bus recovery
Message-ID: <20191004203933.tfhr6cwbsq2hxrov@pengutronix.de>
References: <20191002144658.7718-1-kamel.bouhara@bootlin.com>
 <20191002144658.7718-3-kamel.bouhara@bootlin.com>
 <08e99a4b-851e-0bee-4c5a-8578b42c283e@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <08e99a4b-851e-0bee-4c5a-8578b42c283e@microchip.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_133944_199944_8720E151 
X-CRM114-Status: UNSURE (   9.05  )
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
Cc: kamel.bouhara@bootlin.com, alexandre.belloni@bootlin.com, wsa@the-dreams.de,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, linux-i2c@vger.kernel.org,
 thomas.petazzoni@bootlin.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 04, 2019 at 09:35:23AM +0000, Claudiu.Beznea@microchip.com wrot=
e:
> Hi Kamel,
> =

> On 02.10.2019 17:46, Kamel Bouhara wrote:
> > +static int at91_init_twi_recovery_info(struct platform_device *pdev,
> > +				       struct at91_twi_dev *dev)
> > +{
> > +	struct i2c_bus_recovery_info *rinfo =3D &dev->rinfo;
> > +
> > +	dev->pinctrl =3D devm_pinctrl_get(&pdev->dev);
> > +	if (!dev->pinctrl || IS_ERR(dev->pinctrl)) {
> =

> You may use IS_ERR_OR_NULL() here.

Can devm_pinctrl_get return NULL? From a quick look, it cannot.

rule of thumb: IS_ERR_OR_NULL is wrong as it is a sign of poor return
value semantics.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
