Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0084317BCFE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 13:41:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NwXLm/OqOVR8dNeNw0GNqPaUy1eGSLTvj8KNiIzTokE=; b=u9g4+wJQXafyfnZsjSv6rQUz6
	BqUD57FrbfsWKoGwqVrL2hWczR4d66EmC6PrUAbQbKILz8RGrSTm4w4hdOetJntvFV+UN2RBNSvdA
	BWLNWtJH3LyP1zXxFV+SFDckr8qr2roqP/nrSRntia+BOqxkQsuIK2sJMRl9JAUdZ9RYI03rUEmR9
	91SVSYl0JHfHPfKe+U7X9ujwYUN8Hrq9zkXsoXWOSUBYKoC67zIWhGs47ry4ryNSBjMCyrTR7GXhu
	yQvJI5E6XwjkNINQfcxErhauP7wFxKbRHgtnogZ+vWr1xvG5b8Vv1wFunJF3Y8hOoR6CDsnAbyuJr
	pemYC6DQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jACI9-0006Y6-BE; Fri, 06 Mar 2020 12:41:25 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jACI2-0006XQ-D5; Fri, 06 Mar 2020 12:41:19 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id CB939AF4E;
 Fri,  6 Mar 2020 12:41:16 +0000 (UTC)
Message-ID: <444a97c46126bb86ca37da9bf26a840c38176bbe.camel@suse.de>
Subject: Re: [PATCH 01/10] mmc: sdhci: Add quirk SDHCI_QUIRK2_SET_BUS_VOLTAGE
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Adrian Hunter <adrian.hunter@intel.com>, devicetree@vger.kernel.org, 
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-mmc@vger.kernel.org
Date: Fri, 06 Mar 2020 13:40:54 +0100
In-Reply-To: <55ef25ae-5c73-7778-dfda-976809cf9fe6@intel.com>
References: <20200306103857.23962-1-nsaenzjulienne@suse.de>
 <20200306103857.23962-2-nsaenzjulienne@suse.de>
 <55ef25ae-5c73-7778-dfda-976809cf9fe6@intel.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_044118_584726_7F762D86 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: ulf.hansson@linaro.org, f.fainelli@gmail.com, phil@raspberrypi.org,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============3026823826129884279=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3026823826129884279==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-1lAvgayd9GrTsqnjjrF7"


--=-1lAvgayd9GrTsqnjjrF7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2020-03-06 at 14:34 +0200, Adrian Hunter wrote:
> On 6/03/20 12:38 pm, Nicolas Saenz Julienne wrote:
> > Adds quirk for controllers whose bus power select register has to be se=
t
> > even when powering SD cards from a regulator.
> >=20
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > ---
> >  drivers/mmc/host/sdhci.c | 5 +++++
> >  drivers/mmc/host/sdhci.h | 2 ++
> >  2 files changed, 7 insertions(+)
> >=20
> > diff --git a/drivers/mmc/host/sdhci.c b/drivers/mmc/host/sdhci.c
> > index c59566363a42..c7fd87447457 100644
> > --- a/drivers/mmc/host/sdhci.c
> > +++ b/drivers/mmc/host/sdhci.c
> > @@ -1920,6 +1920,11 @@ static void sdhci_set_power_reg(struct sdhci_hos=
t
> > *host, unsigned char mode,
> > =20
> >  	mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, vdd);
> > =20
> > +	if (host->quirks2 & SDHCI_QUIRK2_SET_BUS_VOLTAGE) {
>=20
> We don't really want to replace callbacks by quirks.
>=20
> Replace sdhci_milbeaut_set_power() etc by a common fn in sdhci.c if you w=
ant.

Ok, fair enough.

Regards,
Nicolas

>=20
> > +		sdhci_set_power_noreg(host, mode, vdd);
> > +		return;
> > +	}
> > +
> >  	if (mode !=3D MMC_POWER_OFF)
> >  		sdhci_writeb(host, SDHCI_POWER_ON, SDHCI_POWER_CONTROL);
> >  	else
> > diff --git a/drivers/mmc/host/sdhci.h b/drivers/mmc/host/sdhci.h
> > index cac2d97782e6..9531a4e5b148 100644
> > --- a/drivers/mmc/host/sdhci.h
> > +++ b/drivers/mmc/host/sdhci.h
> > @@ -484,6 +484,8 @@ struct sdhci_host {
> >   * block count.
> >   */
> >  #define SDHCI_QUIRK2_USE_32BIT_BLK_CNT			(1<<18)
> > +/* Set bus voltage even when powering from an external regulator */
> > +#define SDHCI_QUIRK2_SET_BUS_VOLTAGE			(1<<19)
> > =20
> >  	int irq;		/* Device IRQ */
> >  	void __iomem *ioaddr;	/* Mapped address */
> >=20


--=-1lAvgayd9GrTsqnjjrF7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5iRNYACgkQlfZmHno8
x/5h5Af8C26SwoE7s5IkeLA0S3BV9MJtqzvOsBo2x+myRwpvvktRc+f2sVpkjQT/
lIpr4k4mxiaDiTaxmtYRIgXCtz4Hq9T6kfJXwVcnQeAVu3z9BAYqUVqsWG2uGQra
j/mdMmNvuvJQsMds327CuCGyg/FTp0rFueCELZrMzTTO60chert7/bE85LZbeErF
+xmR9+1JvMBTGx818rp3/SA95S9VlPf9z3dRqpKIvmSkSMom23GoGYa1/NFVzyi3
q36vAQ7D074JsmbG0D3L7W8B1Bo6yvKihw0tnVzsy1MS5w1sIF6YZac3tpnxuFgt
lSgKWktx6E+gN1k/1uujvRqyJ3MsOw==
=jDxC
-----END PGP SIGNATURE-----

--=-1lAvgayd9GrTsqnjjrF7--



--===============3026823826129884279==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3026823826129884279==--


