Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD241309D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 16:42:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=voiuJyVfYhFreRgD0UmI7yX9+rWMuxVro22MRkxzsGk=; b=o0z3wa7AvdpIooS7rDiTqEmos
	mNW4Th4fagyupOz+doI5z52iA+jUn6d5k49zjYAKatZv+axoDo+6saUo1V337p/4F8zg2SCeZb3tb
	JeFXCk3OIY8feEtNhdULZ9oUNy6OekjVRyoWIcmkckAs84UkG/sRErdPZCE2ibjHjvIYlyJds2JeW
	kCcyJX4nEVPm/5lrTbfwaG6puuSDGnAMuQHNokuhsaqP/CJUBgFToWIrPxZmOsWV0owBdAjjHHF3b
	6C1QvTfmaFCvnydAVdRd7BOWFHta3EQWeJdmB7ViQxRrldIl2RSIr5YnEL4jcxSnTd/TOW+x+le0F
	PEZM0/yYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMZNu-0008Ko-Em; Fri, 03 May 2019 14:41:58 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMZNn-0008KI-R1
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 14:41:53 +0000
X-Originating-IP: 90.88.149.145
Received: from localhost (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 1E3876000F;
 Fri,  3 May 2019 14:41:42 +0000 (UTC)
Date: Fri, 3 May 2019 16:41:42 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v2] arm64: dts: allwinner: h6: add PIO VCC bank supplies
 for Pine H64
Message-ID: <20190503144142.a5yvqghyqjm26g5u@flea>
References: <20190503094720.21502-1-icenowy@aosc.io>
MIME-Version: 1.0
In-Reply-To: <20190503094720.21502-1-icenowy@aosc.io>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_074152_023105_6C313214 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1479836582676956913=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1479836582676956913==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="siexvtguxgppryms"
Content-Disposition: inline


--siexvtguxgppryms
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 03, 2019 at 05:47:20PM +0800, Icenowy Zheng wrote:
> The Allwinner H6 SoC features tweakable VCC for PC, PD, PG, PL and PM
> banks.
>
> This patch adds supplies for these banks except PL bank. PL bank is
> where PMIC is attached, and currently if a PMIC regulator is added
> for it a dependency loop will happen.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>

Applied for 5.3, thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--siexvtguxgppryms
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXMxTJgAKCRDj7w1vZxhR
xZBGAQD0GZcPeUDGu0W80Ry+o9dByn1an5WGaUI4LMHMNEg93wEAtjSHUwhmYqnG
VtpI36Q9pGIIS/I5jYzM1FjDnV49UwE=
=KYOT
-----END PGP SIGNATURE-----

--siexvtguxgppryms--


--===============1479836582676956913==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1479836582676956913==--

