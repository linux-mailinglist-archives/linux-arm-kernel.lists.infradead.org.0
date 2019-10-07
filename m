Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7953CDE8A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 11:57:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LSuK9jBWQ25wEfLQ/nhs8SwkT+C2mFM1bxGrnLMSyhA=; b=JRLhkPzVENwG43Z6hLPP41hm7
	bGFmuW776oxQkyEp8oT1bx8162TijCm36sva531jjMJDoaYr3S4D/x44y/y39StI+NR+JvPtRMiM/
	F94ql825T0kQPAuBh35WJV5kofVPhmfWkuQmBtKr6GnXHB8OFL6GI2NJgKYOwi3Q5cEraeMr0Lc20
	im15DKhVDXMdr6SyvGXlsB/MewiEmfImKEGicot+mitWIMK5ccBq5Mjf/qBcQ2DfzOqRPKA+OElOz
	X+IUW3f/lWr/tC1erTZBVzS6832T/fYKTi7rTUGkFLCpkSP9iaJBtcxaT0azhFPUcs7O7FAZnAFNT
	ZtZEKnV5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHPln-0002Sa-AF; Mon, 07 Oct 2019 09:57:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHPlf-0002SB-Uo
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 09:57:29 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 09D44206C2;
 Mon,  7 Oct 2019 09:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570442247;
 bh=N7TilIZJRyBGNXrbLXhsC9CeGmoiTg58DVlKiVeC7Us=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GpeZmRy0IvGEHQa8Rioc5vEKWtHKllHQNCioRJvpXVIEtSi8J6eUPik8We8iboQ7H
 VB4nlpmjftttHBoX1U9AZEDGgp7HGVpH5ok+DYNi3smmnkQaBx5oOPyIFb7y05P+zz
 NaG8ElXfEzrVRrKJxtK47Tq/gaxUtZpx06HkrF10=
Date: Mon, 7 Oct 2019 11:57:14 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: orangepi-win: Enable audio
 codec
Message-ID: <20191007095714.zzgl33jecjtt4fxv@gilmour>
References: <20191003222130.2015617-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20191003222130.2015617-1-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_025728_013089_D91534EC 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0689482459171082984=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0689482459171082984==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tozf5qau77iuy2yh"
Content-Disposition: inline


--tozf5qau77iuy2yh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 04, 2019 at 12:21:30AM +0200, Jernej Skrabec wrote:
> This patch enables internal audio codec on OrangePi Win board by
> enabling all relevant nodes and adding appropriate routing. Board has
> on-board microphone (MIC1) and 3.5 mm jack with stereo audio and
> microphone (MIC2).
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

Applied, thanks!
Maxime

--tozf5qau77iuy2yh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXZsL+gAKCRDj7w1vZxhR
xRFoAQDZj50jh00cXZhTNvZIc5yBehvsimL9KoSEBtoolyIcKgD9E4sIC0dDrmMM
0VTV65p1tY7e+MdoKuy/z1F20RbaTgY=
=YcBb
-----END PGP SIGNATURE-----

--tozf5qau77iuy2yh--


--===============0689482459171082984==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0689482459171082984==--

