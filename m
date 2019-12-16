Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF575120399
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 12:18:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xG2+DmEjwL1pweR3+UVqGJT69NMNNgwEs0aJuKUV+Cg=; b=lBP6axG7E/BysYXzq6n0PyB2g
	GVlq1ky2x+frgkNQiz2pPrtEsT5oBsCSdplOZKhDK1VY3XkBLUxSbmhOtRMt76t3b5jOVSNKikiNM
	sTBGuzwRJdqa9ttbT4XsbRd4ixEkbxIApMUilPHFFG+S3D/GnNVHWLTejFNSERkE9USQ8nNT3Cas5
	qVl/dFRGm6EjGJrK+6yApO7WNDISz1pyHN6llRKK7f4RkCtFIg96xUs2bubJx+Qs87Lky83jwR/6f
	YM2W1MF28tf7repGaKdXthyF8Q9vp63k7OlzJ1bBiuX6aO6Wp10B1W2iAegh3WN4mwWCToE9I7EEI
	2bzS62Xmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igoOa-0003gT-IE; Mon, 16 Dec 2019 11:18:36 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igoOQ-0003ff-FX; Mon, 16 Dec 2019 11:18:27 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 0C713AD4F;
 Mon, 16 Dec 2019 11:18:25 +0000 (UTC)
Message-ID: <e94310c04571b23e57d802aecb4789d7c6d35d74.camel@suse.de>
Subject: Re: [PATCH v5 1/6] dt-bindings: PCI: Add bindings for brcmstb's
 PCIe device
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Matthias Brugger <mbrugger@suse.com>, andrew.murray@arm.com,
 maz@kernel.org,  linux-kernel@vger.kernel.org, Florian Fainelli
 <f.fainelli@gmail.com>,  bcm-kernel-feedback-list@broadcom.com, Bjorn
 Helgaas <bhelgaas@google.com>
Date: Mon, 16 Dec 2019 12:18:23 +0100
In-Reply-To: <39a8ab96-2b32-1d9c-63cd-8114a58f723c@suse.com>
References: <20191216110113.30436-1-nsaenzjulienne@suse.de>
 <20191216110113.30436-2-nsaenzjulienne@suse.de>
 <39a8ab96-2b32-1d9c-63cd-8114a58f723c@suse.com>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_031826_662550_4C23006C 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org, phil@raspberrypi.org,
 jeremy.linton@arm.com, Rob Herring <robh+dt@kernel.org>,
 linux-rpi-kernel@lists.infradead.org, james.quinlan@broadcom.com,
 linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
Content-Type: multipart/mixed; boundary="===============2411118476195723419=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2411118476195723419==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-4ZM5h4FNm971ZXqZ/T37"


--=-4ZM5h4FNm971ZXqZ/T37
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2019-12-16 at 12:14 +0100, Matthias Brugger wrote:
> > +
> > +  msi-controller:
> > +    description: Identifies the node as an MSI controller.
>=20
> are you missing "type: boolean" here?

As per RobH's suggestion[1] I assumed the type on msi-controller and msi-pa=
rent
is alredy defined.

Regards,
Nicolas

[1] https://patchwork.kernel.org/patch/11239717/#23008585


--=-4ZM5h4FNm971ZXqZ/T37
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl33Z/8ACgkQlfZmHno8
x/7P7gf+NuNPpIsO6gLiH8DJTHrzG+A4soBpSgB0r3XzWZfc0Rem+xaaojNEVDTT
po1m4X5pXKLejfpfB7srdeIweCg2xg3Pm61W6750iDhgKOtF7CNj91zkYkkSMIvs
0lvWgo25TX1z3O/Z+dfRrPSMKMR1Rhos4KLxFALXiSakdoPsaoetmz7pkAdgXwqr
0jKv3rerg41Q0yJi/zQSJcbvFCGd05ghq2Z+SdUtnqu5Iw/VEmorK6bo22W911w9
3Kr9RHGM6dtTTMqS3rZWk3zfx1HuwhXjU93ObTavjtYqSL0UrCt9RCLoMgDA95hM
f44IH0GrZdZuUqHOO0YN77qenyPzlg==
=xgVD
-----END PGP SIGNATURE-----

--=-4ZM5h4FNm971ZXqZ/T37--



--===============2411118476195723419==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2411118476195723419==--


