Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEE617E841
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 20:23:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FKjzDZFwQnoW5cNesAuW1T/84p9/gLOk0v/LGiAigVk=; b=e4Edvm9YXRjiPeS2u7ToNr9uu
	JXO9q9vJdxCZOSRJfDLGMhBIzm7rp/e3XRNbhKuK4/Rx/4tI8TSEHiAuyoQGTNQgrQBQekoFN9OaX
	TdCATpbn9TPkx8f98ljYVeQVdx7QB6DfTseybsA0HpxGQ9LqMIVfglQh4zdXVaFDy6x3DDbTuQ36t
	4MTUq+y0JKsM7uUzQYRFCFILhuZ98ei8rzUznmwV5OXdAe5B0/Ng8kc8fA9EqHdSqyTvsVKG369yK
	bY2Un2VE5yTkpj0yap3EkRrQKxs2jWXaXgBWgnJsIJdJ1OCDd6LuTP/rVQxnXfPFmLm/ocvL4uc8N
	5X7XnbzQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBNzQ-0005In-PV; Mon, 09 Mar 2020 19:23:00 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBNzF-0005HN-IB; Mon, 09 Mar 2020 19:22:51 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 55DADB06A;
 Mon,  9 Mar 2020 19:22:47 +0000 (UTC)
Message-ID: <9e685fce547d808f269e59e2290331e75c66f3e4.camel@suse.de>
Subject: Re: [PATCH] ARM: dts: bcm283x: Use firmware PM driver for V3D
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>, Rob Herring
 <robh+dt@kernel.org>,  Mark Rutland <mark.rutland@arm.com>, Florian
 Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,  Scott
 Branden <sbranden@broadcom.com>, bcm-kernel-feedback-list@broadcom.com,
 Eric Anholt <eric@anholt.net>
Date: Mon, 09 Mar 2020 20:22:45 +0100
In-Reply-To: <ddcb8fd5-9e35-454c-b38d-d36e7b41ef07@i2se.com>
References: <20200303173217.3987-1-nsaenzjulienne@suse.de>
 <736f0c59-352b-03b2-f77f-bfc22171b3fb@i2se.com>
 <03fcb1e2bc7f3ff389b6dfbf3964e159a93ae835.camel@suse.de>
 <d3d40174-9c08-f42f-e088-08e23c2dc029@i2se.com>
 <f2ec22160ac86aec8d252ade7d6eb8789777cc42.camel@suse.de>
 <01ceb60e-a791-b6ca-352e-ad2e79f264e3@i2se.com>
 <ddcb8fd5-9e35-454c-b38d-d36e7b41ef07@i2se.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_122249_889937_BFEDACD7 
X-CRM114-Status: GOOD (  23.57  )
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
Cc: devicetree@vger.kernel.org, wahrenst@gmx.net,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6638074184389545934=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6638074184389545934==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-tZ303xiG7cDiGT02SWOp"


--=-tZ303xiG7cDiGT02SWOp
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Stefan,

On Mon, 2020-03-09 at 16:41 +0100, Stefan Wahren wrote:
> Hi Nicolas,
>=20
> On 06.03.20 21:33, Stefan Wahren wrote:
> > Hi Nicolas,
> >=20
> > Am 05.03.20 um 11:44 schrieb Nicolas Saenz Julienne:
> > > Hi Stefan,
> > >=20
> > > On Tue, 2020-03-03 at 20:24 +0100, Stefan Wahren wrote:
> > > > > > > Note: I tested this on RPi3b, RPi3a+ and RPi2b.
> > > > > > as i already wrote this prevent X to start on current Raspbian =
on my
> > > > > > Raspberry Pi 3A+ (multi_v7_defconfig, no u-boot). We must be ca=
reful
> > > > > > here.
> > > > > >=20
> > > > > > I will take a look at the debug UART. Maybe there are more help=
ful
> > > > > > information.
> > > > > It seems we're seeing different things, I tested this on raspbian
> > > > > (multi_v7_defconfig) and on arm64. I'll try again from scratch
> > > > > tomorrow.
> > > > My modifications to the Raspbian image (from 13.2.2020) are little:
> > > >=20
> > > > - specify devicetree to config.txt
> > > > - change console to ttyS1 and remove "silent" in cmdline.txt
> > > > - rename all original kernel7*.img
> > > > - copy dtb and kernel7.img to boot partition
> > > > - copy kernel modules to root partition
> > > Would you mind retesting with the latest linux-next? I validated an i=
mage
> > > based
> > > on 5.6.0-rc4-next-20200305-00001-g285a7a64cd56 and a fresh raspbian
> > > download on
> > > RPi3a+ without X issues.
> > i retested with todays linux-next and the issue persists on my RPi 3A+ =
/
> > HP ZR2440w with this patch applied.
>=20
> I tested my display with a RPI 3B, 3B+ and a Zero W. All of them had the
> same issue. Btw i used this display the last years for testing the
> Raspberry Pi.
>=20
> After that i connected the RPI 3B to my TV screen and it works with the
> patch applied.

Thanks for taking the time on this. I guess all we have left is looking dee=
per
into it. I'll add it to my backlog for now.

Regards,
Nicolas


--=-tZ303xiG7cDiGT02SWOp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5ml4UACgkQlfZmHno8
x/43iAgAkAzhEC+LqzxtkdHiNML8ngJfJVRbuYYwyH9gHGl/3lrYW1ecvisK9ZwB
aJkbQkDEpPceupdXb9TsNr98lJ1Idhk4b8yZbm2FCzVFnHuIYc2NsxlkGc6fvp9a
S6BIgQYnfRyBzmMBpLofF7rDmdcd9SBtLqkLTKmJx4WROMK17jREEkOSYLF3//RO
Z1urTNh2l1hUHq5DGyJvGQX5KMPGYfxoZ1IL4FgLB54DelxscpQxxdgli2RNHKxA
9WkI0l6XlcL1b5ke6KcoU0lKbPQ3SEcLrZUukqd37JxhgIXu8ow1RK5dAtWOGZVK
oo6I7gSafUtvGrFpqlNpc9hepfltCQ==
=/qXY
-----END PGP SIGNATURE-----

--=-tZ303xiG7cDiGT02SWOp--



--===============6638074184389545934==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6638074184389545934==--


