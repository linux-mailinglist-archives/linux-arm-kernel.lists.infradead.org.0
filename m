Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D88C635CCC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 14:27:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K6kc+Ocv/tBiXz1zefSSREyA4PQZRp2qPG5i5jKjhdY=; b=ZDN7skdLXHDekfWn1wBDhBCIx
	P85855DE8qLg6pRg6/asRWBRzIe/AM90D1kLUwTG6x+pb+TJK1C9AsEyABfUrjMLxmYK/10oUWJqn
	UcMMOMR1e/gCdSWRvenzOkWE5nfVPzyqn6KwRXOaUE+N9ECIyG6wiH5f0d8e5W3hH/0Pno3CMPBtl
	CLrdVvaG/eQcLQCth8SN5SDgsCRfAvKAgrfuMqlhXQESsOOV0yM59wfIk+fI6PoNo7XKA4Rm8QbBF
	U7Yw2Tk0+E993E6O51GbIs8hZbGvupTre+EpqSzd5eErG5BAQVy1UBdBMquc0r4WI6bnkLrgFKvVs
	DZ+Zn+mrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYV0y-0006OP-M1; Wed, 05 Jun 2019 12:27:36 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYV0r-0006Nr-FV; Wed, 05 Jun 2019 12:27:31 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 279BDAD2A;
 Wed,  5 Jun 2019 12:27:28 +0000 (UTC)
Message-ID: <8d6eb920ebcaec2ede413439a7080ae030b7e44e.camel@suse.de>
Subject: Re: [PATCH 0/4] cpufreq support for the Raspberry Pi
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <wahrenst@gmx.net>, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Date: Wed, 05 Jun 2019 14:27:26 +0200
In-Reply-To: <1c9708c9-a3c9-8a8f-4693-8f29d3e60634@gmx.net>
References: <20190604173223.4229-1-nsaenzjulienne@suse.de>
 <2ece3f20-ef8c-c39e-941c-76635ddbe185@gmx.net>
 <1a86637dad1d2f33450950143a82016beb91bdb6.camel@suse.de>
 <1c9708c9-a3c9-8a8f-4693-8f29d3e60634@gmx.net>
User-Agent: Evolution 3.32.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_052729_803626_D6663915 
X-CRM114-Status: GOOD (  22.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: f.fainelli@gmail.com, ptesarik@suse.com, sboyd@kernel.org,
 viresh.kumar@linaro.org, mturquette@baylibre.com, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: multipart/mixed; boundary="===============6486472990846010750=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6486472990846010750==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-8ce50Ee7YyHn+6OQ/pXB"


--=-8ce50Ee7YyHn+6OQ/pXB
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Stefan,

On Wed, 2019-06-05 at 13:34 +0200, Stefan Wahren wrote:
> Hi,
>=20
> Am 05.06.19 um 13:00 schrieb Nicolas Saenz Julienne:
> > Hi Stefan,
> > thanks for the review, I took note of your code comments.
> >=20
> > On Wed, 2019-06-05 at 11:46 +0200, Stefan Wahren wrote:
> > > Hi Nicolas,
> > >=20
> > > Am 04.06.19 um 19:32 schrieb Nicolas Saenz Julienne:
> > > > Hi all,
> > > > this series aims at adding cpufreq support to the Raspberry Pi fami=
ly of
> > > > boards.
> > > >=20
> > > > The previous revision can be found at:=20
> > > > https://lkml.org/lkml/2019/5/20/431
> > > >=20
> > > > The series first factors out 'pllb' from clk-bcm2385 and creates a =
new
> > > > clk driver that operates it over RPi's firmware interface[1]. We ar=
e
> > > > forced to do so as the firmware 'owns' the pll and we're not allowe=
d to
> > > > change through the register interface directly as we might race wit=
h the
> > > > over-temperature and under-voltage protections provided by the firm=
ware.
> > > it would be nice to preserve such design decision in the driver as a
> > > comment, because the cover letter usually get lost.
> > > > Next it creates a minimal cpufreq driver that populates the CPU's o=
pp
> > > > table, and registers cpufreq-dt. Which is needed as the firmware
> > > > controls the max and min frequencies available.
> > > I tested your series on top of Linux 5.2-rc1 with multi_v7_defconfig =
and
> > > manually enable this drivers. During boot with Raspbian rootfs i'm
> > > getting the following:
> > >=20
> > > [    1.177009] cpu cpu0: failed to get clock: -2
> > > [    1.183643] cpufreq-dt: probe of cpufreq-dt failed with error -2
> > This is surprising, who could be creating a platform_device for cpufreq=
-dt
> > apart from raspberrypi-cpufreq? Just to make things clear, you're using=
 the
> > device tree from v5.2-rc1 (as opposed to the Raspbian one)?
>=20
> sorry my fault, i thought it already has been replaced. The behavior in
> this unexpected case is fine, since it doesn't crash.
>=20
> I replaced the the DTB with the mainline one, but now i'm getting this:
>=20
> [    4.566068] cpufreq: cpufreq_online: CPU0: Running at unlisted freq:
> 600000 KHz
> [    4.580690] cpu cpu0: dev_pm_opp_set_rate: Invalid target frequency 0
> [    4.594391] cpufreq: __target_index: Failed to change cpu frequency: -=
22

Ok, this looks more more like my fault, probably an overflow error somewher=
e. I
saw something similar while testing it on RPI2b. Which board & config was t=
his
run with? Could you confirm the clk-raspberrypi.c message verifying the max=
 and
min frequencies showed up and was correct.

Regards,
Nicolas


--=-8ce50Ee7YyHn+6OQ/pXB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAlz3tS4ACgkQlfZmHno8
x/6IPwf5AW2cqDKMXXG6zjSDBbD14gmTvnpBPLctfKW+l06doG1g5uXw/mfkX/DI
jOpcLFRS0GJafFskDnkmvdl10tLmCRQtmSBWfEa/HoYndHNxmy+gjLWQHJY6oUJI
S/oigi4WK561pDhQ9Ey6ooq21zLypgRFpoYElG8YVudvKRP7j0I0S2RZXM18dixs
IQV5bmFY9PMmnwXrsbm+/SpRdsO1NLwk/bFAsEZrZE0lKBVWQdtvqcaSCAF5EvlK
gCoXRwGtQ1pWq9eLoPacapAWs5XMmfPs6hMk9T/8iFHe3XwwIweuJNS+5/AyEtnW
vNFS6cF5duw5115FBxCWc5GtcFF10g==
=GpHh
-----END PGP SIGNATURE-----

--=-8ce50Ee7YyHn+6OQ/pXB--



--===============6486472990846010750==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6486472990846010750==--


