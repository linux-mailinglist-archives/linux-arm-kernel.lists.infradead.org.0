Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B77089BEE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 12:51:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fpz7oUhbsuriMSo7og0kJXCQCoGhdeg4ouXYQovJ9Bg=; b=KsMxnBu2i2KWas
	bcyUIA6dCLuC1I4s3Wpm3olCft0FlBolZddtnYuy9nMPH/nMvWfxyJuqu5hO8C/nZ9sYZcEzfEKEa
	wSFnXiF7xZ6qsjq0bhTNe6Tnl8qCTu12OLR/9WxuZX8uh6u0rpdO+LA0KrE/2CCWzCqcQXcBbJWxE
	6BoNRQjvG2x4H7us3ANsitz6G3yBQh3IqqSIrNf5As4AQTSF0bh9BCV/v4wwTSbsLMtKpXFvK8vbC
	FAyEHosOhuan11NunUgo8CCy7dhwvv8NIEG4fP8mj5bynM85ErtmyiubFS/O1Oz0U67ma94mfhlv4
	Hm30yupgeqdHHg5SFgrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7vJ-00016h-Cp; Mon, 12 Aug 2019 10:51:33 +0000
Received: from mailoutvs60.siol.net ([185.57.226.251] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7v4-00015Y-Hx
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:51:20 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 837F7523530;
 Mon, 12 Aug 2019 12:51:07 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id t6JWQo8cCAfO; Mon, 12 Aug 2019 12:51:07 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 2C631521B92;
 Mon, 12 Aug 2019 12:51:07 +0200 (CEST)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id AA26E522124;
 Mon, 12 Aug 2019 12:51:05 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [linux-sunxi] Re: [PATCH 4/6] pwm: sun4i: Add support for H6 PWM
Date: Mon, 12 Aug 2019 12:51:05 +0200
Message-ID: <2877943.4JjSNuc4x8@jernej-laptop>
In-Reply-To: <20190812104700.vzpdxx3yddthiif5@pengutronix.de>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <20190812095648.wuefcr2mep3dpkth@flea>
 <20190812104700.vzpdxx3yddthiif5@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_035118_753307_5CB118EB 
X-CRM114-Status: UNSURE (   6.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.251 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 devicetree <devicetree@vger.kernel.org>, linux-sunxi@googlegroups.com,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 kernel@pengutronix.de, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne ponedeljek, 12. avgust 2019 ob 12:47:00 CEST je Uwe Kleine-K=F6nig =

napisal(a):
> Hello Maxime,
> =

> the idea of my mail was to summarize quickly the discussion for the dt
> people to give their judgement to stop us circling in a discussion about
> the always same points.
> =

> I suggest we stop the discussion here now and wait for a reply from them
> instead.

Shouldn't we just go with compromise solution you suggested and Maxime =

accepted? I would like to send new version in time for 5.4.

Best regards,
Jernej

> =

> Best regards
> Uwe





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
