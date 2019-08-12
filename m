Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3F089CC8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 13:27:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R5+ePV2NnjfH7xjUIr+YqVTN3nWb9VzkdoYIoOnTDLE=; b=Zz3FIGTprNfWaHYM5EdONmuc8
	JmCaxAakCxj9y+YlVcj+22AHNA2QiZbWE18owWM3mAoz6FGCRaxNIiFNO/BrAdD0MmcABnfMym40c
	wv1tyMurZErLw7iO5aKyJS0JB20dSGumr650/2bbHq2D5+GKrCBanb94jRUUgU5o89CNJidX9GIR6
	khKn7ookOpYIlQbj0N3RQfSi+vudvvd2fSgEThGcgWPkPmiB8AwVlVwscwWaLEmtI55A18S0M9qON
	aVneWTdSq8robLtgrfarXQvtZWMxoLSEVMBaNCVFVOjVY9t6NM+I4UkRJdBj8v4j1si+7qIOBs6md
	KE3LDJRHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx8Ti-0008Lp-FS; Mon, 12 Aug 2019 11:27:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx8TQ-0008Ka-Kc
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 11:26:49 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1E86E208C2;
 Mon, 12 Aug 2019 11:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565609207;
 bh=WMX5WzUBHC7wrBcFibKuCXcsI0mYQCxfu+77DTSZQHU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jmrlemJOZkcq7TFqEpSIyvlO5ThYDd7E/0FPazJ/0SSO95N8OALMPNG+Dv9Lzu77H
 oD53cj2dOs4yc31OKOaVSUa6DJLcG0nIUJ+RixdUj91vIqWuImq8HAjj7rlCdG7QIC
 04knvFtiuXW9NftL4mCeQcu9dp9bNGim2mOXEHbk=
Date: Mon, 12 Aug 2019 13:26:45 +0200
From: Maxime Ripard <mripard@kernel.org>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: Enable DDC regulator for Beelink
 GS1
Message-ID: <20190812112645.avyyf5iexxatgrwe@flea>
References: <20190812102355.22586-1-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190812102355.22586-1-peron.clem@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_042648_710339_AFC4F6B8 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5643492370690209061=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5643492370690209061==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="myuur5a3gwhb4nbt"
Content-Disposition: inline


--myuur5a3gwhb4nbt
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 12, 2019 at 12:23:55PM +0200, Cl=E9ment P=E9ron wrote:
> Beelink GS1 has a DDC I2C bus voltage shifter. This is actually missing
> and video is limited to 1024x768 due to missing EDID information.
>
> Add the DDC regulator in the device-tree.
>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>

Applied, thanks
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--myuur5a3gwhb4nbt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVFM9AAKCRDj7w1vZxhR
xXlfAQCzGoHNMF6inUbK/DxstBsOVMBjL9GAKYk4ftUwdU7LDQEAq6yMKoeAHhfX
FQiNLVXWJr+pVOrIPUOnWyLlp/Ocrgk=
=XUMj
-----END PGP SIGNATURE-----

--myuur5a3gwhb4nbt--


--===============5643492370690209061==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5643492370690209061==--

