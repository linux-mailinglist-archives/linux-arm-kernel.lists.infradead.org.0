Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D99917F4DA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 11:16:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OMryJHrtrgIfRPWM5AkBwkffQMK/BGsvidcQwoGAmGU=; b=vEKEtTak8ljwE5/f7KbDwxJBl
	K9SZUatgnYzDzu1Z1lvdCRm2ky0bs/xjpLEirn6cOJSOA/IaGdm/qhcj3wTvXwwThvg5vgxFaNyU5
	hfQRqbCwyZjvQ7imHak7xd0JLxvbE8yfcUR37CjaFl50FO+b89SI9g+VSbGeoT4pTUWnKsk4uAGJZ
	nk8J0M3NnRlK9B0jUwY+A5qOOwHawLZ7F1YYR+inxm+IGpUeilCKg34E1FSo8dvBdAmChy4r8wIGF
	rbDKSQASnD7YgyvbbCRIdOKy/MMLSrEi8BWYJ+04BY3BX9It4tHMAFAuHsElYi7u31h93Zi2fJ9HC
	cc0Zu+6NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBbw1-00063v-Nw; Tue, 10 Mar 2020 10:16:25 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBbvq-00061r-Ng; Tue, 10 Mar 2020 10:16:16 +0000
Received: from localhost (p54B33196.dip0.t-ipconnect.de [84.179.49.150])
 by pokefinder.org (Postfix) with ESMTPSA id F2DDE2C1EB6;
 Tue, 10 Mar 2020 11:16:13 +0100 (CET)
Date: Tue, 10 Mar 2020 11:16:13 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 04/89] i2c: brcmstb: Allow to compile it on BCM2835
Message-ID: <20200310101613.GN1987@ninjato>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <0ec2a26c7492b1ef6554d3bdada7a6fb8b41ab1c.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
In-Reply-To: <0ec2a26c7492b1ef6554d3bdada7a6fb8b41ab1c.1582533919.git-series.maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_031614_921017_39623DD7 
X-CRM114-Status: UNSURE (   6.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-i2c@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2729560736467424612=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2729560736467424612==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ztcJpsdPpsnnlAp8"
Content-Disposition: inline


--ztcJpsdPpsnnlAp8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


>  config I2C_BRCMSTB
>  	tristate "BRCM Settop/DSL I2C controller"
>  	depends on ARCH_BRCMSTB || BMIPS_GENERIC || ARCH_BCM_63XX || \
> -		   COMPILE_TEST
> +		   COMPILE_TEST || ARCH_BCM2835

Can you please sort if for easier maintenance?


--ztcJpsdPpsnnlAp8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl5naO0ACgkQFA3kzBSg
Kbbotw/+MzEKdBWRAl9XS4c7JMOrYWcaHDXRPlPcgpby/WGwtkBcP3qMVLzhUK3P
wmRIwVMeZxmVzF6//Nj0RUMzHdMABDfMxroBW71xRaksB0X1Z4QwQoPhJrySz880
n7CosfR4WmdVujIgSA4G5Wx7Izqbw6Y3F5MBI4q9hDQC4yB6+0ByDA5PdC2c/ze8
UtrISDP7GZyfGY8j7+R5jycrYzGAZo+nsQ96AphoZYqnMoOaVhMU8e9zKzcPZjXE
y7gjuKI9drofcEYwZSwfA7xBN3mjG/zGaQdcfw8wYd9dX6+7Rw4ufZ36t6xKjvGv
OtMuow5QkSJAnjoTxFx8AvfqpXuGFTaRIq8znaIPOLp3OfwbWy6YpMQXwBTuhdip
GHouuNT9FKOfKhNxWo4wRox1VnaI9a/88X6L8VPu6hCpk2y+Ok6vzdcd//aA56/W
JeSFvdkFW305mu4CGGLq7CSH/w86tjSSmQveOXgRrsYfZ8fJL5TrQUIkkVCZG9Gk
Tj9LqtT4b97xVY6bNloTPRF3xAiu9t6pvJna/J8RSSIct6bjSPXJ5wuZW7eykUYD
DKOCd2LRmDbjwU0niH6Xt9K5FOK05SVdQDvSgFNABjGJTkaH29yxtoA+MQ8PTDaS
5J1H1Vzqf6tuGQ1I4Iv/W2yS9GmOlwY6pW8qvi+csOoeW4TXMR8=
=UluX
-----END PGP SIGNATURE-----

--ztcJpsdPpsnnlAp8--


--===============2729560736467424612==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2729560736467424612==--

