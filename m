Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2980C11C7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Sep 2019 20:33:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e7zcS7oE0T2fd73m+YEsmT/n4S2J7TcLQYAapM3DrWg=; b=KbJHz3mqNij8+WMI7ayxXHfVR
	cLZ83Yy/sRlGNoIJEVNMbmhNdoo5/vbXljENttzEvaPuT/F5wC5+jqTVhVds+qgDOCC3uT3n8vtRY
	aacKOOfrxZRDfiEfQamemjB3RbzJIqN1Qfdu/LTr5fmmZCOJ4RGI8/deIqQLLKMm1P3BlZkMIH2fs
	iNO373Unod3ZGkIydAPAYkCDcuouJwyIpFYfS4VDHq+HSY8KL2uQ4C5iUoaa70yriSlIxDbL5X2Kq
	NtULzn5PxlNncDeCQwioB57ttYVXmtb8wQdVOtoRy5G6pk4EqYFGueBwyIWy9Tc+e/HPu+odoMlnF
	tnVnOtw1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEHXD-0007WF-D0; Sat, 28 Sep 2019 18:33:35 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEHX2-0007Vi-EG; Sat, 28 Sep 2019 18:33:25 +0000
Received: from localhost (unknown [46.183.103.17])
 by pokefinder.org (Postfix) with ESMTPSA id 1F8A62C0489;
 Sat, 28 Sep 2019 20:33:22 +0200 (CEST)
Date: Sat, 28 Sep 2019 20:33:11 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Fabien Parent <fparent@baylibre.com>
Subject: Re: [PATCH] i2c: i2c-mt65xx: fix NULL ptr dereference
Message-ID: <20190928183305.GD12219@kunai>
References: <20190925203113.6972-1-fparent@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <20190925203113.6972-1-fparent@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_113324_625131_1F978C7C 
X-CRM114-Status: UNSURE (   4.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, drinkcat@chromium.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-i2c@vger.kernel.org, hsinyi@chromium.org, matthias.bgg@gmail.com,
 tglx@linutronix.de, qii.wang@mediatek.com
Content-Type: multipart/mixed; boundary="===============8456620284274949358=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8456620284274949358==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BZaMRJmqxGScZ8Mx"
Content-Disposition: inline


--BZaMRJmqxGScZ8Mx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> -	if (adap->quirks->flags & I2C_AQ_NO_ZERO_LEN)
> +	if (adap->quirks && adap->quirks->flags & I2C_AQ_NO_ZERO_LEN)

Right. Please use i2c_check_quirks(). Otherwise thanks for the catch!

@Mediatek-people: can we have a dedicated maintainer for this driver to
better prevent stuff like this from happening again?


--BZaMRJmqxGScZ8Mx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl2Pp2EACgkQFA3kzBSg
KbatPxAAr+Gltm2HCrzvvM07L4jnevtGwg05fL/W3Z71RjOwB1XMOX67NwKJn+gC
3JMaLtB/9VNojTumuxkfnHrtlCc3zQgBNDC/Wf/tQQVgssuAz3TIY40PaxyF3+dP
AWoh3UW9eM3p16wsqm6kH5SJCaZM3f8wuLYY2CtGOUIpzuTGar/X7DV34s+0BH/G
eFxrLdwlGeq31UYZlPI6LnfGqa+K9zH+hTlSGe6zHt0QCH0/i1qXkTMJa2MafBgv
Dl8VXDhBn6tN50JhfXgFbDYXKXV3FWoo8qGI5R4GHyeKOnGI3yszzx9AJq9zWiML
RVQ8uHFULHbt5IXldaE5VKPlAOBRnKNAjjWB16u3HgmKESieU4XNxAt2ByDX38bO
ZFVIbkuBzCIhdZxkipVlqYlF5fBLj4+fnqffCGYUYBUfMrSYLrd4FMhuVXaHABQy
PRyBu+QT6F2dhdW0wGEZE7EBV+XEkOJNzv0b5QQtfLBUYjDED0DEU5XQWaWfR3xm
KqcVj5XJoWNOpS+T5en8hUYIJNP43INdCoxG/M7oQgvYH28dIPlkIt9/iOo9EBzO
z9DiI5J+tE1faM6R2cMol4CEmlX49emrGfnuGwxbQi1gMv/YjfFlb5VcYjPF/5Jx
TTqCBC9wh8ruoyfuOPYnfQmLccm9IR4gnHjvPk0Zwncao5QRdc4=
=/LoV
-----END PGP SIGNATURE-----

--BZaMRJmqxGScZ8Mx--


--===============8456620284274949358==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8456620284274949358==--

