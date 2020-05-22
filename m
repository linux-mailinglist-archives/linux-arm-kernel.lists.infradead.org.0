Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6351DE59B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 13:36:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DTiyyPTQ3m5f5eMWdU9bozKSkYzyc3X4Hew/ibuOE3M=; b=bOHVOVPDe1USaXmF7gtlCxnR6
	82uvjvurpI0obfcl3V2INBU+Pc3xMjIUnY2tA7pdNHn/FvrgaeyIxxzHRxGxrVpJeHmuZ6NQHcWJL
	uuyrqBE8ICVD84pcv49IVNG6BGwZNnEch5fIl1H0MuvwLIm+t9+31tehWFjpVtHOehtCRsdyZry67
	x2zv+vN31cI7VFktaBWWwYIT8w1ihzBUW/9roVItUwXeL2bK3JN3QMDas3kH2jZ6ofrM0YIbS//Qb
	a0Ru/OcK2ZCuFoePu4Tp0lCHW9r6fUdvkl2E4gT2AdECrKhGGC1+Idm9leg+2tfwUNtkStl/3ty/3
	cHw+vHcQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc5yp-0001wT-UY; Fri, 22 May 2020 11:36:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc5yf-0001vx-Gd
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 11:36:38 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A6CF8206C3;
 Fri, 22 May 2020 11:36:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590147397;
 bh=z/6OXOepRElS/C2Gkk6RRZeDF9+60BoN0+lQKMHv4sc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SViwwqlJ87aevdHn4RYwBdrJnJkpk2rgiCE7e168UaD8MlGXvEupOGhOH7ejYfrbJ
 N3kZOSYajFR+FWCWBWyZDHjCeSTW6pHxtLB0BJj1sTzEGGQE0HGaQz/KalAcMtdjVw
 a7j7/Lewv8pBtYtgHXcvbty7bFHiOt4Q0y6gEdzA=
Date: Fri, 22 May 2020 12:36:34 +0100
From: Mark Brown <broonie@kernel.org>
To: dillon.minfei@gmail.com
Subject: Re: [PATCH v4 3/8] spi: stm32: Add 'SPI_SIMPLEX_RX', 'SPI_3WIRE_RX'
 support for stm32f4
Message-ID: <20200522113634.GE5801@sirena.org.uk>
References: <1589800165-3271-1-git-send-email-dillon.minfei@gmail.com>
 <1589800165-3271-4-git-send-email-dillon.minfei@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1589800165-3271-4-git-send-email-dillon.minfei@gmail.com>
X-Cookie: C for yourself.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_043637_572203_23E1D16D 
X-CRM114-Status: UNSURE (   8.22  )
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
Cc: devicetree@vger.kernel.org, p.zabel@pengutronix.de, airlied@linux.ie,
 mturquette@baylibre.com, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-spi@vger.kernel.org, sboyd@kernel.org, robh+dt@kernel.org,
 thierry.reding@gmail.com, mcoquelin.stm32@gmail.com, daniel@ffwll.ch,
 sam@ravnborg.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, alexandre.torgue@st.com
Content-Type: multipart/mixed; boundary="===============0230916824934790921=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0230916824934790921==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HeFlAV5LIbMFYYuh"
Content-Disposition: inline


--HeFlAV5LIbMFYYuh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 18, 2020 at 07:09:20PM +0800, dillon.minfei@gmail.com wrote:

> 2, use stm32 spi's "In full-duplex (BIDIMODE=0 and RXONLY=0)", as tx_buf is
> null, we must add dummy data sent out before read data.
> so, add stm32f4_spi_tx_dummy() to handle this situation.

There are flags SPI_CONTROLLER_MUST_TX and SPI_CONTROLLER_MUST_RX flags
that the driver can set if it needs to, no need to open code this in the
driver.

--HeFlAV5LIbMFYYuh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7HuUEACgkQJNaLcl1U
h9DV4Qf/SihsJbdjpA046b8/NxOUN0XzKoBRryG9nf4DC4x3Fpb0tscXdk2/FeTd
JceAquzFzEEQ49acoXxDA2UQXUMtmlEiGfbWhNHS0Jwo9JVU3XPHLG5d+nX+sudU
L+O+LPQB61KcC2OQniMIjgApMjvyj2ePQY0lfjl1jnAb3PLHvlpaUt5Mjp8P0iVB
N2skbxjLqD/nDEDYXV+S0Jp689oOuNDJ/zeNk3ds99vhHEc55yvZxvZB8OcWNuop
AJ94iVaqJX+b7qak3V7Ts6Hb6GgkNvr/78bWpjGK5eB+a00Ia0l8yP9svyYdczOK
GS605iD0geP72ehzZUhOjifzaJ7rgg==
=XMsa
-----END PGP SIGNATURE-----

--HeFlAV5LIbMFYYuh--


--===============0230916824934790921==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0230916824934790921==--

