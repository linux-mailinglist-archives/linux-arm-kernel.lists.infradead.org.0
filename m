Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5CC128B80
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 21:23:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TxCyE8PYhE3n9qWjGn5D8+VCsid9JkeIy8XcKF+APxQ=; b=u+jeXXDmkS9/S4fufqBxXBiZT
	z4UIGnoH++WCPRaninToGMWA8OVr7+broNMBq5kwgRu22F6XGcv0RbfG+QHVltG6aV5ENi8ibPvFt
	YDzzaRyIEw17Md186j5Oql5CccOmctDlXk72DRuEccR579gPyPMoSDyFXsQi2ftRXEszcIk66nx6i
	onn0MGm4nHk/27DAD1gCQSMn41kiSrvQfJi+jiijUcnK5LX7FtO53jQa/jNVcAtoK2fPvtP/7F73y
	ofDuh/5IVWnmdCOgbnbLg2KcLpOVDVIEZ9vwblH1woiVoHqiemqfPn4qRFd+TdlELFiAroRbyCEWh
	S6gt0ap2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iilHv-0000HE-Na; Sat, 21 Dec 2019 20:23:47 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iilHj-0000Gg-3z; Sat, 21 Dec 2019 20:23:37 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id D5D141C24A9; Sat, 21 Dec 2019 21:23:33 +0100 (CET)
Date: Sat, 21 Dec 2019 21:23:33 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [RFC 19/25] leds: tm1628: Add 7-segment display support
Message-ID: <20191221202333.GM32732@amd>
References: <20191212033952.5967-1-afaerber@suse.de>
 <20191212033952.5967-20-afaerber@suse.de>
