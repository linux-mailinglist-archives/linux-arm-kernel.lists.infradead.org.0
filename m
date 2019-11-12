Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A30B4F8B94
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 10:18:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M5/lhXY4VHUI7tZRnrc5Mwe0OwU3jlNmyKf1whg2BzY=; b=RAI1sdPYWCZ+zGfgWCoN2xcaG
	1wbNNT7LhJ0UE+mYTfXySHW13pvwyhHMsphf/bPNwC9jCJzZLMKcZHtHB8rtpfiaY822wrnsjMe1V
	mHrvMO2i/5wCwWiJ2NqDlO0GaKdKizuAVJpHIBrlen5tQWYCUi5lfSrOGme58sh3bwmuPsr0Kk8Bh
	3ADiwj99q4lpkgYHsIRJoT+zPPCROmjiY2RIamEmkC/7Fb9z4WEZKk2MFJGrAaoebuowS3D2WnCik
	PSlLr+VoO8Cwl7xU6pUG9rL6WB/QUTobdlw5PDdhx892yyiDZxaa97Gg4ASHfg9LC3yhwu0/IwGV+
	ugRR95EHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUSJf-0006Og-EM; Tue, 12 Nov 2019 09:18:27 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUSJW-0006NH-07; Tue, 12 Nov 2019 09:18:19 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A4A7AAE65;
 Tue, 12 Nov 2019 09:18:14 +0000 (UTC)
Message-ID: <31e7037674b388919b28c6b13d4b4f71b011d9ee.camel@suse.de>
Subject: Re: [PATCH 2/4] ARM: dts: bcm2711: Enable PCIe controller
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Andrew Murray <andrew.murray@arm.com>
Date: Tue, 12 Nov 2019 10:18:12 +0100
In-Reply-To: <20191107103705.GX9723@e119886-lin.cambridge.arm.com>
References: <20191106214527.18736-1-nsaenzjulienne@suse.de>
 <20191106214527.18736-3-nsaenzjulienne@suse.de>
 <20191107103705.GX9723@e119886-lin.cambridge.arm.com>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_011818_189643_197EE00A 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 mbrugger@suse.com, linux-pci@vger.kernel.org, phil@raspberrypi.org,
 linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, james.quinlan@broadcom.com,
 f.fainelli@gmail.com, linux-arm-kernel@lists.infradead.org,
 Stefan Wahren <wahrenst@gmx.net>
Content-Type: multipart/mixed; boundary="===============4567239560447671951=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4567239560447671951==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-GShpbkW8CowbTJFvOKc+"


--=-GShpbkW8CowbTJFvOKc+
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andrew,

On Thu, 2019-11-07 at 10:37 +0000, Andrew Murray wrote:
> > +			ranges =3D <0x02000000 0x0 0xf8000000 0x6 0x00000000
> > +				  0x0 0x04000000>;
>=20
> Is legacy I/O supported by this controller?
>=20

No, it isn't.

Regards,
Nicolas


--=-GShpbkW8CowbTJFvOKc+
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3KeNQACgkQlfZmHno8
x/5iUgf+LjXdBQ4FjWn71+T/EcTk9J/bddIQmKOu98J3Tg6Gshv3uodKu0oH8FcW
Ebw2xoianZ+9h3R6JO4DRyXyzM8z5jSbUbzS9RtfIkjaTc1rp+/EUo4WOIos/va1
5PtnNBT2Ked9JKSaYAfA1RUYxTyvUqRe0gmCB6tK8LDIIrtjvHw+NJt2UxatosZf
hbdEzFV23h7dSAEtibilo0Tsu/tQG2QcrcJb2EClIwaFprttPViyFqXcLt4NdmfU
7nYY4CJtzBsx8aLVHYXKcJ3UuhodbmFo9Z4BDA881tKDlHKRq7fA0qinkDV5LYjy
vqUlWp8b1ko68z8uvqshd2KfjjLumA==
=DWxZ
-----END PGP SIGNATURE-----

--=-GShpbkW8CowbTJFvOKc+--



--===============4567239560447671951==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4567239560447671951==--


