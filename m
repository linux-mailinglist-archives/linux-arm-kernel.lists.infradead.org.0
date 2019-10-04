Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9326BCC3EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 22:08:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PAfByADJ6lZApYJ2563ND07/6NBvvpqLP6U1YZi8/Sk=; b=SPNG2D2bNnKlN0
	NgQssd61YQRD1Od9RwJF0rSt1+YG9hsxAREpdUI8HH8dQ9EVzHyIasPNeu4Owhfbcb4PvQPYtPbqC
	uyESKycuaeUHnFcc3lIJXFQtEn7TdUowX2EH7iEwFvAort+evFPHV1cPOkwEfmqxsyU1j30ypTVD8
	Kn5QyxsqU5mfBrRy0DttGArtPSLHXcXjGQUpBhgZsPNR1ooWsf0lfsP4L1baHt9sLVRWNeBXkUrPk
	9tHsUen47TxxtUvFopyoNX35WIaOM8JO364f197Z2tH00peM/moSc5IZOhZL9JLgr17nirxkQU2Ef
	eT693hKpAkqAHXMxVDJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGTsF-00018R-9O; Fri, 04 Oct 2019 20:08:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGTs8-0000wf-4r
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 20:08:17 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iGTs1-0001TG-Br; Fri, 04 Oct 2019 22:08:09 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iGTrw-0008EY-Kb; Fri, 04 Oct 2019 22:08:04 +0200
Date: Fri, 4 Oct 2019 22:08:04 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>
Subject: Re: [Linux-stm32] [PATCH] pwm: stm32: Fix the usage of uninitialized
 variable in stm32_pwm_config()
Message-ID: <20191004200804.ee6kedadchxoznnd@pengutronix.de>
References: <20191004044649.2405-1-yzhai003@ucr.edu>
 <20191004062336.jidzrytx4z5talro@pengutronix.de>
 <e6824330-d331-798d-0f0a-1952db028900@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e6824330-d331-798d-0f0a-1952db028900@st.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_130816_190355_9A2F909E 
X-CRM114-Status: GOOD (  16.37  )
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
Cc: "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Yizhuo <yzhai003@ucr.edu>, Thierry Reding <thierry.reding@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Fabrice GASNIER <fabrice.gasnier@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

Cc +=3D Mark Brown who maintains regmap

On Fri, Oct 04, 2019 at 09:09:51AM +0000, Benjamin GAIGNARD wrote:
> =

> On 10/4/19 8:23 AM, Uwe Kleine-K=F6nig wrote:
> > Hello,
> >
> > On Thu, Oct 03, 2019 at 09:46:49PM -0700, Yizhuo wrote:
> >> Inside function stm32_pwm_config(), variable "psc" and " arr"
> >> could be uninitialized if regmap_read() returns -EINVALs.
> >> However, they are used later in the if statement to decide
> >> the return value which is potentially unsafe.
> =

> Hi Yizhuo,
> =

> like for the your patch in IIO trigger regmap_read could only failed
> if the hardware block is no more clocked and in this case we won't =

> return of regmap_read.

I'm not sure this is aligned with how regmap is supposed to be used. I
think the driver making use of regmap is not supposed to make any
assumptions about how and when a read or write access can or cannot fail
and instead is supposed to check all return values. So IMHO the patch
goes in the right direction.

> Testing regmap_read() return value just add code but doesn't provide a =

> valid information.
> If you really want to log all the possible errors cases please do it in =

> regmap code itself and
> not in *all* the drivers.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
