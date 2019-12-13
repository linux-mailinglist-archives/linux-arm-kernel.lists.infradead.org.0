Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1356211DEEE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 08:54:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sz8o5Uvhpchat9E4yeiL1WhOMOaOfWaOzFa7DG0Oois=; b=hg2z7jRavQPsV+iEneYYgxn4m
	nxKJORgp++tYcaAFNpow5D3bZWNeVewgCN/3pn3p7zDbS6c2cKZLmv8U1Ah0axEWDpyEzMk+Bz804
	HqQ5T6lOMrcmvkRdcddXeLVl8EHqls17QasPkFF+BmJfGQHShQPey1xlJPHHeB8A11Ae92nAf3JZv
	NS2Z0j6OAUhqiNkdoT6wBIuu0kS2Vdx2fF3qhzN9TOucDanp+DB44FvPJj4RBWfnA5DAhoC+noL9J
	w21LpDRKgkQ+ZXo6M0DGobNcktvAODoD7C9XRDUmqX/1u4BAznqzfzOBt/SxBhLEmsFigi5NghmV2
	yDuscEkAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iffmf-0000Lk-NS; Fri, 13 Dec 2019 07:54:45 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iffmX-0000Kx-It; Fri, 13 Dec 2019 07:54:38 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A01A0AC4D;
 Fri, 13 Dec 2019 07:54:35 +0000 (UTC)
Message-ID: <0949d65cf38c6c21f7b1565765dfc34def0b825a.camel@suse.de>
Subject: Re: [PATCH] spi: bcm2835: don't print error on clk_get() DEFER
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Jim Quinlan <james.quinlan@broadcom.com>, linux-spi@vger.kernel.org
Date: Fri, 13 Dec 2019 08:54:33 +0100
In-Reply-To: <20191212231213.29061-1-jquinlan@broadcom.com>
References: <20191212231213.29061-1-jquinlan@broadcom.com>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_235437_770276_48D3D814 
X-CRM114-Status: UNSURE (   6.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: multipart/mixed; boundary="===============6944939805950629037=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6944939805950629037==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-5DTumPm2OHpOqZWUQ8Si"


--=-5DTumPm2OHpOqZWUQ8Si
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-12-12 at 18:12 -0500, Jim Quinlan wrote:
> Otherwise one may get multiple error messages for normal
> operation of a clock provider.
>=20
> Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
> ---

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>


--=-5DTumPm2OHpOqZWUQ8Si
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3zQ7kACgkQlfZmHno8
x/4fZgf9HkEjWQ+/PYekVxrIAJOea8gNqwD85mc8QG9VlGdic6z/NE8T30Ss9f5O
SEco4JkgPJKnLX4iJmoKNSo451iXLDCe330twWilQDs5HWu06OKuSmb9X96gJQHb
jJGB2unP+owneVegqK/xAv07qBzgsZiINyyjv9jtdv5Ox7P7ttY54vVww1reUPkt
rsX+Di6zUZGFpTO6vODp4P9XhB52Lc9TE0/NaDuPuF3+4SUlqBLKYGcHpKv90RVm
jT6nf9gPvyd09xeYzWg9G1ulMlGayFDzlKSDKj71cRVKKtpL35WBk1SzxGVMz4Um
KXBFtci2hzFOribpHa1c2tSM6aQOJw==
=7+Aj
-----END PGP SIGNATURE-----

--=-5DTumPm2OHpOqZWUQ8Si--



--===============6944939805950629037==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6944939805950629037==--


