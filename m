Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2D7130EEE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 09:52:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p+3i7zTZtydJYSUKlDTrkQ9DUM5wgst+xNsjKOKYbwA=; b=S1V5clu4WHoDHvAZnySgMODCy
	Dtw0287grM/1MwyGH6q+Av7Cr+/BnAECEUIvYUnees9oxgdkyDKj0QNVFCk9coWR0xFZKT90orDAQ
	0qZcff3mVaO9eHTTVXEYcUxrvlkFOQeG3uBdWOKFkzJ7ydtzw8cE6YWPQ36SA9Cwp6yhiGX2QWtjP
	3XWzTsS1Yx9osP2M8FfIRSnn6Odd0FcgSe3dQk7S7dLkKrrPTVTqguj7o7E7qcCNVVO9ZEEozg4h8
	Nbe70zrub4EJr7lsYfCc9ZadxmRGrYuOYmbvkou3qyt61ieJ1mSl/+TQK1uhYOoHqx0Vbe6IvJX22
	5Y4jlCFVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioO80-0007iV-4Y; Mon, 06 Jan 2020 08:52:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioO7t-0007hl-VH
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 08:52:43 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3771A20848;
 Mon,  6 Jan 2020 08:52:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578300761;
 bh=b6Jis3RiiTkEdaovjFiMev+VfEAJ4NDUdWfvEPs7Izk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HTDnnWHe5BMQnU1cBoXzYTmvaoDk/vche4AjdcYnWaVziDBfO8fcm0yi8nE35bAhd
 rQydGnEDNZbUSuPArT2zCGmx0+BnIbbalkc3Fo6GZQf3tkgaA0M7zwryjx2seDXC8y
 ZajiILbRR76q/JCxp99K1c6XXlfMztB1H3hwqLrQ=
Date: Mon, 6 Jan 2020 09:52:39 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH v2 0/7] media: sun4i-csi: A10/A20 CSI1 and R40 CSI0 support
Message-ID: <20200106085239.6cpynhhnkr2sx7mt@gilmour.lan>
References: <20200106084240.1076-1-wens@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200106084240.1076-1-wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_005242_025681_37C8C2C6 
X-CRM114-Status: GOOD (  20.29  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3217045248338114782=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3217045248338114782==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="24s53jh5fxrslbfy"
Content-Disposition: inline


--24s53jh5fxrslbfy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jan 06, 2020 at 04:42:33PM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
>
> Hi everyone,
>
> This is v2 of my A10/A20 CSI1 and R40 CSI0 series. v2 is simply the
> remaining patches rebased on top of linux-next 20200106, with the
> MBUS device tree binding changes converted to YAML format.
>
> This series adds basic support for CSI1 on Allwinner A10/A20 and CSI0 on
> Allwinner R40. The CSI1 block has the same structure and layout as the
> CSI0 block. Differences include:
>
>   - Only one channel in BT.656 instead of four in CSI0
>   - 10-bit raw data input vs 8-bit in CSI0
>   - 24-bit RGB888/YUV444 input vs 16-bit RGB565/YUV422 in CSI0
>   - No ISP hardware (CSI SCLK not needed)
>
> The CSI0 block in the Allwinner R40 SoC looks to be the same as the one
> in the A20. The register maps line up, and they support the same
> features. The R40 appears to support BT.1120 based on the feature
> overview, but it is not mentioned anywhere else. Also like the A20, the
> ISP is not mentioned, but the CSI special clock needs to be enabled for
> the hardware to function. The manual does state that the CSI special
> clock is the TOP clock for all CSI hardware, but currently no hardware
> exists for us to test if CSI1 also depends on it or not.
>
> Included are a couple of fixes for signal polarity and DRAM offset
> handling.
>
> Patches 1 and 2 add CSI1 to A10 (sun4i) and A20 (sun7i) dtsi files.
>
> Patch 3 adds a compatible string for the R40's MBUS (memory bus).
> This patch needs to go through Rob's tree as it now depends on
> the patch "dt-bindings: interconnect: Convert Allwinner MBUS
> controller to a schema" that was already merged.
>
> Patch 4 adds CSI0 to the R40 dtsi file
>
> Patches 5 through 7 are examples of cameras hooked up to boards.

Applied 1,2 and 4, thanks!
Maxime

--24s53jh5fxrslbfy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhL1VwAKCRDj7w1vZxhR
xfDyAQCkgCSqpGYC5RzFk6hId5gLqLdB/gJiXK0I0mFarhoq/gEAryLfeP9h5uAO
wCxioJw0iIMDgJfMOOHQz69VhQbrYQY=
=Gazn
-----END PGP SIGNATURE-----

--24s53jh5fxrslbfy--


--===============3217045248338114782==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3217045248338114782==--

