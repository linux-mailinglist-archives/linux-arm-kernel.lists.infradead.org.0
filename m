Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D536A772B3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 22:24:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AO+N6t2BdC5OB2FM/Obrbdt0io0wJHOy2xcaJ16gsUg=; b=XN/MeM/WGD6wEoF4hCxJOR5Zu
	bLl5G+gPRWeea1zfhxOwvG0bF/lXd5TufjpFwOhCHj2DT04jBuvj5smjV7YLw6X7v/P1fn8pZ4RDj
	kOOHWxNkUhzNb/hNm5EaiEl7wSD6SaidqO2PcH2itLgguR5wHML7X4sfNb0AvTDt5UTa0QxPR7QZA
	9oqDz/+l0mBgYBLy+LI/A/21TKWmYnQSnzXjnO+TMoRp2TZnjSd+XDSFuN2xeGtsu5bD2RO6AXt1K
	PWSWV7C7K+Nj7IEws6CGepCfzh/3QXd9xiSpE/cbnZFQyf8GE+L0h1m3DCeBMNG8eoIMXobJT+xbR
	f735art5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr6l6-0004xK-9O; Fri, 26 Jul 2019 20:24:08 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hr6kv-0004wd-SR
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 20:24:00 +0000
Received: from localhost (p54B33368.dip0.t-ipconnect.de [84.179.51.104])
 by pokefinder.org (Postfix) with ESMTPSA id 97EEC4A14D9;
 Fri, 26 Jul 2019 22:23:54 +0200 (CEST)
Date: Fri, 26 Jul 2019 22:23:54 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>
Subject: Re: [PATCH v3 5/7] drivers: Introduce device lookup variants by
 ACPI_COMPANION device
Message-ID: <20190726202353.GA963@kunai>
References: <20190723221838.12024-1-suzuki.poulose@arm.com>
 <20190723221838.12024-6-suzuki.poulose@arm.com>
MIME-Version: 1.0
In-Reply-To: <20190723221838.12024-6-suzuki.poulose@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_132358_217071_3D52873E 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: rafael@kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-acpi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-i2c@vger.kernel.org,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: multipart/mixed; boundary="===============3723185889791570152=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3723185889791570152==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Qxx1br4bt0+wmkIi"
Content-Disposition: inline


--Qxx1br4bt0+wmkIi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 23, 2019 at 11:18:36PM +0100, Suzuki K Poulose wrote:
> Add a generic helper to match a device by the ACPI_COMPANION device
> and provide wrappers for the device lookup APIs.
>=20
> Cc: Len Brown <lenb@kernel.org>
> Cc: linux-acpi@vger.kernel.org
> Cc: linux-spi@vger.kernel.org
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Mika Westerberg <mika.westerberg@linux.intel.com>
> Cc: Wolfram Sang <wsa@the-dreams.de>
> Cc: linux-i2c@vger.kernel.org
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>

=46rom my side, OK:

Acked-by: Wolfram Sang <wsa@the-dreams.de> # I2C parts

yet you missed to cc the I2C ACPI maintainers. Done so now.

