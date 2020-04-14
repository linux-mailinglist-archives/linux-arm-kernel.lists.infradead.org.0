Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AC81A7846
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 12:17:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WDaHx+muL8/7kZD9aJERHpfhX7pe2vvBIU+BUZhTd+Q=; b=LQEjD7my1MZlWAb0+d5jft3Ho
	7TRu75XeyRwv3vR7g0AQBSbqGNUa7N9EQRD2qE3P4ttQtQ1Z6Vn2sa4LsUIL+Roy1wEoczNSNcrVr
	ODEhSkR9731DT7r+e9BWQOnuJX+/ebOR1nreMpM/8rLyhFklBMs8OGzACcRONMP1//NrwGfCf6i1q
	L7YigP7hKSE04osa4IIWBrVJqEODky0pgeBrI/WVf508DydlX6/g1nSzOLbglYAITnI4V06UV3QrC
	Iv7ZTL17XgA9d5IgMQJYS4BVEyUNbBsPjqMfGcDGZprqQveq/C97UhSnoGJgLAb/R38ok0x6NL3pK
	B1ALfrlfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOId7-0007H2-AY; Tue, 14 Apr 2020 10:17:21 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOIcv-0007EV-9C; Tue, 14 Apr 2020 10:17:12 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id A99E6AAFD;
 Tue, 14 Apr 2020 10:17:06 +0000 (UTC)
Message-ID: <f88988c4059799dd21c4c0bf9d13df494eff2c4f.camel@suse.de>
Subject: Re: [PATCH] staging: vc04_services: bcm2835-audio: Make function
 arguments alignment match open parenthesis
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: R Veera Kumar <vkor@vkten.in>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Date: Tue, 14 Apr 2020 12:17:05 +0200
In-Reply-To: <20200413165905.6081-1-vkor@vkten.in>
References: <20200413165905.6081-1-vkor@vkten.in>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_031709_584552_61597089 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: devel@driverdev.osuosl.org, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7443893306854348441=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7443893306854348441==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-HvMJdd4MlU6lzP+RDzxu"


--=-HvMJdd4MlU6lzP+RDzxu
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-04-13 at 22:29 +0530, R Veera Kumar wrote:
> Make function arguments alignment match open parenthesis.
> Found using checkpatch.pl.
>=20
> Signed-off-by: R Veera Kumar <vkor@vkten.in>
> ---

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks,
Nicolas


--=-HvMJdd4MlU6lzP+RDzxu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl6VjaEACgkQlfZmHno8
x/7QNAf+KEkgvllarl1bp7iHEIeawYA2hzu5cIUgBMq3Qn9pI9VDHNI3I8DG4EQb
gOHmJHG635oIvSU3ZVXbgSPRdomFsuXGO7t6te5WdYuhkNVkNyuSuVioOJk6Qdfx
54HT/S9tPICxf3lMZ7ga2JlSDFlHOEtdFEGy7yi6c+miPwkscp1/c6vOxDojOEp1
0Z9iPRSVTGAjKPJOF0Pik1S5cEwowScrdFF2m7Oku0F6ae71sv0eJ+8rZGmqP8Bj
ypzQVcXJYr9pIAGnq/8tRlt4d+IzSSPKxUpTcZZ67RBC/3opTf183ajZGOCTjZd1
CMKcxOYHmJdhwso9ulwPstE+ogLEaA==
=UMAf
-----END PGP SIGNATURE-----

--=-HvMJdd4MlU6lzP+RDzxu--



--===============7443893306854348441==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7443893306854348441==--


