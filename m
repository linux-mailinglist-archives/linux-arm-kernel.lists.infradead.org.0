Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FB712074A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 14:37:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=j4CQe2fyYhLyvKJffUklrj6JQT53O37tWEAUt1DbpSk=; b=ctHEs8cLU9l2llHT7O382+bRp
	MKj+CXP7VrjalIdsK4GCZaiPArbGAo8GWMQXqPBRbPzCEQ0DvKavSH9dALco2xPBxOZ14P74VMqYL
	RZhxmO8mWHun0+4cUEx36rhrh2UT97uFZvqKam3EmApC2B7A4GOqzdd7Oq7xoDt3keUuqHxETzM8r
	ujOgRLTlM8U4aoiFXCPcDnAWROB2cE4l1QdNwr7J8UxaKB6DDdk/XPgQGD3qxmCrrkNRPOdvuK1e/
	vXTo/sIF5RjgrvtsuiorU1SV2VzbYOVF1nYZObTosnITIYuDmjK+dLAayqZ/ZE7Mdlwg1XfTSaN3Q
	k4e91jxqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igqYj-0005UH-VR; Mon, 16 Dec 2019 13:37:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igqYb-0005Tx-OT
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 13:37:06 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 00E49206A5;
 Mon, 16 Dec 2019 13:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576503425;
 bh=OlLjTfGQi5/U4jUE0lWUYWNrQUVkF9ABRFYEb3H6wRM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UN3eg7bkh56gQzbPJKX92DS2oPbfzk/s8NFCYvwapn+olTsxbwocauo+FhEgEbHcQ
 oVENs8AlxstW3j1z2VhLfYFGQ6Xhmp7LZh1iQ3H4OC9FogVfZVkmRrIBpGFIyKVQQt
 e6d4Og6pZ0miFTtZaa0ZOojvY10otamRfSr8r9r8=
Date: Mon, 16 Dec 2019 14:37:03 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 04/14] media: sun4i-csi: Fix [HV]sync polarity handling
Message-ID: <20191216133703.4udteob37py5s3ms@gilmour.lan>
References: <20191215165924.28314-1-wens@kernel.org>
 <20191215165924.28314-5-wens@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20191215165924.28314-5-wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_053705_818319_08D22D05 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6018302803681254340=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6018302803681254340==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2fe4ttno4f4fmseg"
Content-Disposition: inline


--2fe4ttno4f4fmseg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Dec 16, 2019 at 12:59:14AM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
>
> The Allwinner camera sensor interface has a different definition of
> [HV]sync. While the timing diagram uses the names HSYNC and VSYNC,
> the note following the diagram and register names use HREF and VREF.
> Combined they imply the hardware uses either [HV]REF or inverted
> [HV]SYNC. There are also registers to set horizontal skip lengths
> in pixels and vertical skip lengths in lines, also known as back
> porches.
>
> Fix the polarity handling by using the opposite polarity flag for
> the checks. Also rename `[hv]sync_pol` to `[hv]ref_pol` to better
> match the hardware register description.
>
> Fixes: 577bbf23b758 ("media: sunxi: Add A10 CSI driver")
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

--2fe4ttno4f4fmseg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfeIfwAKCRDj7w1vZxhR
xRA/AP4vF6S6Kyoc+sq1NvPSmvANUDxkredIbI6JCHlMsiFG3QD9H7FUVTe0FnrF
Al8s9SSOmN2Cb9+DM0+mq5Jb6GxZyQQ=
=u2Iv
-----END PGP SIGNATURE-----

--2fe4ttno4f4fmseg--


--===============6018302803681254340==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6018302803681254340==--

