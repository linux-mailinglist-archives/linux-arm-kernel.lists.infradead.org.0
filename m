Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0E919E73A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 20:57:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iKtRERZwPvHdN3PcNB+y7glT2KU+/FEMJLyKh0HaBsc=; b=uCxtDVgLh69x6c4c86D9etczF
	MdOBKNME8yDKQviNYNijp8QiDbkHbt5DuKq87zyBwJu77zL0qTxYoTj/Khdszzo42xgfiZs4RvEjZ
	zvCdhZxIxVfGPbB5SuZMH/XQBM1XMRevVLVaxXfLegUzkmuN2ZPru2NTgxa11OiJsS6qKkav7+BB1
	wDAljP8hbgF8dMwFkwvDcJZUoTzuMzBjlw03SFdsYv6AbVkNd4uBXTzxXPiiYexem0mVcdPowBCad
	psBuP/yutsaDOhl3kl+kpr1zN+KPrKydJdfZxPclpSjj9D50olPr58z0E2QQliBuybeSS9nFIX/Rs
	m8gg1dIcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKnyg-0005Ae-UD; Sat, 04 Apr 2020 18:57:10 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKnya-00059a-48; Sat, 04 Apr 2020 18:57:05 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 0F0F4AC1D;
 Sat,  4 Apr 2020 18:56:58 +0000 (UTC)
Message-ID: <c481353b58fb31a07cb4e46e958524d6a76f6bba.camel@suse.de>
Subject: Re: [PATCH v6 2/4] firmware: raspberrypi: Introduce vl805 init routine
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Bjorn Helgaas <helgaas@kernel.org>
Date: Sat, 04 Apr 2020 20:56:54 +0200
In-Reply-To: <20200402194005.GA35725@google.com>
References: <20200402194005.GA35725@google.com>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_115704_308846_D8AA36C1 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, sergei.shtylyov@cogentembedded.com,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-usb@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, tim.gover@raspberrypi.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org, linux-arm-kernel@lists.infradead.org,
 wahrenst@gmx.net
Content-Type: multipart/mixed; boundary="===============1747636776448217868=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1747636776448217868==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-p9pbaJPFripypjQjuxEN"


--=-p9pbaJPFripypjQjuxEN
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-04-02 at 14:40 -0500, Bjorn Helgaas wrote:
> On Thu, Apr 02, 2020 at 01:32:35PM +0200, Nicolas Saenz Julienne wrote:
> > On Wed, 2020-04-01 at 15:37 -0500, Bjorn Helgaas wrote:
> > > On Tue, Mar 24, 2020 at 07:28:10PM +0100, Nicolas Saenz Julienne wrot=
e:
> > > > On the Raspberry Pi 4, after a PCI reset, VL805's firmware may
> > > > either be loaded directly from an EEPROM or, if not present, by
> > > > the SoC's VideCore. The function informs VideCore that VL805 was
> > > > just reset, or requests for a probe defer.
>=20
> Is VL805 the XHCI USB device?  A hint here would help non-RPi experts
> know how this fits into the topology.

Yes, VL805 is the XHCI USB device. I'll keep it in mind for the next series=
.

Regards,
Nicolas


--=-p9pbaJPFripypjQjuxEN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl6I2HYACgkQlfZmHno8
x/60Swf/dHo4U3CvX6bsiKxokbAwApPj1NiCCdvWHdfOj3JGJFeJiSE8WFwbv9zv
+jDO9Z90fC0euf2TVeg5msEHjcBzlfjNQezZX38k9XNLGVElcRDDDOI6Lu8n7s86
Cn8ftjDDiD7Ykx0XUgBfgYC1g2hKRofw9C0ry2qPzYMZ9REpnC8ea9Vybng77DGF
WA6nzjrS7yVqzzyzzmg8d2FEU0AonJQS5QFVyA0f0ged7QSyykWoAgM8SmL1nIYc
VSw0Ve90xvAifAy1IUUh8TLqKAKa3kLU1ibktQqOtIapI6GXXiNtTLXjLIVdhZxm
5YGazz8bz28YbzNjd8x2rKUDyRd7pw==
=vU+J
-----END PGP SIGNATURE-----

--=-p9pbaJPFripypjQjuxEN--



--===============1747636776448217868==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1747636776448217868==--


