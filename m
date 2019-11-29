Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF3410DA09
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 20:11:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AgMfE5jaEBay9to7EKfQA3usQPz+VKynx7w5twU4g3A=; b=a/35MaVErHDjvsjxZHidZ4khI
	23UNJRaH61X0IdQN5ctGtwvxrPO9kDTiJLu6R/9KdxqLJTrP6lLJDW7cO+BlXHbC3nq29tWaZCIHH
	pFTyGvYW8zXR8mewAFzaTNwn198p42CCdMMIPDJswCzfNZk3ilbBPUEuYND1aQsQQnLb8H2PthJy+
	T8HimsbphMx6T0Vav1sinCvnHUVPy+qRaLkt9cIrWFBnW/2CPmyvB6rQsIrTp4+3VN3iwG3S7K9kq
	CGF/gUB0EVDbaMkyt0KXQs44kj+v5ZV9UFORLaTbYY/pVoEaYE9QqKjyn67FOcQp79gmUyWg3d4BE
	8Q833gKMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ialfW-0000ra-Qs; Fri, 29 Nov 2019 19:11:06 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ialfM-0000qb-P8
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 19:10:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id B1BE6292BA4
Received: by earth.universe (Postfix, from userid 1000)
 id 990293C0C77; Fri, 29 Nov 2019 15:06:01 +0100 (CET)
Date: Fri, 29 Nov 2019 15:06:01 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v2 04/17] power: reset: Kconfig: select
 POWER_RESET_AT91_RESET for sam9x60
Message-ID: <20191129140601.fgbxwhk2c7rlvvyz@earth.universe>
References: <1574773941-20649-1-git-send-email-claudiu.beznea@microchip.com>
 <1574773941-20649-5-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
In-Reply-To: <1574773941-20649-5-git-send-email-claudiu.beznea@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_111056_943540_EE5FA006 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: alexandre.belloni@bootlin.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 ludovic.desroches@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5463793270673336550=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5463793270673336550==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qqra4xv2pgsrtjif"
Content-Disposition: inline


--qqra4xv2pgsrtjif
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Nov 26, 2019 at 03:12:08PM +0200, Claudiu Beznea wrote:
> Select POWER_RESET_AT91_RESET for SAM9X60 SoC.
>=20
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  drivers/power/reset/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
> index c721939767eb..886e60017f4d 100644
> --- a/drivers/power/reset/Kconfig
> +++ b/drivers/power/reset/Kconfig
> @@ -26,7 +26,7 @@ config POWER_RESET_AT91_POWEROFF
>  config POWER_RESET_AT91_RESET
>  	tristate "Atmel AT91 reset driver"
>  	depends on ARCH_AT91
> -	default SOC_AT91SAM9 || SOC_SAMA5
> +	default SOC_AT91SAM9 || SOC_SAM9X60 || SOC_SAMA5
>  	help
>  	  This driver supports restart for Atmel AT91SAM9 and SAMA5
>  	  SoCs

I suppose this will go through ARM:

Acked-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

--qqra4xv2pgsrtjif
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl3hJckACgkQ2O7X88g7
+pqhDQ//WNmLXqjre475NYvywJrUR10v2JH2NyVYPBlYw5NtMdaj/2qgjlOOA5by
KaHTlh1gsCthLa5RF+xVpKc9QnKEPnt3ZIHys+QO1vBl50CA4uSdP7SJ0X8pqhSm
s/KfSa5dlkGF0z3cu6XXJg4c/oG4HSsCGPnGrbwVIaCN1kQBA8ESEBhwyggIu59J
DjBw092F4Wp+o+McqZW+xR/ILbNhqkqzz5OkJdg5r3XcWr+K3ubNUrfEIKn60+C6
49PI6hvkvbZHtHRtJgkcxW7TX/IsmFNWGWO0VSPLh7sa5DiD9Pf4Mux3mHAU6uk6
QaFfWZahcRqNvpwxcqJUqntwawnpIzYmoJfzDoqScHEfU1kZ+p3U/RenNfHBHioQ
SPO/15E2hC5Anb7JNYbxS4JccBF+0xRmpVIGRqmNJFFRaVvEhRgYuH/LWZqdgQEn
K/ZPHCXsYS/5cTMNOJ/Ma1FfgVaEbeCXv5r89ExS2/JuHtDXCD3KdC7eIYnwEvJn
9nYnHxRdBJRH92QpooEUOJI0fXKgBsGBn2lcAwqlt7ctfVNG3fL/aK8E7SuXNomw
LQyahophFRjRjCKT8ZscFperzBF70gMVXws0eiV2u55ZHVtvXBIEF7BapxxjgI6a
dg22CtqsGb4xQGY2srR7qjL4rJd9JJuQrQcuRYBwxsRnDG80Wto=
=HxsT
-----END PGP SIGNATURE-----

--qqra4xv2pgsrtjif--


--===============5463793270673336550==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5463793270673336550==--

