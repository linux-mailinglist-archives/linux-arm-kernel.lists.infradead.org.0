Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB244A5D28
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 22:39:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VXmBBUUDqenJyoswItVc8KZDsyVcFx66hxiGh4v4nyY=; b=tXJAmtxn8SgZUAVSegg2ffELk
	Vng/HBRLM/9a36YmGCOnEb9T22hv/xwDwsDEmQukLtxGC25ctr58u4kxfwEAt1/74aeUaPDWA1WRa
	xr6SLvROdNCS1qZXc2Nr6Y1K1mLD5A6t7nFYMoCyoFrE9Ej16VYBCsnK4bvHBSGYs4MMuW8vwGeob
	RkA0HFUyTK93BjObXs+3szs8Ka+FOqOBhQEo/nh5U1p6zV4JsOzWkNOPrQMOUHX0iaq78zHtHfNIA
	ydDpvBO7fE4ZPNrVmhlqfQx0SJGWjyVHWhE/+KUdnN/vbsNWS2FdeO0wGIw/truMNFi51g3xP36Um
	yR2MVLMng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4t6Z-0000ca-H6; Mon, 02 Sep 2019 20:39:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4t6L-0000bU-Lo
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 20:39:03 +0000
Received: from earth.universe (unknown [185.62.205.105])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2511121897;
 Mon,  2 Sep 2019 20:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567456740;
 bh=mCIlhOliA5oIMWPZ2XHqEIy4O8f+2xKB8vmwAyjxstQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=l3X/8L4+3pzmLygVmJGNDd+KWEl274G69dCBpvGB1uVovX2s4NKQTGE5WWZt/JI1+
 WPUmIeaL5XcwNmIudftUGjsxiAbjierPFn1fl2jOkZTXfyWj/mSgZBFMiXUxknp+ZK
 X8MzlJX14nl2elnVeKRnMW+PByNbRDrmf0Mjsm7A=
Received: by earth.universe (Postfix, from userid 1000)
 id B4C073C0CFA; Mon,  2 Sep 2019 22:38:57 +0200 (CEST)
