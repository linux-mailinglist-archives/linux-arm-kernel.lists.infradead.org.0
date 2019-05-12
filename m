Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 344561AC5E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 15:25:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=u1haEiBXr/hvGmuVVyrGcmwv/L0w6Sx6eSGmHaeX5UU=; b=cjkdaUbWYtG8FjKcIoNUvE8Ba
	OErXJfJkoGpiD/gif1PBK6fZV5IS14upPh/zRMLe5FJ6OKXAbQjP+C3gl1/uCBi3Lfmvf3cx6UIPS
	YqY4gRrLUTVs7Hm8TaE+83VN5C0lF0+3YDNnt05VRi+NjPHj4UoR4JPK0d4+lHfeBa8FzWuGoSlIF
	IwyJ+b/Pvs3MxGRH2Pxs+yomhHUHbxDA3Ru1stCx9GbijdavIDvmraIZbljXUe2XaqMPl91pPs/ez
	HjSS4H0z94dlGQ5EGAxoUP1JujNy3Zk159q7AXYEspUB+h/hmnfq7alzLL/m3eEh/i+2WEjxM8U5Z
	tyvdkFwig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPoTj-0001Tj-Ij; Sun, 12 May 2019 13:25:23 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPoTd-0001TO-67
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 13:25:18 +0000
X-Originating-IP: 109.190.253.16
Received: from localhost (unknown [109.190.253.16])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id C6F5140008;
 Sun, 12 May 2019 13:25:08 +0000 (UTC)
Date: Sun, 12 May 2019 15:25:05 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH] iio: adc: sun4i-gpadc-iio convert to SPDX license tags
Message-ID: <20190512132505.q2j2tpplw3gkl245@flea>
References: <20190512083241.9191-1-tiny.windzz@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190512083241.9191-1-tiny.windzz@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_062517_375711_8B6A038F 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
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
Cc: lars@metafoo.de, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 wens@csie.org, linux-arm-kernel@lists.infradead.org, pmeerw@pmeerw.net,
 knaack.h@gmx.de, jic23@kernel.org
Content-Type: multipart/mixed; boundary="===============6339939830254467441=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6339939830254467441==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="r45nxtjq6bbedfpy"
Content-Disposition: inline


--r45nxtjq6bbedfpy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, May 12, 2019 at 04:32:41AM -0400, Yangtao Li wrote:
> Updates license to use SPDX-License-Identifier.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>

Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--r45nxtjq6bbedfpy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXNgesQAKCRDj7w1vZxhR
xcjOAP9r3jIxAaeBedbK1lNtwUVJhDwYJmSLXo22a+SEIaWaBwD+O5b/Wbdo2Hul
2l7e2K9QVB9OYOxZswJmxSnTFfTS4wk=
=ZHDz
-----END PGP SIGNATURE-----

--r45nxtjq6bbedfpy--


--===============6339939830254467441==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6339939830254467441==--

