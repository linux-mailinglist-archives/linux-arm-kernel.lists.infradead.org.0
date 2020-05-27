Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E051E3FB6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 13:18:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UMsPBtvtpTAIPYILMGFyf77lQjvMg7EscjmRJ0J7P3o=; b=sg+XQBTFeI/RNXUBi/Ops1Tlz
	FLXDaueT5EMGKnRCwNsF6n/9R+hgD6Z/UbRufxzNgK+zf4Ou/8iZryDrQwLwGKJryVOQrsPj9+Rbd
	reZPppYJFwnQsxxpN77fz9pJHCHRpYMyfrouikvVBm3KtO3HrA6/TZmNludcGre7sTnANbjmIuOzc
	Op0TA2jJ09SMtM0oHd3/ylRQwVfJ/cafFSDglNv31cJM+Cz4WoMmIiuAd+X3103QhVzieFrtp4u6W
	YFFKOd4DllcTBDYIaQrJOJoirwuPp8Hd5LBvLvLNbV43UeacIrjjUyiFVsvc6j7H7ZRZPUdpGavDD
	C9VagnWaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdu57-0005qp-GT; Wed, 27 May 2020 11:18:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdu4w-0005qU-GM
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 11:18:35 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9302A207CB;
 Wed, 27 May 2020 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590578314;
 bh=Eb5W1Mu4UnXinW4nhuzmv6KKdI/oP0r3mQb3N4LC+sU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XtBpaS+v/lpJ9RrOyaPoiNOws0yskW0gCFJwnq5/cqlLekMU3baEbiWM2aeapJ8di
 CklyM05gEwvP4Kf2SWN9Va00wb2otRuEMe7bisF3ZeRBm8TTQ0bikOri9+9fyDnkXP
 E7vBo27aAiaM9AkQWfLi96qnlVRBQMOK2vWz9Xfs=
Date: Wed, 27 May 2020 12:18:31 +0100
From: Mark Brown <broonie@kernel.org>
To: dillon min <dillon.minfei@gmail.com>
Subject: Re: [PATCH v6 8/9] spi: stm32: Add 'SPI_SIMPLEX_RX', 'SPI_3WIRE_RX'
 support for stm32f4
Message-ID: <20200527111831.GC5308@sirena.org.uk>
References: <1590564453-24499-1-git-send-email-dillon.minfei@gmail.com>
 <1590564453-24499-9-git-send-email-dillon.minfei@gmail.com>
 <20200527095109.GA5308@sirena.org.uk>
 <CAL9mu0JA=XRTj_HONQGtj74X05TAV0__dW2At0AAeymwNvJhEw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAL9mu0JA=XRTj_HONQGtj74X05TAV0__dW2At0AAeymwNvJhEw@mail.gmail.com>
X-Cookie: Drop in any mailbox.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_041834_564998_79FF4AEC 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 Hua Dillon <dillonhua@gmail.com>, p.zabel@pengutronix.de,
 linux-clk <linux-clk@vger.kernel.org>, Dave Airlie <airlied@linux.ie>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linux-spi <linux-spi@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 thierry.reding@gmail.com, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: multipart/mixed; boundary="===============4790971715684209393=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4790971715684209393==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TYecfFk8j8mZq+dy"
Content-Disposition: inline


--TYecfFk8j8mZq+dy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 27, 2020 at 06:45:53PM +0800, dillon min wrote:

> sorry, forget to remove these two patch from this submits, will not
> include it in later submits
> which ack other's review result.

Ah, OK - no problem.

--TYecfFk8j8mZq+dy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7OTIcACgkQJNaLcl1U
h9CjnAf9EH3yOA2f087uyr/KGCDeTZDdKdksfcJ4a9wlCQWW1Cur92auEEnoA3Rt
OaZkMT9iqrDJqCSZ80c9Be1Ql4zXnjxCHU+qExkLFmDJcR448ywgqaYh9gluj6D3
xQnn0fxJcjgY+eixxAPqszazPIQm3iHZL0TsQo5DNBU7uDO/p+HytpUoYEntT7AT
bjn2mYE+1drgcxELR/TkQdRnV0jUiAtcpkGnI2tPO70MBQ6jcAwIAX4cBSnjwdhO
L9bXUB58NNMcuUWSj9+c8WyJn0zssre7UWLaYiX9g92/yJEPJNzGN2SFXiM1Jsks
PQH9axxSmBjKf8StOS7727u+sJ8H8Q==
=Ibfd
-----END PGP SIGNATURE-----

--TYecfFk8j8mZq+dy--


--===============4790971715684209393==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4790971715684209393==--

