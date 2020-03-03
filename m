Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67983177504
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 12:08:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GilZ8MBAQh+DPc6PY3Lm0VKzS5ZpfL7CA8pkk4v6Au4=; b=WJmEaBOiRIVJCYE/xWeiqCTwC
	8mPCs9gZRXuH6hjP3SKO9PWPOujrDwAClgIeIOkukpLJkKoHovay4maRY+ibgcHzPBLnJbgMOlE2p
	pZOh8u9NYbqG5nXeJwMnbWuLd8Iou6hOzc9zxUOBFIDt/SSx2/VJL3m8KG4HxSBUaW8KGxrZycD5B
	A9u6GOaSkjltAn9QBLQsRiSQ7CwqSDdIGdJ38HgRPv1i/JsFxXKkZXj3NhDJyu42ovxRJ3CcPbd6S
	YSuIEvjK966QmcCKYKWbAoY2zHSM0w+q3FKRxsRPBSi1XpPczir63ZGNFoSSL5I7wFBcfJie7+hgc
	BEuAWx1lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j95Pg-0001HL-Kd; Tue, 03 Mar 2020 11:08:36 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j95Pa-0001Gj-9J; Tue, 03 Mar 2020 11:08:31 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 94B6DB235;
 Tue,  3 Mar 2020 11:08:27 +0000 (UTC)
Message-ID: <312c3305eef7534d534729d598372dbf5f3985cf.camel@suse.de>
Subject: Re: [PATCH v3 0/4] Raspberry Pi 4 VL805 firmware load support
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Oliver Neukum <oneukum@suse.com>, linux-kernel@vger.kernel.org
Date: Tue, 03 Mar 2020 12:08:25 +0100
In-Reply-To: <1583225019.12738.6.camel@suse.com>
References: <20200302155528.19505-1-nsaenzjulienne@suse.de>
 <1583225019.12738.6.camel@suse.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_030830_470986_717864F6 
X-CRM114-Status: GOOD (  10.97  )
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
Cc: f.fainelli@gmail.com, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 tim.gover@raspberrypi.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>,
 linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
Content-Type: multipart/mixed; boundary="===============5173480515113825461=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5173480515113825461==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-sEW+kSSPV6dhPiAM6dbu"


--=-sEW+kSSPV6dhPiAM6dbu
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Oliver,

On Tue, 2020-03-03 at 09:43 +0100, Oliver Neukum wrote:
> Am Montag, den 02.03.2020, 16:55 +0100 schrieb Nicolas Saenz Julienne:
> > On the Raspberry Pi 4, after a PCI reset, VL805's firmware may either b=
e
> > loaded directly from an EEPROM or, if not present, by the SoC's
> > VideCore. This series adds support for the later.
>=20
> What happens if runtime PM strikes, in particular, how do
> you deal with D4cold?

The RPi4 PCIe driver doesn't support runtime PM for now. Neither upstream n=
or
downstream. So I'd say it's not a problem. The same goes for suspend/resume=
,
which IIRC the Raspberry Pi foundation doesn't support.

Regards,
Nicolas


--=-sEW+kSSPV6dhPiAM6dbu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5eOqkACgkQlfZmHno8
x/730ggAtedF+4sYfc1p/xdd/IO7Clu3ry4x2yh+qY/per8vXN+9dzI79YgdwAtg
SlRDlijesH4//PYu7gdwIqaF86WMYuPCRT8Q8mWlcL+Lrgz1GGkmFSuFDnGH0nep
M0L9F0BXK+efUQhKuTtdtRP2UJXg00bKI4hVHLtEHNGrOZYJoVKmxjDlw2n20KSO
zjq6rt6HvCCUH1saZC4r6++T3EhCG1QjUAoyycsAJKNH86xc+P5VV9+cQfH1zJpI
Rim6oxWfTT69JUb9DY5NkA0xWWFpV/4YyTW9gQiXgQgIBrsCcYLlu+B/xhZwifKm
ITeQhFnX2203t32AD+fEBIJUmxNaJg==
=XmXV
-----END PGP SIGNATURE-----

--=-sEW+kSSPV6dhPiAM6dbu--



--===============5173480515113825461==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5173480515113825461==--