MIME-Version: 1.0
In-Reply-To: <20191212033952.5967-20-afaerber@suse.de>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_122335_469525_4FDB7FB9 
X-CRM114-Status: GOOD (  19.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.255.230.98 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 Dan Murphy <dmurphy@ti.com>, linux-leds@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Content-Type: multipart/mixed; boundary="===============7049349383493284993=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7049349383493284993==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="asNXdz5DenlsLVVk"
Content-Disposition: inline


--asNXdz5DenlsLVVk
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> Detect DT child nodes covering more than one LED component and implement
> a text to 7-segment display mapping.

Up to here, I seen nothing totally crazy.

But I'd prefer not to have this in the LED subsystem.

Best regards,
									Pavel

> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> ---
>  drivers/leds/leds-tm1628.c | 230 +++++++++++++++++++++++++++++++++++++++=
+++++-
>  1 file changed, 229 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/leds/leds-tm1628.c b/drivers/leds/leds-tm1628.c
> index 8a8fd1562853..e2c2a5d91596 100644
> --- a/drivers/leds/leds-tm1628.c
> +++ b/drivers/leds/leds-tm1628.c
> @@ -47,6 +47,15 @@ struct tm1628_info {
>  	int				default_pwm;
>  };
> =20
> +struct tm1628_segment {
> +	u32 grid;
> +	u32 seg;
> +};
> +
> +struct tm1628_display {
> +	struct tm1628_segment segments[8];
> +};
> +
>  struct tm1628_led {
>  	struct led_classdev	leddev;
>  	struct tm1628		*ctrl;
> @@ -62,6 +71,8 @@ struct tm1628 {
>  	int				mode_index;
>  	int				pwm_index;
>  	u8				data[14];
> +	unsigned int			num_displays;
> +	struct tm1628_display		*displays;
>  	unsigned int			num_leds;
>  	struct tm1628_led		leds[];
>  };
> @@ -253,6 +264,215 @@ static int tm1628_register_led(struct tm1628 *s,
>  	return devm_led_classdev_register_ext(dev, &led->leddev, &init_data);
>  }
> =20
> +#define SSD_TOP			BIT(0)
> +#define SSD_TOP_RIGHT		BIT(1)
> +#define SSD_BOTTOM_RIGHT	BIT(2)
> +#define SSD_BOTTOM		BIT(3)
> +#define SSD_BOTTOM_LEFT		BIT(4)
> +#define SSD_TOP_LEFT		BIT(5)
> +#define SSD_MIDDLE		BIT(6)
> +#define SSD_DOT			BIT(7)
> +
> +struct tm1628_ssd_char {
> +	char ch;
> +	u8 segs;
> +};
> +
> +static const struct tm1628_ssd_char tm1628_char_ssd_map[] =3D {
> +	{ '0', SSD_TOP | SSD_TOP_LEFT | SSD_TOP_RIGHT |
> +	       SSD_BOTTOM_LEFT | SSD_BOTTOM_RIGHT | SSD_BOTTOM },
> +	{ '1', SSD_TOP_RIGHT | SSD_BOTTOM_RIGHT },
> +	{ '2', SSD_TOP | SSD_TOP_RIGHT | SSD_MIDDLE | SSD_BOTTOM_LEFT | SSD_BOT=
TOM },
> +	{ '3', SSD_TOP | SSD_TOP_RIGHT | SSD_MIDDLE | SSD_BOTTOM_RIGHT | SSD_BO=
TTOM },
> +	{ '4', SSD_TOP_LEFT | SSD_TOP_RIGHT | SSD_MIDDLE | SSD_BOTTOM_RIGHT },
> +	{ '5', SSD_TOP | SSD_TOP_LEFT | SSD_MIDDLE | SSD_BOTTOM_RIGHT | SSD_BOT=
TOM },
> +	{ '6', SSD_TOP | SSD_TOP_LEFT | SSD_MIDDLE | SSD_BOTTOM_LEFT | SSD_BOTT=
OM_RIGHT | SSD_BOTTOM },
> +	{ '7', SSD_TOP | SSD_TOP_RIGHT | SSD_BOTTOM_RIGHT },
> +	{ '8', SSD_TOP | SSD_TOP_LEFT | SSD_TOP_RIGHT | SSD_MIDDLE |
> +	       SSD_BOTTOM_LEFT | SSD_BOTTOM_RIGHT | SSD_BOTTOM },
> +	{ '9', SSD_TOP | SSD_TOP_LEFT | SSD_TOP_RIGHT | SSD_MIDDLE |
> +	       SSD_BOTTOM_RIGHT | SSD_BOTTOM },
> +	{ 'A', SSD_TOP | SSD_TOP_LEFT | SSD_TOP_RIGHT | SSD_MIDDLE |
> +	       SSD_BOTTOM_LEFT | SSD_BOTTOM_RIGHT },
> +	{ 'B', SSD_TOP | SSD_TOP_LEFT | SSD_TOP_RIGHT | SSD_MIDDLE |
> +	       SSD_BOTTOM_LEFT | SSD_BOTTOM_RIGHT | SSD_BOTTOM },
> +	{ 'C', SSD_TOP | SSD_TOP_LEFT | SSD_BOTTOM_LEFT | SSD_BOTTOM },
> +	{ 'D', SSD_TOP | SSD_TOP_LEFT | SSD_TOP_RIGHT |
> +	       SSD_BOTTOM_LEFT | SSD_BOTTOM_RIGHT | SSD_BOTTOM },
> +	{ 'E', SSD_TOP | SSD_TOP_LEFT | SSD_MIDDLE | SSD_BOTTOM_LEFT | SSD_BOTT=
OM },
> +	{ 'F', SSD_TOP | SSD_TOP_LEFT | SSD_MIDDLE | SSD_BOTTOM_LEFT },
> +	{ 'G', SSD_TOP | SSD_TOP_LEFT | SSD_BOTTOM_LEFT | SSD_BOTTOM | SSD_BOTT=
OM_RIGHT },
> +	{ 'H', SSD_TOP_LEFT | SSD_TOP_RIGHT | SSD_MIDDLE |
> +	       SSD_BOTTOM_LEFT | SSD_BOTTOM_RIGHT },
> +	{ 'I', SSD_TOP_LEFT | SSD_BOTTOM_LEFT },
> +	{ 'J', SSD_TOP | SSD_TOP_RIGHT | SSD_BOTTOM_RIGHT | SSD_BOTTOM },
> +	{ 'K', SSD_TOP_LEFT | SSD_TOP_RIGHT | SSD_MIDDLE |
> +	       SSD_BOTTOM_LEFT | SSD_BOTTOM_RIGHT },
> +	{ 'L', SSD_TOP_LEFT | SSD_BOTTOM_LEFT | SSD_BOTTOM },
> +	{ 'O', SSD_TOP | SSD_TOP_LEFT | SSD_TOP_RIGHT |
> +	       SSD_BOTTOM_LEFT | SSD_BOTTOM_RIGHT | SSD_BOTTOM },
> +	{ 'P', SSD_TOP | SSD_TOP_LEFT | SSD_TOP_RIGHT | SSD_MIDDLE |
> +	       SSD_BOTTOM_LEFT },
> +	{ 'Q', SSD_TOP | SSD_TOP_LEFT | SSD_TOP_RIGHT |
> +	       SSD_BOTTOM_LEFT | SSD_BOTTOM_RIGHT | SSD_BOTTOM },
> +	{ 'R', SSD_TOP | SSD_TOP_LEFT | SSD_TOP_RIGHT | SSD_MIDDLE |
> +	       SSD_BOTTOM_LEFT | SSD_BOTTOM_RIGHT },
> +	{ 'S', SSD_TOP | SSD_TOP_LEFT | SSD_MIDDLE | SSD_BOTTOM_RIGHT | SSD_BOT=
TOM },
> +	{ 'T', SSD_TOP | SSD_TOP_LEFT | SSD_BOTTOM_LEFT },
> +	{ 'U', SSD_TOP_LEFT | SSD_BOTTOM_LEFT | SSD_BOTTOM | SSD_BOTTOM_RIGHT |=
 SSD_TOP_RIGHT },
> +	{ 'V', SSD_TOP_LEFT | SSD_BOTTOM_LEFT | SSD_BOTTOM | SSD_BOTTOM_RIGHT |=
 SSD_TOP_RIGHT },
> +	{ 'W', SSD_TOP_LEFT | SSD_BOTTOM_LEFT | SSD_BOTTOM | SSD_BOTTOM_RIGHT |=
 SSD_TOP_RIGHT },
> +	{ 'Z', SSD_TOP | SSD_TOP_RIGHT | SSD_MIDDLE | SSD_BOTTOM_LEFT | SSD_BOT=
TOM },
> +	{ 'b', SSD_TOP_LEFT | SSD_MIDDLE | SSD_BOTTOM_LEFT | SSD_BOTTOM | SSD_B=
OTTOM_RIGHT },
> +	{ 'l', SSD_TOP_LEFT | SSD_BOTTOM_LEFT },
> +	{ 'o', SSD_MIDDLE | SSD_BOTTOM_LEFT | SSD_BOTTOM | SSD_BOTTOM_RIGHT },
> +	{ 't', SSD_TOP_LEFT | SSD_MIDDLE | SSD_BOTTOM_LEFT | SSD_BOTTOM },
> +	{ 'u', SSD_BOTTOM_LEFT | SSD_BOTTOM | SSD_BOTTOM_RIGHT },
> +	{ 'v', SSD_BOTTOM_LEFT | SSD_BOTTOM | SSD_BOTTOM_RIGHT },
> +	{ 'w', SSD_BOTTOM_LEFT | SSD_BOTTOM | SSD_BOTTOM_RIGHT },
> +	{ '-', SSD_MIDDLE },
> +	{ '_', SSD_BOTTOM },
> +	{ '.', SSD_DOT },
> +};
> +
> +static u8 tm1628_get_char_ssd_map(char ch)
> +{
> +	int i;
> +
> +	for (i =3D 0; i < ARRAY_SIZE(tm1628_char_ssd_map); i++) {
> +		if (tm1628_char_ssd_map[i].ch =3D=3D ch)
> +			return tm1628_char_ssd_map[i].segs;
> +	}
> +
> +	return 0x0;
> +}
> +
> +static int tm1628_display_apply_map(struct tm1628 *s,
> +	struct tm1628_display *display, u8 map)
> +{
> +	struct tm1628_segment *segment;
> +	int i;
> +
> +	for (i =3D 0; i < 8; i++) {
> +		segment =3D &display->segments[i];
> +		tm1628_set_led(s, segment->grid, segment->seg, map & BIT(i));
> +	}
> +
> +	return 0;
> +}
> +
> +static ssize_t text_store(struct device *dev,
> +	struct device_attribute *attr, const char *buf, size_t count)
> +{
> +	struct tm1628 *s =3D dev_get_drvdata(dev);
> +	size_t offset, len =3D count;
> +	u8 map;
> +	int i, ret;
> +
> +	if (len > 0 && buf[len - 1] =3D=3D '\n')
> +		len--;
> +
> +	for (i =3D 0, offset =3D 0; i < s->num_displays; i++) {
> +		if (offset < len) {
> +			map =3D tm1628_get_char_ssd_map(buf[offset]);
> +			offset++;
> +		} else
> +			map =3D 0x0;
> +
> +		tm1628_display_apply_map(s, &s->displays[i], map);
> +	}
> +
> +	ret =3D tm1628_set_address(s->spi, 0x0);
> +	if (ret)
> +		return ret;
> +
> +	ret =3D tm1628_write_data(s->spi, s->data, 14);
> +	if (ret)
> +		return ret;
> +
> +	return count;
> +}
> +
> +static struct device_attribute tm1628_attr =3D
> +	__ATTR_WO(text);
> +
> +static int tm1628_register_display(struct tm1628 *s,
> +	struct fwnode_handle *node)
> +{
> +	struct device *dev =3D &s->spi->dev;
> +	struct tm1628_display *display;
> +	u32 *reg;
> +	u32 grid, seg;
> +	int i, j, ret, reg_count;
> +
> +	reg_count =3D fwnode_property_count_u32(node, "reg");
> +	if (reg_count < 0)
> +		return reg_count;
> +
> +	if (reg_count % 2) {
> +		dev_warn(dev, "Ignoring extra cell in %s reg property\n",
> +			 fwnode_get_name(node));
> +		reg_count--;
> +	}
> +
> +	if (s->displays) {
> +		dev_warn(dev, "Only one display supported\n");
> +		return -EINVAL;
> +	}
> +
> +	s->num_displays =3D reg_count >> 1;
> +
> +	reg =3D devm_kzalloc(dev, reg_count * sizeof(*reg), GFP_KERNEL);
> +	if (!reg)
> +		return -ENOMEM;
> +
> +	ret =3D fwnode_property_read_u32_array(node, "reg", reg, reg_count);
> +	if (ret) {
> +		dev_err(dev, "Reading %s reg property failed (%d)\n",
> +			fwnode_get_name(node), ret);
> +		return ret;
> +	}
> +
> +	s->displays =3D devm_kzalloc(dev, s->num_displays * sizeof(*s->displays=
), GFP_KERNEL);
> +	if (!s->displays)
> +		return -ENOMEM;
> +
> +	for (i =3D 0; i < s->num_displays; i++) {
> +		display =3D &s->displays[i];
> +		grid =3D reg[i * 2];
> +		seg  =3D reg[i * 2 + 1];
> +		if (grid =3D=3D 0 && seg !=3D 0) {
> +			if (!tm1628_is_valid_seg(s, seg)) {
> +				dev_warn(dev, "%s reg out of range\n", fwnode_get_name(node));
> +				return -EINVAL;
> +			}
> +			grid =3D s->info->modes[s->mode_index].grid_mask;
> +			for (j =3D 0; grid && j < 7; j++) {
> +				display->segments[j].seg =3D seg;
> +				display->segments[j].grid =3D __ffs(grid);
> +				grid &=3D ~BIT(display->segments[j].grid);
> +			}
> +		} else if (grid !=3D 0 && seg =3D=3D 0) {
> +			if (!tm1628_is_valid_grid(s, grid)) {
> +				dev_warn(dev, "%s reg out of range\n", fwnode_get_name(node));
> +				return -EINVAL;
> +			}
> +			seg =3D s->info->modes[s->mode_index].seg_mask;
> +			for (j =3D 0; seg && j < 8; j++) {
> +				display->segments[j].grid =3D grid;
> +				display->segments[j].seg =3D __ffs(seg);
> +				seg &=3D ~BIT(display->segments[j].seg);
> +			}
> +		}
> +	}
> +
> +	devm_kfree(dev, reg);
> +
> +	device_create_file(dev, &tm1628_attr);
> +
> +	return 0;
> +}
> +
>  /* Work around __builtin_popcount() */
>  static u32 tm1628_grid_popcount(u8 grid_mask)
>  {
> @@ -325,7 +545,7 @@ static int tm1628_spi_probe(struct spi_device *spi)
>  			return ret;
>  		}
> =20
> -		if (fwnode_property_count_u32(child, "reg") =3D=3D 2) {
> +		if (reg[0] !=3D 0 && reg[1] !=3D 0 && fwnode_property_count_u32(child,=
 "reg") =3D=3D 2) {
>  			ret =3D tm1628_register_led(s, child, reg[0], reg[1], &s->leds[i++]);
>  			if (ret && ret !=3D -EINVAL) {
>  				dev_err(&spi->dev, "Failed to register LED %s (%d)\n",
> @@ -334,6 +554,14 @@ static int tm1628_spi_probe(struct spi_device *spi)
>  				return ret;
>  			}
>  			s->num_leds++;
> +		} else {
> +			ret =3D tm1628_register_display(s, child);
> +			if (ret) {
> +				dev_err(&spi->dev, "Failed to register display %s (%d)\n",
> +					fwnode_get_name(child), ret);
> +				fwnode_handle_put(child);
> +				return ret;
> +			}
>  		}
>  	}
> =20

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--asNXdz5DenlsLVVk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl3+f0UACgkQMOfwapXb+vJqEgCePCcBgjXSt7GUJrGq9tXgQUjY
dBAAoMQL2YjFmklWnQJeaoXwSQwMDvqv
=grN6
-----END PGP SIGNATURE-----

--asNXdz5DenlsLVVk--


--===============7049349383493284993==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7049349383493284993==--

