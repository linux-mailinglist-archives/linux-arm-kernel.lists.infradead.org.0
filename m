Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02BF81135DC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 20:41:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M4Xez/xD+Cvnmzl3eieGGV/W0724SeDkmrHzN3Zxn3Q=; b=Q5n75ylk88nPv+wwcQBBlmM3G
	YxzU6xkdEfxe7npAUdD2ChwYT8G4dM6wEM+1CBODqxZlBxgDz4U3Y2OMIFUiinSJxwrzTaMvB70+v
	pD78dDQp6Au/NQkyBTS8+U7uUI6bTTWABiH7V4kSJlXcWiXHr5Zdffi+FkbnE3nxRWztqB1Y3anlD
	4W3ZfdiUFsBHGlYm+gNaX7/9bJ8gajTdOXRtXaUiqcyu2ifg5g7wUv7bGeEywua//y3oeeXFU0GXz
	wjhm187YKPM8SgH23JhVlD7BtQ9IeUc3zpAhMx8QyM8yeapvxg4cs0+GhxCRD5Ym1qsKZAGPafa4n
	/0zY+9G9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icaWI-0002xy-Lx; Wed, 04 Dec 2019 19:41:06 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icaW9-0002xN-Uu; Wed, 04 Dec 2019 19:40:59 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 22B5AB334;
 Wed,  4 Dec 2019 19:40:54 +0000 (UTC)
Message-ID: <826e7e9b283a1cac8e0c12a9f16dcd6c4248d2e3.camel@suse.de>
Subject: Re: [PATCH] staging/vc04_services/bcm2835-camera: distinct
 numeration and names for devices
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Michael Kupfer <michael.kupfer@fau.de>, eric@anholt.net,
 wahrenst@gmx.net,  bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org,  linux-arm-kernel@lists.infradead.org
Date: Wed, 04 Dec 2019 20:40:52 +0100
In-Reply-To: <20191204114814.26252-1-michael.kupfer@fau.de>
References: <20191204114814.26252-1-michael.kupfer@fau.de>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_114058_139026_68D3773E 
X-CRM114-Status: UNSURE (   8.02  )
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
Cc: Kay Friedrich <kay.friedrich@fau.de>, linux-kernel@i4.cs.fau.de
Content-Type: multipart/mixed; boundary="===============7858964607105647807=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7858964607105647807==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-nd1Fta+cyt8g7yiPPQhG"


--=-nd1Fta+cyt8g7yiPPQhG
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, 2019-12-04 at 12:48 +0100, Michael Kupfer wrote:
> Create a static atomic counter for numerating cameras.
> Use the Media Subsystem Kernel Internal API to create distinct
> device-names, so that the camera-number (given by the counter)
> matches the camera-name.
>=20
> Co-developed-by: Kay Friedrich <kay.friedrich@fau.de>
> Signed-off-by: Kay Friedrich <kay.friedrich@fau.de>
> Signed-off-by: Michael Kupfer <michael.kupfer@fau.de>
> ---

The patch itself seems fine, but could you resend it making sure you CC
everyone listed by ./scripts/get_maintainer.sh.

Regards,
Nicolas


--=-nd1Fta+cyt8g7yiPPQhG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3oC8QACgkQlfZmHno8
x/4nXgf9HnaOYTzhyqNyMqkieYIbgFh0UTBFLkggIY20bfLSpMqQkB+Omc57TmN+
BKnghDF2KE8BAHldHQTArPH7rAuvUO+BHGigEFWwC3EXaM++45FYw2malek9EKrY
FDlahk5DlW0HRxzlry6OBs4+u15klGM69JRqK8BJtADY4OXVWaYxf+k3CA3KPIMQ
LnG6/vKGpWh/uaoPMw4rhQuvj+aLgU67Si8NNo+U3yAAlNe5mSOC6Kv4YoPmtpWG
LgLnPb7f30ZyrX8DG3TCdxA9SfLjX5Dj8Y4C49uV7r6Ex9QTeTaZaSm8z2DPHEn4
18uM5VuoVzLpuTVDDReftChwEwlEng==
=vLAe
-----END PGP SIGNATURE-----

--=-nd1Fta+cyt8g7yiPPQhG--



--===============7858964607105647807==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7858964607105647807==--


