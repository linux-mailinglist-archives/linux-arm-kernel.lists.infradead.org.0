Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F24E517DDFA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 11:54:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Cz/9lpzb2Axxg03Zo08IrbS7ZYxWZHhhFxLP/emoxeg=; b=iGBao6C7nj+YmkflnbE8woqAg
	QU0lKJdJW7FKH5Est1r6MfvnJRSVIfVFXsihbJ5KsXu1Q2+Eavt6aCRUWltmHiHiR5KGctd3TY0dy
	aD80By+wj7jIHm8k0wsNJ2ka+o24TNXZnHuzYu0EsnOjfJVrdeiOCV+s3U4euShdzewj33kiNS6aX
	zv+fOkhK6nN/2l6UFvCg6vmUpu6Pf47hz0xc7CN0Bw5GvxF+rLs0RdL+nl31x1+BiLZo868Q8Piho
	ShUdJIO8/PnLmqLJi2ADcZy/62fL3Z9DyomXAXZG9PenKtS2f5dMUeoZr+1Nr3YqdTScLG/rYYweA
	croGm2JzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBG38-00073I-4x; Mon, 09 Mar 2020 10:54:18 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBG2t-00072Q-Mz; Mon, 09 Mar 2020 10:54:05 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id ACDF5AB98;
 Mon,  9 Mar 2020 10:54:00 +0000 (UTC)
Message-ID: <06fc4d492f66bfbe7260937efa849f77c7c12b0d.camel@suse.de>
Subject: Re: [PATCH v2 06/11] mmc: sdhci: xenon: Use
 sdhci_set_power_and_voltage()
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Adrian Hunter <adrian.hunter@intel.com>, linux-kernel@vger.kernel.org, 
 Hu Ziji <huziji@marvell.com>
Date: Mon, 09 Mar 2020 11:53:41 +0100
In-Reply-To: <4e74203a-5444-2b7a-3555-9615cc45aaae@intel.com>
References: <20200306174413.20634-1-nsaenzjulienne@suse.de>
 <20200306174413.20634-7-nsaenzjulienne@suse.de>
 <4e74203a-5444-2b7a-3555-9615cc45aaae@intel.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_035403_894084_ADD20073 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: stefan.wahren@i2se.com, Ulf Hansson <ulf.hansson@linaro.org>,
 f.fainelli@gmail.com, linux-mmc@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 phil@raspberrypi.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0204889639901480938=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0204889639901480938==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-mdVi4mtxniNUptONkINn"


--=-mdVi4mtxniNUptONkINn
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-03-09 at 09:20 +0200, Adrian Hunter wrote:
> > -static void xenon_set_power(struct sdhci_host *host, unsigned char mod=
e,
> > -		unsigned short vdd)
> > -{
> > -	struct mmc_host *mmc =3D host->mmc;
> > -	u8 pwr =3D host->pwr;
> > -
> > -	sdhci_set_power_noreg(host, mode, vdd);
> > -
> > -	if (host->pwr =3D=3D pwr)
> > -		return;
> > -
> > -	if (host->pwr =3D=3D 0)
> > -		vdd =3D 0;
> > -
> > -	if (!IS_ERR(mmc->supply.vmmc))
> > -		mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, vdd);
> > -}
>=20
> This code is different.  The commit message should explain why it is
> equivalent.  Has it been tested?

Yes, I should've pointed it out. The rationale behind including sdhci-xenon=
 and
sdhci-pxav3 is based on xenon's original commit message (99c14fc360dbb):

	mmc: sdhci-xenon: add set_power callback

	Xenon sdh controller requests proper SD bus voltage select
	bits programmed even with vmmc power supply. Any reserved
	value(100b-000b) programmed in this field will lead to controller
	ignore SD bus power bit and keep its value at zero.
	Add set_power callback to handle this.

I can't test it, but it felt to me as the implementation differences are on=
ly
there as different people wrote the code. Ultimately, I'll be happy to drop
them from the series if you feel it's too much of an assumption, I can see =
how
the controllers could react badly to the ordering change. If not I can send=
 a
v3 with fixed commit messages.

Regards,
Nicolas


--=-mdVi4mtxniNUptONkINn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5mIDUACgkQlfZmHno8
x/6ODgf+Pponrv6iI47IZ59PPxtKoH5eODnYoNBo1XTafZnldylaThHuhHpQoegD
bN7jdMI4sRgisibZglsVds4Qq7aQU3H6kNaKp3ynBQLkuJ0T8DDKEueq3MGMZb53
OJvTL+TE6+0jBBMF1H5XUAE5ThyfwkWauF7//uar/8O2EGg1e/ZiTUaZxqN/sK2d
kUBqSlPE8MxlGMP6d0ZuJ9zy3S/RJ5rZ6/Wc4YL+pI47HiRFACmPmxBqWJLpmEaB
mMmc6W84DEg2WB0uDzBQQsDQ8FgHwQBTGIFVmEA5GeSSUbCR0Vv69yyVUb4hGQAx
r9eTbtY5CY3pdMCPz3oYD88aGd5PhQ==
=BUHF
-----END PGP SIGNATURE-----

--=-mdVi4mtxniNUptONkINn--



--===============0204889639901480938==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0204889639901480938==--