Date: Mon, 2 Sep 2019 22:38:57 +0200
From: Sebastian Reichel <sre@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] power: reset: make reboot-mode user selectable
Message-ID: <20190902203857.zusvlv3yv5arel6y@earth.universe>
References: <20190805075812.1056069-1-arnd@arndb.de>
MIME-Version: 1.0
In-Reply-To: <20190805075812.1056069-1-arnd@arndb.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_133901_760949_B8F74635 
X-CRM114-Status: GOOD (  29.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Nandor Han <nandor.han@vaisala.com>
Content-Type: multipart/mixed; boundary="===============1703306048088474344=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1703306048088474344==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ksifvg4rkvnzzokt"
Content-Disposition: inline


--ksifvg4rkvnzzokt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Arnd and Nandor,

On Mon, Aug 05, 2019 at 09:57:15AM +0200, Arnd Bergmann wrote:
> Nandor Han points out that there might be drivers that can use
> the reboot-mode interfaces but might also be usable on configurations
> without device tree.
>=20
> Move the 'depends on OF' dependency into CONFIG_REBOOT_MODE since
> that is the only thing that truely has a compile-time dependency
> on CONFIG_OF, and make it user visible to make it possible to
> disable it.
>=20
> The drivers that used to 'select REBOOT_MODE' of course now have to
> use 'depends on REBOOT_MODE instead'. With this, we can soften the
> dependency and allow compile-testing the three front-end drivers
> on non-OF platforms.
>=20
> Note: anyone who was using a reboot mode driver in their kernel
> configuration now has to enable CONFIG_REBOOT_MODE as well.
>=20
> Suggested-by: Nandor Han <nandor.han@vaisala.com>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> Nandor, this is so far untested, could you make sure this
> works in all configurations and forward it along with the
> bugfix?
>=20
> Sebastian, I'm not convinced this is a good idea, just sending
> it as Nandor requested. Please decide for yourself.
> ---

(Sorry for late reply)

This patch does not look good to me. Better patch would be to
allow compiling CONFIG_REBOOT_MODE without CONFIG_OF. Obviously
the configuration would not be useful for anything except compile
testing, but that is also true for this patch.

Making the small OF dependent section in reboot_mode_register()
would be a smaller patch with bigger test coverage, without
breakng existing configurations.

-- Sebastian

>  arch/arm/configs/davinci_all_defconfig |  1 +
>  arch/arm64/configs/defconfig           |  1 +
>  drivers/power/reset/Kconfig            | 22 +++++++++++++---------
>  include/linux/reboot-mode.h            | 20 ++++++++++++++++++++
>  4 files changed, 35 insertions(+), 9 deletions(-)
>=20
> diff --git a/arch/arm/configs/davinci_all_defconfig b/arch/arm/configs/da=
vinci_all_defconfig
> index b34970ce6b31..ebf506c01899 100644
> --- a/arch/arm/configs/davinci_all_defconfig
> +++ b/arch/arm/configs/davinci_all_defconfig
> @@ -139,6 +139,7 @@ CONFIG_GPIO_PCA953X_IRQ=3Dy
>  CONFIG_RESET_CONTROLLER=3Dy
>  CONFIG_POWER_RESET=3Dy
>  CONFIG_POWER_RESET_GPIO=3Dy
> +CONFIG_REBOOT_MODE=3Dm
>  CONFIG_SYSCON_REBOOT_MODE=3Dm
>  CONFIG_BATTERY_LEGO_EV3=3Dm
>  CONFIG_WATCHDOG=3Dy
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 0e58ef02880c..bb7d7bec1413 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -419,6 +419,7 @@ CONFIG_ROCKCHIP_IODOMAIN=3Dy
>  CONFIG_POWER_RESET_MSM=3Dy
>  CONFIG_POWER_RESET_XGENE=3Dy
>  CONFIG_POWER_RESET_SYSCON=3Dy
> +CONFIG_REBOOT_MODE=3Dy
>  CONFIG_SYSCON_REBOOT_MODE=3Dy
>  CONFIG_BATTERY_SBS=3Dm
>  CONFIG_BATTERY_BQ27XXX=3Dy
> diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
> index a564237278ff..997323d443f5 100644
> --- a/drivers/power/reset/Kconfig
> +++ b/drivers/power/reset/Kconfig
> @@ -9,6 +9,13 @@ menuconfig POWER_RESET
> =20
>  if POWER_RESET
> =20
> +config REBOOT_MODE
> +	tristate "Pass reboot-mode to firmware"
> +	depends on OF
> +	help
> +	  Some drivers allow setting the reboot mode through a platform
> +	  interface that the boot firmware can read.
> +
>  config POWER_RESET_AS3722
>  	bool "ams AS3722 power-off driver"
>  	depends on MFD_AS3722
> @@ -107,9 +114,9 @@ config POWER_RESET_MSM
> =20
>  config POWER_RESET_QCOM_PON
>  	tristate "Qualcomm power-on driver"
> -	depends on ARCH_QCOM
> +	depends on ARCH_QCOM || COMPILE_TEST
>  	depends on MFD_SPMI_PMIC
> -	select REBOOT_MODE
> +	depends on REBOOT_MODE || !REBOOT_MODE
>  	help
>  	  Power On support for Qualcomm boards.
>  	  If you have a Qualcomm platform and need support for
> @@ -223,14 +230,11 @@ config POWER_RESET_ZX
>  	help
>  	  Reboot support for ZTE SoCs.
> =20
> -config REBOOT_MODE
> -	tristate
> -
>  config SYSCON_REBOOT_MODE
>  	tristate "Generic SYSCON regmap reboot mode driver"
> -	depends on OF
> +	depends on OF || COMPILE_TEST
>  	depends on MFD_SYSCON
> -	select REBOOT_MODE
> +	depends on REBOOT_MODE || !REBOOT_MODE
>  	help
>  	  Say y here will enable reboot mode driver. This will
>  	  get reboot mode arguments and store it in SYSCON mapped
> @@ -248,8 +252,8 @@ config POWER_RESET_SC27XX
> =20
>  config NVMEM_REBOOT_MODE
>  	tristate "Generic NVMEM reboot mode driver"
> -	depends on OF
> -	select REBOOT_MODE
> +	depends on OF || COMPILE_TEST
> +	depends on REBOOT_MODE || !REBOOT_MODE
>  	help
>  	  Say y here will enable reboot mode driver. This will
>  	  get reboot mode arguments and store it in a NVMEM cell,
> diff --git a/include/linux/reboot-mode.h b/include/linux/reboot-mode.h
> index 4a2abb38d1d6..bd002060e3d0 100644
> --- a/include/linux/reboot-mode.h
> +++ b/include/linux/reboot-mode.h
> @@ -9,11 +9,31 @@ struct reboot_mode_driver {
>  	struct notifier_block reboot_notifier;
>  };
> =20
> +#if IS_ENABLED(CONFIG_REBOOT_MODE)
>  int reboot_mode_register(struct reboot_mode_driver *reboot);
>  int reboot_mode_unregister(struct reboot_mode_driver *reboot);
>  int devm_reboot_mode_register(struct device *dev,
>  			      struct reboot_mode_driver *reboot);
>  void devm_reboot_mode_unregister(struct device *dev,
>  				 struct reboot_mode_driver *reboot);
> +#else
> +static inline int reboot_mode_register(struct reboot_mode_driver *reboot)
> +{
> +	return 0;
> +}
> +static inline int reboot_mode_unregister(struct reboot_mode_driver *rebo=
ot)
> +{
> +	return 0;
> +}
> +static inline int devm_reboot_mode_register(struct device *dev,
> +			      struct reboot_mode_driver *reboot)
> +{
> +	return 0;
> +}
> +static inline void devm_reboot_mode_unregister(struct device *dev,
> +				 struct reboot_mode_driver *reboot)
> +{
> +}
> +#endif
> =20
>  #endif
> --=20
> 2.20.0
>=20

--ksifvg4rkvnzzokt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl1tfd4ACgkQ2O7X88g7
+prQDg/+PXtmhGWKdbFuPNBLtgFN/bevjswq58gIKNKmmot/hlhDt9wKgXi2ksmQ
UUhlIUumLp3n4+w8XfFUEeqa/+qqFI5ji1Fr6e77/R2Y601S95GqXm/BouyuRDdd
SXf3Wo6LGSwiA5dyxZjbsGZLW3iOjhaP5mAnPM5ICYMS3rhO9YezSKxQLhTPslrx
Dg8sZdhHv3dkaG8Dg7prHRk8fvJF2S1EBHuliPgRHLL+Nss/G9VhaSGi4rFZXk8N
F5e6fSBQ3Q6QWRibxEM1iaugC9nE4AzmFCXEMFAMXAsptPGFDsF0AyLG6dA9AMPH
7yunemEtBYzWsffyXVZ+4quCwUS1vGK281tqu6QIvm71tnaHQPayQvY71rUJ/gEN
CCagWGqs8m6AKwfuSKJZCIh/+ViR1PnhUjjYlCitDq31t2E/zpypxz9TqqkCccoG
3jNt/VyA3lbCnBY192SpCZqAIIclwU4T8R6UUAzWRp149uaxyNM0hEWFAov914fa
j5AyER65q8tyYT7OScXpeVAu+p1d66OOFlV5ippIy/iHM1d4I01YbbdHAA35Ho9r
Kk/CTFn3ZDebBTQza00yVzDCNSetl064/ecMEuWgkwEQ3fi+GS7ldml21qUl+07q
pthlGMdweqYL1N/QcC44Bb8/m7rmTyYx2IkPi8TcnqOQUlNdnVA=
=Ovrq
-----END PGP SIGNATURE-----

--ksifvg4rkvnzzokt--


--===============1703306048088474344==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1703306048088474344==--

