Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C94C1267BB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 18:13:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n/6PPo+XGPtymohXkiOV3GRIb1/L+JTzPDyTNBicj54=; b=CTHm/fIE7o/0qICCmJZXTrwNk
	aoK334C46g0pL0rMi1dyHGtXUQDnzeqe9NRb5E6ZkXxdTq6rQf+UseouJSzkrBIyrhXwVuAbiKhfh
	u7D4gG8noXXD9NzTCfdQ0+gM4vVmBE5FWUyTU8sDUZ152aGBPRccbFbs9lrKK7WZMlH1wglArXSML
	+hiiq8U5vyAX1f2wzRCc3LMBhl5zLIOmzSV2AM4VBcTU9IgFrkUyzsX2Dheo8iNUkMfeCwqKooAtc
	fCZcfRYYvsbYNwkD1t/OMBJeHnKxiDeDt6LZiZS0mCpSdr7hWucZkayQ31+IE7m2Q+ml7UIYKQWEm
	BXUHzJSMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihzMg-00005Y-Uy; Thu, 19 Dec 2019 17:13:30 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihzMU-00004x-9y
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 17:13:20 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 30A7E2927E6
Received: by earth.universe (Postfix, from userid 1000)
 id E73423C0C7B; Thu, 19 Dec 2019 18:13:14 +0100 (CET)
Date: Thu, 19 Dec 2019 18:13:14 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH v3] power: reset: at91-reset: add sysfs interface to the
 power on reason
Message-ID: <20191219171314.lgltzc5bvrvpwphs@earth.universe>
References: <20191209094329.45638-1-kamel.bouhara@bootlin.com>
 <14a9f500-3f4a-2b6b-cd27-f48c6cb73cce@microchip.com>
 <20191209134458.GA47233@kb-xps>
