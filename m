Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 972D31816B3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 12:21:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2AfUOM9XiZkgPYxkx4JCz56qCKLBxlZPBIhUC6tBQEQ=; b=frTTACw4huhO8CK6g9QFIEFZV
	Gi6Uxla8r2UdO9bjvjHeR9aeJGwGCPqftexgmYpDAytUCas0jIO9k1LiDxRaDndnoURYYlf+p7yFO
	FBBR0A19EernXGecHyjXPjr2vxzlnx69HywQjln6J1qZcInznQI2KfKYhguKXkvjrOYkcUbghimwO
	YMoHzer0kmjH0h/v8ZqHYKqxf2QnOqwQ9420rY8RSK6eYpWvFKub0RgKCuwbd8Lfpmhcgfbg7xcWB
	8bdhCpwLkPOfvURxdyLsV09ZalBS7jc//5Dudy5l5iBC0WnPdxr/UJLr++R8YdnQyupQTtyDNOTsf
	G3TQTw69g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBzQI-0004pO-UG; Wed, 11 Mar 2020 11:21:14 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBzQB-0004or-Ox; Wed, 11 Mar 2020 11:21:09 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 02195AEE2;
 Wed, 11 Mar 2020 11:21:05 +0000 (UTC)
Message-ID: <f536c4c9b3c6e2a9517e508812053d8418c91f97.camel@suse.de>
Subject: Re: [GIT PULL RESEND 1/2] bcm2835-dt-next-2020-03-09
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>, Florian Fainelli
 <f.fainelli@gmail.com>
Date: Wed, 11 Mar 2020 12:21:04 +0100
In-Reply-To: <24ed1b28-10a7-c46b-d3d5-3c41b882e5c5@i2se.com>
References: <91044910d494a12d06e7098561fe1be86a61f033.camel@suse.de>
 <552efb02-f62e-c78c-419c-fe8aec4ce7c2@gmail.com>
 <f7f08a5df266ae6897065d3c66e30074951708e4.camel@suse.de>
 <24ed1b28-10a7-c46b-d3d5-3c41b882e5c5@i2se.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_042107_964750_B009CD9E 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============7570380256303125154=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7570380256303125154==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-/6kJJYab0MZmjE4TER8K"


--=-/6kJJYab0MZmjE4TER8K
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2020-03-10 at 20:01 +0100, Stefan Wahren wrote:
> Hi Nicolas,
> i was using this script:
>=20
> https://github.com/lategoodbye/maintain-scripts
>=20
> for the pull requests. It based on Stephen Warren work.

Thanks!

I'll have a look at it :)

Regards,
Nicolas


--=-/6kJJYab0MZmjE4TER8K
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5oyaAACgkQlfZmHno8
x/4DFggAn2IXsu1Jv/xjqUFx7pUIImAzRvIBSptWz6OQdMv5dzd53JunMCGlv9tR
2QVIRHSm28WnJLcoj9wcN5nj/DtjRiR7ZmQnMTQqEj3rIAiFRd3nuuc92gVwPQBZ
K74lwXBjKYYEwZITEMhy00kNcfeUtxIR1c5FO1c82w8e13GQo390ctyViC+F/FnN
69OnJ3QarplUJN2Qrfz7yG8FjtrfFn6vCXPNKzrC7gw9FQmUNmAI4wPY+HXhwfpF
fkpBFw1AfmQb/RIiAaZa+G3jSxUTUGSG48+2ywGfgfkr4x7JDBsmmgE57Q/9CArE
AX4qGiFNLGiUsbC7PDPPN0fxWq+Kcw==
=t7wu
-----END PGP SIGNATURE-----

--=-/6kJJYab0MZmjE4TER8K--



--===============7570380256303125154==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7570380256303125154==--


