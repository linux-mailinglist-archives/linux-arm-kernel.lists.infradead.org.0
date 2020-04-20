Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F28FD1B0A8B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 14:50:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hFRxGgsDT+JhuV1miHOzKQv37kdsxXyj2Ow7wLbgkqQ=; b=HM5r/VUOiVFvteMYeoARSEIEt
	OykVOCMbd5k9KxaEYSpo6VkFCGczptq39Elwgbi+4y2ED+JkwDQS6q+lVvxCru8OvxhifbwOlVbvz
	HldDy6Vcw90MW5nMhGMOxdKrs82iBRKHhsoTqkz5tqViV4b2aUPI1zv0TVm6QtSlTenmrl8MUVji2
	cQVqL8uJuGLxEwoHTtcY6Lw8PtDY7x8AkZ9Fz43g37TYtG1n4mJiEOSSXFGMF5Tv6NVhh0tzV2V4Q
	76bbdABHgWwFqNuS0geKxuIhgdu/fsjzkY/pRvHRqnvd64v6ommSlRcpVh33IhC80PotDa2q5BQ9y
	iil0JYufA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQVs1-0008B7-4l; Mon, 20 Apr 2020 12:49:53 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQVrn-00087K-P9
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 12:49:41 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 6A6EF443;
 Mon, 20 Apr 2020 08:49:38 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 20 Apr 2020 08:49:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=txlve3/CTcfnUvbwX40ZvP3ANaO
 WQv9Voc732+vtkPc=; b=epRypLCKVuWg98xXbA3a5AvbDaH8iu8fZDyEzMaq4HH
 w57IRkXMj2jRpWdzF2usdVUjFGOvqS8pXi5sGu3KxTAikuAZpHJn6j0O42snSnFT
 gi6vftUyikzC5CeXoSbdYKjC1VRzATXqwIcJTiwWDiG7+09+4WnOs3wceTpfZEvq
 Hf5Atd3Uxq6mtbDo4x2SXdszh1H2QoXU6XsXyuf1vNPY1QvrWjel5u+rKOyb20hK
 mDkGfFJQRkHK47QvpdCzaYs/aF/hq7vxI+LQfKtLzhu61b0x+KXHdpUCyr60T9xj
 zWnAwL2D+HGcSUEimLzQsBSPkflMfjst7go+zQvEnvA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=txlve3
 /CTcfnUvbwX40ZvP3ANaOWQv9Voc732+vtkPc=; b=KOvFfcVn5xQCA9zcGTiZ4L
 IZVQx3vvaNfJsrck/lZZQqKj8mYHONtc6U3GPyiV7aDSCadqzKdXB5aZoSO2AhNA
 6kFEbJfpnVKNjvgqFQLCrp7R+OTnIbJj95LMWnowdqG/UDsaTwgVmbgPoCPl0Hv9
 GEwuuYOTRKgRkcNllJIoDsRT6xlftgvux5kO4gVzsZNq3d8YHnWC5kJZ4eFDf4MR
 kwKqnivtAt+2d2ID3NXJhMSRce8nWnV/YPZfUsMIZsn5XNEZ6E/7aVqqUu4RyoVT
 9+1tDSgjv205twth4/Gvnqt+DhfZEUTWXQ7PD3vWOu7ZONe/DECvGbfTEz/TBveQ
 ==
X-ME-Sender: <xms:YZqdXhEMIFi3MBT888e2SjRyQ7H96ooFC1QiOMJksgR72ZJ6FermSw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeefgdehiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:YZqdXoX-Kx7WUcDBTwV2x45WnAWGxuvzVQA1Az8s8R1aFh0FQQaYWQ>
 <xmx:YZqdXnbHZfrqMy2qXc0qXm70aNuJZG-eeJ7ORLVRJ12nHGG7xB88fg>
 <xmx:YZqdXiC309TCkuS7EBAb5CCm4JG5cWEy_W15s4z8SJA7dbG55_M5Bw>
 <xmx:YpqdXlU6JyVeaSulfqpW_SIH2tIxat5ZaoQEQtF7qs5nCOeLCgpWnQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 42BA13280059;
 Mon, 20 Apr 2020 08:49:37 -0400 (EDT)
Date: Mon, 20 Apr 2020 14:49:35 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Priit Laes <plaes@plaes.org>
Subject: Re: [PATCH 1/4] clk: sunxi-ng: a10/a20: rewrite init code to a
 platform driver
Message-ID: <20200420124935.asfbgv7envb2af55@gilmour.lan>
References: <20200417221730.555954-1-plaes@plaes.org>
 <20200417221730.555954-2-plaes@plaes.org>
MIME-Version: 1.0
In-Reply-To: <20200417221730.555954-2-plaes@plaes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_054939_890226_F54C2736 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3942598261838544085=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3942598261838544085==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5wt3lytiztwzv3ef"
Content-Disposition: inline


--5wt3lytiztwzv3ef
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 18, 2020 at 01:17:27AM +0300, Priit Laes wrote:
> In order to register regmap for sun7i CCU, there needs to be
> a device structure already bound to the CCU device node.
>=20
> Convert the sun4i/sun7i CCU setup to platform driver to use
> it later as platform device.
>=20
> Signed-off-by: Priit Laes <plaes@plaes.org>

You can't relly do that though. We have timers that need those clocks befor=
e the
device model is initialized.

Maxime

--5wt3lytiztwzv3ef
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXp2aXwAKCRDj7w1vZxhR
xf6RAP4lRgNAUaFxWq+xBoAy+3gdbbPDv06zoQib8NGNw5hqogEAz1ou9+SSxlMS
L4kNm9nZdNMKsGOFEcPHX6r+OleJvQA=
=yk2k
-----END PGP SIGNATURE-----

--5wt3lytiztwzv3ef--


--===============3942598261838544085==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3942598261838544085==--