MIME-Version: 1.0
In-Reply-To: <20191209134458.GA47233@kb-xps>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_091318_615171_B61688A6 
X-CRM114-Status: GOOD (  33.40  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alexandre.belloni@bootlin.com, Ludovic.Desroches@microchip.com,
 thomas.petazzoni@bootlin.com, Claudiu.Beznea@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0769244666535053049=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0769244666535053049==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aq2t5pw6ai5pzpeu"
Content-Disposition: inline


--aq2t5pw6ai5pzpeu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Dec 09, 2019 at 02:44:58PM +0100, Kamel Bouhara wrote:
> On Mon, Dec 09, 2019 at 11:33:23AM +0000, Claudiu.Beznea@microchip.com wr=
ote:
> > On 09.12.2019 11:43, Kamel Bouhara wrote:
> > > EXTERNAL EMAIL: Do not click links or open attachments unless you kno=
w the content is safe
> > >
> > > This patch export the power on reason through the sysfs interface and
> > > introduce some generic reset sources.
> > > Update the ABI documentation to list current power on sources.
> > >
> > > Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> > > Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> > > ---
> > > Changes in v2
> > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > >         - Be less specific on the crystal oscillator value
> > >         - Add an Acked-by
> > > Changes in v3
> > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > >         - Really be less specific on the crystal oscillator value
> > >
> > >  .../sysfs-devices-platform-power-on-reason    | 14 ++++++
> > >  drivers/power/reset/at91-reset.c              | 44 +++++++++++++----=
--
> > >  include/linux/power/power_on_reason.h         | 19 ++++++++
> > >  3 files changed, 64 insertions(+), 13 deletions(-)
> > >  create mode 100644 Documentation/ABI/testing/sysfs-devices-platform-=
power-on-reason
> > >  create mode 100644 include/linux/power/power_on_reason.h
> > >
> > > diff --git a/Documentation/ABI/testing/sysfs-devices-platform-power-o=
n-reason b/Documentation/ABI/testing/sysfs-devices-platform-power-on-reason
> > > new file mode 100644
> > > index 000000000000..83daeb9b1aa2
> > > --- /dev/null
> > > +++ b/Documentation/ABI/testing/sysfs-devices-platform-power-on-reason
> > > @@ -0,0 +1,14 @@
> > > +What:          /sys/devices/platform/.../power_on_reason
> > > +
> > > +Date:          October 2019
> > > +KernelVersion: 5.4
> > > +Contact:       Kamel Bouhara <kamel.bouhara@bootlin.com>
> > > +Description:   This file shows system power on reason.
> > > +               The possible sources are:
> > > +               General System Power-ON, RTC wakeup, Watchdog timeout,
> > > +               Software Reset, User pressed reset button,
> > > +               CPU Clock failure, 32.768kHz Oscillator Failure,
> >
> > Crystal oscillator value is still present here.
> >
>=20
> Indeed, thanks.
>=20
> > > +               Low power mode exit, Unknown.
> > > +
> > > +               The file is read only.
> > > +
> > > diff --git a/drivers/power/reset/at91-reset.c b/drivers/power/reset/a=
t91-reset.c
> > > index 44ca983a49a1..3cb2df40af37 100644
> > > --- a/drivers/power/reset/at91-reset.c
> > > +++ b/drivers/power/reset/at91-reset.c
> > > @@ -17,7 +17,7 @@
> > >  #include <linux/of_address.h>
> > >  #include <linux/platform_device.h>
> > >  #include <linux/reboot.h>
> > > -
> > > +#include <linux/power/power_on_reason.h>
> >
> > As far as I know, headers in include/linux are only visible in kernel.
> > Although you may use this header, in future, in other drivers (as Alexa=
ndre
> > specified in a previous email), at the moment it is only used by
> > at91-reset.c. So, why not keeping them in at91-reset.c or leave it as is
> > for the moment and introduce it when this will be necessary?
> >
>=20
> Well, It's been a while now the idea was proposed, I've just submitted
> it here.
>=20
> > Moreover, you are doing 2 things on a patch:
> > 1/ export the reset reasons through sysfs
> > 2/ introduce the reset reason defines
>
> Ok, I shall split it in two patches, if it could clarify things ?

Yes, please split into two patches.

> > Thank you,
> > Claudiu Beznea
> >
> > >  #include <soc/at91/at91sam9_ddrsdr.h>
> > >  #include <soc/at91/at91sam9_sdramc.h>
> > >
> > > @@ -146,42 +146,42 @@ static int samx7_restart(struct notifier_block =
*this, unsigned long mode,
> > >         return NOTIFY_DONE;
> > >  }
> > >
> > > -static void __init at91_reset_status(struct platform_device *pdev)
> > > +static const char *at91_reset_reason(struct platform_device *pdev)
> > >  {
> > >         const char *reason;
> > >         u32 reg =3D readl(at91_rstc_base + AT91_RSTC_SR);
> > >
> > >         switch ((reg & AT91_RSTC_RSTTYP) >> 8) {
> > >         case RESET_TYPE_GENERAL:
> > > -               reason =3D "general reset";
> > > +               reason =3D POWER_ON_REASON_GENERAL;
> > >                 break;
> > >         case RESET_TYPE_WAKEUP:
> > > -               reason =3D "wakeup";
> > > +               reason =3D POWER_ON_REASON_RTC;
> > >                 break;
> > >         case RESET_TYPE_WATCHDOG:
> > > -               reason =3D "watchdog reset";
> > > +               reason =3D POWER_ON_REASON_WATCHDOG;
> > >                 break;
> > >         case RESET_TYPE_SOFTWARE:
> > > -               reason =3D "software reset";
> > > +               reason =3D POWER_ON_REASON_SOFTWARE;
> > >                 break;
> > >         case RESET_TYPE_USER:
> > > -               reason =3D "user reset";
> > > +               reason =3D POWER_ON_REASON_USER;
> > >                 break;
> > >         case RESET_TYPE_CPU_FAIL:
> > > -               reason =3D "CPU clock failure detection";
> > > +               reason =3D POWER_ON_REASON_CPU_FAIL;
> > >                 break;
> > >         case RESET_TYPE_XTAL_FAIL:
> > > -               reason =3D "32.768 kHz crystal failure detection";
> > > +               reason =3D POWER_ON_REASON_XTAL_FAIL;
> > >                 break;
> > >         case RESET_TYPE_ULP2:
> > > -               reason =3D "ULP2 reset";
> > > +               reason =3D POWER_ON_REASON_LOW_POWER;
> > >                 break;
> > >         default:
> > > -               reason =3D "unknown reset";
> > > +               reason =3D POWER_ON_REASON_UNKNOWN;
> > >                 break;
> > >         }
> > >
> > > -       dev_info(&pdev->dev, "Starting after %s\n", reason);
> > > +       return reason;
> > >  }
> > >
> > >  static const struct of_device_id at91_ramc_of_match[] =3D {
> > > @@ -204,6 +204,17 @@ static struct notifier_block at91_restart_nb =3D=
 {
> > >         .priority =3D 192,
> > >  };
> > >
> > > +static ssize_t power_on_reason_show(struct device *dev,
> > > +                                   struct device_attribute *attr,
> > > +                                   char *buf)
> > > +{
> > > +       struct platform_device *pdev =3D to_platform_device(dev);
> > > +
> > > +       return sprintf(buf, "%s\n", at91_reset_reason(pdev));
> > > +}
> > > +
> > > +static DEVICE_ATTR_RO(power_on_reason);
> > > +
> > >  static int __init at91_reset_probe(struct platform_device *pdev)
> > >  {
> > >         const struct of_device_id *match;
> > > @@ -248,7 +259,14 @@ static int __init at91_reset_probe(struct platfo=
rm_device *pdev)
> > >                 return ret;
> > >         }
> > >
> > > -       at91_reset_status(pdev);
> > > +       ret =3D device_create_file(&pdev->dev, &dev_attr_power_on_rea=
son);
> > > +       if (ret) {
> > > +               dev_err(&pdev->dev, "Could not create sysfs entry\n");
> > > +               return ret;
> > > +       }
> > > +
> > > +       dev_info(&pdev->dev, "Starting after %s reset\n",
> > > +                at91_reset_reason(pdev));
> > >
> > >         return 0;
> > >  }
> > > diff --git a/include/linux/power/power_on_reason.h b/include/linux/po=
wer/power_on_reason.h
> > > new file mode 100644
> > > index 000000000000..9c44baa52911
> > > --- /dev/null
> > > +++ b/include/linux/power/power_on_reason.h
> > > @@ -0,0 +1,19 @@
> > > +/* SPDX-License-Identifier: GPL-2.0-only */
> > > +/*
> > > + * Author: Kamel Bouhra <kamel.bouhara@bootlin.com>
> > > + */
> > > +
> > > +#ifndef POWER_ON_REASON_H
> > > +#define POWER_ON_REASON_H
> > > +
> > > +#define POWER_ON_REASON_GENERAL "General"
> > > +#define POWER_ON_REASON_RTC "RTC wakeup"
> > > +#define POWER_ON_REASON_WATCHDOG "Watchdog timeout"
> > > +#define POWER_ON_REASON_SOFTWARE "Software"
> > > +#define POWER_ON_REASON_USER "User"

Is this user reset button from the sysfs file? I think just "User"
is a bit too short. Also please make sure, that the list actually
matches the API described in the documentation :)

