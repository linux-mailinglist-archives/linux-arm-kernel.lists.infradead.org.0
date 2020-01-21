Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C217A1438F5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 10:04:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n5KWS9hCY+ntm2mko40ZcDKmYz9696RKDXccobjFz+A=; b=JilIdgIjWJ5qdDfS4RWWUvn3M
	1FIzMhTMROOYVTCO/STFNK9KgEjQxjkbzNg7fVCnZBVc+lxy48XlQVdtg1DYfKfWi9vg/lpRHdzZ6
	r/92ZbRGQjI2OuTEoalIEoMhnaDkXscSwonB3qx3kCiZr4/TljXVSWYOjORbt/9Gw2oYfGxnIPQZg
	ASRZq0dX/EIfQZDUEop311sbFXeNyeju6IRs5hBGCY8E9dtqWTNQHV7H2IG7Er/mup7uwiOfc6tPy
	wX+roOrtCrPeVXzOpMyxIvYrA+1DGN0CJ88cbvV8JbjPAOD2rzNOADDwy7BETCXRELPQC7VOUsuZz
	K+wPRfoUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itpSj-0001sB-UJ; Tue, 21 Jan 2020 09:04:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itpSL-0001kt-F5
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 09:04:21 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4776C217F4;
 Tue, 21 Jan 2020 09:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579597456;
 bh=+BntHW10VsAMTpAdnvWUfyBS2EH5yEdLzbKT5WRytaI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MojKFViHCrandnedO2lPerv2S8a1/RSvUPdIuulKCKBcCJJvNTdaYyFEi4Xky0BcM
 chvbhnQ7E9OSIb36CD65VrcVqxaFGYYZR1b0wTFWTV6VqZSYa4tm/1SMNd1mOy6YeF
 oUdXrNFhJ7HX44VfIaA1yKBcSuITItumajK5gW9o=
Date: Tue, 21 Jan 2020 10:04:14 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH 2/9] arm64: dts: allwinner: pinebook: Remove unused
 vcc3v3 regulator
Message-ID: <20200121090414.apith3sfgr6zs4qu@gilmour.lan>
References: <20200119163104.13274-1-samuel@sholland.org>
 <20200119163104.13274-2-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200119163104.13274-2-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_010417_564797_D2EB1F6F 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3533747142075322552=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3533747142075322552==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="uzxnfivy55v5lksq"
Content-Disposition: inline


--uzxnfivy55v5lksq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Jan 19, 2020 at 10:30:57AM -0600, Samuel Holland wrote:
> This fixed regulator has no consumers, GPIOs, or other connections.
> Remove it.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Applied, thanks!
Maxime

--uzxnfivy55v5lksq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXia+jgAKCRDj7w1vZxhR
xTIGAP9ZNdshOtnLj+MOa83ArPOmfS27haDaXtWg8d6PBXAfegEAwNzTxcKxbwbH
XZhR0bLu/or8kbnS6BDPZmad+4n4fw4=
=dV8h
-----END PGP SIGNATURE-----

--uzxnfivy55v5lksq--


--===============3533747142075322552==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3533747142075322552==--

