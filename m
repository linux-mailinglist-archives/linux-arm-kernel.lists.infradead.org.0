Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C09E138DE0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 10:31:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AUKbEd1jrqX9Z7IATfUb8hynsU8BKkO4YTru0GibiTM=; b=U+j/MN19wEBEZT5O+9EymMeLH
	hiVOTUZ4TSMge6i+Xco2RStelyX57K+aDR7+M3ZhMCVh7d0W6Igx8BVoskEoedFLK7C+qBLqVnonO
	q6GuaUV2ISydYpLqxJOVw03QBUZWSeXMBHTFY6VpKEkIAcuOgTmhLMJKvU/geiw+y1B8hLWSW6tJI
	08lnDo6pVopBhIWpLLn3rjffYMeWbkPP+sZVL0v+iHpdQXF5T/Hk37ALFEFxFMN9oNHTj5d4C1NXo
	XxF8UFM6g7NeEF4aCmhSJoYq0XRKYVbOuiTy6oOEAp1314VCbUp4kpwvYO6e/1G1A0J5DFk9HTKlv
	QB6+IhW0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqw3u-0003NN-PM; Mon, 13 Jan 2020 09:31:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqw3h-0003M7-Rd
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 09:30:55 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 053062082E;
 Mon, 13 Jan 2020 09:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578907853;
 bh=kO4+vTp5Pf9yF5MFBXYv+fbzeN3YsHdoVpGiHtqh4oE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O2ZzGY/1L6N03VHwkufdNp/AHbueNn8soeStyXgMUkkTGq8XHEBb7x2za3xzp3r4T
 MH9n4iKviuLAxyZPwtSyKle2pH4ZoSY0AUdZmcyg+biaY95r2aE46Mwk+opOU5Rw+P
 LaQQtlNuJYEB7yIjjlfy6ux6HnqINLIrtO4q/r0A=
Date: Mon, 13 Jan 2020 10:30:50 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH v6 1/6] dt-bindings: mailbox: Add a sun6i message box
 binding
Message-ID: <20200113093050.32qv7l7466c5mz64@gilmour.lan>
References: <20200113051852.15996-1-samuel@sholland.org>
 <20200113051852.15996-2-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200113051852.15996-2-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_013053_911554_8D89C201 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ondrej Jirman <megous@megous.com>,
 devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8020259239662260741=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8020259239662260741==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mjfyfyav2c5rsq4t"
Content-Disposition: inline


--mjfyfyav2c5rsq4t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Jan 12, 2020 at 11:18:47PM -0600, Samuel Holland wrote:
> This mailbox hardware is present in Allwinner sun6i, sun8i, sun9i, and
> sun50i SoCs. Add a device tree binding for it.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

--mjfyfyav2c5rsq4t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhw4ygAKCRDj7w1vZxhR
xag8AQDndez/6x/OQZ3/TuccUojDbTqhJitIb4T5bYONg/61zAEA3gsBZUTbUxVl
riZ0r5u5J4h8Y7XnMXS3oFkAhIoMkwI=
=LNDX
-----END PGP SIGNATURE-----

--mjfyfyav2c5rsq4t--


--===============8020259239662260741==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8020259239662260741==--

