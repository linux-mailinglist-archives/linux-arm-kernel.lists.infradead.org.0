Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96CC076FA7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 19:18:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/STjVutLAZEMVGFeSOhw1ZIFWz053fIIMwG4iu5x4dE=; b=gk29pdRmVqIKY1DkguP1Fnzd0
	Aa2551zGdQeI5rSXgud8RzP3chuUUkIS5ppo2Tcvu44huc07gFOnulPXtUdyME//WZq3+iqjqUUdW
	rSa9zQRiVs/EekfIhaV6Hy26c/dlMNDZTlZuZ0x0d2UzVFyUwIqP1B3zOcq9XGz5MzD2PHQW/9wiT
	MyWY00PMNpSc6lvW6g3D5gReQAXAKCzT+O7n8//0lX4YpvGqd/QQl49Tpuauu4mo0j0eeMHGoCpX6
	+mo+y00REjn+So1GUm0jO5ZHW1KsoEWSS6jdBbgFkWzY4exrIC23pIkR7viwzddH/OV0M39TOJ29A
	crybm3aTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr3rX-0002zn-Im; Fri, 26 Jul 2019 17:18:35 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr3rK-0002oa-Gg; Fri, 26 Jul 2019 17:18:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZTdXXHzjtIECvcH9SRFxgzEXd0AdlsTme63IMTdWnT8=; b=P584lDKfa4NmiJ8hHfzMke5wr
 8M1Wua8DsotsnkRBbK/U70BiaP+amK32eFaySdFJf3m7YxOvLi0+64I67QalcnMzT1cz+RyP+iwq1
 GyxdLMz/ORUNmCMDt2OjgwNVzp/ypcWvUcHuLP7vT1C7iDCvdA/xsISEn2P9vWxbSrH18=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hr3r1-0002uT-Sa; Fri, 26 Jul 2019 17:18:03 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 996452742B63; Fri, 26 Jul 2019 18:18:02 +0100 (BST)
Date: Fri, 26 Jul 2019 18:18:02 +0100
From: Mark Brown <broonie@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v3 2/7] drivers: Introduce device lookup variants by
 of_node
Message-ID: <20190726171802.GD55803@sirena.org.uk>
References: <20190723221838.12024-1-suzuki.poulose@arm.com>
 <20190723221838.12024-3-suzuki.poulose@arm.com>
MIME-Version: 1.0
In-Reply-To: <20190723221838.12024-3-suzuki.poulose@arm.com>
X-Cookie: Think sideways!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_101822_559055_6168C9AA 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Thor Thayer <thor.thayer@linux.intel.com>,
 Heiko Stuebner <heiko@sntech.de>, rafael@kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-fpga@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 linux-i2c@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-rockchip@lists.infradead.org,
 Lee Jones <lee.jones@linaro.org>, Wolfram Sang <wsa@the-dreams.de>,
 David Airlie <airlied@linux.ie>, Jiri Slaby <jslaby@suse.com>,
 devicetree@vger.kernel.org, Alan Tull <atull@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>, Moritz Fischer <mdf@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>, gregkh@linuxfoundation.org,
 Takashi Iwai <tiwai@suse.com>, linux-spi@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Peter Rosin <peda@axentia.se>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: multipart/mixed; boundary="===============4343127995541098640=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4343127995541098640==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fOHHtNG4YXGJ0yqR"
Content-Disposition: inline


--fOHHtNG4YXGJ0yqR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 23, 2019 at 11:18:33PM +0100, Suzuki K Poulose wrote:
> Introduce wrappers for {bus/driver/class}_find_device() to
> locate devices by its of_node.

Acked-by: Mark Brown <broonie@kernel.org>

--fOHHtNG4YXGJ0yqR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl07NckACgkQJNaLcl1U
h9A0GAf/Qv4GC1ywijdMO9/GL0PzTuBBqL46oM94b0OCt9PYllKoQ2MkrwSN+eAS
DGfHngyqVnoUtqjC/RksDFvWLJ7/Hg6BRJf0zkPspIu7s/DC2tW4x7C8CTIvfbF3
LbDl5DdTKcj/+2cS7yypDLGUkmUVs0pmfQJ5e9gk0l8qX8UUIoycnIQCKtctvUlr
LZgOv6gh5nuo2Vh8vuJIMi9rUHfe8zeSvMhnDhM/cU4ufM81bxjTeRw/9wdv1KOO
WLCRZm1nIAYCZajxTVgQdYhI/c7w6Dl9ZSc9/dJmzVp5RZyoV7KYT6IcjRwPVnRt
UZpTwC9oSD2mXZB30cpoNy7JmGFAKw==
=+DYp
-----END PGP SIGNATURE-----

--fOHHtNG4YXGJ0yqR--


--===============4343127995541098640==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4343127995541098640==--