> ---
>  drivers/base/core.c         |  6 ++++
>  drivers/i2c/i2c-core-acpi.c | 11 ++-----
>  drivers/spi/spi.c           |  8 +----
>  include/linux/device.h      | 65 +++++++++++++++++++++++++++++++++++++
>  4 files changed, 74 insertions(+), 16 deletions(-)
>=20
> diff --git a/drivers/base/core.c b/drivers/base/core.c
> index 3abc32b60c0a..57d71bc2c559 100644
> --- a/drivers/base/core.c
> +++ b/drivers/base/core.c
> @@ -3373,3 +3373,9 @@ int device_match_devt(struct device *dev, const voi=
d *pdevt)
>  	return dev->devt =3D=3D *(dev_t *)pdevt;
>  }
>  EXPORT_SYMBOL_GPL(device_match_devt);
> +
> +int device_match_acpi_dev(struct device *dev, const void *adev)
> +{
> +	return ACPI_COMPANION(dev) =3D=3D adev;
> +}
> +EXPORT_SYMBOL(device_match_acpi_dev);
> diff --git a/drivers/i2c/i2c-core-acpi.c b/drivers/i2c/i2c-core-acpi.c
> index 4dbbc9a35f65..bc80aafb521f 100644
> --- a/drivers/i2c/i2c-core-acpi.c
> +++ b/drivers/i2c/i2c-core-acpi.c
> @@ -354,17 +354,11 @@ static int i2c_acpi_find_match_adapter(struct devic=
e *dev, const void *data)
>  	return ACPI_HANDLE(dev) =3D=3D (acpi_handle)data;
>  }
> =20
> -static int i2c_acpi_find_match_device(struct device *dev, const void *da=
ta)
> -{
> -	return ACPI_COMPANION(dev) =3D=3D data;
> -}
> =20
>  struct i2c_adapter *i2c_acpi_find_adapter_by_handle(acpi_handle handle)
>  {
> -	struct device *dev;
> +	struct device *dev =3D bus_find_device_by_acpi_dev(&i2c_bus_type, handl=
e);
> =20
> -	dev =3D bus_find_device(&i2c_bus_type, NULL, handle,
> -			      i2c_acpi_find_match_adapter);
>  	return dev ? i2c_verify_adapter(dev) : NULL;
>  }
>  EXPORT_SYMBOL_GPL(i2c_acpi_find_adapter_by_handle);
> @@ -373,8 +367,7 @@ static struct i2c_client *i2c_acpi_find_client_by_ade=
v(struct acpi_device *adev)
>  {
>  	struct device *dev;
> =20
> -	dev =3D bus_find_device(&i2c_bus_type, NULL, adev,
> -			      i2c_acpi_find_match_device);
> +	dev =3D bus_find_device_by_acpi_dev(&i2c_bus_type, adev);
>  	return dev ? i2c_verify_client(dev) : NULL;
>  }
> =20
> diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
> index a591da87981a..c486a6f84c2c 100644
> --- a/drivers/spi/spi.c
> +++ b/drivers/spi/spi.c
> @@ -3741,11 +3741,6 @@ static int spi_acpi_controller_match(struct device=
 *dev, const void *data)
