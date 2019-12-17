Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC651227B4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 10:31:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rPQhias/OR7xnmqlk255sqJHJOlPdf2B9UXKlsivK6I=; b=YPs44SXoCeGvUGj/J5ROqku5d
	SkDHTRqwK3tXFoV1THSLOBtsTO6g7bxBH7PVqRG5a7XN6ze6Iqc+qVu12pRtw9qC3QFzvjInR+M2y
	gB/8GA9G3vyYDKVguDZ/4QE/ACWOl55jGTnQXDKEKorbrhIGIKCMmAOGjCgTdqN3FqIdjNWsrpken
	J/4RNqDXVX29Ahk0L5yd66Af04qliSFh11qW7V4O8pbH4rd6jqFe62rVrecDxIohGWL1Njqymn4sy
	voJLca6+JlP/VlkM0+bSv6gxSXGspMOhn4AJYZubBq8MZzTglg8U6S2/3wn0/mYDHC73lomMgXDRz
	DIDybKqVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih9C1-0005FN-KC; Tue, 17 Dec 2019 09:31:01 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih9Bt-0005EQ-9I; Tue, 17 Dec 2019 09:30:54 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id A6574ABC7;
 Tue, 17 Dec 2019 09:30:50 +0000 (UTC)
Message-ID: <f425ed1a4bf60210ddf9d85261086f29b5869666.camel@suse.de>
Subject: Re: [PATCH v2 1/1] spi: bcm2835: no dev_err() on clk_get()
 -EPROBE_DEFER
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Jim Quinlan <james.quinlan@broadcom.com>, linux-spi@vger.kernel.org
Date: Tue, 17 Dec 2019 10:30:49 +0100
In-Reply-To: <20191216230802.45715-2-jquinlan@broadcom.com>
References: <20191216230802.45715-1-jquinlan@broadcom.com>
 <20191216230802.45715-2-jquinlan@broadcom.com>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_013053_473089_B213126F 
X-CRM114-Status: UNSURE (   8.65  )
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <scott.branden@broadcom.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Ray Jui <ray.jui@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7272888148239123868=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7272888148239123868==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-xKJQiabZRc/0guJVF0pi"


--=-xKJQiabZRc/0guJVF0pi
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2019-12-16 at 18:08 -0500, Jim Quinlan wrote:
> Use dev_dbg() on -EPROBE_DEFER and dev_err() on all
> other errors.
>=20
> Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>


--=-xKJQiabZRc/0guJVF0pi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl34oEkACgkQlfZmHno8
x/59PggAkwDKDFGnQVLG2P1CPv7wWeI2uWFf+BYGxCC6ihHCZneIrm0GnC2lu/L+
Cd/pHWawQ7RaCTsD5xaToQcxpmI7SWkxMpGJ5JzgKZ2OviPtyt/GsqCwTImUdr1R
4Dz3tdm9Ytb1GYSFUK4wYuIVdN5Tzhkxi4SwS2bS7uLHrJt3yROchm/gIPl/QdMI
ChRgun7gNpqaHG5ETgBTJWcS2Plhg6jCkXr3mx4/0q9BbL3lMBcOYG7qU+9X70d+
/phe8pXzgr1v9Zm1oFYu5aL6gPtHFszrYRsuvLEpu4RRyOCsQVaNj5ZyvJDMYbtv
mqRPO8n9wikXES4zBAc5A+XzBztQqw==
=HbAS
-----END PGP SIGNATURE-----

--=-xKJQiabZRc/0guJVF0pi--



--===============7272888148239123868==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7272888148239123868==--


