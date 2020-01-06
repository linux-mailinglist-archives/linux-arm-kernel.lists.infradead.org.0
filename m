Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFC2131338
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 14:51:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sm6d34dhRpjXEFm+LDiMIdeDARlTl4TIc/y9QZN18SU=; b=CApOUK7Omt/He6dZwck9nkt2a
	+z907xton2gskUhurVB8tqQLl8KJUE7TUbJ0XOkqHIiwVdD3g9/8hg4llkableF5AwauCRs14j6ky
	Ow+tIGiBzSJyzUOCvW7n3hiwREFNS2yQU/I6DJVvB/VkBg3JwLvSavg79WBs5wCLWOLFZPCwH6X2F
	7ASgVGagh/6c+R62JaarsfZgvuUEpl8mH6djgDwZKMeiTlUy7h2HBvdODF6++ebjL1/dWDKmp3LSS
	YGqmCDlfpVKw9dXkJDVgXF1fXfO9d3yWcj0n6owOTiOGQZ+nw2XohCMejzBTqrMl7+4IuK9BpGJ/8
	h6oIhG4ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioSn2-0005SP-7P; Mon, 06 Jan 2020 13:51:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioSmw-0005Rr-Ca
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 13:51:23 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1DE1E2072E;
 Mon,  6 Jan 2020 13:51:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578318677;
 bh=WTL6AAJGHSgduF8h7uccI4wLTd+i6OKpU4LDqmdW1d8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=x67zkGR98wfdcYmefSjrzMMDN6YPniRgFxaw2YjG4Y2XIFdO1OWVJpP/AIuRBiLMk
 bJeIm/AZ3//05tW/OI2e7m2ekwIeVQV3ANbESq5YqmPuu62u+pZ09xWcMKOci2uBEH
 C10An/AxR6Ztbmin7JwyDDXAsBZuHVwE/n5JnGU4=
Date: Mon, 6 Jan 2020 14:51:14 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v2] ARM: dts: sun8i: R40: Add SPI controllers nodes and
 pinmuxes
Message-ID: <20200106135114.nwgzlzvx4mty7fhq@gilmour.lan>
References: <20200106003849.16666-1-andre.przywara@arm.com>
 <20200106085613.mxe33t7eklj3aeld@gilmour.lan>
 <CAGb2v65=iJzPJneUF=e9Xsqj_ufhuZtr5javN5YNKtaApGq2zA@mail.gmail.com>
 <20200106134207.3088a74a@donnerap.cambridge.arm.com>
MIME-Version: 1.0
In-Reply-To: <20200106134207.3088a74a@donnerap.cambridge.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_055122_450631_A8CD5DA5 
X-CRM114-Status: GOOD (  21.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============7293166549903553097=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7293166549903553097==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="behpb37ojul4ppun"
Content-Disposition: inline


--behpb37ojul4ppun
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jan 06, 2020 at 01:42:07PM +0000, Andre Przywara wrote:
> On Mon, 6 Jan 2020 21:37:38 +0800
> Chen-Yu Tsai <wens@csie.org> wrote:
>
> Hi,
>
> > On Mon, Jan 6, 2020 at 4:56 PM Maxime Ripard <mripard@kernel.org> wrote:
> > >
> > > On Mon, Jan 06, 2020 at 12:38:49AM +0000, Andre Przywara wrote:
> > > > The Allwinner R40 SoC contains four SPI controllers, using the newer
> > > > sun6i design (but at the legacy addresses).
> > > > The controller seems to be fully compatible to the A64 one, so no driver
> > > > changes are necessary.
> > > > The first three controllers can be used on two sets of pins, but SPI3 is
> > > > only routed to one set on Port A.
> > > > Only the pin groups for SPI0 on PortC and SPI1 on PortI are added here,
> > > > because those seem to be the only one exposed on the Bananapi boards.
> > > >
> > > > Tested by connecting a SPI flash to a Bananapi M2 Berry SPI0 and SPI1
> > > > header pins.
> > > >
> > > > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > >
> > > Applied, thanks!
> > > Maxime
> >
> > Looks like this patch doesn't build. The SPI device nodes reference
> > a non-existent DMA node.
>
> Argh, shoot, sorry for that. Looks like a rebase artefact (I
> originally had the DMA controller in, but then saw that this is
> actually not used by the SPI driver, so removed it).
>
> Thanks for testing!
>
> Maxime, shall I send a fixup or redo the patch?

Send a fixup, I'll squash it with the previous patch, thanks!
Maxime

--behpb37ojul4ppun
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhM7UgAKCRDj7w1vZxhR
xTgVAQCIFwCATD+xEJi/hS9mLxPKqFFgDt2VKHHYiDVTmI8F4gD+N2z9f/fkGbcK
DrxwEKmBUFXRurhsZM7onrYL04WIVg0=
=Isq5
-----END PGP SIGNATURE-----

--behpb37ojul4ppun--


--===============7293166549903553097==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7293166549903553097==--

