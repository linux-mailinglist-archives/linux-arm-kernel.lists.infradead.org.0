Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B403118EB9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 18:15:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qx8vgdPydwJsp8Vsruv4iDhrTZSVB+2KRir/RKMT9gU=; b=Ru9is3BwMqkkmT
	2GheYpsneg2iPlOP19H2SXh1g/cBD3r+HCt7LoL3K4Hkf+r08uRSGXuVb8y4ian27IJNZl75shVqT
	MfGuxo7DHSoKn/u7P3H33RWqb+VwYKDybPVoKLzimseZkTpcIdlz9habPIEujlVkB/0UZ9QlcPmjZ
	6JMhII9UQRxnruma1cV2uLSn+63PO5oEfcVwfMtjs7qA68VLp2OVQE5nOTKjttknIAzO2QvmikfOt
	l3Mp3TSVpeN/vZHJ99Qz65tzhjAB7QnJTSOzdV6AG8+k85edLmS7sgDFfdsm5f7elLXi2as4T1hVC
	FR086wYL23L3tM0gjkOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iej6s-0003JH-M6; Tue, 10 Dec 2019 17:15:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iej6l-0003Im-HZ
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 17:15:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iej6c-0007v5-3O; Tue, 10 Dec 2019 18:15:26 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iej6a-00052N-9S; Tue, 10 Dec 2019 18:15:24 +0100
Date: Tue, 10 Dec 2019 18:15:24 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] bus: ts-nbus: remove bus driver without user
Message-ID: <20191210171524.dg4vkqp3dhupsgbm@pengutronix.de>
References: <20190107194523.2772-1-u.kleine-koenig@pengutronix.de>
 <CACRpkdbYizVLtQxh8_ZXWC-d6+E-k0T6Zq67qRJ7ascFGWTXig@mail.gmail.com>
 <20190111150441.rsmize5dudrmgu52@pengutronix.de>
 <CACRpkdbY=ZS0hb2wQfLQMr_=vNAGuMUGnAmwgwZi-hZ-fNdD=Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdbY=ZS0hb2wQfLQMr_=vNAGuMUGnAmwgwZi-hZ-fNdD=Q@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_091535_583633_85D0AEF8 
X-CRM114-Status: GOOD (  11.77  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, kernel <kernel@savoirfairelinux.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Jerome Oufella <jerome.oufella@savoirfairelinux.com>,
 Sebastien Bourdelin <sebastien.bourdelin@savoirfairelinux.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 11, 2019 at 08:56:49PM +0100, Linus Walleij wrote:
> On Fri, Jan 11, 2019 at 4:04 PM Uwe Kleine-K=F6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> =

> > Ack. For now I'd say a statement from someone who uses this stuff about
> > this fact would be good enough. Given that some time ago I sent patches
> > for this driver and didn't get any feedback from an interested party[1]
> > I tried with that patch adding some more people from
> > savoirfairelinux.com ...
> =

> I forwarded the conversation to Jerome Oufella at savoirfairelinux,
> let's see what he says.

He doesn't seem to say something. Is this the permission to shoot
ts-nbus?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
