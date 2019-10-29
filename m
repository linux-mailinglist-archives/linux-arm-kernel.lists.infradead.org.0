Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1375BE835A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 09:40:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BB7QJvQG5FIhSJ6AkcVzYFpG8NGwmlGJDyI4Kpn4L3M=; b=EVYce6o9WO69AcXWKZZf0fBwi
	sbzuyjSWkOdzzwR7m0t95GqRa9+mmLwhqfZF6pLH7nx86y0X16zBnvoiW8lu7ieC7m38dHhqN8O+d
	KoKL4e1Z0rxbhLLlOfiedjU2ykxyZMGWXOmQSRLuExRJ/5TTEORkd8UQYzY7fQUKsBMXkNNnOhgCn
	cyLKsLju66FhG9U3GuH7fYa4WNTx8Uh+V5A2ZbJwerJxdPb6g7KtsrTabaIS0NvCfDO0LCH5HtFfQ
	kVvnNEyUdTk07e7lE+z7GcitnyVoPKh2O77qUxMTGFuoBWfCHq4qQUZPRABZZvBWlGdceqj6PU4ae
	Qorq22Smw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPN3K-0001DR-Dx; Tue, 29 Oct 2019 08:40:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPN3A-0001Cb-1E
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 08:40:25 +0000
Received: from localhost (unknown [91.217.168.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 292D52067D;
 Tue, 29 Oct 2019 08:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572338423;
 bh=mgWIhjckqxqZSyRbf9Ero4ZNiEz9TMOyb3Twc/C42Qw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VX+bTrWJaxeA2GZo6IMS5PC8kXNJvpeD5Q4wP4xSZ7Dr2B5qn68G1qj1p3C1WtNj9
 tgZPaKROjJoIbCD9PNoQMMTZg1tQrDhBnNx/3TihzsuYA5c+v07maBq+iDHzyr44sg
 RebUP5pDHloE7kPCl3rCVrWGqXWjBrgT+dUVSSzY=
Date: Tue, 29 Oct 2019 09:30:12 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH 3/3] arm: dts: sun8i: a83t: a711: Add touchscreen node
Message-ID: <20191029083012.62wgvonpxkgmznpn@hendrix>
References: <20191029005806.3577376-1-megous@megous.com>
 <20191029005806.3577376-4-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20191029005806.3577376-4-megous@megous.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_014024_116467_1BE2D9A1 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [91.217.168.176 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 =?utf-8?Q?Myl=C3=A8ne?= Josserand <mylene.josserand@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Marco Felsch <m.felsch@pengutronix.de>, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-input@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0560018537927180716=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0560018537927180716==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vjc7bik6lfh4bmzh"
Content-Disposition: inline


--vjc7bik6lfh4bmzh
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 29, 2019 at 01:58:06AM +0100, Ondrej Jirman wrote:
> From: Myl=E8ne Josserand <mylene.josserand@bootlin.com>
>
> Enable a FocalTech EDT-FT5x06 Polytouch touchscreen.
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> Signed-off-by: Myl=E8ne Josserand <mylene.josserand@bootlin.com>

Applied, thanks

--vjc7bik6lfh4bmzh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXbf4lAAKCRDj7w1vZxhR
xVbSAQDT1XY746DPYfIud8pyJ8oPJujpzqL4+l8r1CyT6njIYQD/UIVWkNxtxcoq
K3j4wdKkaXwfIZ5fyFVqDB6uE9PToAc=
=wvMX
-----END PGP SIGNATURE-----

--vjc7bik6lfh4bmzh--


--===============0560018537927180716==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0560018537927180716==--

