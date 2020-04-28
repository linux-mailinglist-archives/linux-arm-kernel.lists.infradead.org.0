Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 265801BBAA1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 12:04:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CK18Z9u7f3PK5BQ5Cdf+34nLvAL1aXT8YThI+tw1Ow8=; b=hk3cCh2mr3FxFge48vOPiGUJf
	q1ZVgk7YGMGoXps6Be3FoJV41aTkHUfoCDuoU0gkXxo9SnJ/ARUNO7mn6uZYOG405vi2/cK7ABAgq
	nnHwjhlOiKxCdydxZDzFrO89PobTSER3ilNhMBA7JEiKCP/jPLm0BsC3LdIx2Gpdg8NgvT5WGjshR
	uXcrCsKekxLwvolTXPULF05cyJ3Pazu3gXG3LvkIsjWq++6ZvGrDwr0fcB/9Wjk5SRT0W4MKDuY0q
	/J+u+NfTJTBOj+7OFfWry6wcme1HZZn1XA+aljj03cKWr9qy7RvCq9+JC1s54+83othzUMQHogBmM
	9VnZ7qaDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTN65-0007q1-Oo; Tue, 28 Apr 2020 10:04:13 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTN5v-0007oZ-Uy
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 10:04:05 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id E5B58580339;
 Tue, 28 Apr 2020 06:03:56 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 28 Apr 2020 06:03:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=bfyRrpRNqGk3bD/MI+xjZ+HE0Cw
 EJYIH+SprH0vjLlU=; b=Z+8pq0oLT7a7qD4AKlOw9YLXd1wCk+G5aFOuHQFD01Q
 VnJYOdscNtcwEibPnzQneHtKoUU7enhp8cxYc1EA3G1pGsxGAeGS1aNwePclf9mH
 VQQMTMh+wXvTfzhWyee5I4vNMeo+xoSMG8gxhgQ7FDquy9GbcthWjoiXYP7FoA1O
 rJkpe5z3kH2X8K2nW4Et6B64dKFvB1TMcJ//Vvwf5n8YAlXIaHKhD/gbZy87i5GA
 cbikWRD5p3os1pJ3bcMkWCvgzUVelxrYXNi98FiXbOoXQCubQMDE2i/Yu5/idrEL
 34TfwHISWbYuSQepV+1XgM177rWCVMGD8DVZm4gK/6Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=bfyRrp
 RNqGk3bD/MI+xjZ+HE0CwEJYIH+SprH0vjLlU=; b=aKShKvUn+J6r4/GBqVSb6o
 elewB6YnWE7rJO+jVEJHKRX4qnBUT1NiNi61EIf0Uj7MRQQ0TDWkuZZatiEUgA4A
 6+XeQYmrshabRuNRRLG6MCkEv7Xn2mF7FwJ0yz8j5DdLo5ayy9OqY78AkdhzHeIh
 LZCI4EqlGDQPy+TsahyxA4bii2cD1Sm0b0XlWQmzRRCdEm0WFT3PeBuaTYWwJwNc
 ZAeeNUF90qjoRJ6xIcpC4gj8LMubqPoWb1iSJ6hieSuXL+7Entcf2wLJbvhn/xrP
 DuAhJd467p8NcYG9hH/zDVMG/v0DRJksBSlAmvG40Nsu2mi1yttJG3DAGQbTwi6w
 ==
X-ME-Sender: <xms:i_-nXnb__Ic3afkNaHTDJn_hnUgQ8f6wDG4silLUF2ixSudkZyDfTQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedriedugddvfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:i_-nXu8dzWVuc8z1fAXfP7ybogPcfXXlgD3KZKJfk32Kc9wV2AgxHg>
 <xmx:i_-nXhAdiBirlYu-f1yUYyaGg5OEHxra4pz9fgh-oyX_R6XcdYGWwA>
 <xmx:i_-nXisdpIP3hBSqk-PMGUylNUNDEQpJG3LXCm4WKEqpm9PK-QUm1w>
 <xmx:jP-nXpDH7HYCZWyhumEYlOf9r1wEUbGPrrUzjtNvcc6Z03kLmP-kIA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D877D3280068;
 Tue, 28 Apr 2020 06:03:54 -0400 (EDT)
Date: Tue, 28 Apr 2020 12:03:52 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Marcel Holtmann <marcel@holtmann.org>
Subject: Re: [DO-NOT-MERGE][PATCH v4 3/3] arm64: allwinner: Enable Bluetooth
 and WiFi on sopine baseboard
Message-ID: <20200428100352.g7g7kh5e4vpde3es@gilmour.lan>
References: <20200425155531.2816584-1-alistair@alistair23.me>
 <20200425155531.2816584-3-alistair@alistair23.me>
 <417EB5CB-F57F-4B7E-A81E-9ECE166BE217@holtmann.org>
MIME-Version: 1.0
In-Reply-To: <417EB5CB-F57F-4B7E-A81E-9ECE166BE217@holtmann.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_030404_136844_184718F5 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Johan Hedberg <johan.hedberg@gmail.com>,
 netdev <netdev@vger.kernel.org>, Alistair Francis <alistair@alistair23.me>,
 LKML <linux-kernel@vger.kernel.org>,
 linux-bluetooth <linux-bluetooth@vger.kernel.org>, wens@csie.org,
 alistair23@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2468419693560776752=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2468419693560776752==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tpogyn2zhltbavuh"
Content-Disposition: inline


--tpogyn2zhltbavuh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Marcel,

On Tue, Apr 28, 2020 at 11:51:24AM +0200, Marcel Holtmann wrote:
> Hi Alistair,
>=20
> > The sopine board has an optional RTL8723BS WiFi + BT module that can be
> > connected to UART1. Add this to the device tree so that it will work
> > for users if connected.
> >=20
> > Signed-off-by: Alistair Francis <alistair@alistair23.me>
> > ---
> > .../allwinner/sun50i-a64-sopine-baseboard.dts | 29 +++++++++++++++++++
> > 1 file changed, 29 insertions(+)
>=20
> so I am bit confused on what to do with this series? Do you want me to ap=
ply a
> subset of patches or do you require specific reviews or acks?

Applying 1 and 2 and leaving 3 aside would be great :)

Thanks!
Maxime

--tpogyn2zhltbavuh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqf/gwAKCRDj7w1vZxhR
xYVMAP4nKDRimgu3t5jMwZnN+FtExoWjy6v+yWcUECMXuEsnGQEAzpQYH50JCwwP
eZsHDHII6Y9Hkgf0t2cj0zr5cBRAGwM=
=avZ8
-----END PGP SIGNATURE-----

--tpogyn2zhltbavuh--


--===============2468419693560776752==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2468419693560776752==--