-- Sebastian

> > > +#define POWER_ON_REASON_CPU_FAIL "CPU clock Failure"
> > > +#define POWER_ON_REASON_XTAL_FAIL "Crystal oscillator Failure"
> > > +#define POWER_ON_REASON_LOW_POWER "Low power exit"
> > > +#define POWER_ON_REASON_UNKNOWN "Unknown"
> > > +
> > > +#endif /* POWER_ON_REASON_H */
> > > --
> > > 2.24.0
> > >
> > >
> > > _______________________________________________
> > > linux-arm-kernel mailing list
> > > linux-arm-kernel@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> > >
>=20
> --
> Kamel Bouhara, Bootlin
> Embedded Linux and kernel engineering
> https://bootlin.com

--aq2t5pw6ai5pzpeu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl37r6oACgkQ2O7X88g7
+po7fA//VnzlIimPh7BXkjMCYSGpfcoP2EvyTF97+0T0HcpWbMDs2InokNE8awS7
aywDyXz2l2TGhA5rHwndDUuE+jIx4GLxB3sriqNG5udYCFacHiZfNYaLAdgh7BLw
09CRl9x12m0ls70vmKMO6x/j3IGNs4OiVWzAKCM9WYLnpn5uUG3FKhhL+GKImOuJ
wNV6w56Ib+o1lpPil3CNz+eXQVDQZ/zoMgv87QM3A6pn2UvdHwAJxjio/7gt8Zlc
ltLI45W6TxEX48c1sW7ob2RRi7ldCulA47SnJl+ndBIfafx5Lf5ryzk9z6p8mSMm
rB8yQZhEh+q43jWQBVkh+espnyfdFwZ6r8zuzhwOl55tM6UmQ3HnJENCEnZ0qeGP
rqB6JiejriyTFrH5XXGYlgIsUB1AJN0IWtc6BgKPWrAuHfbRoJ3uW5iMfusenU0H
IKR+8Yt6tZAdv8YJso+roney2mNjwDkN21ko/zTzBRK5GKVXSid28VALVfB7HJD9
wPb0YjOM+7k3EXLlXQMT95SUPBvA53MI2eBV/02VTBe/CBJfIMcGqImA2U40TzsM
bKU4DDJH/CxcMnbdKMqR65aLrKioQKC6M/FGsWwel80xevMPu6pfWLbQ9zB7Ylex
WLr5kO5zM57uqggqeQZaauAfduV4lQHm94oUrWsjLTzU0HRoZWM=
=aymr
-----END PGP SIGNATURE-----

--aq2t5pw6ai5pzpeu--


--===============0769244666535053049==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0769244666535053049==--

