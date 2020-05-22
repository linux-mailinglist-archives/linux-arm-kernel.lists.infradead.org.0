Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D751DED46
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 18:29:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gSul9Ja69UQW0pLakHLYiCsB+jhl3u27RUob4d6Jpc4=; b=GWZtRNQ7pwK+2AaGu6BrrSCZF
	hfzq5Gs8jtZ5Ox15RsnB4JpXFH57ydxVT81OVftIPn1M2OibGzvnrKXhjFUJ3TFGcb/bNEpiV1027
	Y7fnWIvZ1ZqhpIOKQHTCyqqVTgYd5OPKpMDB17MOAT4bOeETnEmtbwTOplHCmf6DQBrUVFduHIN9z
	uGSmU3SqW3LpkZIeKbsg8JzXpGWBgiT8mEr9I0Q2rkn4gEy22NsV05uP2tAXd8HWTvHsqL2wvFSrW
	319h1knylv4Z5+G9+bzqcQebskbxGuCOzNfOjHuJVu6PKa0bxRU3erK09IbY7Pnvy6Wl+bJ8Mvu23
	TqPoXUSAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcAXp-0007eq-U7; Fri, 22 May 2020 16:29:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcAXg-0007eT-QV
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 16:29:06 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ADB3720723;
 Fri, 22 May 2020 16:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590164944;
 bh=AZ6aR48aUG//ESbctyBmG+YOjGowh1YxgZdIw6aq6bI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s4FsV2uAqu/tX3pg7NewFoApyD7oEoZMnhAmmnKcl+3LRNhjjTs3275VGylctu3f1
 VIIKKiPn2SeIxaQfZeSKskq4enff164K3HACIxgju7ARsCEVTOOkAQ6sTcTGMSy5FX
 F6WMIvtZwCuLj5fXUKnSYt3O04BwosCqqhf4twPs=
Date: Fri, 22 May 2020 17:29:01 +0100
From: Mark Brown <broonie@kernel.org>
To: dillon min <dillon.minfei@gmail.com>
Subject: Re: [PATCH v4 3/8] spi: stm32: Add 'SPI_SIMPLEX_RX', 'SPI_3WIRE_RX'
 support for stm32f4
Message-ID: <20200522162901.GP5801@sirena.org.uk>
References: <1589800165-3271-1-git-send-email-dillon.minfei@gmail.com>
 <1589800165-3271-4-git-send-email-dillon.minfei@gmail.com>
 <20200522113634.GE5801@sirena.org.uk>
 <CAL9mu0LAnT+AfjpGs0O-MD2HYrpnQRmrj6qXtJQrJi9kbQLPUw@mail.gmail.com>
 <CAL9mu0JZ4Qy+m2oF9TSTRqA_mM0J89huCt3t_Gs7qHa=3LxhBw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAL9mu0JZ4Qy+m2oF9TSTRqA_mM0J89huCt3t_Gs7qHa=3LxhBw@mail.gmail.com>
X-Cookie: C for yourself.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_092904_879857_56B713EA 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: multipart/mixed; boundary="===============4390381249736013710=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4390381249736013710==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WZLuFERxa6Y0cbOt"
Content-Disposition: inline


--WZLuFERxa6Y0cbOt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 22, 2020 at 11:59:25PM +0800, dillon min wrote:

> but, after spi-core create a dummy tx_buf or rx_buf, then i can't get
> the correct spi_3wire direction.
> actually, this dummy tx_buf is useless for SPI_3WIRE. it's has meaning
> for SPI_SIMPLE_RX mode,
> simulate SPI_FULL_DUMPLEX

Oh, that's annoying.  I think the fix here is in the core, it should
ignore MUST_TX and MUST_RX in 3WIRE mode since they clearly make no
sense there.

--WZLuFERxa6Y0cbOt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7H/c0ACgkQJNaLcl1U
h9Cejgf9HdcJ4wfZ4TAHuSVLhSZ1f3OnJd4SsU3i35KhZ712W6yrHngXy+nbYV4N
NhjTvvpDmzBo349gEEKpFG3dhTYbtS1kgzaVDbDeHh2B9M5YrRLkIYAjflSzwLeg
Yti6Jgi8Lx7rwmbBx7ACHi/MwbFhTgRxmebmW/EprvqsF+Q1LPKwoqZzgewibxLc
PHCGuWASzrD+VUARI8yApx4c0VvYevsCX3SqhAgEVABuyv5unCyrdK6feQ4pOe6j
AWVdgGrscUVgis28iFGnfmjKc72Ilct0g+jn6CcMAxcNH75lYFazRIihBrGTjh2j
TLYng7hGWV16ZT1d0tdphETvEKKG5A==
=R/O9
-----END PGP SIGNATURE-----

--WZLuFERxa6Y0cbOt--


--===============4390381249736013710==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4390381249736013710==--

