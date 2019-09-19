Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9729DB7EB5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 18:03:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z+4z79oNtXPsVkcLgIt+zu0/PfAU/YItjRorp98OYz4=; b=TelhPkyChHncG8PyQd8+T5Tgv
	uJLXUEDV4IGW0Yrb/HwrTa/uqoNOzSgV5dudzcrTGtIg4VIVC9URi3daPsWvrlIxBdqxlI5atRwqW
	nJdsH1D0Mz8BgWNH8VwFmGqGz2tXgkQQ/ATFo4tFi2Xrc11rwm8hu8IYGouRezrDgAzyy3LqaQ/gE
	gw8VRjr28wUMnty20BfbqkW2HwXfZNZGEX+7lIBLY5uA1BU56Dl12q1P7sVvS0M98KvmU+iTO57Rm
	8zLT0QaSgiY/XLFP/d1/euCI4PgFqPPtEzX16PJ83w8pduJ+uk8Jg6qPMWDY5/aguBXsWXVCP3Btl
	r4RHw8Hgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAyu6-0002EW-UG; Thu, 19 Sep 2019 16:03:34 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAytt-0002Dt-Vv
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 16:03:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vJRSj0yJ0nGMQ7A04jXbedZdlDHcAN0hBrzP50Ruo6g=; b=enEiR9C8pobypGbm3Yy3RH5U8
 TsGirkqhrEOn7G+4Oldowb8anNJrWFpFbamtEgD5TksYWJ9AKr9t7Z8AERxiv/Z0WkZy4cjQkKbeb
 m/nxq4q6tjVQFHarK9iHDf4DSp32U593EVhKKIJf7WhoWNqGNj22cAXlRHkgcb0BOwBIw=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iAyto-0004MD-Ol; Thu, 19 Sep 2019 16:03:16 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id A09802741D3A; Thu, 19 Sep 2019 17:03:15 +0100 (BST)
Date: Thu, 19 Sep 2019 17:03:15 +0100
From: Mark Brown <broonie@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH] spi: atmel: Fix crash when using more than 4 gpio CS
Message-ID: <20190919160315.GQ3642@sirena.co.uk>
References: <20190919153847.7179-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20190919153847.7179-1-gregory.clement@bootlin.com>
X-Cookie: I'll be Grateful when they're Dead.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_090322_039925_92BA8E91 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7021759628648600316=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7021759628648600316==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Vxa5joy26gVGOrvU"
Content-Disposition: inline


--Vxa5joy26gVGOrvU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 19, 2019 at 05:38:47PM +0200, Gregory CLEMENT wrote:

> With this patch, when using a gpio CS, the hardware CS0 is always
> used. Thanks to this, there is no more limitation for the number of
> gpio CS we can use.

This is going to break any system where we use both a GPIO chip select
and chip select 0.  Ideally we'd try to figure out an unused chip select
to use here...

--Vxa5joy26gVGOrvU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2DpsIACgkQJNaLcl1U
h9DKfgf+Jsooil74xOpQ+umzYyZp8Qb3FEcyImIlX60lGCNBSHiEvAhRajJ6+AXX
CsWEWs+bSzrHgo4y5RRwOrtp7RXbEJARgR2ke9JZ0l9P9qdU3oW/m8A8Ghq4Q8z/
3w+GW4UoWkqUuDjK/LZeOvBtmq1+viYePqq+wOLg12uVCc+aifI1qZlTJHFaGJUf
EJDxnopv92Ct66G3ZcQ8lMmujukMAuk6Z7+H6SJqvhIDOQLd8Ryt955+6v198wcq
M8zO5suWI6sTMK0HpsN6L3K/WOe7vOUOPYyyLtKBSAA4+Piy9EaQcVsWv1mVLJfp
SO2Y3XYEQykklvv+yX+7XlZxS6QYAg==
=WMib
-----END PGP SIGNATURE-----

--Vxa5joy26gVGOrvU--


--===============7021759628648600316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7021759628648600316==--

