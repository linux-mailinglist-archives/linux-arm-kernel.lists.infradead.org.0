Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 581521E0D8E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 13:43:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cbsiOHgQXjLEtH/uCsdNDZGhpHouO8kuEsVZ6wKBJPI=; b=kHTBcVKz6MVNrm0DKl629mO5V
	R7SZYUFhpJ0//T4ioM1+vk7SbqbkTbaPal3WQ0mRSWIkfK9by2KJPImbqHAdDZqoqCMo5PqJMcZdh
	4fRRL/TXOAZMCS6QQ7CV9SriVWpSQzF4yBnGmYnx4gi49WM1gTrfFAfq0xDCH8PyHfs8rw0Hay3Wy
	WGjCVzLe1s19fYCcYWGEDOe3M9j6CF5GKnLRi7BgorGVbt77S55xuINDUf2uVxCMIOwuN/PFk1EfP
	O74jcIp/cp5n+o66ew2T8KxynNDOtcKvw4BpXZcciD2wHvPwNFVdpp3oEubZCxHDGEtClKE1KLEkl
	WoSIjUSvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdBWK-0001as-5v; Mon, 25 May 2020 11:43:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdBW7-0001a7-W5
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 11:43:41 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 36CE020723;
 Mon, 25 May 2020 11:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590407018;
 bh=ohGuMmEbw6jcckmjGuy7SWze+kKppKGgRxKK0h8JEr0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KM80Gu8HAcmZ1l6c68I4DnrdiD57M88zpiXWycjvRd03XGvrbG2HqVCawIo5VHm3F
 HJEWyIi+trARwAOz28eZPsmxmVUJW4EKfcNfq4Cq0gz0TOCHmckoj6KzZVgbzVQc1z
 SfCVNxC1mpxzGiTSEs5yrLbejv0JMu2jkSzODsaQ=
Date: Mon, 25 May 2020 12:43:36 +0100
From: Mark Brown <broonie@kernel.org>
To: dillon min <dillon.minfei@gmail.com>
Subject: Re: [PATCH v4 3/8] spi: stm32: Add 'SPI_SIMPLEX_RX', 'SPI_3WIRE_RX'
 support for stm32f4
Message-ID: <20200525114336.GD4544@sirena.org.uk>
References: <1589800165-3271-1-git-send-email-dillon.minfei@gmail.com>
 <1589800165-3271-4-git-send-email-dillon.minfei@gmail.com>
 <20200522113634.GE5801@sirena.org.uk>
 <CAL9mu0LAnT+AfjpGs0O-MD2HYrpnQRmrj6qXtJQrJi9kbQLPUw@mail.gmail.com>
 <CAL9mu0JZ4Qy+m2oF9TSTRqA_mM0J89huCt3t_Gs7qHa=3LxhBw@mail.gmail.com>
 <20200522162901.GP5801@sirena.org.uk>
 <CAL9mu0+E5R0mDUW3f+aKpfE_457VimS-ow2z_xVOmCfCAMnKuA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAL9mu0+E5R0mDUW3f+aKpfE_457VimS-ow2z_xVOmCfCAMnKuA@mail.gmail.com>
X-Cookie: Help a swallow land at Capistrano.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_044340_051191_151C2B9F 
X-CRM114-Status: UNSURE (   9.68  )
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
 <devicetree@vger.kernel.org>, p.zabel@pengutronix.de,
 Dave Airlie <airlied@linux.ie>, Michael Turquette <mturquette@baylibre.com>,
 linux-clk <linux-clk@vger.kernel.org>, linux-kernel@vger.kernel.org,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linux-spi@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, thierry.reding@gmail.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sam Ravnborg <sam@ravnborg.org>, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: multipart/mixed; boundary="===============6965359951415998607=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6965359951415998607==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fXStkuK2IQBfcDe+"
Content-Disposition: inline


--fXStkuK2IQBfcDe+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, May 23, 2020 at 09:35:06AM +0800, dillon min wrote:

> -       if (ctlr->flags & (SPI_CONTROLLER_MUST_RX | SPI_CONTROLLER_MUST_TX)) {
> +       if ((ctlr->flags & (SPI_CONTROLLER_MUST_RX | SPI_CONTROLLER_MUST_TX)) &&
> +               !(msg->spi->mode & SPI_3WIRE)) {
>                 max_tx = 0;
>                 max_rx = 0;

> for my board, lcd panel ilitek ill9341 use 3wire mode, gyro l3gd20 use
> simplex rx mode.
> it's has benefits to l3gd20, no impact to ili9341.

> if it's fine to spi-core, i will include it to my next submits.

Yes, looks reasonable.

--fXStkuK2IQBfcDe+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7Lr2cACgkQJNaLcl1U
h9Czfgf5AZokYX+RDns/ATZTiNwwtWO8zgdUKtvU2B95mvVnSoH/+u22jEMjyBEV
VTql9iv86CkoWuw8ClYb6Ii3VcZhJlMJjs6f6TPlihKzhOKSAvVrUwf0GXQlWaS5
+uyF6imcop10LBRU7tKfWP+LpK90XFTt8wGtpnHqquhnlvs4zDEFu/Yvp91raDXu
FfWKf+2Aqu7xuWMGdHJjF/SiRINbFZVw70Rv9GM06ywcTkThXhrKpn5z4fCdWlEQ
iDy1RvrcqNwjm9MtAgYmwoOF/NVEcZaygAE11tHi6JOjrXYW+29jJRQDn4N06CZZ
tIaKNPu+scagmjfGwKU2PSW4mVUAuA==
=Yagp
-----END PGP SIGNATURE-----

--fXStkuK2IQBfcDe+--


--===============6965359951415998607==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6965359951415998607==--

