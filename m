Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B7C2C52A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 13:10:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RGC6LnNo0gI8gqk3ckuBATsflCupOA/+6GL0RrvRsHM=; b=tc4kHDr4WIgUBMw0LTObWM7Bg
	NDfLW0IPhX0TGZG4XMuuduwgi7PJRBgjbEdl1DDQp5tpVjB35X14QuJ4xhDHI5DZjdpblwAKvhcnY
	jcydYtf+aUX8Qw+FrIqqU3n9MG+Tr400wheMr51vHYRYV0PV+Je+rROPJMzMr/hZ3fxElyWc8Jggw
	fj0oFLAvPeZm5KRiz0aizFk4hbQSrdN1URvwn/jiBMotzBdaDTW9bXH2tTkqRy+6msIZbD+5TIR5Y
	bnkAoavuwrVWwymghDMRBiEBUewHUkC4eNnUsKxf4lB74SjyyUjom97MKMr6AHH4ys91zZKTIAvZZ
	3CM8b/HRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVa0E-0005lw-ST; Tue, 28 May 2019 11:10:46 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVa07-0005lQ-9K
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 11:10:40 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id E67F8E0004;
 Tue, 28 May 2019 11:10:24 +0000 (UTC)
Date: Tue, 28 May 2019 13:10:24 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 0/7] Allwinner H6 DMA support
Message-ID: <20190528111024.gj25jh5vstizze74@flea>
References: <20190527201459.20130-1-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190527201459.20130-1-peron.clem@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_041039_480340_EA7F4D8A 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1616229969205399937=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1616229969205399937==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="z7ek7mx2fjvua3lu"
Content-Disposition: inline


--z7ek7mx2fjvua3lu
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 27, 2019 at 10:14:52PM +0200, Cl=E9ment P=E9ron wrote:
> Hi,
>
> This series has been first proposed by Jernej Skrabec[1].
> As this series is mandatory for SPDIF/I2S support and because he is
> busy on Cedrus stuff. I asked him to make the minor change requested
> and repost it.
> Authorship remains to him.
>
> I have tested this series with SPDIF driver and added a patch to enable
> DMA_SUN6I_CONFIG for arm64.
>
> Original Post:
> "
> DMA engine engine on H6 almost the same as on older SoCs. The biggest
> difference is that it has slightly rearranged bits in registers and
> it needs additional clock, probably due to iommu.
>
> These patches were tested with I2S connected to HDMI. I2S needs
> additional patches which will be sent later.

For the whole series,
Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--z7ek7mx2fjvua3lu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXO0XIAAKCRDj7w1vZxhR
xVR3AP9YbutRsxD9Y3rwfBC3bguX4JoBWqgLPRSKHszeGDW36QEA+LVEhKb99jvN
catOGhDyeFdJdmT6r7eRLjjtMuPzCg8=
=pe/c
-----END PGP SIGNATURE-----

--z7ek7mx2fjvua3lu--


--===============1616229969205399937==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1616229969205399937==--

