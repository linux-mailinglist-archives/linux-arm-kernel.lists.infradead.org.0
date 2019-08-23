Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8996E9B2CD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 16:57:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Zaux0iivZ5e0GSZgZFi1ko3yDMv3YRgRi2LnDXmTZlk=; b=iYlc2UUNzGV5djCu8iTrmY8JJ
	B4ZXpmYAQnj2VPz99iOmhMl8a1sNFp9/MmC3V8R3GsMd0J6DU/OaPzsc4zacMrb9ZGdJoLb/Tfl1p
	qilYZXeuSVFRBHhX+vdXvqsxsuTfPqk/ZGX9Br1rXUAgtDA+iectqMXvy0ghyyTSjVt9nMQrw0Bkg
	M2yU3MG3im/MGqVIcexK0F7fb9Az09rSAVu25s/FuZjM2M7jqc1Kk5K3642O0VN4ekridrW89lB8w
	ME4LeYqWZUw+YYvQ55DThmezp/MFyicZk7RZUXAnLhrHv+SzNGYQ/6aELD89zXAH80vyTUJU15mP1
	KqlWarGCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Azs-0005ht-M5; Fri, 23 Aug 2019 14:57:00 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1AzU-0005Jk-Nl
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 14:56:38 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id C5C4F100004;
 Fri, 23 Aug 2019 14:56:21 +0000 (UTC)
Date: Fri, 23 Aug 2019 16:56:21 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH v4 05/10] ARM: dts: sunxi: a80: Add msgbox node
Message-ID: <20190823145621.pxl4jrux7izflzmg@flea>
References: <20190820032311.6506-1-samuel@sholland.org>
 <20190820032311.6506-6-samuel@sholland.org>
 <20190820081528.7g2lo4njkut5lanu@flea>
 <f3e3420e-450a-7d41-edf8-776c0cd5a320@sholland.org>
MIME-Version: 1.0
In-Reply-To: <f3e3420e-450a-7d41-edf8-776c0cd5a320@sholland.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_075636_954777_5A72EDC7 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-sunxi@googlegroups.com, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1272011598736100534=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1272011598736100534==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="c4vbgluuko4stj5s"
Content-Disposition: inline


--c4vbgluuko4stj5s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Aug 20, 2019 at 08:17:49AM -0500, Samuel Holland wrote:
> On 8/20/19 3:15 AM, Maxime Ripard wrote:
> > On Mon, Aug 19, 2019 at 10:23:06PM -0500, Samuel Holland wrote:
> >> The A80 SoC contains a message box that can be used to send messages and
> >> interrupts back and forth between the ARM application CPUs and the ARISC
> >> coprocessor. Add a device tree node for it.
> >>
> >> Signed-off-by: Samuel Holland <samuel@sholland.org>
> >
> > I think you mentionned that crust has been tested only on the A64 and
> > the H3/H5, did you test the mailbox on those other SoCs as well?
>
> No, I only have A64/H3/H5, and recently H6, hardware to test. I've looked
> through the manuals to verify that the registers are all the same, but I haven't
> run the driver on earlier SoCs.

I'd rather not merge them until they've been properly tested. We've
had some surprises with the documentation in the past :/

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--c4vbgluuko4stj5s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXV/+lQAKCRDj7w1vZxhR
xXWQAPwKyvkn2KiTnIGYIVua45lADkdWOtD9xl/wV7233OeEOQEAr2kwv01eXmx9
SIGag0d/CuVhDIijFXIJeE/tUUHnJQ8=
=7n7e
-----END PGP SIGNATURE-----

--c4vbgluuko4stj5s--


--===============1272011598736100534==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1272011598736100534==--

