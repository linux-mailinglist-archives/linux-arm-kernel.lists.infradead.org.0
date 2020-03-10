Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8FF180635
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 19:26:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B5Ujs+3XolhA0cTRALivEdCJsaMuWhkngJxOsPxqiBo=; b=VdqJxGI1NZIaiVDpRzc6ZOotS
	RzflSsRRKPCjIaruoJ4cI5BoVCLlYHgzHsN0u9zGGtN0B+NOTHyrYEV6iFNHIhYJuu/RV08HdiUA/
	1CCAIsRFi6jUU/USEthb8Ce4d0+T3G2lPD/bkZxCoQzFgfYRfFJkyIsvaHqKHm6EjwQ/4YxajbqaU
	gKgj9FEuypYxoohLknEVgksoWrFAJx6cB/hTVkNiQ9+jYsWnlRNS1vBIIN4sU60K+JpSW0yBpmcJs
	tw8AIUibHaErjRhafpmp1WzMVuIdQbJjivVRd+cPNXpj5oncc4qTmvBy44ValPtuGXTiCItrO0KZU
	xfq1IcFRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBjaP-0000wh-0y; Tue, 10 Mar 2020 18:26:37 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBjaE-0000wH-CD; Tue, 10 Mar 2020 18:26:27 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 9905CABD1;
 Tue, 10 Mar 2020 18:26:24 +0000 (UTC)
Message-ID: <f7f08a5df266ae6897065d3c66e30074951708e4.camel@suse.de>
Subject: Re: [GIT PULL RESEND 1/2] bcm2835-dt-next-2020-03-09
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>
Date: Tue, 10 Mar 2020 19:26:23 +0100
In-Reply-To: <552efb02-f62e-c78c-419c-fe8aec4ce7c2@gmail.com>
References: <91044910d494a12d06e7098561fe1be86a61f033.camel@suse.de>
 <552efb02-f62e-c78c-419c-fe8aec4ce7c2@gmail.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_112626_556963_A4BA3A4D 
X-CRM114-Status: GOOD (  14.93  )
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
Cc: bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7183481185745255839=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7183481185745255839==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-t/OJZM8jxIPGwulkbssO"


--=-t/OJZM8jxIPGwulkbssO
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2020-03-10 at 11:09 -0700, Florian Fainelli wrote:
> On 3/10/20 5:27 AM, Nicolas Saenz Julienne wrote:
> > Hi Florian,
> >=20
> > The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea098=
62b9:
> >=20
> > Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)
> >=20
> > are available in the Git repository at:
> >=20
> > git://git.kernel.org/pub/scm/linux/kernel/git/nsaenz/linux-rpi.git
> > tags/bcm2835-dt-next-2020-03-09
> >=20
> > for you to fetch changes up to 3d2cbb64483691c8f8cf88e17d7d581d9402ac4b=
:
> >=20
> > ARM: dts: bcm2711: Move emmc2 into its own bus (2020-03-09 21:18:03 +01=
00)
> >=20
> > ----------------------------------------------------------------
> > This tag adds GPIO labels to RPi4 and moves emmc2 to its own bus in
> > order for RPi4's firmware to correct its DMA constraints.
> >=20
> > ----------------------------------------------------------------
>=20
> I have applied both for integration but it looks like you are not using
> git request-pull and you are possibly copy/pasting the content of the
> command into an email? For instance your second message has this:
>=20
> tags/bcm2835- defconfig-next-2020-03-09
>              ^=3D=3D=3D additional space here which should not be here.

Thanks!

Yes, my process is still pretty much manual. The message got wrapped/unwrap=
ped
in the mail client and I guess something went wrong in the process.

It's time to re-tailor your gen-pull.pl script to my needs :)

Regards,
Nicolas


--=-t/OJZM8jxIPGwulkbssO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5n288ACgkQlfZmHno8
x/7KQQf9G0jV6/U+tnLTiGtYHXqJ0lVFF40jIp3wM/+d1cuAm3FgdE6iYVmZ4SKz
Iu/aO+GEaTyk5a/aiRmnOnxhmAQa3tM8514f5P4XDPPghqbL7jRGiZ27m+DJih9F
FdyZWDaHHpDY/MeHgk56iry55tyX9DKVTx2w/aM9Gfiarlts4Bz7qQbifMAZI4Zw
dna+B7VrwEd+8LpP9Ow18vCHZPMRXs24yYRBq7fCR7YHQ/O6zMWUzuPdl+nhEf+U
d71MJ4LsRZHEi+vdKohcOllbiu2h09ws5Z5I+z7RtdS6nP6MN+7xC3DlyXgAzEjG
1pRA1iDq6wEu13MgT/43vhimG6dxIg==
=nmq+
-----END PGP SIGNATURE-----

--=-t/OJZM8jxIPGwulkbssO--



--===============7183481185745255839==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7183481185745255839==--