>  	return ACPI_COMPANION(dev->parent) =3D=3D data;
>  }
> =20
> -static int spi_acpi_device_match(struct device *dev, const void *data)
> -{
> -	return ACPI_COMPANION(dev) =3D=3D data;
> -}
> -
>  static struct spi_controller *acpi_spi_find_controller_by_adev(struct ac=
pi_device *adev)
>  {
>  	struct device *dev;
> @@ -3765,8 +3760,7 @@ static struct spi_device *acpi_spi_find_device_by_a=
dev(struct acpi_device *adev)
>  {
>  	struct device *dev;
> =20
> -	dev =3D bus_find_device(&spi_bus_type, NULL, adev, spi_acpi_device_matc=
h);
> -
> +	dev =3D bus_find_device_by_acpi_dev(&spi_bus_type, adev);
>  	return dev ? to_spi_device(dev) : NULL;
>  }
> =20
> diff --git a/include/linux/device.h b/include/linux/device.h
> index 93b2f55ef44e..7514ef3d3f1a 100644
> --- a/include/linux/device.h
> +++ b/include/linux/device.h
> @@ -168,6 +168,7 @@ int device_match_name(struct device *dev, const void =
*name);
>  int device_match_of_node(struct device *dev, const void *np);
>  int device_match_fwnode(struct device *dev, const void *fwnode);
>  int device_match_devt(struct device *dev, const void *pdevt);
> +int device_match_acpi_dev(struct device *dev, const void *adev);
> =20
>  int bus_for_each_dev(struct bus_type *bus, struct device *start, void *d=
ata,
>  		     int (*fn)(struct device *dev, void *data));
> @@ -224,6 +225,28 @@ static inline struct device *bus_find_device_by_devt=
(struct bus_type *bus,
>  	return bus_find_device(bus, NULL, &devt, device_match_devt);
>  }
> =20
> +#ifdef CONFIG_ACPI
> +struct acpi_device;
> +
> +/**
> + * bus_find_device_by_acpi_dev : device iterator for locating a particul=
ar device
> + * matching the ACPI COMPANION device.
> + * @bus: bus type
> + * @adev: ACPI COMPANION device to match.
> + */
> +static inline struct device *
> +bus_find_device_by_acpi_dev(struct bus_type *bus, const struct acpi_devi=
ce *adev)
> +{
> +	return bus_find_device(bus, NULL, adev, device_match_acpi_dev);
> +}
> +#else
> +static inline struct device *
> +bus_find_device_by_acpi_dev(struct bus_type *bus, const void *adev)
> +{
> +	return NULL;
> +}
> +#endif
> +
>  struct device *subsys_find_device_by_id(struct bus_type *bus, unsigned i=
nt id,
>  					struct device *hint);
>  int bus_for_each_drv(struct bus_type *bus, struct device_driver *start,
> @@ -442,6 +465,27 @@ static inline struct device *driver_find_device_by_d=
evt(struct device_driver *dr
>  	return driver_find_device(drv, NULL, &devt, device_match_devt);
>  }
> =20
> +#ifdef CONFIG_ACPI
> +/**
> + * driver_find_device_by_acpi_dev : device iterator for locating a parti=
cular
> + * device matching the ACPI_COMPANION device.
> + * @driver: the driver we're iterating
> + * @adev: ACPI_COMPANION device to match.
> + */
> +static inline struct device *
> +driver_find_device_by_acpi_dev(struct device_driver *drv,
> +			       const struct acpi_device *adev)
> +{
> +	return driver_find_device(drv, NULL, adev, device_match_acpi_dev);
> +}
> +#else
> +static inline struct device *
> +driver_find_device_by_acpi_dev(struct device_driver *drv, const void *ad=
ev)
> +{
> +	return NULL;
> +}
> +#endif
> +
>  void driver_deferred_probe_add(struct device *dev);
>  int driver_deferred_probe_check_state(struct device *dev);
>  int driver_deferred_probe_check_state_continue(struct device *dev);
> @@ -620,6 +664,27 @@ static inline struct device *class_find_device_by_de=
vt(struct class *class,
>  	return class_find_device(class, NULL, &devt, device_match_devt);
>  }
> =20
> +#ifdef CONFIG_ACPI
> +struct acpi_device;
> +/**
> + * class_find_device_by_acpi_dev : device iterator for locating a partic=
ular
> + * device matching the ACPI_COMPANION device.
> + * @class: class type
> + * @adev: ACPI_COMPANION device to match.
> + */
> +static inline struct device *
> +class_find_device_by_acpi_dev(struct class *class, const struct acpi_dev=
ice *adev)
> +{
> +	return class_find_device(class, NULL, adev, device_match_acpi_dev);
> +}
> +#else
> +static inline struct device *
> +class_find_device_by_acpi_dev(struct class *class, const void *adev)
> +{
> +	return NULL;
> +}
> +#endif
> +
>  struct class_attribute {
>  	struct attribute attr;
>  	ssize_t (*show)(struct class *class, struct class_attribute *attr,
> --=20
> 2.21.0
>=20

--Qxx1br4bt0+wmkIi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl07YVUACgkQFA3kzBSg
Kba2Jw//TFCeiCLo1qH7Wnsh9NdBxgEPc86wpsG4krJgfXbmtvHveYdMt4JCRhT0
36b/IMFLsg0J1rO/qpWZ/Fu+mKpVrnS4FV4asoZJfDWZhtlOFSZkAaNAzdiux9hk
MijPSXsDoUQK86YIUw+9ntDi+6oUWHhbLAeV6KZ7VjeBvLsJ7cKVYJfbeN7nvbrV
2wpB5Jc+mhTfiJFAslAUYsiV2b3mveWzW7Pnqj5sRHMKGHv3uJcf+xxBPByPglI1
MyMMqPf4uxVREnkev8lZaUvYvqgm9tphmgGg6+Xtgmv+yFXpwT6K8aXnAkD6jMrS
x0TPzZ9DVxtTdaL1HTu9QJ9hWQAHmFwkGNMAcd6E6CqdA1NF6fz6OnoM+68MWg9M
lYiL7eeEEXx45kXF6ySob7CZ3Fm08VnAZdbhpOtQXj0A9S+8LYNPBiS6gPAtkYEl
oe0GR+shH9zZ9ze9ZtneaShTsNVysjgAZSHNS3f+zHsby+zXyESDL9q//qOFboDj
g1tNNYj1RpxVl0TthSg1LYuGK2yQJGyLVCdXhAqywIgBMwmpoCPboZLasw4u1kyZ
H2zpoc+NO2ATufJ9TebF07DWM2TL4NI7ITjWzYVIYm/ork76PnujRhlXpZAlk5mb
hEQxXBOqG6QQk0W8umAfMvkevi6d5VFMQuaiMUKapY9P7LPP+Ho=
=6eTs
-----END PGP SIGNATURE-----

--Qxx1br4bt0+wmkIi--


--===============3723185889791570152==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3723185889791570152==--

