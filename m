Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B011B0401
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 10:14:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HuBkxD4yCpqGTZlOgF9dX2Uqj9ZHeUi5Pn0o8qwDrhc=; b=V463awJdsAnqZ74//tSgg9W7w
	ZfumSaEKx5tTfvJie4XdeCe2EB5xobAx+CautzB0rowVuAgjl53BIwE9vznNUOK8TkkrN2JmvkquD
	31Om6ZFx5vRjx5MCgXz6R7Fv3XSnXG1b0kbLJlAHsbuVf5ivuE/zE6CZFNN79/EkCVfDsdvwI5FD4
	6OI6dA/tEFpvS06aKNb9eZSbP3EhDzyEPp5eSLAxt4FETDgjVjXL/LJM0DrC0SO9NvWnRZxhWnJD+
	pNL6qFYcwxfLiyq4hLY287aqOxt1O/dVbASrV5vQKAClZTzJBl4ZIo6Kh2BjaVbKDzdXSGc9FvY/X
	DWlL4pxVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQRYw-0008Hy-Vp; Mon, 20 Apr 2020 08:13:55 +0000
Received: from wnew1-smtp.messagingengine.com ([64.147.123.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQRYn-0008H9-36
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 08:13:46 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 2C9A7434;
 Mon, 20 Apr 2020 04:13:43 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 20 Apr 2020 04:13:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=SXSTFribf+OBJQkU3j6jVIz3bY6
 eV4OkRjDaFUbGPVw=; b=dE5h4joV1X2zyfsk9mJ41dSV9Gw9Z/YVaMMRGJ820cJ
 NOM2XNUzGMrQc6ydYn/Zic69B5NNRAo6QYHu7GiXTukZObTUlEBXjml6kZ/h7tAT
 KMRH6rsLmKGHMxHRm7KJLGWmYRqhGKyvler6AycFGuPEGCumuG7dlYNh0te1Urjx
 B6h7D1L21WQxrWq9rbIg2awGPkD9xDLlas4gTjOZhaRUMmGgHQg+K1OSe1L7j+F6
 bmwm6FQYhRHRkEqK671hDPeOeYQIt9YyhceNDEnvh2vN6YHgeij3N4pO5N+DJN7w
 9V+2zj+aOoX22lyD9EziS9+y0v/eOMqyQ7U5xATaBqw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=SXSTFr
 ibf+OBJQkU3j6jVIz3bY6eV4OkRjDaFUbGPVw=; b=G23U+tfw+wQH0rkso4eEwx
 yQrM7P5msXz/OSSuwywZHpLw59W7M9piQzgYDymuZ/YKvqo9EW4FYeWdNyEoH+Ed
 qmqsr4Sy9SCUAWo+U7Xi8UaefRJgr1xVvCWCNwhs0s9c7HwcgF9NnbIaBi1jxF8Q
 z/QcFe7e+rHQBP1rEmpE2U43OrZLm5wRDGIiSoDuD1YdwkM+WbU5zoyBvHMF5KMW
 C7vFCc8JDlwMTEP39M/PyYTBAbvRGE/SyZ1pVAhaeuNueZSROb33Z+uvkYT1/7c3
 cpFJBI0Uq5E1XdygU8RLJ53HUPy2gALcm2KVAsWjq0oho1PeFfIGNg0GONbW7ZHA
 ==
X-ME-Sender: <xms:tFmdXrjoBzIgx--8HKQXgDrtxO5gVSCcQrfVsGCBN7W7YGtfh-qHEA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeefucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 epfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhho
 mhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:tFmdXix3P9qkRjDO69NN5eUQUL2gZwUhPrg6E8e4InQODtjq81Pbsw>
 <xmx:tFmdXp8VSgOzUNGzxjXDXf0hmnasH9Zn98KD4SKEGNOKFRqoWr01-w>
 <xmx:tFmdXvBn1GLk5m2Pm5avHEkDYkDZzYF2fWl4nUyo3FlyH1VrQfUqxg>
 <xmx:tlmdXt6FXLOMGmuXYEy2LsOWngKuRKcExd-_FWiOCNilGysnqab04_8LDgI>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id A92B33280060;
 Mon, 20 Apr 2020 04:13:40 -0400 (EDT)
Date: Mon, 20 Apr 2020 10:13:39 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Alistair Francis <alistair@alistair23.me>
Subject: Re: [PATCH v3 3/3] arm64: allwinner: Enable Bluetooth and WiFi on
 sopine baseboard
Message-ID: <20200420081339.znoxmshq2z74slvg@gilmour.lan>
References: <20200412020644.355142-1-alistair@alistair23.me>
 <20200412020644.355142-3-alistair@alistair23.me>
MIME-Version: 1.0
In-Reply-To: <20200412020644.355142-3-alistair@alistair23.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_011345_202342_93F79399 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.26 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, johan.hedberg@gmail.com, netdev@vger.kernel.org,
 marcel@holtmann.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, wens@csie.org, alistair23@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7764936792568737172=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7764936792568737172==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ejtot7cm3kxebrar"
Content-Disposition: inline


--ejtot7cm3kxebrar
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Apr 11, 2020 at 07:06:44PM -0700, Alistair Francis wrote:
> The sopine board has an optional RTL8723BS WiFi + BT module that can be
> connected to UART1. Add this to the device tree so that it will work
> for users if connected.
>=20
> Signed-off-by: Alistair Francis <alistair@alistair23.me>

Like Vasily said in a previous iteration, this should be an overlay.

Maxime

--ejtot7cm3kxebrar
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXp1ZswAKCRDj7w1vZxhR
xRHnAQDHNvHWo1zmq8o4pNF0FFVzFdG9ZW4B0hE0ap3rEg3u+QEAtFnUoV0c8i8g
nKNO32LMpG2lK/In+8B74ILYTIcZpAQ=
=IRUG
-----END PGP SIGNATURE-----

--ejtot7cm3kxebrar--


--===============7764936792568737172==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7764936792568737172==--

