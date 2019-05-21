Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B01A624CBA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 12:30:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7Jdzbt2NznvInfyqB8dMHbECcGrcIkiXCJ6z4wA4fao=; b=CjA9kHfFiGPwJnNktKDWFxFnV
	ii9boRNGc+648frhiOatSpaJsvpNJerPkIZDktNOPQQUevEaCLOdLq2v0Z2/1LS4trKAvY0KB9rd2
	4urXFI3IdLIz+7VCpbos3NzwigX7mKGLcdFk0P2SYWT5q8aXRrqbI++JbB7VH2immVQmkO4LCetVb
	p5RMnHKFD2y0qOIk+Mfx9SoNLocMtA4Z7vRbiYvwbzW4knFEctqy6I3PO87oZzqNGU1TGck2PpGiZ
	J8H2586AVyl6Pu9aIdm7+f6gqoc/J4S4ZssoOWZTaiWV91jsV7l+SIj1QJdClOgB03TjZ285nN7cA
	LLI6PK/JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT22a-0008Gn-UB; Tue, 21 May 2019 10:30:40 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT21y-0006xm-EW
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 10:30:10 +0000
Received: by mail-wm1-x343.google.com with SMTP id y3so2407358wmm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 03:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rELwzUOME0nlXCIo3VT64vICZ+hEYunauyHNK3UtMYc=;
 b=J49fNcrbf1jjE+Q+vGOqxez9Ao4CNjCedtLwf1SqxU2wwJOJKoEYvdGCMsmwCz5pL9
 xTpqIcvF7Wx3LOP2kDfW7apVSfpppmMEZvS8lMzps3oqI0/3rvePn3lLR5DV5/pjdd2R
 cIuia49ANqKngtTbH9uckKIHfjSSgxKseNLmwXgyp/qTqs/HhIeJ7iNuGtlOUVHxDJ7L
 0ZkLI17STbKVMfw/4ee1VIoJ2g/71jb6CUofBaab+xqeGNXs9keyqznSjYnS5mc60ZGz
 1RUiPGOIK8q5rnIVWhH7x1p00o9689XH6293wxwtIVRo1mYzvo/ZSkz/+qSxvHNcH0vC
 Z5qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rELwzUOME0nlXCIo3VT64vICZ+hEYunauyHNK3UtMYc=;
 b=MZ0G4MR/Kbg2pWDOXrMFeB59/wy+rgw6OInEiBaL6VR8BtUYYbybZxoUCEYqb1sLwk
 jakJTqG5tBWQvUGO6LcLnzDEVsFD5U4WO35BKAPWDtapE3Zd0qgfNAyArcL9lLihoMcV
 CV5oXjJymsLJHfwqwJKTqWZli+senoS8Zmrz/sd+R4NMAWhXkssPjMA68pRxGkpb57HP
 GhwYO1edfKOHOdd4OdawurFFC9FORTpMg+K7KGB/dZ6t6sHh2J8+WLnOXiDZebDVFG9F
 F8z24GjJHLzJKsZyMTO/+Dvcc2PA6TU4kNU29IB3UJ7HZ7Gmw74ZTpW2ytvwuovdFnAL
 4SjA==
X-Gm-Message-State: APjAAAWsBe6Gl5xQQzgSGkjrd3mPt2knVvkuCHm6U8lklakrb9+0pu4n
 1SapAoybrYMou8e1rtFtCb4=
X-Google-Smtp-Source: APXvYqy9UeRYtG1/M1PRspNpKIbKeyoSPzcQxlWSbDUvnaFhZtLU4xlrNZOzT2PDdg4PlNIhhN+Jkg==
X-Received: by 2002:a1c:ef05:: with SMTP id n5mr2922416wmh.149.1558434600856; 
 Tue, 21 May 2019 03:30:00 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id h17sm2683157wrq.79.2019.05.21.03.29.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 May 2019 03:30:00 -0700 (PDT)
Date: Tue, 21 May 2019 12:29:59 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V7 04/15] PCI: dwc: Move config space capability search API
Message-ID: <20190521102959.GD29166@ulmo>
References: <20190517123846.3708-1-vidyas@nvidia.com>
 <20190517123846.3708-5-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190517123846.3708-5-vidyas@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_033009_358910_9559CB61 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 kthota@nvidia.com, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============1905645089963262335=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1905645089963262335==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5p8PegU4iirBW1oA"
Content-Disposition: inline


--5p8PegU4iirBW1oA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 17, 2019 at 06:08:35PM +0530, Vidya Sagar wrote:
> Move PCIe config space capability search API to common DesignWare file
> as this can be used by both host and ep mode codes.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> Acked-by: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
> ---
> Changes since [v6]:
> * Exported dw_pcie_find_capability() API
>=20
> Changes since [v5]:
> * None
>=20
> Changes since [v4]:
> * Removed redundant APIs in pcie-designware-ep.c file after moving them
>   to pcie-designware.c file based on Bjorn's comments.
>=20
> Changes since [v3]:
> * Rebased to linux-next top of the tree
>=20
> Changes since [v2]:
> * None
>=20
> Changes since [v1]:
> * Removed dw_pcie_find_next_ext_capability() API from here and made a
>   separate patch for that
>=20
>  .../pci/controller/dwc/pcie-designware-ep.c   | 37 +----------------
>  drivers/pci/controller/dwc/pcie-designware.c  | 40 +++++++++++++++++++
>  drivers/pci/controller/dwc/pcie-designware.h  |  2 +
>  3 files changed, 44 insertions(+), 35 deletions(-)

Reviewed-by: Thierry Reding <treding@nvidia.com>

--5p8PegU4iirBW1oA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzj0ycACgkQ3SOs138+
s6Et4BAAkzOyahrHoqB04OU7kbCFa+2VAYqoXjgDQvu1RjouQbsh+UdAzNrLWTeX
ChYzsu6i3jeymB0oD/WAOCtHx9SbLP/4YEwlBQ5Y9U5SoHy16bSiC1fJ2+IrTKoj
2G50K3ILtwZHuDFBL9D/NRtwdrGxu4txjtB6ch6sJDKRvr8UbtXvLO1Rija3oaut
31nP2HoCqZ8ZW+Ku7D15BPxdcLYidJJqWELWw251PitQkixGV2JEjv/MYoKBMIhD
jCIo+b5o1yS36PUf5I0Piuz4vbDmiJOUjKsjMbkKniN+l9bBtNwPepBdSxxYl+CN
QbYbDw1mPUBLP/mlhEsMgBGDUp+auR+vMrCsXaK+BQIoLHQeslhKpWwIsGOBZDka
5iNo8zxXK2FC8yHNjgz7sIWI9dfA4dX+8YJEnEVRjuhcQG+aE5B5NXDrqtTMYN1Z
Hoe+q16UNDLmsq2siAD6r7ENyzUVzaCdjg/q/P8v3H7PZWFgPO49v+xZdDq37cqi
j/Z5/gTH0v07hu5dtXQLfQ5+8KszcexKRfkGlYCBYG8BFVTdMmF3sR7XIY4tE2lt
muOCI7ajeYAq/bDP9vibl1O7o7Myry716uTwfGGAB8w9/g+Fm7BKpa+Wj9MuZWtW
CYi8auqMTnAh11SDNQeakXNHranXpLvBhMKpfIBfNYaUDFbjdd8=
=LWc3
-----END PGP SIGNATURE-----

--5p8PegU4iirBW1oA--


--===============1905645089963262335==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1905645089963262335==--

